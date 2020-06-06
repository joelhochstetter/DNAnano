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
	<24.470112, 35.083694, 35.332512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.320404, 34.914822, 35.002254>,  <24.230579, 34.813496, 34.804100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.320404, 34.914822, 35.002254>,  <24.470112, 35.083694, 35.332512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.320404, 34.914822, 35.002254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255156, 0.902869, -0.346010,
		0.891524, 0.081165, -0.445642,
		-0.374273, -0.422184, -0.825639,
		24.208122, 34.788166, 34.754562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109257, 34.824364, 35.029797>,  <24.470112, 35.083694, 35.332512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109257, 34.824364, 35.029797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504644, 34.785469, 34.983376>,  <25.741877, 34.762131, 34.955521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504644, 34.785469, 34.983376>,  <25.109257, 34.824364, 35.029797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504644, 34.785469, 34.983376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140546, -0.874387, -0.464429,
		-0.056315, 0.475386, -0.877973,
		0.988471, -0.097241, -0.116055,
		25.801186, 34.756298, 34.948559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308197, 34.835144, 34.233528>,  <25.109257, 34.824364, 35.029797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308197, 34.835144, 34.233528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573227, 34.637268, 34.458485>,  <25.732244, 34.518543, 34.593460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573227, 34.637268, 34.458485>,  <25.308197, 34.835144, 34.233528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573227, 34.637268, 34.458485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036093, -0.771072, -0.635724,
		0.748128, 0.400915, -0.528746,
		0.662573, -0.494687, 0.562390,
		25.771999, 34.488861, 34.627201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798161, 34.582272, 33.778751>,  <25.308197, 34.835144, 34.233528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798161, 34.582272, 33.778751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837687, 34.359627, 34.108700>,  <25.861403, 34.226040, 34.306671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837687, 34.359627, 34.108700>,  <25.798161, 34.582272, 33.778751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837687, 34.359627, 34.108700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011142, -0.828259, -0.560235,
		0.995043, 0.064551, -0.075644,
		0.098816, -0.556615, 0.824873,
		25.867331, 34.192642, 34.356163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331161, 34.229237, 33.721756>,  <25.798161, 34.582272, 33.778751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331161, 34.229237, 33.721756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105202, 34.015152, 33.972973>,  <25.969625, 33.886700, 34.123703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105202, 34.015152, 33.972973>,  <26.331161, 34.229237, 33.721756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105202, 34.015152, 33.972973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022487, -0.770820, -0.636657,
		0.824853, -0.345524, 0.447471,
		-0.564900, -0.535210, 0.628043,
		25.935732, 33.854588, 34.161385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600168, 33.545742, 33.893379>,  <26.331161, 34.229237, 33.721756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600168, 33.545742, 33.893379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208311, 33.484715, 33.945568>,  <25.973196, 33.448097, 33.976879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208311, 33.484715, 33.945568>,  <26.600168, 33.545742, 33.893379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208311, 33.484715, 33.945568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044254, -0.798060, -0.600951,
		0.195808, -0.582944, 0.788566,
		-0.979643, -0.152568, 0.130469,
		25.914417, 33.438946, 33.984707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547688, 32.895111, 34.081257>,  <26.600168, 33.545742, 33.893379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547688, 32.895111, 34.081257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187059, 32.989838, 33.936432>,  <25.970682, 33.046673, 33.849537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187059, 32.989838, 33.936432>,  <26.547688, 32.895111, 34.081257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187059, 32.989838, 33.936432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035456, -0.793621, -0.607378,
		-0.431179, -0.560431, 0.707108,
		-0.901570, 0.236817, -0.362063,
		25.916588, 33.060883, 33.827812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985659, 32.342117, 34.140289>,  <26.547688, 32.895111, 34.081257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985659, 32.342117, 34.140289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856884, 32.566505, 33.835220>,  <25.779619, 32.701138, 33.652180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856884, 32.566505, 33.835220>,  <25.985659, 32.342117, 34.140289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856884, 32.566505, 33.835220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112948, -0.822564, -0.557343,
		-0.939999, -0.093287, 0.328175,
		-0.321938, 0.560968, -0.762673,
		25.760303, 32.734795, 33.606419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397982, 31.984081, 33.943764>,  <25.985659, 32.342117, 34.140289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397982, 31.984081, 33.943764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491590, 32.218399, 33.633389>,  <25.547756, 32.358990, 33.447163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491590, 32.218399, 33.633389>,  <25.397982, 31.984081, 33.943764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491590, 32.218399, 33.633389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042079, -0.791249, -0.610044,
		-0.971320, 0.175415, -0.160521,
		0.234023, 0.585794, -0.775938,
		25.561798, 32.394138, 33.400608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944460, 31.804462, 33.392887>,  <25.397982, 31.984081, 33.943764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944460, 31.804462, 33.392887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272453, 31.984400, 33.251312>,  <25.469250, 32.092361, 33.166367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272453, 31.984400, 33.251312>,  <24.944460, 31.804462, 33.392887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272453, 31.984400, 33.251312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081321, -0.703633, -0.705895,
		-0.566581, 0.550040, -0.613548,
		0.819983, 0.449842, -0.353935,
		25.518448, 32.119350, 33.145130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833603, 31.716139, 32.650238>,  <24.944460, 31.804462, 33.392887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833603, 31.716139, 32.650238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223783, 31.794184, 32.691074>,  <25.457891, 31.841011, 32.715576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223783, 31.794184, 32.691074>,  <24.833603, 31.716139, 32.650238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223783, 31.794184, 32.691074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214345, -0.735007, -0.643290,
		-0.050477, 0.649381, -0.758786,
		0.975453, 0.195113, 0.102091,
		25.516418, 31.852718, 32.721703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151905, 31.606804, 32.025471>,  <24.833603, 31.716139, 32.650238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151905, 31.606804, 32.025471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422911, 31.568821, 32.317211>,  <25.585514, 31.546030, 32.492256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422911, 31.568821, 32.317211>,  <25.151905, 31.606804, 32.025471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422911, 31.568821, 32.317211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417611, -0.766624, -0.487738,
		0.605457, 0.635035, -0.479742,
		0.677512, -0.094959, 0.729356,
		25.626163, 31.540333, 32.536018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482147, 30.954651, 31.582186>,  <25.151905, 31.606804, 32.025471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482147, 30.954651, 31.582186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837009, 30.799870, 31.682760>,  <26.049927, 30.707001, 31.743105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837009, 30.799870, 31.682760>,  <25.482147, 30.954651, 31.582186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837009, 30.799870, 31.682760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183937, 0.796225, 0.576362,
		-0.423226, -0.465075, 0.777551,
		0.887157, -0.386952, 0.251438,
		26.103157, 30.683784, 31.758192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541592, 30.706825, 32.216164>,  <25.482147, 30.954651, 31.582186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541592, 30.706825, 32.216164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877132, 30.888105, 32.095539>,  <26.078457, 30.996874, 32.023167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877132, 30.888105, 32.095539>,  <25.541592, 30.706825, 32.216164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877132, 30.888105, 32.095539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184403, 0.757793, 0.625896,
		0.512175, -0.469425, 0.719247,
		0.838851, 0.453200, -0.301559,
		26.128788, 31.024065, 32.005070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884281, 30.917570, 32.889259>,  <25.541592, 30.706825, 32.216164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884281, 30.917570, 32.889259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035021, 31.117670, 32.577431>,  <26.125463, 31.237730, 32.390335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035021, 31.117670, 32.577431>,  <25.884281, 30.917570, 32.889259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035021, 31.117670, 32.577431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038102, 0.849281, 0.526564,
		0.925491, -0.168731, 0.339111,
		0.376848, 0.500251, -0.779573,
		26.148075, 31.267746, 32.343559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471464, 31.458757, 33.113434>,  <25.884281, 30.917570, 32.889259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471464, 31.458757, 33.113434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292778, 31.591475, 32.781082>,  <26.185566, 31.671104, 32.581673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292778, 31.591475, 32.781082>,  <26.471464, 31.458757, 33.113434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292778, 31.591475, 32.781082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169254, 0.880582, 0.442638,
		0.878521, 0.338363, -0.337212,
		-0.446715, 0.331792, -0.830879,
		26.158764, 31.691011, 32.531818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814434, 32.078178, 32.869232>,  <26.471464, 31.458757, 33.113434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814434, 32.078178, 32.869232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423767, 32.039288, 32.792633>,  <26.189367, 32.015953, 32.746674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423767, 32.039288, 32.792633>,  <26.814434, 32.078178, 32.869232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423767, 32.039288, 32.792633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184078, 0.838276, 0.513234,
		0.110626, 0.536508, -0.836613,
		-0.976667, -0.097225, -0.191494,
		26.130768, 32.010120, 32.735184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536549, 32.725220, 32.542725>,  <26.814434, 32.078178, 32.869232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536549, 32.725220, 32.542725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250422, 32.516502, 32.728649>,  <26.078745, 32.391273, 32.840206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250422, 32.516502, 32.728649>,  <26.536549, 32.725220, 32.542725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250422, 32.516502, 32.728649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197850, 0.789172, 0.581431,
		-0.670205, 0.323945, -0.667746,
		-0.715319, -0.521791, 0.464815,
		26.035826, 32.359966, 32.868095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963411, 33.173027, 32.488811>,  <26.536549, 32.725220, 32.542725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963411, 33.173027, 32.488811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845324, 32.922573, 32.777477>,  <25.774471, 32.772301, 32.950676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845324, 32.922573, 32.777477>,  <25.963411, 33.173027, 32.488811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845324, 32.922573, 32.777477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197522, 0.779012, 0.595085,
		-0.934789, 0.033136, -0.353655,
		-0.295220, -0.626133, 0.721667,
		25.756758, 32.734734, 32.993977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312925, 33.529877, 32.622593>,  <25.963411, 33.173027, 32.488811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312925, 33.529877, 32.622593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.453852, 33.304604, 32.921577>,  <25.538408, 33.169441, 33.100967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.453852, 33.304604, 32.921577>,  <25.312925, 33.529877, 32.622593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.453852, 33.304604, 32.921577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322201, 0.676857, 0.661855,
		-0.878670, -0.474014, 0.057009,
		0.352315, -0.563183, 0.747462,
		25.559546, 33.135647, 33.145817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196493, 33.847134, 33.213570>,  <25.312925, 33.529877, 32.622593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196493, 33.847134, 33.213570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464346, 33.586056, 33.355320>,  <25.625057, 33.429409, 33.440369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464346, 33.586056, 33.355320>,  <25.196493, 33.847134, 33.213570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464346, 33.586056, 33.355320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011400, 0.468063, 0.883622,
		-0.742605, -0.595742, 0.305990,
		0.669633, -0.652693, 0.354377,
		25.665236, 33.390247, 33.461632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708923, 33.375648, 33.361820>,  <25.196493, 33.847134, 33.213570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708923, 33.375648, 33.361820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064863, 33.281315, 33.518051>,  <25.278427, 33.224716, 33.611790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064863, 33.281315, 33.518051>,  <24.708923, 33.375648, 33.361820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.064863, 33.281315, 33.518051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193779, 0.579656, 0.791485,
		-0.413061, -0.779988, 0.470106,
		0.889848, -0.235835, 0.390579,
		25.331818, 33.210564, 33.635223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.686483, 33.190434, 34.036366>,  <24.708923, 33.375648, 33.361820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.686483, 33.190434, 34.036366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067612, 33.309711, 34.013691>,  <25.296288, 33.381279, 34.000088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067612, 33.309711, 34.013691>,  <24.686483, 33.190434, 34.036366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067612, 33.309711, 34.013691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138505, 0.593305, 0.792972,
		0.270095, -0.747708, 0.606615,
		0.952820, 0.298197, -0.056687,
		25.353458, 33.399170, 33.996685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103500, 33.056129, 34.646439>,  <24.686483, 33.190434, 34.036366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103500, 33.056129, 34.646439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276361, 33.378899, 34.485382>,  <25.380079, 33.572559, 34.388748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276361, 33.378899, 34.485382>,  <25.103500, 33.056129, 34.646439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276361, 33.378899, 34.485382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176278, 0.513457, 0.839814,
		0.884403, -0.291952, 0.364136,
		0.432154, 0.806924, -0.402638,
		25.406008, 33.620975, 34.364590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450148, 33.314640, 35.254967>,  <25.103500, 33.056129, 34.646439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450148, 33.314640, 35.254967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629412, 33.426922, 34.915470>,  <25.736969, 33.494289, 34.711773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629412, 33.426922, 34.915470>,  <25.450148, 33.314640, 35.254967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629412, 33.426922, 34.915470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472604, 0.731504, 0.491475,
		0.758815, -0.621376, 0.195169,
		0.448158, 0.280701, -0.848741,
		25.763859, 33.511131, 34.660847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140726, 33.433582, 35.389400>,  <25.450148, 33.314640, 35.254967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140726, 33.433582, 35.389400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050556, 33.667068, 35.077385>,  <25.996454, 33.807159, 34.890175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050556, 33.667068, 35.077385>,  <26.140726, 33.433582, 35.389400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050556, 33.667068, 35.077385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354094, 0.794984, 0.492563,
		0.907634, -0.165171, -0.385900,
		-0.225427, 0.583711, -0.780041,
		25.982927, 33.842182, 34.843372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672749, 33.836113, 35.319065>,  <26.140726, 33.433582, 35.389400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672749, 33.836113, 35.319065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394869, 34.027252, 35.104012>,  <26.228140, 34.141933, 34.974979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394869, 34.027252, 35.104012>,  <26.672749, 33.836113, 35.319065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394869, 34.027252, 35.104012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201691, 0.846867, 0.492074,
		0.690443, 0.233408, -0.684697,
		-0.694701, 0.477846, -0.537637,
		26.186459, 34.170605, 34.942719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021797, 34.461487, 34.924984>,  <26.672749, 33.836113, 35.319065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021797, 34.461487, 34.924984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631100, 34.485332, 35.007362>,  <26.396681, 34.499641, 35.056789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631100, 34.485332, 35.007362>,  <27.021797, 34.461487, 34.924984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631100, 34.485332, 35.007362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164799, 0.823209, 0.543294,
		-0.137149, 0.564600, -0.813890,
		-0.976745, 0.059616, 0.205948,
		26.338076, 34.503216, 35.069145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606554, 35.104843, 34.640427>,  <27.021797, 34.461487, 34.924984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606554, 35.104843, 34.640427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500662, 34.931343, 34.984932>,  <26.437126, 34.827244, 35.191635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500662, 34.931343, 34.984932>,  <26.606554, 35.104843, 34.640427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500662, 34.931343, 34.984932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391325, 0.767966, 0.507043,
		-0.881353, 0.471265, -0.033567,
		-0.264730, -0.433748, 0.861267,
		26.421244, 34.801220, 35.243313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394777, 35.659470, 34.996429>,  <26.606554, 35.104843, 34.640427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394777, 35.659470, 34.996429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469969, 35.365280, 35.256813>,  <26.515083, 35.188766, 35.413044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469969, 35.365280, 35.256813>,  <26.394777, 35.659470, 34.996429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469969, 35.365280, 35.256813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453066, 0.652979, 0.606919,
		-0.871433, 0.180839, 0.455963,
		0.187979, -0.735470, 0.650959,
		26.526363, 35.144638, 35.452103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359390, 35.907040, 35.656174>,  <26.394777, 35.659470, 34.996429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359390, 35.907040, 35.656174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593393, 35.591419, 35.731186>,  <26.733795, 35.402046, 35.776196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593393, 35.591419, 35.731186>,  <26.359390, 35.907040, 35.656174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593393, 35.591419, 35.731186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430246, 0.497943, 0.752955,
		-0.687499, -0.359799, 0.630785,
		0.585008, -0.789049, 0.187533,
		26.768896, 35.354706, 35.787445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217487, 35.603809, 36.353012>,  <26.359390, 35.907040, 35.656174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217487, 35.603809, 36.353012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598169, 35.519287, 36.263920>,  <26.826578, 35.468575, 36.210464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598169, 35.519287, 36.263920>,  <26.217487, 35.603809, 36.353012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598169, 35.519287, 36.263920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294923, 0.427570, 0.854520,
		-0.085331, -0.878939, 0.469238,
		0.951703, -0.211306, -0.222735,
		26.883680, 35.455894, 36.197098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547848, 35.428661, 36.981964>,  <26.217487, 35.603809, 36.353012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547848, 35.428661, 36.981964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856377, 35.522812, 36.745438>,  <27.041494, 35.579304, 36.603519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856377, 35.522812, 36.745438>,  <26.547848, 35.428661, 36.981964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856377, 35.522812, 36.745438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410030, 0.526812, 0.744543,
		0.486759, -0.816743, 0.309834,
		0.771324, 0.235372, -0.591320,
		27.087772, 35.593426, 36.568043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104721, 35.233902, 37.339302>,  <26.547848, 35.428661, 36.981964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104721, 35.233902, 37.339302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234106, 35.507496, 37.077759>,  <27.311737, 35.671654, 36.920834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234106, 35.507496, 37.077759>,  <27.104721, 35.233902, 37.339302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234106, 35.507496, 37.077759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485464, 0.473176, 0.735139,
		0.812217, -0.555216, -0.178996,
		0.323464, 0.683988, -0.653859,
		27.331146, 35.712692, 36.881599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529007, 34.731384, 36.888447>,  <27.104721, 35.233902, 37.339302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529007, 34.731384, 36.888447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722279, 34.502769, 36.623154>,  <27.838242, 34.365601, 36.463978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722279, 34.502769, 36.623154>,  <27.529007, 34.731384, 36.888447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722279, 34.502769, 36.623154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349212, 0.820474, -0.452629,
		0.802862, -0.012908, 0.596025,
		0.483180, -0.571538, -0.663235,
		27.867233, 34.331306, 36.424183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199800, 34.997265, 36.674011>,  <27.529007, 34.731384, 36.888447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199800, 34.997265, 36.674011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153776, 34.770828, 36.347504>,  <28.126162, 34.634964, 36.151600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153776, 34.770828, 36.347504>,  <28.199800, 34.997265, 36.674011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153776, 34.770828, 36.347504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289640, 0.766902, -0.572687,
		0.950194, -0.302319, 0.075723,
		-0.115062, -0.566096, -0.816270,
		28.119257, 34.600998, 36.102623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900068, 35.233398, 37.325718>,  <28.199800, 34.997265, 36.674011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900068, 35.233398, 37.325718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778702, 35.586517, 37.182270>,  <27.705883, 35.798389, 37.096203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778702, 35.586517, 37.182270>,  <27.900068, 35.233398, 37.325718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778702, 35.586517, 37.182270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524040, 0.468931, 0.710975,
		0.795815, 0.027789, -0.604902,
		-0.303415, 0.882798, -0.358619,
		27.687677, 35.851357, 37.074684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427195, 35.666595, 37.208504>,  <27.900068, 35.233398, 37.325718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427195, 35.666595, 37.208504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137926, 35.940918, 37.241219>,  <27.964365, 36.105511, 37.260845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137926, 35.940918, 37.241219>,  <28.427195, 35.666595, 37.208504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137926, 35.940918, 37.241219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468670, 0.400294, 0.787472,
		0.507319, 0.607807, -0.610900,
		-0.723170, 0.685810, 0.081784,
		27.920975, 36.146660, 37.265755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825935, 36.350502, 37.238396>,  <28.427195, 35.666595, 37.208504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825935, 36.350502, 37.238396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454855, 36.397930, 37.379993>,  <28.232206, 36.426388, 37.464951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454855, 36.397930, 37.379993>,  <28.825935, 36.350502, 37.238396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454855, 36.397930, 37.379993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365587, 0.480567, 0.797121,
		-0.075603, 0.868905, -0.489171,
		-0.927702, 0.118569, 0.353993,
		28.176544, 36.433502, 37.486191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788029, 37.008427, 37.527485>,  <28.825935, 36.350502, 37.238396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788029, 37.008427, 37.527485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495907, 36.812187, 37.717628>,  <28.320635, 36.694443, 37.831715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495907, 36.812187, 37.717628>,  <28.788029, 37.008427, 37.527485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495907, 36.812187, 37.717628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256598, 0.447898, 0.856472,
		-0.633099, 0.747461, -0.201215,
		-0.730304, -0.490600, 0.475361,
		28.276815, 36.665009, 37.860237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573076, 36.922554, 38.178211>,  <28.788029, 37.008427, 37.527485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573076, 36.922554, 38.178211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302881, 37.008625, 38.460323>,  <28.140764, 37.060268, 38.629589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302881, 37.008625, 38.460323>,  <28.573076, 36.922554, 38.178211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302881, 37.008625, 38.460323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737325, -0.208119, -0.642681,
		0.008494, -0.954142, 0.299234,
		-0.675485, 0.215174, 0.705280,
		28.100235, 37.073177, 38.671906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208849, 36.282715, 38.457321>,  <28.573076, 36.922554, 38.178211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208849, 36.282715, 38.457321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013746, 36.630707, 38.428410>,  <27.896685, 36.839504, 38.411064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013746, 36.630707, 38.428410>,  <28.208849, 36.282715, 38.457321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013746, 36.630707, 38.428410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384681, -0.288517, -0.876801,
		-0.783655, -0.399860, 0.475391,
		-0.487755, 0.869983, -0.072279,
		27.867420, 36.891701, 38.406727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402050, 36.239460, 38.371178>,  <28.208849, 36.282715, 38.457321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402050, 36.239460, 38.371178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614697, 36.506535, 38.162727>,  <27.742285, 36.666779, 38.037655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614697, 36.506535, 38.162727>,  <27.402050, 36.239460, 38.371178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614697, 36.506535, 38.162727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375624, -0.365606, -0.851610,
		-0.759140, 0.648476, 0.056439,
		0.531614, 0.667690, -0.521129,
		27.774181, 36.706841, 38.006390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975346, 36.613331, 37.929195>,  <27.402050, 36.239460, 38.371178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975346, 36.613331, 37.929195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345036, 36.590233, 37.778210>,  <27.566849, 36.576374, 37.687618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345036, 36.590233, 37.778210>,  <26.975346, 36.613331, 37.929195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345036, 36.590233, 37.778210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363873, -0.432954, -0.824711,
		-0.115799, 0.899564, -0.421158,
		0.924223, -0.057748, -0.377462,
		27.622303, 36.572910, 37.664970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994978, 37.012501, 37.204937>,  <26.975346, 36.613331, 37.929195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994978, 37.012501, 37.204937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296276, 36.750355, 37.227249>,  <27.477055, 36.593067, 37.240635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296276, 36.750355, 37.227249>,  <26.994978, 37.012501, 37.204937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296276, 36.750355, 37.227249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240761, -0.353650, -0.903862,
		0.612090, 0.667400, -0.424172,
		0.753246, -0.655369, 0.055782,
		27.522249, 36.553745, 37.243984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287342, 36.972675, 36.515919>,  <26.994978, 37.012501, 37.204937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287342, 36.972675, 36.515919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405291, 36.633781, 36.692665>,  <27.476061, 36.430447, 36.798714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405291, 36.633781, 36.692665>,  <27.287342, 36.972675, 36.515919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405291, 36.633781, 36.692665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179491, -0.503312, -0.845258,
		0.938527, 0.169932, -0.300484,
		0.294873, -0.847231, 0.441870,
		27.493753, 36.379612, 36.825226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810163, 36.564404, 36.079292>,  <27.287342, 36.972675, 36.515919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810163, 36.564404, 36.079292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627283, 36.297745, 36.314766>,  <27.517555, 36.137749, 36.456051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627283, 36.297745, 36.314766>,  <27.810163, 36.564404, 36.079292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627283, 36.297745, 36.314766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156321, -0.591378, -0.791098,
		0.875518, -0.453714, 0.166168,
		-0.457200, -0.666645, 0.588687,
		27.490124, 36.097752, 36.491371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096237, 35.924404, 35.835423>,  <27.810163, 36.564404, 36.079292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096237, 35.924404, 35.835423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777113, 35.823452, 36.054443>,  <27.585638, 35.762882, 36.185856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777113, 35.823452, 36.054443>,  <28.096237, 35.924404, 35.835423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777113, 35.823452, 36.054443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213602, -0.730950, -0.648141,
		0.563805, -0.634050, 0.529250,
		-0.797808, -0.252376, 0.547548,
		27.537771, 35.747738, 36.218708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073221, 35.190079, 35.859337>,  <28.096237, 35.924404, 35.835423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073221, 35.190079, 35.859337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695423, 35.267426, 35.965572>,  <27.468744, 35.313835, 36.029312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695423, 35.267426, 35.965572>,  <28.073221, 35.190079, 35.859337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695423, 35.267426, 35.965572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327586, -0.615330, -0.716977,
		0.024785, -0.764185, 0.644521,
		-0.944496, 0.193366, 0.265588,
		27.412075, 35.325436, 36.045250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824535, 35.142429, 35.724392>,  <28.073221, 35.190079, 35.859337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824535, 35.142429, 35.724392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815611, 34.767750, 35.584621>,  <28.810255, 34.542942, 35.500759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815611, 34.767750, 35.584621>,  <28.824535, 35.142429, 35.724392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815611, 34.767750, 35.584621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997206, -0.045774, 0.059031,
		-0.071289, -0.347131, 0.935103,
		-0.022312, -0.936699, -0.349424,
		28.808918, 34.486740, 35.479794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080181, 34.577347, 36.227009>,  <28.824535, 35.142429, 35.724392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080181, 34.577347, 36.227009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152708, 34.430309, 35.862152>,  <29.196224, 34.342087, 35.643238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152708, 34.430309, 35.862152>,  <29.080181, 34.577347, 36.227009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152708, 34.430309, 35.862152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967604, -0.099021, 0.232246,
		-0.175692, -0.924701, 0.337727,
		0.181316, -0.367590, -0.912142,
		29.207104, 34.320034, 35.588509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565620, 34.066856, 36.327351>,  <29.080181, 34.577347, 36.227009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565620, 34.066856, 36.327351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582928, 34.204754, 35.952271>,  <29.593311, 34.287491, 35.727222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582928, 34.204754, 35.952271>,  <29.565620, 34.066856, 36.327351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582928, 34.204754, 35.952271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997801, -0.062091, 0.023212,
		-0.050221, -0.936641, -0.346671,
		0.043266, 0.344743, -0.937700,
		29.595907, 34.308178, 35.670959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989788, 33.659126, 35.946857>,  <29.565620, 34.066856, 36.327351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989788, 33.659126, 35.946857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015497, 34.005459, 35.748379>,  <30.030922, 34.213257, 35.629292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015497, 34.005459, 35.748379>,  <29.989788, 33.659126, 35.946857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015497, 34.005459, 35.748379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991801, -0.110455, -0.064271,
		-0.110455, -0.487999, -0.865827,
		0.064271, 0.865827, -0.496198,
		30.034779, 34.265205, 35.599518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346443, 33.618217, 35.239616>,  <29.989788, 33.659126, 35.946857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346443, 33.618217, 35.239616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398144, 33.943901, 35.466015>,  <30.429165, 34.139313, 35.601856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398144, 33.943901, 35.466015>,  <30.346443, 33.618217, 35.239616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398144, 33.943901, 35.466015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975526, -0.002016, -0.219874,
		-0.177883, 0.580566, -0.794545,
		0.129253, 0.814211, 0.565998,
		30.436920, 34.188164, 35.635815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964617, 34.067066, 34.892052>,  <30.346443, 33.618217, 35.239616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964617, 34.067066, 34.892052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961485, 34.208794, 35.266087>,  <30.959606, 34.293831, 35.490509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961485, 34.208794, 35.266087>,  <30.964617, 34.067066, 34.892052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961485, 34.208794, 35.266087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960172, 0.263849, -0.091938,
		-0.279298, 0.897128, -0.342277,
		-0.007829, 0.354323, 0.935090,
		30.959137, 34.315090, 35.546616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092863, 34.771297, 34.861153>,  <30.964617, 34.067066, 34.892052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092863, 34.771297, 34.861153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233438, 34.588165, 35.187805>,  <31.317783, 34.478287, 35.383797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233438, 34.588165, 35.187805>,  <31.092863, 34.771297, 34.861153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233438, 34.588165, 35.187805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934249, 0.227944, -0.274265,
		-0.060578, 0.859320, 0.507838,
		0.351440, -0.457832, 0.816627,
		31.338871, 34.450817, 35.432793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692739, 35.068619, 35.188225>,  <31.092863, 34.771297, 34.861153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692739, 35.068619, 35.188225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740860, 34.690742, 35.310261>,  <31.769732, 34.464016, 35.383484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740860, 34.690742, 35.310261>,  <31.692739, 35.068619, 35.188225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740860, 34.690742, 35.310261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988911, 0.087080, -0.120300,
		0.087080, 0.316180, 0.944694,
		0.120300, -0.944694, 0.305091,
		31.776951, 34.407333, 35.401787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294971, 34.989079, 35.609741>,  <31.692739, 35.068619, 35.188225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294971, 34.989079, 35.609741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212482, 34.616852, 35.488735>,  <32.162991, 34.393517, 35.416130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212482, 34.616852, 35.488735>,  <32.294971, 34.989079, 35.609741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212482, 34.616852, 35.488735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964715, -0.141632, -0.221958,
		0.163702, -0.337611, 0.926941,
		-0.206220, -0.930569, -0.302514,
		32.150616, 34.337681, 35.397980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739441, 34.497559, 35.988968>,  <32.294971, 34.989079, 35.609741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739441, 34.497559, 35.988968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641376, 34.320061, 35.644180>,  <32.582539, 34.213562, 35.437309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641376, 34.320061, 35.644180>,  <32.739441, 34.497559, 35.988968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641376, 34.320061, 35.644180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954246, -0.267459, -0.133720,
		-0.171203, -0.855312, 0.489011,
		-0.245162, -0.443743, -0.861967,
		32.567829, 34.186939, 35.385590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362988, 34.280647, 35.902473>,  <32.739441, 34.497559, 35.988968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362988, 34.280647, 35.902473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178741, 34.163948, 35.567162>,  <33.068192, 34.093929, 35.365974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178741, 34.163948, 35.567162>,  <33.362988, 34.280647, 35.902473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178741, 34.163948, 35.567162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861311, -0.375063, -0.342740,
		-0.214412, -0.879892, 0.424050,
		-0.460619, -0.291751, -0.838279,
		33.040554, 34.076424, 35.315678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525921, 33.562180, 35.927761>,  <33.362988, 34.280647, 35.902473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525921, 33.562180, 35.927761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425900, 33.720715, 35.574402>,  <33.365887, 33.815838, 35.362389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425900, 33.720715, 35.574402>,  <33.525921, 33.562180, 35.927761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425900, 33.720715, 35.574402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766555, -0.476336, -0.430694,
		-0.591494, -0.784868, -0.184706,
		-0.250056, 0.396340, -0.883395,
		33.350883, 33.839615, 35.309383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878468, 33.129623, 35.508495>,  <33.525921, 33.562180, 35.927761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878468, 33.129623, 35.508495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743259, 33.394558, 35.241047>,  <33.662136, 33.553520, 35.080578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743259, 33.394558, 35.241047>,  <33.878468, 33.129623, 35.508495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743259, 33.394558, 35.241047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629627, -0.368888, -0.683733,
		-0.699508, -0.652096, -0.292334,
		-0.338021, 0.662339, -0.668618,
		33.641853, 33.593258, 35.040462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432751, 32.893692, 34.875252>,  <33.878468, 33.129623, 35.508495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432751, 32.893692, 34.875252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724728, 33.166977, 34.883247>,  <33.899914, 33.330948, 34.888042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724728, 33.166977, 34.883247>,  <33.432751, 32.893692, 34.875252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724728, 33.166977, 34.883247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616535, -0.645521, -0.450763,
		-0.295066, 0.341354, -0.892420,
		0.729945, 0.683213, 0.019985,
		33.943710, 33.371941, 34.889244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753876, 32.911526, 34.127003>,  <33.432751, 32.893692, 34.875252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753876, 32.911526, 34.127003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974663, 32.989544, 34.451294>,  <34.107136, 33.036354, 34.645870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974663, 32.989544, 34.451294>,  <33.753876, 32.911526, 34.127003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974663, 32.989544, 34.451294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650139, -0.709481, -0.271949,
		0.522155, 0.677196, -0.518421,
		0.551972, 0.195046, 0.810730,
		34.140255, 33.048058, 34.694511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489792, 33.124626, 34.042301>,  <33.753876, 32.911526, 34.127003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489792, 33.124626, 34.042301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416557, 32.860363, 34.333508>,  <34.372616, 32.701805, 34.508232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416557, 32.860363, 34.333508>,  <34.489792, 33.124626, 34.042301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416557, 32.860363, 34.333508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606154, -0.658880, -0.445482,
		0.773987, 0.359725, 0.521097,
		-0.183090, -0.660662, 0.728013,
		34.361629, 32.662163, 34.551910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147930, 32.879749, 34.282772>,  <34.489792, 33.124626, 34.042301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147930, 32.879749, 34.282772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884537, 32.589191, 34.361519>,  <34.726501, 32.414856, 34.408768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884537, 32.589191, 34.361519>,  <35.147930, 32.879749, 34.282772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884537, 32.589191, 34.361519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533341, -0.634958, -0.558905,
		0.530987, -0.263031, 0.805523,
		-0.658483, -0.726390, 0.196869,
		34.686993, 32.371273, 34.420578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476974, 32.238911, 34.525455>,  <35.147930, 32.879749, 34.282772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476974, 32.238911, 34.525455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130161, 32.145061, 34.349640>,  <34.922073, 32.088753, 34.244148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.130161, 32.145061, 34.349640>,  <35.476974, 32.238911, 34.525455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130161, 32.145061, 34.349640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471480, -0.671601, -0.571540,
		-0.161100, -0.702782, 0.692925,
		-0.867037, -0.234625, -0.439543,
		34.870049, 32.074673, 34.217777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459255, 31.455290, 34.544971>,  <35.476974, 32.238911, 34.525455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459255, 31.455290, 34.544971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232441, 31.603649, 34.250786>,  <35.096352, 31.692665, 34.074276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232441, 31.603649, 34.250786>,  <35.459255, 31.455290, 34.544971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232441, 31.603649, 34.250786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280818, -0.752341, -0.595923,
		-0.774343, -0.544443, 0.322452,
		-0.567040, 0.370898, -0.735459,
		35.062328, 31.714918, 34.030148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051376, 30.881104, 34.296829>,  <35.459255, 31.455290, 34.544971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051376, 30.881104, 34.296829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063835, 31.171816, 34.022362>,  <35.071312, 31.346243, 33.857681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063835, 31.171816, 34.022362>,  <35.051376, 30.881104, 34.296829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063835, 31.171816, 34.022362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177982, -0.679560, -0.711703,
		-0.983541, -0.099956, -0.150521,
		0.031149, 0.726778, -0.686165,
		35.073181, 31.389849, 33.816513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520493, 30.682234, 33.752945>,  <35.051376, 30.881104, 34.296829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520493, 30.682234, 33.752945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811966, 30.906012, 33.594933>,  <34.986851, 31.040279, 33.500126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811966, 30.906012, 33.594933>,  <34.520493, 30.682234, 33.752945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811966, 30.906012, 33.594933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156513, -0.697574, -0.699209,
		-0.666730, 0.447673, -0.595869,
		0.728680, 0.559445, -0.395027,
		35.030571, 31.073845, 33.476425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495457, 30.719820, 32.994308>,  <34.520493, 30.682234, 33.752945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495457, 30.719820, 32.994308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869942, 30.811077, 33.101231>,  <35.094631, 30.865831, 33.165386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869942, 30.811077, 33.101231>,  <34.495457, 30.719820, 32.994308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869942, 30.811077, 33.101231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349666, -0.680870, -0.643545,
		0.035182, 0.695964, -0.717214,
		0.936214, 0.228144, 0.267309,
		35.150806, 30.879520, 33.181423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841705, 30.737648, 32.297882>,  <34.495457, 30.719820, 32.994308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841705, 30.737648, 32.297882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129723, 30.727993, 32.575287>,  <35.302532, 30.722200, 32.741730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129723, 30.727993, 32.575287>,  <34.841705, 30.737648, 32.297882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129723, 30.727993, 32.575287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545712, -0.597643, -0.587385,
		0.428653, 0.801398, -0.417154,
		0.720039, -0.024139, 0.693514,
		35.345734, 30.720751, 32.783340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338032, 31.007055, 31.927040>,  <34.841705, 30.737648, 32.297882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338032, 31.007055, 31.927040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491356, 30.788586, 32.224972>,  <35.583351, 30.657505, 32.403732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491356, 30.788586, 32.224972>,  <35.338032, 31.007055, 31.927040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491356, 30.788586, 32.224972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564530, -0.499715, -0.656955,
		0.731014, 0.672294, 0.116786,
		0.383308, -0.546173, 0.744829,
		35.606350, 30.624733, 32.448421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084587, 31.098486, 31.897888>,  <35.338032, 31.007055, 31.927040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084587, 31.098486, 31.897888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031837, 30.764431, 32.111488>,  <36.000187, 30.563997, 32.239647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031837, 30.764431, 32.111488>,  <36.084587, 31.098486, 31.897888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031837, 30.764431, 32.111488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804196, -0.405091, -0.434937,
		0.579551, 0.372083, 0.725035,
		-0.131872, -0.835138, 0.533998,
		35.992275, 30.513889, 32.271687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779430, 30.924547, 31.989780>,  <36.084587, 31.098486, 31.897888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779430, 30.924547, 31.989780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560455, 30.601175, 32.076275>,  <36.429070, 30.407152, 32.128170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560455, 30.601175, 32.076275>,  <36.779430, 30.924547, 31.989780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560455, 30.601175, 32.076275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688143, -0.581909, -0.433407,
		0.476209, -0.088460, 0.874871,
		-0.547435, -0.808429, 0.216237,
		36.396225, 30.358646, 32.141148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257133, 30.308479, 32.248043>,  <36.779430, 30.924547, 31.989780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257133, 30.308479, 32.248043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929947, 30.137959, 32.093536>,  <36.733635, 30.035646, 32.000832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929947, 30.137959, 32.093536>,  <37.257133, 30.308479, 32.248043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929947, 30.137959, 32.093536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573094, -0.545506, -0.611545,
		0.049989, -0.721590, 0.690513,
		-0.817964, -0.426300, -0.386269,
		36.684559, 30.010069, 31.977655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433002, 29.651318, 32.292236>,  <37.257133, 30.308479, 32.248043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433002, 29.651318, 32.292236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157021, 29.664860, 32.003014>,  <36.991432, 29.672985, 31.829479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157021, 29.664860, 32.003014>,  <37.433002, 29.651318, 32.292236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157021, 29.664860, 32.003014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544230, -0.634347, -0.549015,
		-0.477260, -0.772306, 0.419245,
		-0.689954, 0.033857, -0.723061,
		36.950035, 29.675016, 31.786095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669102, 29.220110, 31.850943>,  <37.433002, 29.651318, 32.292236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669102, 29.220110, 31.850943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380875, 29.342726, 31.602167>,  <37.207939, 29.416296, 31.452902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380875, 29.342726, 31.602167>,  <37.669102, 29.220110, 31.850943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380875, 29.342726, 31.602167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505030, -0.382573, -0.773681,
		-0.475103, -0.871591, 0.120859,
		-0.720571, 0.306541, -0.621941,
		37.164703, 29.434689, 31.415585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583595, 28.636017, 31.402517>,  <37.669102, 29.220110, 31.850943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583595, 28.636017, 31.402517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413288, 28.930939, 31.192717>,  <37.311104, 29.107891, 31.066835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413288, 28.930939, 31.192717>,  <37.583595, 28.636017, 31.402517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413288, 28.930939, 31.192717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371954, -0.385808, -0.844276,
		-0.824846, -0.554557, -0.109979,
		-0.425768, 0.737305, -0.524502,
		37.285557, 29.152130, 31.035366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334831, 28.291916, 30.849566>,  <37.583595, 28.636017, 31.402517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334831, 28.291916, 30.849566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353153, 28.672138, 30.726702>,  <37.364147, 28.900272, 30.652985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353153, 28.672138, 30.726702>,  <37.334831, 28.291916, 30.849566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353153, 28.672138, 30.726702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364436, -0.302189, -0.880834,
		-0.930102, -0.071596, -0.360257,
		0.045801, 0.950556, -0.307158,
		37.366894, 28.957304, 30.634554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159306, 28.285524, 30.094704>,  <37.334831, 28.291916, 30.849566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159306, 28.285524, 30.094704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340206, 28.638901, 30.143700>,  <37.448746, 28.850927, 30.173098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340206, 28.638901, 30.143700>,  <37.159306, 28.285524, 30.094704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340206, 28.638901, 30.143700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370755, -0.061309, -0.926705,
		-0.811180, 0.464514, -0.355267,
		0.452248, 0.883441, 0.122489,
		37.475880, 28.903933, 30.180447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917839, 28.648890, 29.563225>,  <37.159306, 28.285524, 30.094704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917839, 28.648890, 29.563225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273521, 28.782421, 29.688366>,  <37.486931, 28.862541, 29.763451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273521, 28.782421, 29.688366>,  <36.917839, 28.648890, 29.563225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273521, 28.782421, 29.688366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308417, 0.067702, -0.948839,
		-0.337932, 0.940199, -0.042758,
		0.889202, 0.333831, 0.312852,
		37.540283, 28.882570, 29.782221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036331, 29.236034, 29.129395>,  <36.917839, 28.648890, 29.563225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036331, 29.236034, 29.129395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392445, 29.138014, 29.282938>,  <37.606113, 29.079203, 29.375065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392445, 29.138014, 29.282938>,  <37.036331, 29.236034, 29.129395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392445, 29.138014, 29.282938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427253, 0.157649, -0.890282,
		0.157649, 0.956607, 0.245050,
		0.890282, -0.245050, 0.383860,
		37.659531, 29.064499, 29.398096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466549, 29.820059, 28.942780>,  <37.036331, 29.236034, 29.129395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466549, 29.820059, 28.942780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649380, 29.470793, 29.010500>,  <37.759079, 29.261232, 29.051132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649380, 29.470793, 29.010500>,  <37.466549, 29.820059, 28.942780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649380, 29.470793, 29.010500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393281, 0.027684, -0.919002,
		0.797754, 0.486636, 0.356053,
		0.457076, -0.873166, 0.169299,
		37.786503, 29.208843, 29.061289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061615, 29.949366, 28.707930>,  <37.466549, 29.820059, 28.942780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061615, 29.949366, 28.707930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043877, 29.549908, 28.718826>,  <38.033234, 29.310232, 28.725365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043877, 29.549908, 28.718826>,  <38.061615, 29.949366, 28.707930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043877, 29.549908, 28.718826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324063, -0.040174, -0.945182,
		0.944996, -0.033089, 0.325405,
		-0.044348, -0.998645, 0.027241,
		38.030571, 29.250315, 28.726999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582611, 29.868174, 28.369425>,  <38.061615, 29.949366, 28.707930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582611, 29.868174, 28.369425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441456, 29.494041, 28.379477>,  <38.356762, 29.269562, 28.385508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441456, 29.494041, 28.379477>,  <38.582611, 29.868174, 28.369425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441456, 29.494041, 28.379477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264757, -0.125576, -0.956104,
		0.897426, -0.330744, 0.291949,
		-0.352888, -0.935328, 0.025129,
		38.335590, 29.213444, 28.387014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117218, 29.413313, 28.200335>,  <38.582611, 29.868174, 28.369425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117218, 29.413313, 28.200335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792301, 29.198397, 28.109552>,  <38.597351, 29.069447, 28.055082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792301, 29.198397, 28.109552>,  <39.117218, 29.413313, 28.200335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792301, 29.198397, 28.109552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210192, 0.093313, -0.973197,
		0.544066, -0.838220, 0.037136,
		-0.812288, -0.537289, -0.226955,
		38.548615, 29.037210, 28.041466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295033, 28.959641, 27.659845>,  <39.117218, 29.413313, 28.200335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295033, 28.959641, 27.659845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895283, 28.955427, 27.646318>,  <38.655434, 28.952900, 27.638203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895283, 28.955427, 27.646318>,  <39.295033, 28.959641, 27.659845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895283, 28.955427, 27.646318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035017, -0.149952, -0.988073,
		0.005337, -0.988637, 0.150226,
		-0.999372, -0.010533, -0.033819,
		38.595470, 28.952269, 27.636173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174667, 28.324492, 27.338446>,  <39.295033, 28.959641, 27.659845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174667, 28.324492, 27.338446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878254, 28.588869, 27.291071>,  <38.700405, 28.747496, 27.262646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878254, 28.588869, 27.291071>,  <39.174667, 28.324492, 27.338446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878254, 28.588869, 27.291071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035479, -0.137596, -0.989853,
		-0.670532, -0.737714, 0.078514,
		-0.741032, 0.660942, -0.118436,
		38.655945, 28.787151, 27.255541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796547, 28.135347, 26.623709>,  <39.174667, 28.324492, 27.338446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796547, 28.135347, 26.623709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652164, 28.500071, 26.702005>,  <38.565536, 28.718904, 26.748983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652164, 28.500071, 26.702005>,  <38.796547, 28.135347, 26.623709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652164, 28.500071, 26.702005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198262, 0.130066, -0.971481,
		-0.911265, -0.389469, 0.133829,
		-0.360955, 0.911810, 0.195741,
		38.543877, 28.773613, 26.760727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132435, 28.255577, 26.229805>,  <38.796547, 28.135347, 26.623709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132435, 28.255577, 26.229805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333233, 28.592972, 26.306259>,  <38.453712, 28.795408, 26.352131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333233, 28.592972, 26.306259>,  <38.132435, 28.255577, 26.229805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333233, 28.592972, 26.306259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096910, 0.274465, -0.956701,
		-0.859425, 0.461734, 0.219522,
		0.501992, 0.843487, 0.191135,
		38.483829, 28.846018, 26.363600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777912, 28.645384, 25.672867>,  <38.132435, 28.255577, 26.229805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777912, 28.645384, 25.672867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095215, 28.834253, 25.826643>,  <38.285595, 28.947575, 25.918909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095215, 28.834253, 25.826643>,  <37.777912, 28.645384, 25.672867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095215, 28.834253, 25.826643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163652, 0.442818, -0.881550,
		-0.586484, 0.762209, 0.273996,
		0.793255, 0.472175, 0.384443,
		38.333191, 28.975906, 25.941977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685215, 29.369564, 25.461529>,  <37.777912, 28.645384, 25.672867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685215, 29.369564, 25.461529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072273, 29.322531, 25.550829>,  <38.304508, 29.294312, 25.604410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072273, 29.322531, 25.550829>,  <37.685215, 29.369564, 25.461529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072273, 29.322531, 25.550829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251981, 0.404185, -0.879284,
		0.013154, 0.907088, 0.420735,
		0.967643, -0.117583, 0.223252,
		38.362568, 29.287256, 25.617805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038734, 30.052750, 25.326519>,  <37.685215, 29.369564, 25.461529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038734, 30.052750, 25.326519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331741, 29.781157, 25.346127>,  <38.507545, 29.618200, 25.357891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331741, 29.781157, 25.346127>,  <38.038734, 30.052750, 25.326519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331741, 29.781157, 25.346127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496223, 0.483278, -0.721252,
		0.466026, 0.552655, 0.690936,
		0.732518, -0.678981, 0.049020,
		38.551498, 29.577463, 25.360832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637127, 30.426855, 25.252403>,  <38.038734, 30.052750, 25.326519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637127, 30.426855, 25.252403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774429, 30.064337, 25.153765>,  <38.856812, 29.846827, 25.094582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774429, 30.064337, 25.153765>,  <38.637127, 30.426855, 25.252403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774429, 30.064337, 25.153765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482268, 0.395360, -0.781734,
		0.805974, 0.149407, 0.572785,
		0.343253, -0.906293, -0.246596,
		38.877407, 29.792448, 25.079786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386150, 30.568184, 25.015427>,  <38.637127, 30.426855, 25.252403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386150, 30.568184, 25.015427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270790, 30.206255, 24.890133>,  <39.201572, 29.989098, 24.814957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270790, 30.206255, 24.890133>,  <39.386150, 30.568184, 25.015427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270790, 30.206255, 24.890133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318790, 0.217736, -0.922477,
		0.902883, -0.365901, 0.225654,
		-0.288402, -0.904825, -0.313235,
		39.184269, 29.934807, 24.796162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822060, 30.491276, 24.448059>,  <39.386150, 30.568184, 25.015427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822060, 30.491276, 24.448059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528919, 30.222309, 24.406527>,  <39.353035, 30.060928, 24.381607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528919, 30.222309, 24.406527>,  <39.822060, 30.491276, 24.448059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528919, 30.222309, 24.406527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052312, 0.096466, -0.993961,
		0.678373, -0.733859, -0.035520,
		-0.732853, -0.672417, -0.103830,
		39.309063, 30.020584, 24.375378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997696, 29.952169, 23.945438>,  <39.822060, 30.491276, 24.448059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997696, 29.952169, 23.945438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605999, 30.033184, 23.942255>,  <39.370979, 30.081793, 23.940344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605999, 30.033184, 23.942255>,  <39.997696, 29.952169, 23.945438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605999, 30.033184, 23.942255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048090, 0.194002, -0.979822,
		-0.196907, -0.959866, -0.199715,
		-0.979242, 0.202538, -0.007960,
		39.312225, 30.093945, 23.939867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849670, 29.730808, 23.301170>,  <39.997696, 29.952169, 23.945438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849670, 29.730808, 23.301170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542847, 29.960047, 23.416531>,  <39.358753, 30.097589, 23.485746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542847, 29.960047, 23.416531>,  <39.849670, 29.730808, 23.301170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542847, 29.960047, 23.416531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045340, 0.399977, -0.915403,
		-0.639967, -0.715249, -0.280824,
		-0.767064, 0.573095, 0.288402,
		39.312729, 30.131975, 23.503052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495621, 29.725939, 22.718264>,  <39.849670, 29.730808, 23.301170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495621, 29.725939, 22.718264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347000, 30.032804, 22.927418>,  <39.257828, 30.216925, 23.052910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347000, 30.032804, 22.927418>,  <39.495621, 29.725939, 22.718264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347000, 30.032804, 22.927418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011404, 0.566933, -0.823685,
		-0.928343, -0.300078, -0.219393,
		-0.371550, 0.767164, 0.522886,
		39.235535, 30.262955, 23.084284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877167, 29.913910, 22.335045>,  <39.495621, 29.725939, 22.718264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877167, 29.913910, 22.335045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997814, 30.220516, 22.561840>,  <39.070202, 30.404480, 22.697918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997814, 30.220516, 22.561840>,  <38.877167, 29.913910, 22.335045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997814, 30.220516, 22.561840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046596, 0.582122, -0.811765,
		-0.952288, 0.271266, 0.139864,
		0.301622, 0.766518, 0.566988,
		39.088303, 30.450472, 22.731936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509396, 30.370897, 22.033825>,  <38.877167, 29.913910, 22.335045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509396, 30.370897, 22.033825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800575, 30.568233, 22.224281>,  <38.975285, 30.686634, 22.338554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800575, 30.568233, 22.224281>,  <38.509396, 30.370897, 22.033825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800575, 30.568233, 22.224281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191538, 0.520479, -0.832115,
		-0.658335, 0.696935, 0.284389,
		0.727948, 0.493339, 0.476139,
		39.018959, 30.716236, 22.367123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405941, 31.026369, 21.837704>,  <38.509396, 30.370897, 22.033825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405941, 31.026369, 21.837704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792152, 31.033045, 21.941614>,  <39.023880, 31.037050, 22.003960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792152, 31.033045, 21.941614>,  <38.405941, 31.026369, 21.837704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792152, 31.033045, 21.941614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211678, 0.530488, -0.820838,
		-0.151509, 0.847528, 0.508666,
		0.965524, 0.016691, 0.259777,
		39.081810, 31.038052, 22.019547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657162, 31.713535, 21.820774>,  <38.405941, 31.026369, 21.837704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657162, 31.713535, 21.820774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967899, 31.463461, 21.790714>,  <39.154343, 31.313416, 21.772678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967899, 31.463461, 21.790714>,  <38.657162, 31.713535, 21.820774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967899, 31.463461, 21.790714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343190, 0.520430, -0.781904,
		0.527946, 0.581630, 0.618853,
		0.776849, -0.625187, -0.075150,
		39.200954, 31.275906, 21.768169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246986, 32.168060, 21.655430>,  <38.657162, 31.713535, 21.820774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246986, 32.168060, 21.655430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348362, 31.798513, 21.540722>,  <39.409187, 31.576786, 21.471897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348362, 31.798513, 21.540722>,  <39.246986, 32.168060, 21.655430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348362, 31.798513, 21.540722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367792, 0.366212, -0.854762,
		0.894705, 0.111161, 0.432604,
		0.253441, -0.923868, -0.286767,
		39.424393, 31.521353, 21.454691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899788, 32.182037, 21.362896>,  <39.246986, 32.168060, 21.655430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899788, 32.182037, 21.362896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677086, 31.883680, 21.216656>,  <39.543465, 31.704664, 21.128912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677086, 31.883680, 21.216656>,  <39.899788, 32.182037, 21.362896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677086, 31.883680, 21.216656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217807, 0.293640, -0.930771,
		0.801615, -0.597840, -0.001023,
		-0.556753, -0.745897, -0.365600,
		39.510059, 31.659912, 21.106976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412693, 32.138283, 20.744787>,  <39.899788, 32.182037, 21.362896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412693, 32.138283, 20.744787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084362, 31.919027, 20.680555>,  <39.887363, 31.787474, 20.642015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084362, 31.919027, 20.680555>,  <40.412693, 32.138283, 20.744787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084362, 31.919027, 20.680555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192153, -0.000246, -0.981365,
		0.537890, -0.836384, 0.105529,
		-0.820824, -0.548144, -0.160581,
		39.838116, 31.754585, 20.632381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557880, 31.888479, 20.064518>,  <40.412693, 32.138283, 20.744787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557880, 31.888479, 20.064518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183258, 31.773560, 20.144840>,  <39.958485, 31.704607, 20.193033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183258, 31.773560, 20.144840>,  <40.557880, 31.888479, 20.064518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183258, 31.773560, 20.144840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124276, -0.263495, -0.956622,
		0.327750, -0.920885, 0.211073,
		-0.936555, -0.287301, 0.200804,
		39.902290, 31.687368, 20.205082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401138, 31.188652, 19.961164>,  <40.557880, 31.888479, 20.064518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401138, 31.188652, 19.961164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036938, 31.332930, 19.880287>,  <39.818417, 31.419497, 19.831760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036938, 31.332930, 19.880287>,  <40.401138, 31.188652, 19.961164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036938, 31.332930, 19.880287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021486, -0.529591, -0.847981,
		-0.412942, -0.767746, 0.489944,
		-0.910504, 0.360694, -0.202194,
		39.763786, 31.441137, 19.819630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907753, 30.569565, 19.703089>,  <40.401138, 31.188652, 19.961164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907753, 30.569565, 19.703089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769836, 30.907360, 19.539160>,  <39.687084, 31.110037, 19.440802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769836, 30.907360, 19.539160>,  <39.907753, 30.569565, 19.703089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769836, 30.907360, 19.539160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036347, -0.424257, -0.904812,
		-0.937974, -0.326870, 0.115587,
		-0.344795, 0.844489, -0.409823,
		39.666397, 31.160707, 19.416212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351570, 30.494722, 19.106817>,  <39.907753, 30.569565, 19.703089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351570, 30.494722, 19.106817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562771, 30.831896, 19.065487>,  <39.689491, 31.034201, 19.040689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562771, 30.831896, 19.065487>,  <39.351570, 30.494722, 19.106817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562771, 30.831896, 19.065487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206108, -0.245220, -0.947305,
		-0.823853, 0.478883, -0.303212,
		0.528002, 0.842934, -0.103324,
		39.721172, 31.084776, 19.034491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139740, 30.776941, 18.483540>,  <39.351570, 30.494722, 19.106817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139740, 30.776941, 18.483540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496681, 30.934858, 18.571032>,  <39.710846, 31.029610, 18.623528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496681, 30.934858, 18.571032>,  <39.139740, 30.776941, 18.483540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496681, 30.934858, 18.571032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274015, -0.088798, -0.957617,
		-0.358639, 0.914468, -0.187419,
		0.892353, 0.394794, 0.218732,
		39.764385, 31.053297, 18.636652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320400, 31.388975, 17.983685>,  <39.139740, 30.776941, 18.483540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320400, 31.388975, 17.983685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658695, 31.256720, 18.151213>,  <39.861671, 31.177366, 18.251730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658695, 31.256720, 18.151213>,  <39.320400, 31.388975, 17.983685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658695, 31.256720, 18.151213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439553, -0.013320, -0.898118,
		0.302530, 0.943664, 0.134067,
		0.845736, -0.330637, 0.418820,
		39.912415, 31.157528, 18.276859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896809, 31.854742, 17.744637>,  <39.320400, 31.388975, 17.983685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896809, 31.854742, 17.744637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949406, 31.469759, 17.839617>,  <39.980965, 31.238770, 17.896605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949406, 31.469759, 17.839617>,  <39.896809, 31.854742, 17.744637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949406, 31.469759, 17.839617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306726, -0.188275, -0.932991,
		0.942672, 0.195511, 0.270455,
		0.131490, -0.962459, 0.237450,
		39.988853, 31.181021, 17.910852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704948, 32.413990, 17.396696>,  <39.896809, 31.854742, 17.744637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704948, 32.413990, 17.396696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812260, 32.508617, 17.023159>,  <39.876648, 32.565392, 16.799036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812260, 32.508617, 17.023159>,  <39.704948, 32.413990, 17.396696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812260, 32.508617, 17.023159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013566, -0.970211, -0.241881,
		-0.963245, 0.052224, -0.263499,
		0.268282, 0.236565, -0.933842,
		39.892746, 32.579586, 16.743006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186474, 32.119648, 17.042084>,  <39.704948, 32.413990, 17.396696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186474, 32.119648, 17.042084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552689, 32.108910, 16.881552>,  <39.772419, 32.102467, 16.785233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552689, 32.108910, 16.881552>,  <39.186474, 32.119648, 17.042084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552689, 32.108910, 16.881552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001249, -0.997955, 0.063906,
		-0.402223, -0.058007, -0.913702,
		0.915541, -0.026846, -0.401328,
		39.827351, 32.100857, 16.761154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825283, 32.730343, 17.416845>,  <39.186474, 32.119648, 17.042084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825283, 32.730343, 17.416845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527481, 32.991173, 17.359558>,  <38.348801, 33.147671, 17.325186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527481, 32.991173, 17.359558>,  <38.825283, 32.730343, 17.416845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527481, 32.991173, 17.359558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146674, 0.049522, 0.987944,
		0.651307, 0.756535, 0.058773,
		-0.744504, 0.652076, -0.143218,
		38.304131, 33.186794, 17.316593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948448, 33.397385, 17.707188>,  <38.825283, 32.730343, 17.416845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948448, 33.397385, 17.707188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553188, 33.336662, 17.716314>,  <38.316032, 33.300228, 17.721790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553188, 33.336662, 17.716314>,  <38.948448, 33.397385, 17.707188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553188, 33.336662, 17.716314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025632, -0.016606, 0.999534,
		-0.151353, 0.988271, 0.020301,
		-0.988147, -0.151803, 0.022818,
		38.256744, 33.291122, 17.723160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555592, 33.877899, 17.985218>,  <38.948448, 33.397385, 17.707188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555592, 33.877899, 17.985218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335117, 33.552143, 18.057833>,  <38.202831, 33.356689, 18.101402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335117, 33.552143, 18.057833>,  <38.555592, 33.877899, 17.985218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335117, 33.552143, 18.057833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118390, 0.139034, 0.983185,
		-0.825939, 0.563412, 0.019782,
		-0.551188, -0.814393, 0.181536,
		38.169762, 33.307827, 18.112293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019638, 34.093643, 18.454893>,  <38.555592, 33.877899, 17.985218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019638, 34.093643, 18.454893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066380, 33.697071, 18.478285>,  <38.094425, 33.459129, 18.492319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066380, 33.697071, 18.478285>,  <38.019638, 34.093643, 18.454893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066380, 33.697071, 18.478285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246037, 0.085945, 0.965443,
		-0.962191, -0.098429, 0.253970,
		0.116855, -0.991426, 0.058478,
		38.101437, 33.399643, 18.495829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628628, 33.794201, 19.098505>,  <38.019638, 34.093643, 18.454893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628628, 33.794201, 19.098505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938175, 33.571480, 18.977777>,  <38.123905, 33.437847, 18.905342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938175, 33.571480, 18.977777>,  <37.628628, 33.794201, 19.098505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938175, 33.571480, 18.977777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368299, 0.007947, 0.929674,
		-0.515246, -0.830607, 0.211220,
		0.773872, -0.556803, -0.301817,
		38.170338, 33.404438, 18.887232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496574, 33.126900, 19.343456>,  <37.628628, 33.794201, 19.098505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496574, 33.126900, 19.343456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890316, 33.182911, 19.300671>,  <38.126560, 33.216518, 19.275000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890316, 33.182911, 19.300671>,  <37.496574, 33.126900, 19.343456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890316, 33.182911, 19.300671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122814, -0.109897, 0.986326,
		0.126362, -0.984029, -0.125375,
		0.984352, 0.140032, -0.106966,
		38.185623, 33.224922, 19.268581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808430, 32.621449, 19.760986>,  <37.496574, 33.126900, 19.343456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808430, 32.621449, 19.760986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105721, 32.883728, 19.707798>,  <38.284096, 33.041096, 19.675884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105721, 32.883728, 19.707798>,  <37.808430, 32.621449, 19.760986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105721, 32.883728, 19.707798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143988, 0.037328, 0.988875,
		0.653364, -0.754102, -0.066669,
		0.743224, 0.655695, -0.132970,
		38.328690, 33.080437, 19.667908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440945, 32.437683, 20.198988>,  <37.808430, 32.621449, 19.760986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440945, 32.437683, 20.198988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521141, 32.824650, 20.137144>,  <38.569260, 33.056831, 20.100037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521141, 32.824650, 20.137144>,  <38.440945, 32.437683, 20.198988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521141, 32.824650, 20.137144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165620, 0.122076, 0.978605,
		0.965596, -0.221805, -0.135749,
		0.200488, 0.967419, -0.154611,
		38.581287, 33.114876, 20.090761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892395, 32.489178, 20.625309>,  <38.440945, 32.437683, 20.198988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892395, 32.489178, 20.625309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779797, 32.869221, 20.571569>,  <38.712238, 33.097248, 20.539326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779797, 32.869221, 20.571569>,  <38.892395, 32.489178, 20.625309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779797, 32.869221, 20.571569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003902, 0.141144, 0.989981,
		0.959553, 0.278155, -0.043439,
		-0.281500, 0.950109, -0.134350,
		38.695347, 33.154255, 20.531265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248028, 32.846745, 21.077955>,  <38.892395, 32.489178, 20.625309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248028, 32.846745, 21.077955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957394, 33.110718, 21.001467>,  <38.783012, 33.269100, 20.955574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957394, 33.110718, 21.001467>,  <39.248028, 32.846745, 21.077955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957394, 33.110718, 21.001467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042215, 0.234906, 0.971101,
		0.685777, 0.713661, -0.142821,
		-0.726586, 0.659930, -0.191221,
		38.739418, 33.308697, 20.944101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439533, 33.582497, 21.430658>,  <39.248028, 32.846745, 21.077955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439533, 33.582497, 21.430658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044735, 33.538948, 21.383362>,  <38.807854, 33.512817, 21.354984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044735, 33.538948, 21.383362>,  <39.439533, 33.582497, 21.430658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044735, 33.538948, 21.383362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134685, 0.158758, 0.978088,
		-0.087714, 0.981297, -0.171357,
		-0.986999, -0.108871, -0.118241,
		38.748634, 33.506287, 21.347889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136101, 34.015434, 21.876196>,  <39.439533, 33.582497, 21.430658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136101, 34.015434, 21.876196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813694, 33.793530, 21.793671>,  <38.620251, 33.660385, 21.744156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813694, 33.793530, 21.793671>,  <39.136101, 34.015434, 21.876196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813694, 33.793530, 21.793671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388204, 0.232371, 0.891797,
		-0.446797, 0.798898, -0.402659,
		-0.806021, -0.554766, -0.206313,
		38.571888, 33.627098, 21.731777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590870, 34.512337, 22.064026>,  <39.136101, 34.015434, 21.876196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590870, 34.512337, 22.064026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471054, 34.130711, 22.066439>,  <38.399162, 33.901733, 22.067886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471054, 34.130711, 22.066439>,  <38.590870, 34.512337, 22.064026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471054, 34.130711, 22.066439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425052, 0.139107, 0.894416,
		-0.854170, 0.265350, -0.447195,
		-0.299542, -0.954064, 0.006034,
		38.381191, 33.844490, 22.068249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054165, 34.631905, 22.580118>,  <38.590870, 34.512337, 22.064026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054165, 34.631905, 22.580118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070393, 34.234089, 22.541643>,  <38.080128, 33.995399, 22.518559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070393, 34.234089, 22.541643>,  <38.054165, 34.631905, 22.580118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070393, 34.234089, 22.541643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343406, -0.104281, 0.933380,
		-0.938311, -0.004830, -0.345760,
		0.040565, -0.994536, -0.096189,
		38.082561, 33.935726, 22.512787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458702, 34.398113, 22.894316>,  <38.054165, 34.631905, 22.580118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458702, 34.398113, 22.894316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734318, 34.108330, 22.886421>,  <37.899689, 33.934460, 22.881685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734318, 34.108330, 22.886421>,  <37.458702, 34.398113, 22.894316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734318, 34.108330, 22.886421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053199, -0.077720, 0.995555,
		-0.722770, -0.684925, -0.092092,
		0.689038, -0.724456, -0.019736,
		37.941029, 33.890991, 22.880501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171440, 33.792549, 23.234266>,  <37.458702, 34.398113, 22.894316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171440, 33.792549, 23.234266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561295, 33.703506, 23.243483>,  <37.795208, 33.650082, 23.249012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561295, 33.703506, 23.243483>,  <37.171440, 33.792549, 23.234266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561295, 33.703506, 23.243483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090181, -0.296414, 0.950792,
		-0.204820, -0.928755, -0.308971,
		0.974636, -0.222605, 0.023044,
		37.853683, 33.636723, 23.250395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259552, 33.076736, 23.296034>,  <37.171440, 33.792549, 23.234266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259552, 33.076736, 23.296034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575878, 33.266865, 23.450275>,  <37.765675, 33.380939, 23.542820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575878, 33.266865, 23.450275>,  <37.259552, 33.076736, 23.296034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575878, 33.266865, 23.450275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279127, -0.280611, 0.918339,
		0.544708, -0.833865, -0.089236,
		0.790810, 0.475318, 0.385605,
		37.813122, 33.409462, 23.565956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529705, 32.669491, 23.738993>,  <37.259552, 33.076736, 23.296034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529705, 32.669491, 23.738993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664246, 33.031384, 23.843554>,  <37.744968, 33.248520, 23.906290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664246, 33.031384, 23.843554>,  <37.529705, 32.669491, 23.738993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664246, 33.031384, 23.843554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188359, -0.207334, 0.959965,
		0.922708, -0.372120, 0.100678,
		0.336348, 0.904732, 0.261401,
		37.765152, 33.302803, 23.921974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982937, 32.554985, 24.228565>,  <37.529705, 32.669491, 23.738993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982937, 32.554985, 24.228565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830448, 32.921146, 24.280252>,  <37.738953, 33.140842, 24.311264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830448, 32.921146, 24.280252>,  <37.982937, 32.554985, 24.228565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830448, 32.921146, 24.280252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323056, -0.262871, 0.909139,
		0.866199, 0.304843, 0.395941,
		-0.381226, 0.915407, 0.129217,
		37.716080, 33.195770, 24.319017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062866, 32.737812, 25.029251>,  <37.982937, 32.554985, 24.228565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062866, 32.737812, 25.029251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791981, 33.012955, 24.924770>,  <37.629448, 33.178040, 24.862082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791981, 33.012955, 24.924770>,  <38.062866, 32.737812, 25.029251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791981, 33.012955, 24.924770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394388, -0.039654, 0.918088,
		0.621159, 0.724758, 0.298139,
		-0.677214, 0.687861, -0.261204,
		37.588818, 33.219315, 24.846409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016491, 33.139606, 25.599243>,  <38.062866, 32.737812, 25.029251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016491, 33.139606, 25.599243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695751, 33.257915, 25.391567>,  <37.503307, 33.328903, 25.266962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695751, 33.257915, 25.391567>,  <38.016491, 33.139606, 25.599243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695751, 33.257915, 25.391567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564300, -0.089116, 0.820746,
		0.196490, 0.951091, 0.238364,
		-0.801846, 0.295777, -0.519190,
		37.455196, 33.346649, 25.235809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636726, 33.655560, 26.034958>,  <38.016491, 33.139606, 25.599243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636726, 33.655560, 26.034958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370285, 33.533482, 25.762733>,  <37.210419, 33.460236, 25.599400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370285, 33.533482, 25.762733>,  <37.636726, 33.655560, 26.034958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370285, 33.533482, 25.762733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708653, -0.025624, 0.705092,
		-0.232628, 0.951946, -0.199208,
		-0.666104, -0.305193, -0.680560,
		37.170452, 33.441925, 25.558565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033436, 34.181992, 25.968660>,  <37.636726, 33.655560, 26.034958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033436, 34.181992, 25.968660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938194, 33.803364, 25.881655>,  <36.881050, 33.576187, 25.829453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938194, 33.803364, 25.881655>,  <37.033436, 34.181992, 25.968660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938194, 33.803364, 25.881655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679855, 0.002500, 0.733343,
		-0.693616, 0.322491, -0.644125,
		-0.238107, -0.946570, -0.217513,
		36.866764, 33.519394, 25.816401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328754, 34.292133, 25.641577>,  <37.033436, 34.181992, 25.968660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328754, 34.292133, 25.641577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361713, 33.910110, 25.755466>,  <36.381489, 33.680897, 25.823801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361713, 33.910110, 25.755466>,  <36.328754, 34.292133, 25.641577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361713, 33.910110, 25.755466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856528, 0.078188, 0.510143,
		-0.509480, -0.285911, -0.811594,
		0.082398, -0.955061, 0.284726,
		36.386433, 33.623592, 25.840885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669270, 34.072990, 25.529787>,  <36.328754, 34.292133, 25.641577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669270, 34.072990, 25.529787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846722, 33.837692, 25.800241>,  <35.953194, 33.696514, 25.962515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846722, 33.837692, 25.800241>,  <35.669270, 34.072990, 25.529787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846722, 33.837692, 25.800241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780112, 0.117911, 0.614429,
		-0.441159, -0.800039, -0.406590,
		0.443626, -0.588247, 0.676137,
		35.979809, 33.661217, 26.003082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113327, 33.744667, 25.818863>,  <35.669270, 34.072990, 25.529787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113327, 33.744667, 25.818863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410583, 33.671989, 26.076462>,  <35.588936, 33.628384, 26.231020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410583, 33.671989, 26.076462>,  <35.113327, 33.744667, 25.818863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410583, 33.671989, 26.076462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659702, -0.037905, 0.750571,
		-0.111969, -0.982623, -0.148037,
		0.743140, -0.181701, 0.643994,
		35.633526, 33.617481, 26.269661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913544, 33.120831, 26.105564>,  <35.113327, 33.744667, 25.818863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913544, 33.120831, 26.105564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162998, 33.291592, 26.367504>,  <35.312672, 33.394047, 26.524668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162998, 33.291592, 26.367504>,  <34.913544, 33.120831, 26.105564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162998, 33.291592, 26.367504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692354, -0.087285, 0.716260,
		0.362932, -0.900075, 0.241134,
		0.623640, 0.426904, 0.654849,
		35.350090, 33.419662, 26.563959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797493, 32.754612, 26.660585>,  <34.913544, 33.120831, 26.105564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797493, 32.754612, 26.660585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976692, 33.079590, 26.809839>,  <35.084213, 33.274578, 26.899391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976692, 33.079590, 26.809839>,  <34.797493, 32.754612, 26.660585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976692, 33.079590, 26.809839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528877, -0.095666, 0.843289,
		0.720824, -0.575132, 0.386827,
		0.447996, 0.812447, 0.373133,
		35.111092, 33.323322, 26.921780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912659, 32.509933, 27.365728>,  <34.797493, 32.754612, 26.660585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912659, 32.509933, 27.365728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996391, 32.900623, 27.384480>,  <35.046631, 33.135036, 27.395731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996391, 32.900623, 27.384480>,  <34.912659, 32.509933, 27.365728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996391, 32.900623, 27.384480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393979, 0.040367, 0.918233,
		0.894964, -0.210683, 0.393257,
		0.209331, 0.976721, 0.046877,
		35.059189, 33.193638, 27.398542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214470, 32.589306, 27.997871>,  <34.912659, 32.509933, 27.365728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214470, 32.589306, 27.997871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077080, 32.949921, 27.892603>,  <34.994648, 33.166290, 27.829441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077080, 32.949921, 27.892603>,  <35.214470, 32.589306, 27.997871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077080, 32.949921, 27.892603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449650, 0.088156, 0.888844,
		0.824525, 0.423628, 0.375096,
		-0.343472, 0.901536, -0.263172,
		34.974037, 33.220383, 27.813652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442974, 33.072266, 28.532051>,  <35.214470, 32.589306, 27.997871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442974, 33.072266, 28.532051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138878, 33.246769, 28.339504>,  <34.956421, 33.351471, 28.223976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138878, 33.246769, 28.339504>,  <35.442974, 33.072266, 28.532051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138878, 33.246769, 28.339504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490634, 0.100100, 0.865597,
		0.425807, 0.894237, 0.137942,
		-0.760241, 0.436257, -0.481366,
		34.910805, 33.377647, 28.195095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292423, 33.605721, 28.922199>,  <35.442974, 33.072266, 28.532051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292423, 33.605721, 28.922199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963261, 33.558411, 28.699905>,  <34.765762, 33.530025, 28.566528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963261, 33.558411, 28.699905>,  <35.292423, 33.605721, 28.922199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963261, 33.558411, 28.699905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560324, 0.006807, 0.828246,
		-0.094179, 0.992957, -0.071875,
		-0.822902, -0.118277, -0.555736,
		34.716389, 33.522926, 28.533184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830727, 34.137951, 29.130936>,  <35.292423, 33.605721, 28.922199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830727, 34.137951, 29.130936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591831, 33.854736, 28.980206>,  <34.448494, 33.684807, 28.889767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591831, 33.854736, 28.980206>,  <34.830727, 34.137951, 29.130936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591831, 33.854736, 28.980206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631529, 0.125488, 0.765130,
		-0.494451, 0.694938, -0.522090,
		-0.597234, -0.708035, -0.376826,
		34.412663, 33.642326, 28.867157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177250, 34.453003, 29.308037>,  <34.830727, 34.137951, 29.130936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177250, 34.453003, 29.308037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126007, 34.059998, 29.253981>,  <34.095261, 33.824196, 29.221546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126007, 34.059998, 29.253981>,  <34.177250, 34.453003, 29.308037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126007, 34.059998, 29.253981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557155, -0.041429, 0.829374,
		-0.820467, 0.181547, -0.542102,
		-0.128111, -0.982509, -0.135141,
		34.087574, 33.765244, 29.213438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503059, 34.334080, 29.590830>,  <34.177250, 34.453003, 29.308037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503059, 34.334080, 29.590830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658459, 33.966206, 29.568039>,  <33.751698, 33.745480, 29.554365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658459, 33.966206, 29.568039>,  <33.503059, 34.334080, 29.590830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658459, 33.966206, 29.568039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550666, -0.281301, 0.785899,
		-0.738809, -0.273943, -0.615725,
		0.388495, -0.919688, -0.056976,
		33.775005, 33.690300, 29.550945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950520, 33.839779, 29.725662>,  <33.503059, 34.334080, 29.590830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950520, 33.839779, 29.725662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287636, 33.635410, 29.793388>,  <33.489906, 33.512791, 29.834024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287636, 33.635410, 29.793388>,  <32.950520, 33.839779, 29.725662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287636, 33.635410, 29.793388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254268, -0.100667, 0.961881,
		-0.474399, -0.853714, -0.214751,
		0.842789, -0.510919, 0.169316,
		33.540474, 33.482136, 29.844183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765301, 33.166393, 30.065918>,  <32.950520, 33.839779, 29.725662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765301, 33.166393, 30.065918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145737, 33.241150, 30.164305>,  <33.373997, 33.286003, 30.223337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145737, 33.241150, 30.164305>,  <32.765301, 33.166393, 30.065918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145737, 33.241150, 30.164305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244717, -0.030102, 0.969127,
		0.188530, -0.981918, 0.017107,
		0.951089, 0.186896, 0.245967,
		33.431065, 33.297218, 30.238094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860889, 32.887829, 30.670252>,  <32.765301, 33.166393, 30.065918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860889, 32.887829, 30.670252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192272, 33.111176, 30.687662>,  <33.391102, 33.245182, 30.698109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192272, 33.111176, 30.687662>,  <32.860889, 32.887829, 30.670252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192272, 33.111176, 30.687662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021059, -0.046601, 0.998692,
		0.559663, -0.828285, -0.026848,
		0.828453, 0.558365, 0.043524,
		33.440807, 33.278687, 30.700720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317810, 32.562107, 31.209778>,  <32.860889, 32.887829, 30.670252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317810, 32.562107, 31.209778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495495, 32.918995, 31.177229>,  <33.602104, 33.133129, 31.157700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495495, 32.918995, 31.177229>,  <33.317810, 32.562107, 31.209778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495495, 32.918995, 31.177229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082435, 0.049739, 0.995355,
		0.892122, -0.448855, -0.051456,
		0.444210, 0.892220, -0.081374,
		33.628757, 33.186661, 31.152817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932026, 32.508190, 31.490599>,  <33.317810, 32.562107, 31.209778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932026, 32.508190, 31.490599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888924, 32.905499, 31.507584>,  <33.863064, 33.143883, 31.517775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888924, 32.905499, 31.507584>,  <33.932026, 32.508190, 31.490599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888924, 32.905499, 31.507584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109064, -0.030642, 0.993562,
		0.988177, 0.111689, -0.105029,
		-0.107752, 0.993271, 0.042462,
		33.856598, 33.203480, 31.520323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475048, 32.798046, 31.897787>,  <33.932026, 32.508190, 31.490599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475048, 32.798046, 31.897787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168789, 33.055336, 31.894999>,  <33.985031, 33.209709, 31.893326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168789, 33.055336, 31.894999>,  <34.475048, 32.798046, 31.897787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168789, 33.055336, 31.894999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007425, 0.019678, 0.999779,
		0.643215, 0.765429, -0.019843,
		-0.765650, 0.643220, -0.006974,
		33.939095, 33.248302, 31.892906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653309, 33.424786, 32.327518>,  <34.475048, 32.798046, 31.897787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653309, 33.424786, 32.327518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255871, 33.396938, 32.291939>,  <34.017406, 33.380230, 32.270592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255871, 33.396938, 32.291939>,  <34.653309, 33.424786, 32.327518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255871, 33.396938, 32.291939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097149, 0.124904, 0.987401,
		-0.057635, 0.989723, -0.130869,
		-0.993600, -0.069623, -0.088952,
		33.957790, 33.376053, 32.265255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291382, 34.057076, 32.516430>,  <34.653309, 33.424786, 32.327518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291382, 34.057076, 32.516430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019749, 33.770233, 32.579166>,  <33.856770, 33.598129, 32.616806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019749, 33.770233, 32.579166>,  <34.291382, 34.057076, 32.516430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019749, 33.770233, 32.579166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076606, 0.143262, 0.986716,
		-0.730049, 0.682081, -0.042353,
		-0.679087, -0.717107, 0.156839,
		33.816021, 33.555099, 32.626217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138775, 34.658112, 32.259544>,  <34.291382, 34.057076, 32.516430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138775, 34.658112, 32.259544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244850, 34.944988, 32.517323>,  <34.308495, 35.117115, 32.671989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244850, 34.944988, 32.517323>,  <34.138775, 34.658112, 32.259544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244850, 34.944988, 32.517323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641542, 0.367712, -0.673210,
		-0.719792, 0.591965, -0.362597,
		0.265186, 0.717193, 0.644446,
		34.324406, 35.160145, 32.710655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170013, 35.297737, 31.999228>,  <34.138775, 34.658112, 32.259544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170013, 35.297737, 31.999228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421013, 35.333946, 32.308563>,  <34.571613, 35.355671, 32.494164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421013, 35.333946, 32.308563>,  <34.170013, 35.297737, 31.999228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421013, 35.333946, 32.308563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718276, 0.316073, -0.619820,
		-0.300540, 0.944406, 0.133313,
		0.627499, 0.090525, 0.773337,
		34.609264, 35.361103, 32.540565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536095, 35.923477, 31.876844>,  <34.170013, 35.297737, 31.999228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536095, 35.923477, 31.876844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746635, 35.691238, 32.125313>,  <34.872959, 35.551895, 32.274395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746635, 35.691238, 32.125313>,  <34.536095, 35.923477, 31.876844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746635, 35.691238, 32.125313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835623, 0.218240, -0.504089,
		0.157109, 0.784396, 0.600033,
		0.526356, -0.580598, 0.621172,
		34.904541, 35.517059, 32.311665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110233, 36.324955, 32.093754>,  <34.536095, 35.923477, 31.876844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110233, 36.324955, 32.093754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201519, 35.938118, 32.138752>,  <35.256290, 35.706017, 32.165752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201519, 35.938118, 32.138752>,  <35.110233, 36.324955, 32.093754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201519, 35.938118, 32.138752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757659, 0.103845, -0.644336,
		0.611449, 0.232281, 0.756423,
		0.228218, -0.967089, 0.112494,
		35.269985, 35.647991, 32.172501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837482, 36.406460, 32.091789>,  <35.110233, 36.324955, 32.093754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837482, 36.406460, 32.091789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757156, 36.018082, 32.039726>,  <35.708961, 35.785057, 32.008488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757156, 36.018082, 32.039726>,  <35.837482, 36.406460, 32.091789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757156, 36.018082, 32.039726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838056, -0.101471, -0.536066,
		0.507282, -0.216730, 0.834082,
		-0.200816, -0.970944, -0.130158,
		35.696911, 35.726799, 32.000679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521458, 36.075836, 32.190052>,  <35.837482, 36.406460, 32.091789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521458, 36.075836, 32.190052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288044, 35.827923, 31.980158>,  <36.147995, 35.679173, 31.854221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288044, 35.827923, 31.980158>,  <36.521458, 36.075836, 32.190052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288044, 35.827923, 31.980158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771164, -0.220386, -0.597274,
		0.254539, -0.753189, 0.606561,
		-0.583538, -0.619788, -0.524735,
		36.112984, 35.641987, 31.822737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041759, 35.515804, 31.965229>,  <36.521458, 36.075836, 32.190052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041759, 35.515804, 31.965229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716621, 35.450558, 31.741558>,  <36.521538, 35.411411, 31.607355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716621, 35.450558, 31.741558>,  <37.041759, 35.515804, 31.965229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716621, 35.450558, 31.741558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582039, -0.264962, -0.768782,
		-0.022762, -0.950362, 0.310311,
		-0.812842, -0.163114, -0.559179,
		36.472767, 35.401623, 31.573805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236912, 34.821106, 31.660036>,  <37.041759, 35.515804, 31.965229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236912, 34.821106, 31.660036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960209, 35.022411, 31.452885>,  <36.794186, 35.143196, 31.328594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960209, 35.022411, 31.452885>,  <37.236912, 34.821106, 31.660036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960209, 35.022411, 31.452885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561868, -0.075390, -0.823784,
		-0.453623, -0.860838, -0.230616,
		-0.691759, 0.503263, -0.517876,
		36.752682, 35.173389, 31.297522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148880, 34.510891, 31.086390>,  <37.236912, 34.821106, 31.660036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148880, 34.510891, 31.086390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043713, 34.887463, 31.001936>,  <36.980610, 35.113407, 30.951263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043713, 34.887463, 31.001936>,  <37.148880, 34.510891, 31.086390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043713, 34.887463, 31.001936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619207, -0.003172, -0.785221,
		-0.739902, -0.337188, -0.582108,
		-0.262920, 0.941432, -0.211136,
		36.964836, 35.169891, 30.938595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037052, 34.499962, 30.358459>,  <37.148880, 34.510891, 31.086390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037052, 34.499962, 30.358459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078480, 34.891346, 30.429899>,  <37.103336, 35.126175, 30.472763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078480, 34.891346, 30.429899>,  <37.037052, 34.499962, 30.358459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078480, 34.891346, 30.429899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525677, 0.098588, -0.844952,
		-0.844356, 0.181396, -0.504141,
		0.103569, 0.978456, 0.178599,
		37.109550, 35.184883, 30.483479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782688, 34.824871, 29.802492>,  <37.037052, 34.499962, 30.358459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782688, 34.824871, 29.802492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001205, 35.101704, 29.991211>,  <37.132317, 35.267803, 30.104443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001205, 35.101704, 29.991211>,  <36.782688, 34.824871, 29.802492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001205, 35.101704, 29.991211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468584, 0.214357, -0.857018,
		-0.694255, 0.689261, -0.207193,
		0.546296, 0.692077, 0.471795,
		37.165092, 35.309326, 30.132750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611134, 35.526329, 29.462353>,  <36.782688, 34.824871, 29.802492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611134, 35.526329, 29.462353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971336, 35.564445, 29.632061>,  <37.187458, 35.587315, 29.733885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971336, 35.564445, 29.632061>,  <36.611134, 35.526329, 29.462353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971336, 35.564445, 29.632061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364029, 0.368461, -0.855406,
		-0.237840, 0.924746, 0.297113,
		0.900508, 0.095292, 0.424269,
		37.241489, 35.593033, 29.759342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981880, 36.174503, 29.257282>,  <36.611134, 35.526329, 29.462353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981880, 36.174503, 29.257282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313480, 35.994205, 29.389700>,  <37.512440, 35.886028, 29.469151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313480, 35.994205, 29.389700>,  <36.981880, 36.174503, 29.257282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313480, 35.994205, 29.389700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404232, 0.073892, -0.911667,
		0.386464, 0.889591, 0.243460,
		0.829001, -0.450740, 0.331045,
		37.562180, 35.858982, 29.489014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631981, 36.559448, 28.985540>,  <36.981880, 36.174503, 29.257282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631981, 36.559448, 28.985540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777355, 36.199810, 29.083151>,  <37.864578, 35.984028, 29.141718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777355, 36.199810, 29.083151>,  <37.631981, 36.559448, 28.985540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777355, 36.199810, 29.083151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429190, -0.070902, -0.900427,
		0.826870, 0.431977, 0.360114,
		0.363432, -0.899093, 0.244027,
		37.886383, 35.930080, 29.156359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362434, 36.539833, 28.920343>,  <37.631981, 36.559448, 28.985540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362434, 36.539833, 28.920343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236511, 36.161907, 28.884079>,  <38.160957, 35.935150, 28.862320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236511, 36.161907, 28.884079>,  <38.362434, 36.539833, 28.920343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236511, 36.161907, 28.884079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482580, -0.077074, -0.872454,
		0.817320, -0.318409, 0.480213,
		-0.314809, -0.944815, -0.090663,
		38.142067, 35.878464, 28.856880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903671, 36.203281, 28.685198>,  <38.362434, 36.539833, 28.920343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903671, 36.203281, 28.685198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610641, 35.951019, 28.582737>,  <38.434826, 35.799664, 28.521261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610641, 35.951019, 28.582737>,  <38.903671, 36.203281, 28.685198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610641, 35.951019, 28.582737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454066, -0.172403, -0.874129,
		0.507112, -0.756672, 0.412656,
		-0.732572, -0.630654, -0.256151,
		38.390869, 35.761822, 28.505892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194057, 35.558887, 28.435333>,  <38.903671, 36.203281, 28.685198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194057, 35.558887, 28.435333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830135, 35.543102, 28.270071>,  <38.611782, 35.533630, 28.170914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830135, 35.543102, 28.270071>,  <39.194057, 35.558887, 28.435333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830135, 35.543102, 28.270071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413822, -0.162347, -0.895765,
		-0.031726, -0.985944, 0.164035,
		-0.909805, -0.039463, -0.413156,
		38.557194, 35.531265, 28.146124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248730, 35.078979, 28.016098>,  <39.194057, 35.558887, 28.435333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248730, 35.078979, 28.016098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930717, 35.271450, 27.868368>,  <38.739910, 35.386932, 27.779730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930717, 35.271450, 27.868368>,  <39.248730, 35.078979, 28.016098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930717, 35.271450, 27.868368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321684, -0.181733, -0.929243,
		-0.514250, -0.857579, -0.010304,
		-0.795026, 0.481178, -0.369325,
		38.692211, 35.415802, 27.757570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133450, 34.844414, 27.399370>,  <39.248730, 35.078979, 28.016098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133450, 34.844414, 27.399370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871979, 35.135826, 27.317432>,  <38.715096, 35.310673, 27.268270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871979, 35.135826, 27.317432>,  <39.133450, 34.844414, 27.399370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871979, 35.135826, 27.317432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182184, -0.111228, -0.976953,
		-0.734520, -0.675927, -0.060019,
		-0.653673, 0.728526, -0.204842,
		38.675877, 35.354385, 27.255980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592274, 34.550888, 26.876652>,  <39.133450, 34.844414, 27.399370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592274, 34.550888, 26.876652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619434, 34.948299, 26.840221>,  <38.635731, 35.186745, 26.818363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619434, 34.948299, 26.840221>,  <38.592274, 34.550888, 26.876652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619434, 34.948299, 26.840221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258285, -0.105681, -0.960271,
		-0.963679, 0.041680, -0.263789,
		0.067901, 0.993526, -0.091078,
		38.639805, 35.246357, 26.812899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148830, 34.774113, 26.364454>,  <38.592274, 34.550888, 26.876652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148830, 34.774113, 26.364454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421162, 35.065559, 26.394358>,  <38.584560, 35.240429, 26.412300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421162, 35.065559, 26.394358>,  <38.148830, 34.774113, 26.364454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421162, 35.065559, 26.394358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135818, -0.025289, -0.990411,
		-0.719740, 0.684453, -0.116177,
		0.680828, 0.728618, 0.074759,
		38.625412, 35.284145, 26.416786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030350, 35.202160, 25.748531>,  <38.148830, 34.774113, 26.364454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030350, 35.202160, 25.748531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390732, 35.306019, 25.887596>,  <38.606960, 35.368336, 25.971035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390732, 35.306019, 25.887596>,  <38.030350, 35.202160, 25.748531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390732, 35.306019, 25.887596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355183, 0.018963, -0.934604,
		-0.249259, 0.965518, -0.075137,
		0.900952, 0.259646, 0.347663,
		38.661018, 35.383911, 25.991896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245956, 35.672470, 25.308313>,  <38.030350, 35.202160, 25.748531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245956, 35.672470, 25.308313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585800, 35.562492, 25.488344>,  <38.789707, 35.496506, 25.596363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585800, 35.562492, 25.488344>,  <38.245956, 35.672470, 25.308313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585800, 35.562492, 25.488344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480823, 0.053114, -0.875207,
		0.216724, 0.959993, 0.177324,
		0.849612, -0.274940, 0.450076,
		38.840683, 35.480011, 25.623367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805492, 36.211567, 25.208536>,  <38.245956, 35.672470, 25.308313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805492, 36.211567, 25.208536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977997, 35.863087, 25.302361>,  <39.081497, 35.653999, 25.358656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977997, 35.863087, 25.302361>,  <38.805492, 36.211567, 25.208536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977997, 35.863087, 25.302361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470372, -0.004752, -0.882456,
		0.769914, 0.490898, 0.407741,
		0.431258, -0.871204, 0.234563,
		39.107376, 35.601727, 25.372730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423126, 36.367355, 24.929268>,  <38.805492, 36.211567, 25.208536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423126, 36.367355, 24.929268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382927, 35.969971, 24.950953>,  <39.358807, 35.731541, 24.963964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382927, 35.969971, 24.950953>,  <39.423126, 36.367355, 24.929268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382927, 35.969971, 24.950953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456053, -0.094423, -0.884930,
		0.884261, -0.064206, 0.462559,
		-0.100494, -0.993460, 0.054213,
		39.352779, 35.671932, 24.967216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039978, 36.100651, 24.702757>,  <39.423126, 36.367355, 24.929268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039978, 36.100651, 24.702757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855911, 35.745522, 24.704258>,  <39.745472, 35.532444, 24.705158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855911, 35.745522, 24.704258>,  <40.039978, 36.100651, 24.702757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855911, 35.745522, 24.704258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734485, -0.383057, -0.560178,
		0.498778, -0.255018, 0.828364,
		-0.460166, -0.887825, 0.003753,
		39.717861, 35.479176, 24.705383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477551, 35.516388, 24.790571>,  <40.039978, 36.100651, 24.702757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477551, 35.516388, 24.790571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169514, 35.341240, 24.604996>,  <39.984692, 35.236153, 24.493650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169514, 35.341240, 24.604996>,  <40.477551, 35.516388, 24.790571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169514, 35.341240, 24.604996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612876, -0.305969, -0.728537,
		0.177052, -0.845373, 0.503981,
		-0.770088, -0.437866, -0.463937,
		39.938488, 35.209881, 24.465815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743511, 34.908241, 24.604120>,  <40.477551, 35.516388, 24.790571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743511, 34.908241, 24.604120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420071, 34.947124, 24.372011>,  <40.226006, 34.970455, 24.232746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420071, 34.947124, 24.372011>,  <40.743511, 34.908241, 24.604120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420071, 34.947124, 24.372011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547844, -0.235246, -0.802824,
		-0.214544, -0.967063, 0.136968,
		-0.808602, 0.097204, -0.580271,
		40.177490, 34.976288, 24.197929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649635, 34.225666, 24.301226>,  <40.743511, 34.908241, 24.604120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649635, 34.225666, 24.301226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472935, 34.499714, 24.069548>,  <40.366917, 34.664143, 23.930540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472935, 34.499714, 24.069548>,  <40.649635, 34.225666, 24.301226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472935, 34.499714, 24.069548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486618, -0.359397, -0.796264,
		-0.753698, -0.633596, -0.174629,
		-0.441748, 0.685121, -0.579196,
		40.340408, 34.705250, 23.895788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446255, 33.749218, 23.815126>,  <40.649635, 34.225666, 24.301226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446255, 33.749218, 23.815126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455315, 34.121208, 23.668356>,  <40.460751, 34.344402, 23.580294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455315, 34.121208, 23.668356>,  <40.446255, 33.749218, 23.815126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455315, 34.121208, 23.668356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624775, -0.299690, -0.721001,
		-0.780476, -0.212914, -0.587813,
		0.022651, 0.929975, -0.366925,
		40.462109, 34.400200, 23.558279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575371, 33.663223, 23.056013>,  <40.446255, 33.749218, 23.815126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575371, 33.663223, 23.056013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646652, 34.051743, 23.119045>,  <40.689423, 34.284855, 23.156864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646652, 34.051743, 23.119045>,  <40.575371, 33.663223, 23.056013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646652, 34.051743, 23.119045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741429, -0.027251, -0.670478,
		-0.646936, 0.236317, -0.725002,
		0.178202, 0.971294, 0.157582,
		40.700111, 34.343132, 23.166321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634056, 34.012833, 22.398075>,  <40.575371, 33.663223, 23.056013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634056, 34.012833, 22.398075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824982, 34.242779, 22.663918>,  <40.939537, 34.380745, 22.823423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824982, 34.242779, 22.663918>,  <40.634056, 34.012833, 22.398075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824982, 34.242779, 22.663918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752164, 0.123767, -0.647249,
		-0.454338, 0.808833, -0.373318,
		0.477311, 0.574866, 0.664607,
		40.968174, 34.415237, 22.863300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826912, 34.646091, 22.090809>,  <40.634056, 34.012833, 22.398075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826912, 34.646091, 22.090809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075302, 34.595123, 22.400169>,  <41.224335, 34.564541, 22.585787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075302, 34.595123, 22.400169>,  <40.826912, 34.646091, 22.090809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075302, 34.595123, 22.400169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779340, -0.005088, -0.626581,
		0.083777, 0.991835, 0.096148,
		0.620976, -0.127425, 0.773403,
		41.261597, 34.556896, 22.632191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368519, 34.952808, 21.941364>,  <40.826912, 34.646091, 22.090809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368519, 34.952808, 21.941364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546093, 34.746693, 22.234594>,  <41.652637, 34.623024, 22.410532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546093, 34.746693, 22.234594>,  <41.368519, 34.952808, 21.941364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546093, 34.746693, 22.234594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845930, -0.028794, -0.532516,
		0.295510, 0.856530, 0.423119,
		0.443933, -0.515293, 0.733074,
		41.679272, 34.592106, 22.454517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016720, 35.353767, 22.052855>,  <41.368519, 34.952808, 21.941364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016720, 35.353767, 22.052855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045383, 34.974342, 22.176201>,  <42.062584, 34.746685, 22.250208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045383, 34.974342, 22.176201>,  <42.016720, 35.353767, 22.052855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045383, 34.974342, 22.176201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893995, -0.076013, -0.441583,
		0.442310, 0.307321, 0.842565,
		0.071662, -0.948565, 0.308365,
		42.066883, 34.689774, 22.268711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763424, 35.231071, 22.040695>,  <42.016720, 35.353767, 22.052855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763424, 35.231071, 22.040695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606453, 34.863373, 22.053217>,  <42.512268, 34.642754, 22.060730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606453, 34.863373, 22.053217>,  <42.763424, 35.231071, 22.040695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606453, 34.863373, 22.053217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721265, -0.328675, -0.609713,
		0.570767, -0.216690, 0.792004,
		-0.392431, -0.919249, 0.031306,
		42.488724, 34.587597, 22.062609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411808, 34.812817, 22.126547>,  <42.763424, 35.231071, 22.040695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411808, 34.812817, 22.126547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106400, 34.590382, 21.995209>,  <42.923157, 34.456921, 21.916407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106400, 34.590382, 21.995209>,  <43.411808, 34.812817, 22.126547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106400, 34.590382, 21.995209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612519, -0.462508, -0.641020,
		0.204601, -0.690547, 0.693746,
		-0.763518, -0.556086, -0.328344,
		42.877346, 34.423557, 21.896706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733150, 34.241879, 22.100021>,  <43.411808, 34.812817, 22.126547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733150, 34.241879, 22.100021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423298, 34.221657, 21.847868>,  <43.237385, 34.209522, 21.696575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423298, 34.221657, 21.847868>,  <43.733150, 34.241879, 22.100021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423298, 34.221657, 21.847868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563010, -0.509115, -0.651016,
		-0.288025, -0.859213, 0.422843,
		-0.774636, -0.050556, -0.630383,
		43.190907, 34.206490, 21.658752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.223591, 34.232456, 22.464163>,  <43.733150, 34.241879, 22.100021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.223591, 34.232456, 22.464163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508488, 34.004776, 22.628462>,  <44.679428, 33.868168, 22.727041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508488, 34.004776, 22.628462>,  <44.223591, 34.232456, 22.464163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508488, 34.004776, 22.628462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530290, -0.052947, 0.846161,
		-0.459891, -0.820489, -0.339555,
		0.712245, -0.569205, 0.410748,
		44.722160, 33.834015, 22.751686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899078, 33.712906, 22.900282>,  <44.223591, 34.232456, 22.464163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899078, 33.712906, 22.900282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274960, 33.755543, 23.030266>,  <44.500488, 33.781124, 23.108255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274960, 33.755543, 23.030266>,  <43.899078, 33.712906, 22.900282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274960, 33.755543, 23.030266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330393, 0.037557, 0.943096,
		0.088320, -0.993594, 0.070509,
		0.939702, 0.106590, 0.324959,
		44.556870, 33.787521, 23.127754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935825, 33.299702, 23.428762>,  <43.899078, 33.712906, 22.900282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935825, 33.299702, 23.428762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228165, 33.563515, 23.499044>,  <44.403568, 33.721802, 23.541214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228165, 33.563515, 23.499044>,  <43.935825, 33.299702, 23.428762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228165, 33.563515, 23.499044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272928, 0.046446, 0.960913,
		0.625591, -0.750241, 0.213949,
		0.730853, 0.659531, 0.175706,
		44.447422, 33.761375, 23.551756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304298, 33.040127, 24.084381>,  <43.935825, 33.299702, 23.428762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304298, 33.040127, 24.084381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390038, 33.428432, 24.041151>,  <44.441483, 33.661415, 24.015213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390038, 33.428432, 24.041151>,  <44.304298, 33.040127, 24.084381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390038, 33.428432, 24.041151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173863, 0.146797, 0.973767,
		0.961159, -0.189934, 0.200245,
		0.214347, 0.970760, -0.108073,
		44.454342, 33.719662, 24.008730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682747, 33.234348, 24.661337>,  <44.304298, 33.040127, 24.084381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682747, 33.234348, 24.661337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555595, 33.592739, 24.537291>,  <44.479305, 33.807774, 24.462862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555595, 33.592739, 24.537291>,  <44.682747, 33.234348, 24.661337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555595, 33.592739, 24.537291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199860, 0.256412, 0.945679,
		0.926826, 0.362596, 0.097561,
		-0.317884, 0.895978, -0.310117,
		44.460232, 33.861534, 24.444256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728394, 33.581249, 25.355202>,  <44.682747, 33.234348, 24.661337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728394, 33.581249, 25.355202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533539, 33.823746, 25.103754>,  <44.416626, 33.969246, 24.952885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533539, 33.823746, 25.103754>,  <44.728394, 33.581249, 25.355202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533539, 33.823746, 25.103754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347217, 0.526020, 0.776365,
		0.801333, 0.596466, -0.045748,
		-0.487140, 0.606243, -0.628621,
		44.387398, 34.005619, 24.915169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826504, 34.273544, 25.628483>,  <44.728394, 33.581249, 25.355202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826504, 34.273544, 25.628483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501461, 34.277561, 25.395393>,  <44.306435, 34.279972, 25.255541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501461, 34.277561, 25.395393>,  <44.826504, 34.273544, 25.628483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501461, 34.277561, 25.395393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525827, 0.418556, 0.740484,
		0.251340, 0.908135, -0.334841,
		-0.812610, 0.010045, -0.582722,
		44.257679, 34.280575, 25.220577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696060, 35.016998, 25.639530>,  <44.826504, 34.273544, 25.628483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696060, 35.016998, 25.639530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363426, 34.869640, 25.473282>,  <44.163845, 34.781223, 25.373533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363426, 34.869640, 25.473282>,  <44.696060, 35.016998, 25.639530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363426, 34.869640, 25.473282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550603, 0.448800, 0.703857,
		-0.072768, 0.814163, -0.576058,
		-0.831589, -0.368398, -0.415623,
		44.113949, 34.759121, 25.348595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193947, 35.584789, 25.648560>,  <44.696060, 35.016998, 25.639530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193947, 35.584789, 25.648560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992710, 35.240376, 25.618860>,  <43.871967, 35.033726, 25.601042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992710, 35.240376, 25.618860>,  <44.193947, 35.584789, 25.648560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992710, 35.240376, 25.618860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603535, 0.288546, 0.743295,
		-0.618579, 0.418759, -0.664831,
		-0.503096, -0.861035, -0.074247,
		43.841782, 34.982063, 25.596586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481911, 35.647285, 25.550770>,  <44.193947, 35.584789, 25.648560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481911, 35.647285, 25.550770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520462, 35.284420, 25.714611>,  <43.543594, 35.066700, 25.812916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520462, 35.284420, 25.714611>,  <43.481911, 35.647285, 25.550770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520462, 35.284420, 25.714611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645368, 0.256340, 0.719576,
		-0.757767, -0.333694, -0.560747,
		0.096377, -0.907160, 0.409601,
		43.549374, 35.012272, 25.837492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799171, 35.419346, 25.700657>,  <43.481911, 35.647285, 25.550770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799171, 35.419346, 25.700657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003056, 35.163353, 25.930653>,  <43.125385, 35.009758, 26.068651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003056, 35.163353, 25.930653>,  <42.799171, 35.419346, 25.700657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003056, 35.163353, 25.930653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668009, 0.126773, 0.733275,
		-0.542177, -0.757859, -0.362896,
		0.509714, -0.639983, 0.574991,
		43.155972, 34.971359, 26.103149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270523, 35.012142, 25.993570>,  <42.799171, 35.419346, 25.700657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270523, 35.012142, 25.993570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601608, 34.954601, 26.210529>,  <42.800259, 34.920078, 26.340706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601608, 34.954601, 26.210529>,  <42.270523, 35.012142, 25.993570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601608, 34.954601, 26.210529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553119, -0.046189, 0.831821,
		-0.094606, -0.988521, -0.117798,
		0.827714, -0.143851, 0.542400,
		42.849922, 34.911446, 26.373249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091908, 34.419292, 26.378399>,  <42.270523, 35.012142, 25.993570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091908, 34.419292, 26.378399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383686, 34.633251, 26.548948>,  <42.558754, 34.761627, 26.651278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383686, 34.633251, 26.548948>,  <42.091908, 34.419292, 26.378399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383686, 34.633251, 26.548948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531089, 0.050028, 0.845838,
		0.431108, -0.843433, 0.320572,
		0.729445, 0.534899, 0.426371,
		42.602520, 34.793720, 26.676859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289745, 34.085705, 26.987162>,  <42.091908, 34.419292, 26.378399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289745, 34.085705, 26.987162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388325, 34.465374, 27.065483>,  <42.447472, 34.693176, 27.112476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388325, 34.465374, 27.065483>,  <42.289745, 34.085705, 26.987162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388325, 34.465374, 27.065483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382435, -0.090396, 0.919550,
		0.890508, -0.301507, 0.340718,
		0.246451, 0.949169, 0.195805,
		42.462261, 34.750126, 27.124226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494896, 34.052227, 27.695417>,  <42.289745, 34.085705, 26.987162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494896, 34.052227, 27.695417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471241, 34.443817, 27.617321>,  <42.457050, 34.678772, 27.570463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471241, 34.443817, 27.617321>,  <42.494896, 34.052227, 27.695417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471241, 34.443817, 27.617321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431642, 0.151279, 0.889269,
		0.900105, 0.136860, 0.413619,
		-0.059133, 0.978971, -0.195241,
		42.453503, 34.737507, 27.558748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722233, 34.337688, 28.269190>,  <42.494896, 34.052227, 27.695417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722233, 34.337688, 28.269190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482822, 34.599129, 28.083902>,  <42.339176, 34.755993, 27.972729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482822, 34.599129, 28.083902>,  <42.722233, 34.337688, 28.269190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482822, 34.599129, 28.083902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511020, 0.133807, 0.849090,
		0.616946, 0.744919, 0.253915,
		-0.598528, 0.653599, -0.463221,
		42.303265, 34.795208, 27.944937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564922, 34.878777, 28.804466>,  <42.722233, 34.337688, 28.269190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564922, 34.878777, 28.804466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295303, 34.920940, 28.512014>,  <42.133533, 34.946239, 28.336544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295303, 34.920940, 28.512014>,  <42.564922, 34.878777, 28.804466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295303, 34.920940, 28.512014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691990, 0.256231, 0.674904,
		0.258482, 0.960850, -0.099766,
		-0.674045, 0.105413, -0.731130,
		42.093090, 34.952564, 28.292675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259502, 35.513401, 28.940119>,  <42.564922, 34.878777, 28.804466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259502, 35.513401, 28.940119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004288, 35.312641, 28.706537>,  <41.851158, 35.192184, 28.566387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004288, 35.312641, 28.706537>,  <42.259502, 35.513401, 28.940119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004288, 35.312641, 28.706537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729254, 0.150422, 0.667504,
		-0.247182, 0.851744, -0.461989,
		-0.638036, -0.501902, -0.583956,
		41.812878, 35.162071, 28.531351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636299, 35.764137, 29.044027>,  <42.259502, 35.513401, 28.940119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636299, 35.764137, 29.044027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486805, 35.461967, 28.828753>,  <41.397106, 35.280666, 28.699587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486805, 35.461967, 28.828753>,  <41.636299, 35.764137, 29.044027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486805, 35.461967, 28.828753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900287, 0.155845, 0.406443,
		-0.223164, 0.636428, -0.738348,
		-0.373740, -0.755428, -0.538189,
		41.374683, 35.235340, 28.667295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996716, 35.995064, 28.919018>,  <41.636299, 35.764137, 29.044027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996716, 35.995064, 28.919018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999016, 35.595802, 28.894848>,  <41.000397, 35.356243, 28.880346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999016, 35.595802, 28.894848>,  <40.996716, 35.995064, 28.919018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999016, 35.595802, 28.894848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833529, -0.038170, 0.551155,
		-0.552445, 0.047197, -0.832212,
		0.005752, -0.998156, -0.060427,
		41.000740, 35.296356, 28.876720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417400, 35.868855, 28.635809>,  <40.996716, 35.995064, 28.919018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417400, 35.868855, 28.635809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560917, 35.567211, 28.855843>,  <40.647026, 35.386227, 28.987864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560917, 35.567211, 28.855843>,  <40.417400, 35.868855, 28.635809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560917, 35.567211, 28.855843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735034, 0.134978, 0.664459,
		-0.575323, -0.642732, -0.505865,
		0.358789, -0.754106, 0.550086,
		40.668552, 35.340981, 29.020868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818199, 35.431702, 28.930807>,  <40.417400, 35.868855, 28.635809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818199, 35.431702, 28.930807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104710, 35.299870, 29.176840>,  <40.276615, 35.220772, 29.324459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104710, 35.299870, 29.176840>,  <39.818199, 35.431702, 28.930807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104710, 35.299870, 29.176840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697673, -0.320504, 0.640726,
		-0.014034, -0.888063, -0.459507,
		0.716279, -0.329577, 0.615080,
		40.319592, 35.200996, 29.361364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653191, 34.783466, 29.109066>,  <39.818199, 35.431702, 28.930807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653191, 34.783466, 29.109066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915928, 34.877785, 29.395550>,  <40.073570, 34.934376, 29.567440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915928, 34.877785, 29.395550>,  <39.653191, 34.783466, 29.109066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915928, 34.877785, 29.395550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648987, -0.306799, 0.696197,
		0.383895, -0.922103, -0.048488,
		0.656841, 0.235799, 0.716211,
		40.112980, 34.948524, 29.610413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645576, 34.224365, 29.609602>,  <39.653191, 34.783466, 29.109066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645576, 34.224365, 29.609602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831589, 34.517593, 29.808140>,  <39.943195, 34.693531, 29.927263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831589, 34.517593, 29.808140>,  <39.645576, 34.224365, 29.609602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831589, 34.517593, 29.808140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505563, -0.240344, 0.828638,
		0.726742, -0.636274, 0.258846,
		0.465028, 0.733069, 0.496345,
		39.971096, 34.737514, 29.957043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859058, 33.982796, 30.262693>,  <39.645576, 34.224365, 29.609602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859058, 33.982796, 30.262693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802197, 34.378510, 30.275949>,  <39.768078, 34.615940, 30.283903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802197, 34.378510, 30.275949>,  <39.859058, 33.982796, 30.262693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802197, 34.378510, 30.275949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574287, -0.109700, 0.811271,
		0.806217, 0.096296, 0.583730,
		-0.142157, 0.989289, 0.033141,
		39.759548, 34.675297, 30.285892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949402, 34.119507, 30.912821>,  <39.859058, 33.982796, 30.262693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949402, 34.119507, 30.912821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760044, 34.452660, 30.798128>,  <39.646431, 34.652550, 30.729313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760044, 34.452660, 30.798128>,  <39.949402, 34.119507, 30.912821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760044, 34.452660, 30.798128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538850, -0.016315, 0.842244,
		0.696809, 0.553215, 0.456519,
		-0.473390, 0.832878, -0.286732,
		39.618027, 34.702522, 30.712109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085403, 34.590057, 31.411533>,  <39.949402, 34.119507, 30.912821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085403, 34.590057, 31.411533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748604, 34.689476, 31.220013>,  <39.546524, 34.749126, 31.105101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748604, 34.689476, 31.220013>,  <40.085403, 34.590057, 31.411533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748604, 34.689476, 31.220013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476924, 0.071863, 0.876002,
		0.252138, 0.965950, 0.058030,
		-0.842004, 0.248549, -0.478804,
		39.496002, 34.764042, 31.076372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962215, 35.278118, 31.620857>,  <40.085403, 34.590057, 31.411533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962215, 35.278118, 31.620857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616917, 35.115681, 31.500933>,  <39.409737, 35.018219, 31.428978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616917, 35.115681, 31.500933>,  <39.962215, 35.278118, 31.620857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616917, 35.115681, 31.500933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409904, 0.217329, 0.885859,
		-0.294587, 0.887611, -0.354070,
		-0.863248, -0.406098, -0.299813,
		39.357941, 34.993851, 31.410988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316624, 35.688744, 31.708817>,  <39.962215, 35.278118, 31.620857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316624, 35.688744, 31.708817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176399, 35.314342, 31.696154>,  <39.092266, 35.089703, 31.688557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176399, 35.314342, 31.696154>,  <39.316624, 35.688744, 31.708817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176399, 35.314342, 31.696154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441538, 0.135370, 0.886972,
		-0.825925, 0.324916, -0.460737,
		-0.350561, -0.936005, -0.031657,
		39.071232, 35.033543, 31.686657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617344, 35.746277, 31.995991>,  <39.316624, 35.688744, 31.708817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617344, 35.746277, 31.995991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741356, 35.366909, 32.022438>,  <38.815765, 35.139286, 32.038307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741356, 35.366909, 32.022438>,  <38.617344, 35.746277, 31.995991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741356, 35.366909, 32.022438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229381, -0.007129, 0.973311,
		-0.922639, -0.316925, -0.219761,
		0.310033, -0.948424, 0.066119,
		38.834366, 35.082382, 32.042274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138260, 35.275948, 32.368473>,  <38.617344, 35.746277, 31.995991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138260, 35.275948, 32.368473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471542, 35.055676, 32.388531>,  <38.671513, 34.923512, 32.400566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471542, 35.055676, 32.388531>,  <38.138260, 35.275948, 32.368473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471542, 35.055676, 32.388531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136464, -0.116909, 0.983722,
		-0.535855, -0.826488, -0.172558,
		0.833209, -0.550681, 0.050140,
		38.721504, 34.890472, 32.403572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008011, 34.699387, 32.789570>,  <38.138260, 35.275948, 32.368473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008011, 34.699387, 32.789570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406998, 34.722881, 32.805580>,  <38.646389, 34.736977, 32.815186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406998, 34.722881, 32.805580>,  <38.008011, 34.699387, 32.789570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406998, 34.722881, 32.805580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030431, -0.156016, 0.987286,
		0.064233, -0.986007, -0.153834,
		0.997471, 0.058735, 0.040027,
		38.706238, 34.740501, 32.817589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295048, 34.279350, 33.348003>,  <38.008011, 34.699387, 32.789570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295048, 34.279350, 33.348003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612415, 34.515408, 33.288383>,  <38.802837, 34.657043, 33.252613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612415, 34.515408, 33.288383>,  <38.295048, 34.279350, 33.348003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612415, 34.515408, 33.288383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208332, -0.033216, 0.977494,
		0.571912, -0.806614, -0.149300,
		0.793419, 0.590145, -0.149047,
		38.850441, 34.692451, 33.243668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915291, 33.933861, 33.565258>,  <38.295048, 34.279350, 33.348003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915291, 33.933861, 33.565258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010262, 34.322422, 33.563988>,  <39.067245, 34.555557, 33.563225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010262, 34.322422, 33.563988>,  <38.915291, 33.933861, 33.565258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010262, 34.322422, 33.563988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212894, -0.048841, 0.975854,
		0.947788, -0.232375, -0.218401,
		0.237431, 0.971399, -0.003180,
		39.081490, 34.613842, 33.563034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447956, 33.978542, 34.011398>,  <38.915291, 33.933861, 33.565258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447956, 33.978542, 34.011398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370113, 34.369923, 33.983814>,  <39.323406, 34.604752, 33.967262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370113, 34.369923, 33.983814>,  <39.447956, 33.978542, 34.011398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370113, 34.369923, 33.983814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461661, 0.153399, 0.873692,
		0.865446, 0.138192, -0.481567,
		-0.194609, 0.978454, -0.068961,
		39.311729, 34.663460, 33.963127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073078, 34.453465, 34.146038>,  <39.447956, 33.978542, 34.011398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073078, 34.453465, 34.146038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761066, 34.697350, 34.202332>,  <39.573860, 34.843681, 34.236107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761066, 34.697350, 34.202332>,  <40.073078, 34.453465, 34.146038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761066, 34.697350, 34.202332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240498, 0.084487, 0.966966,
		0.577679, 0.788109, -0.212537,
		-0.780031, 0.609710, 0.140733,
		39.527058, 34.880264, 34.244553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237015, 34.917828, 34.494301>,  <40.073078, 34.453465, 34.146038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237015, 34.917828, 34.494301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852737, 34.999783, 34.569221>,  <39.622169, 35.048954, 34.614174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852737, 34.999783, 34.569221>,  <40.237015, 34.917828, 34.494301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852737, 34.999783, 34.569221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241206, 0.282138, 0.928557,
		0.137405, 0.937240, -0.320469,
		-0.960697, 0.204887, 0.187301,
		39.564529, 35.061249, 34.625412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232044, 35.480450, 34.816929>,  <40.237015, 34.917828, 34.494301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232044, 35.480450, 34.816929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868382, 35.338577, 34.904240>,  <39.650185, 35.253456, 34.956627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868382, 35.338577, 34.904240>,  <40.232044, 35.480450, 34.816929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868382, 35.338577, 34.904240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155792, 0.196419, 0.968064,
		-0.386224, 0.914124, -0.123319,
		-0.909154, -0.354677, 0.218275,
		39.595634, 35.232174, 34.969723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895851, 35.965313, 35.285671>,  <40.232044, 35.480450, 34.816929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895851, 35.965313, 35.285671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735836, 35.602940, 35.341175>,  <39.639828, 35.385517, 35.374477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735836, 35.602940, 35.341175>,  <39.895851, 35.965313, 35.285671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735836, 35.602940, 35.341175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116082, 0.100097, 0.988183,
		-0.909118, 0.411417, 0.065120,
		-0.400037, -0.905934, 0.138759,
		39.615826, 35.331158, 35.382801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534203, 36.113792, 35.853603>,  <39.895851, 35.965313, 35.285671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534203, 36.113792, 35.853603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598339, 35.720242, 35.821915>,  <39.636818, 35.484112, 35.802902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598339, 35.720242, 35.821915>,  <39.534203, 36.113792, 35.853603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598339, 35.720242, 35.821915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143205, -0.056225, 0.988095,
		-0.976619, -0.169773, 0.131882,
		0.160336, -0.983878, -0.079223,
		39.646439, 35.425079, 35.798149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197018, 35.597847, 36.387676>,  <39.534203, 36.113792, 35.853603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197018, 35.597847, 36.387676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550247, 35.425831, 36.312569>,  <39.762184, 35.322620, 36.267506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550247, 35.425831, 36.312569>,  <39.197018, 35.597847, 36.387676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550247, 35.425831, 36.312569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240827, 0.071920, 0.967900,
		-0.402729, -0.899942, 0.167075,
		0.883069, -0.430038, -0.187766,
		39.815166, 35.296818, 36.256241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274063, 35.141773, 36.934345>,  <39.197018, 35.597847, 36.387676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274063, 35.141773, 36.934345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639839, 35.216568, 36.790768>,  <39.859303, 35.261444, 36.704620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639839, 35.216568, 36.790768>,  <39.274063, 35.141773, 36.934345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639839, 35.216568, 36.790768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344103, 0.107707, 0.932734,
		0.213074, -0.976439, 0.034146,
		0.914436, 0.186992, -0.358945,
		39.914169, 35.272663, 36.683083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804405, 35.024055, 37.456696>,  <39.274063, 35.141773, 36.934345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804405, 35.024055, 37.456696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046322, 35.182159, 37.180145>,  <40.191471, 35.277023, 37.014214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046322, 35.182159, 37.180145>,  <39.804405, 35.024055, 37.456696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046322, 35.182159, 37.180145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745379, 0.024755, 0.666181,
		0.280430, -0.918235, -0.279648,
		0.604788, 0.395261, -0.691376,
		40.227757, 35.300739, 36.972733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307930, 34.498375, 37.169067>,  <39.804405, 35.024055, 37.456696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307930, 34.498375, 37.169067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421181, 34.881989, 37.165070>,  <40.489132, 35.112156, 37.162670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421181, 34.881989, 37.165070>,  <40.307930, 34.498375, 37.169067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421181, 34.881989, 37.165070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763974, -0.219219, 0.606867,
		0.579812, -0.179461, -0.794741,
		0.283131, 0.959029, -0.009998,
		40.506119, 35.169697, 37.162071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033714, 34.558125, 37.271217>,  <40.307930, 34.498375, 37.169067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033714, 34.558125, 37.271217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947514, 34.942924, 37.338295>,  <40.895794, 35.173805, 37.378540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947514, 34.942924, 37.338295>,  <41.033714, 34.558125, 37.271217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947514, 34.942924, 37.338295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860501, 0.105902, 0.498320,
		0.461623, 0.251690, -0.850622,
		-0.215504, 0.961996, 0.167693,
		40.882862, 35.231522, 37.388603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668415, 34.917149, 37.276089>,  <41.033714, 34.558125, 37.271217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668415, 34.917149, 37.276089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441784, 35.161465, 37.497330>,  <41.305805, 35.308056, 37.630074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441784, 35.161465, 37.497330>,  <41.668415, 34.917149, 37.276089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441784, 35.161465, 37.497330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730651, 0.062043, 0.679927,
		0.380978, 0.789356, -0.481428,
		-0.566574, 0.610792, 0.553107,
		41.271812, 35.344704, 37.663261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049538, 35.626080, 37.444096>,  <41.668415, 34.917149, 37.276089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049538, 35.626080, 37.444096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772758, 35.557293, 37.724560>,  <41.606689, 35.516022, 37.892838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772758, 35.557293, 37.724560>,  <42.049538, 35.626080, 37.444096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772758, 35.557293, 37.724560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699079, 0.082882, 0.710225,
		-0.180250, 0.981609, 0.062870,
		-0.691953, -0.171969, 0.701162,
		41.565174, 35.505703, 37.934910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174461, 36.179340, 37.917690>,  <42.049538, 35.626080, 37.444096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174461, 36.179340, 37.917690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973431, 35.882175, 38.094551>,  <41.852814, 35.703876, 38.200668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973431, 35.882175, 38.094551>,  <42.174461, 36.179340, 37.917690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973431, 35.882175, 38.094551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621976, 0.044517, 0.781770,
		-0.600469, 0.667908, 0.439700,
		-0.502576, -0.742911, 0.442154,
		41.822659, 35.659302, 38.227196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943592, 36.471668, 38.565830>,  <42.174461, 36.179340, 37.917690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943592, 36.471668, 38.565830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932911, 36.073402, 38.601452>,  <41.926502, 35.834442, 38.622826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932911, 36.073402, 38.601452>,  <41.943592, 36.471668, 38.565830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932911, 36.073402, 38.601452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436701, 0.068516, 0.896994,
		-0.899210, 0.062840, 0.432981,
		-0.026701, -0.995669, 0.089052,
		41.924900, 35.774700, 38.628166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055508, 36.316639, 39.224998>,  <41.943592, 36.471668, 38.565830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055508, 36.316639, 39.224998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045425, 35.933502, 39.110523>,  <42.039375, 35.703621, 39.041840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045425, 35.933502, 39.110523>,  <42.055508, 36.316639, 39.224998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045425, 35.933502, 39.110523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306494, -0.279895, 0.909791,
		-0.951539, -0.064782, 0.300628,
		-0.025207, -0.957842, -0.286187,
		42.037865, 35.646149, 39.024666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779175, 35.862839, 39.731056>,  <42.055508, 36.316639, 39.224998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779175, 35.862839, 39.731056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021454, 35.589546, 39.567924>,  <42.166821, 35.425571, 39.470047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021454, 35.589546, 39.567924>,  <41.779175, 35.862839, 39.731056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021454, 35.589546, 39.567924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292226, -0.285719, 0.912671,
		-0.740090, -0.671981, 0.026599,
		0.605698, -0.683232, -0.407828,
		42.203163, 35.384575, 39.445576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681492, 35.418858, 40.198345>,  <41.779175, 35.862839, 39.731056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681492, 35.418858, 40.198345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005074, 35.297703, 39.996811>,  <42.199223, 35.225010, 39.875889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005074, 35.297703, 39.996811>,  <41.681492, 35.418858, 40.198345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005074, 35.297703, 39.996811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458797, -0.210576, 0.863228,
		-0.367559, -0.929470, -0.031382,
		0.808954, -0.302889, -0.503838,
		42.247761, 35.206837, 39.845661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856243, 34.807686, 40.472744>,  <41.681492, 35.418858, 40.198345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856243, 34.807686, 40.472744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190521, 34.942680, 40.299438>,  <42.391087, 35.023678, 40.195457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190521, 34.942680, 40.299438>,  <41.856243, 34.807686, 40.472744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190521, 34.942680, 40.299438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528996, -0.282680, 0.800159,
		0.147569, -0.897883, -0.414764,
		0.835695, 0.337487, -0.433262,
		42.441231, 35.043926, 40.169460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397278, 34.390911, 40.705280>,  <41.856243, 34.807686, 40.472744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397278, 34.390911, 40.705280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585571, 34.722763, 40.585201>,  <42.698547, 34.921875, 40.513153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585571, 34.722763, 40.585201>,  <42.397278, 34.390911, 40.705280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585571, 34.722763, 40.585201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573622, -0.029268, 0.818597,
		0.670346, -0.557547, -0.489671,
		0.470738, 0.829629, -0.300202,
		42.726791, 34.971653, 40.495140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196178, 34.368134, 40.731697>,  <42.397278, 34.390911, 40.705280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196178, 34.368134, 40.731697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061550, 34.740211, 40.790283>,  <42.980774, 34.963459, 40.825436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061550, 34.740211, 40.790283>,  <43.196178, 34.368134, 40.731697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061550, 34.740211, 40.790283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558047, 0.071746, 0.826702,
		0.758489, 0.359976, -0.543242,
		-0.336568, 0.930199, 0.146465,
		42.960579, 35.019272, 40.834221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797398, 34.857666, 40.714336>,  <43.196178, 34.368134, 40.731697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797398, 34.857666, 40.714336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479515, 34.935150, 40.944439>,  <43.288788, 34.981640, 41.082500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479515, 34.935150, 40.944439>,  <43.797398, 34.857666, 40.714336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479515, 34.935150, 40.944439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564796, -0.111212, 0.817703,
		0.222374, 0.974735, -0.021027,
		-0.794705, 0.193712, 0.575257,
		43.241104, 34.993263, 41.117016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003784, 34.988464, 41.368767>,  <43.797398, 34.857666, 40.714336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003784, 34.988464, 41.368767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622925, 35.046421, 41.476418>,  <43.394409, 35.081196, 41.541008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622925, 35.046421, 41.476418>,  <44.003784, 34.988464, 41.368767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622925, 35.046421, 41.476418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257098, -0.096514, 0.961554,
		0.165294, 0.984729, 0.054644,
		-0.952144, 0.144890, 0.269126,
		43.337280, 35.089890, 41.557156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983589, 35.489048, 41.909794>,  <44.003784, 34.988464, 41.368767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983589, 35.489048, 41.909794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668179, 35.247314, 41.955414>,  <43.478931, 35.102276, 41.982788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668179, 35.247314, 41.955414>,  <43.983589, 35.489048, 41.909794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668179, 35.247314, 41.955414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189636, -0.062513, 0.979862,
		-0.585030, 0.794278, 0.163896,
		-0.788529, -0.604330, 0.114052,
		43.431622, 35.066017, 41.989628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571224, 35.893753, 42.392021>,  <43.983589, 35.489048, 41.909794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571224, 35.893753, 42.392021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417717, 35.525009, 42.413555>,  <43.325611, 35.303764, 42.426476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417717, 35.525009, 42.413555>,  <43.571224, 35.893753, 42.392021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417717, 35.525009, 42.413555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077387, 0.025983, 0.996663,
		-0.920179, 0.386657, 0.061368,
		-0.383772, -0.921857, 0.053831,
		43.302586, 35.248451, 42.429703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945072, 35.790031, 42.803932>,  <43.571224, 35.893753, 42.392021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945072, 35.790031, 42.803932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147213, 35.445839, 42.829792>,  <43.268497, 35.239323, 42.845310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147213, 35.445839, 42.829792>,  <42.945072, 35.790031, 42.803932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147213, 35.445839, 42.829792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035481, 0.095583, 0.994789,
		-0.862181, -0.500429, 0.078834,
		0.505356, -0.860485, 0.064654,
		43.298820, 35.187695, 42.849190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610519, 35.426804, 43.304985>,  <42.945072, 35.790031, 42.803932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610519, 35.426804, 43.304985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990864, 35.312130, 43.258213>,  <43.219070, 35.243328, 43.230152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990864, 35.312130, 43.258213>,  <42.610519, 35.426804, 43.304985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990864, 35.312130, 43.258213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104162, -0.059433, 0.992783,
		-0.291562, -0.956180, -0.026652,
		0.950864, -0.286682, -0.116927,
		43.276123, 35.226124, 43.223137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860889, 34.869946, 43.853355>,  <42.610519, 35.426804, 43.304985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860889, 34.869946, 43.853355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156322, 35.106239, 43.723415>,  <43.333584, 35.248016, 43.645451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156322, 35.106239, 43.723415>,  <42.860889, 34.869946, 43.853355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156322, 35.106239, 43.723415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403767, -0.001736, 0.914860,
		0.539873, -0.806866, -0.239800,
		0.738586, 0.590732, -0.324848,
		43.377899, 35.283459, 43.625961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605656, 34.619911, 44.001308>,  <42.860889, 34.869946, 43.853355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605656, 34.619911, 44.001308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611313, 35.018654, 43.970112>,  <43.614708, 35.257900, 43.951393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611313, 35.018654, 43.970112>,  <43.605656, 34.619911, 44.001308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611313, 35.018654, 43.970112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453112, 0.063144, 0.889214,
		0.891341, -0.047913, -0.450794,
		0.014140, 0.996854, -0.077993,
		43.615555, 35.317711, 43.946712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306381, 34.876335, 43.799633>,  <43.605656, 34.619911, 44.001308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306381, 34.876335, 43.799633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036629, 35.052460, 44.036728>,  <43.874779, 35.158134, 44.178986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036629, 35.052460, 44.036728>,  <44.306381, 34.876335, 43.799633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036629, 35.052460, 44.036728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586255, -0.168745, 0.792357,
		0.448905, 0.881845, -0.144337,
		-0.674380, 0.440312, 0.592737,
		43.834316, 35.184555, 44.214550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831081, 34.736584, 43.175343>,  <44.306381, 34.876335, 43.799633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831081, 34.736584, 43.175343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444763, 34.840206, 43.179848>,  <43.212971, 34.902378, 43.182549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444763, 34.840206, 43.179848>,  <43.831081, 34.736584, 43.175343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444763, 34.840206, 43.179848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053719, 0.242373, -0.968695,
		-0.253674, -0.934958, -0.247999,
		-0.965797, 0.259055, 0.011259,
		43.155025, 34.917923, 43.183224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481426, 34.239120, 42.758579>,  <43.831081, 34.736584, 43.175343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481426, 34.239120, 42.758579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271790, 34.577522, 42.797783>,  <43.146008, 34.780563, 42.821304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271790, 34.577522, 42.797783>,  <43.481426, 34.239120, 42.758579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271790, 34.577522, 42.797783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016299, 0.105094, -0.994329,
		-0.851506, -0.522717, -0.041290,
		-0.524092, 0.846004, 0.098008,
		43.114563, 34.831322, 42.827187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736313, 34.116825, 42.512772>,  <43.481426, 34.239120, 42.758579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736313, 34.116825, 42.512772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883087, 34.488674, 42.499195>,  <42.971153, 34.711784, 42.491051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883087, 34.488674, 42.499195>,  <42.736313, 34.116825, 42.512772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883087, 34.488674, 42.499195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160549, 0.027352, -0.986649,
		-0.916287, 0.367486, 0.159287,
		0.366937, 0.929627, -0.033937,
		42.993168, 34.767563, 42.489014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250008, 34.579685, 42.240639>,  <42.736313, 34.116825, 42.512772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250008, 34.579685, 42.240639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608063, 34.739925, 42.162422>,  <42.822895, 34.836071, 42.115490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608063, 34.739925, 42.162422>,  <42.250008, 34.579685, 42.240639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608063, 34.739925, 42.162422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269494, 0.136891, -0.953223,
		-0.355098, 0.905967, 0.230498,
		0.895142, 0.400605, -0.195543,
		42.876606, 34.860107, 42.103760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092964, 35.186729, 41.905392>,  <42.250008, 34.579685, 42.240639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092964, 35.186729, 41.905392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476685, 35.145203, 41.800343>,  <42.706917, 35.120289, 41.737312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476685, 35.145203, 41.800343>,  <42.092964, 35.186729, 41.905392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476685, 35.145203, 41.800343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209068, 0.364066, -0.907605,
		0.189833, 0.925569, 0.327544,
		0.959299, -0.103814, -0.262618,
		42.764473, 35.114059, 41.721558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270847, 35.878620, 41.672180>,  <42.092964, 35.186729, 41.905392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270847, 35.878620, 41.672180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527309, 35.614799, 41.515255>,  <42.681187, 35.456505, 41.421101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527309, 35.614799, 41.515255>,  <42.270847, 35.878620, 41.672180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527309, 35.614799, 41.515255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056341, 0.469384, -0.881195,
		0.765344, 0.587083, 0.263786,
		0.641151, -0.659555, -0.392317,
		42.719654, 35.416931, 41.397560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720695, 36.266514, 41.163078>,  <42.270847, 35.878620, 41.672180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720695, 36.266514, 41.163078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763447, 35.882786, 41.058556>,  <42.789097, 35.652550, 40.995842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763447, 35.882786, 41.058556>,  <42.720695, 36.266514, 41.163078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763447, 35.882786, 41.058556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060226, 0.268573, -0.961375,
		0.992446, 0.087015, 0.086481,
		0.106880, -0.959321, -0.261303,
		42.795509, 35.594990, 40.980164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368614, 36.047909, 40.847614>,  <42.720695, 36.266514, 41.163078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368614, 36.047909, 40.847614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329788, 35.661579, 40.751476>,  <43.306492, 35.429783, 40.693794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329788, 35.661579, 40.751476>,  <43.368614, 36.047909, 40.847614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329788, 35.661579, 40.751476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454117, 0.257861, -0.852810,
		0.885639, 0.026369, -0.463626,
		-0.097063, -0.965822, -0.240346,
		43.300671, 35.371834, 40.679371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402573, 36.028881, 40.167404>,  <43.368614, 36.047909, 40.847614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402573, 36.028881, 40.167404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.241764, 35.670952, 40.245037>,  <43.145279, 35.456192, 40.291615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.241764, 35.670952, 40.245037>,  <43.402573, 36.028881, 40.167404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241764, 35.670952, 40.245037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444202, 0.005256, -0.895911,
		0.800663, -0.446386, -0.399596,
		-0.402022, -0.894825, 0.194078,
		43.121159, 35.402504, 40.303261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509243, 35.616665, 39.667908>,  <43.402573, 36.028881, 40.167404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509243, 35.616665, 39.667908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189404, 35.429462, 39.818436>,  <42.997501, 35.317142, 39.908752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189404, 35.429462, 39.818436>,  <43.509243, 35.616665, 39.667908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189404, 35.429462, 39.818436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448661, 0.049013, -0.892357,
		0.399181, -0.882367, -0.249166,
		-0.799598, -0.468003, 0.376318,
		42.949524, 35.289062, 39.931332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435787, 35.061092, 39.301838>,  <43.509243, 35.616665, 39.667908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435787, 35.061092, 39.301838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066895, 35.096893, 39.452297>,  <42.845558, 35.118374, 39.542572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066895, 35.096893, 39.452297>,  <43.435787, 35.061092, 39.301838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066895, 35.096893, 39.452297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378749, -0.013498, -0.925401,
		-0.077744, -0.995896, 0.046346,
		-0.922228, 0.089497, 0.376145,
		42.790226, 35.123745, 39.565140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993961, 34.658375, 38.798035>,  <43.435787, 35.061092, 39.301838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993961, 34.658375, 38.798035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733109, 34.883907, 39.000744>,  <42.576595, 35.019226, 39.122372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733109, 34.883907, 39.000744>,  <42.993961, 34.658375, 38.798035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733109, 34.883907, 39.000744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590746, 0.041010, -0.805815,
		-0.475125, -0.824873, 0.306336,
		-0.652132, 0.563829, 0.506775,
		42.537468, 35.053055, 39.152775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368275, 34.502205, 38.488869>,  <42.993961, 34.658375, 38.798035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368275, 34.502205, 38.488869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227940, 34.787926, 38.731087>,  <42.143738, 34.959358, 38.876415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227940, 34.787926, 38.731087>,  <42.368275, 34.502205, 38.488869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227940, 34.787926, 38.731087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743340, 0.180851, -0.644002,
		-0.569528, -0.676062, 0.467524,
		-0.350833, 0.714307, 0.605543,
		42.122688, 35.002216, 38.912750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689762, 34.480721, 38.612968>,  <42.368275, 34.502205, 38.488869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689762, 34.480721, 38.612968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769741, 34.869526, 38.662300>,  <41.817730, 35.102810, 38.691898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769741, 34.869526, 38.662300>,  <41.689762, 34.480721, 38.612968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769741, 34.869526, 38.662300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815805, 0.234873, -0.528485,
		-0.542662, 0.005056, 0.839936,
		0.199950, 0.972013, 0.123332,
		41.829727, 35.161129, 38.699299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119778, 34.781250, 38.882278>,  <41.689762, 34.480721, 38.612968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119778, 34.781250, 38.882278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332050, 35.064976, 38.696697>,  <41.459412, 35.235210, 38.585350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332050, 35.064976, 38.696697>,  <41.119778, 34.781250, 38.882278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332050, 35.064976, 38.696697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743323, 0.126475, -0.656868,
		-0.407250, 0.693450, 0.594369,
		0.530678, 0.709317, -0.463950,
		41.491253, 35.277771, 38.557510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619461, 35.452602, 38.792656>,  <41.119778, 34.781250, 38.882278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619461, 35.452602, 38.792656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913502, 35.451393, 38.521477>,  <41.089928, 35.450668, 38.358768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913502, 35.451393, 38.521477>,  <40.619461, 35.452602, 38.792656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913502, 35.451393, 38.521477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662938, 0.206084, -0.719752,
		0.141888, 0.978530, 0.149491,
		0.735106, -0.003021, -0.677946,
		41.134033, 35.450485, 38.318092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408821, 35.990765, 38.300579>,  <40.619461, 35.452602, 38.792656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408821, 35.990765, 38.300579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699696, 35.806965, 38.096592>,  <40.874218, 35.696686, 37.974201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699696, 35.806965, 38.096592>,  <40.408821, 35.990765, 38.300579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699696, 35.806965, 38.096592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529546, 0.097205, -0.842694,
		0.436789, 0.882842, -0.172640,
		0.727184, -0.459500, -0.509964,
		40.917850, 35.669113, 37.943604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710239, 36.444416, 37.761093>,  <40.408821, 35.990765, 38.300579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710239, 36.444416, 37.761093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769936, 36.070667, 37.631676>,  <40.805756, 35.846420, 37.554024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769936, 36.070667, 37.631676>,  <40.710239, 36.444416, 37.761093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769936, 36.070667, 37.631676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708658, 0.127119, -0.694006,
		0.689586, 0.332858, -0.643177,
		0.149245, -0.934369, -0.323542,
		40.814709, 35.790356, 37.534615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695370, 36.444439, 36.924732>,  <40.710239, 36.444416, 37.761093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695370, 36.444439, 36.924732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572197, 36.110420, 37.107109>,  <40.498295, 35.910007, 37.216534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572197, 36.110420, 37.107109>,  <40.695370, 36.444439, 36.924732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572197, 36.110420, 37.107109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726002, -0.103490, -0.679861,
		0.614900, -0.540360, -0.574377,
		-0.307927, -0.835045, 0.455938,
		40.479820, 35.859905, 37.243889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559906, 36.342785, 36.134628>,  <40.695370, 36.444439, 36.924732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559906, 36.342785, 36.134628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592880, 36.091900, 36.444416>,  <40.612667, 35.941368, 36.630291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592880, 36.091900, 36.444416>,  <40.559906, 36.342785, 36.134628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592880, 36.091900, 36.444416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448647, -0.717274, -0.533136,
		0.889899, -0.303513, -0.340529,
		0.082439, -0.627214, 0.774472,
		40.617611, 35.903736, 36.676758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971169, 35.726109, 35.997166>,  <40.559906, 36.342785, 36.134628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971169, 35.726109, 35.997166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695187, 35.607250, 36.261189>,  <40.529598, 35.535934, 36.419601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695187, 35.607250, 36.261189>,  <40.971169, 35.726109, 35.997166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695187, 35.607250, 36.261189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199997, -0.798109, -0.568351,
		0.695676, -0.524144, 0.491230,
		-0.689953, -0.297144, 0.660053,
		40.488201, 35.518108, 36.459206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080181, 35.018425, 36.058498>,  <40.971169, 35.726109, 35.997166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080181, 35.018425, 36.058498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694187, 35.090099, 36.135113>,  <40.462589, 35.133106, 36.181080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694187, 35.090099, 36.135113>,  <41.080181, 35.018425, 36.058498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694187, 35.090099, 36.135113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261577, -0.711267, -0.652439,
		0.019323, -0.679699, 0.733237,
		-0.964989, 0.179190, 0.191537,
		40.404690, 35.143856, 36.192574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419632, 35.351727, 35.501732>,  <41.080181, 35.018425, 36.058498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419632, 35.351727, 35.501732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568352, 35.703827, 35.383801>,  <41.657585, 35.915089, 35.313042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568352, 35.703827, 35.383801>,  <41.419632, 35.351727, 35.501732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568352, 35.703827, 35.383801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665449, -0.031281, 0.745788,
		0.647259, -0.473474, -0.597393,
		0.371798, 0.880252, -0.294826,
		41.679890, 35.967903, 35.295353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501293, 35.622665, 34.815754>,  <41.419632, 35.351727, 35.501732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501293, 35.622665, 34.815754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639050, 35.249931, 34.770016>,  <41.721703, 35.026291, 34.742573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639050, 35.249931, 34.770016>,  <41.501293, 35.622665, 34.815754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639050, 35.249931, 34.770016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350866, 0.240716, -0.904958,
		0.870798, 0.271538, 0.409851,
		0.344388, -0.931839, -0.114341,
		41.742367, 34.970379, 34.735714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211388, 35.650261, 34.580414>,  <41.501293, 35.622665, 34.815754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211388, 35.650261, 34.580414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063828, 35.310295, 34.429913>,  <41.975292, 35.106316, 34.339611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063828, 35.310295, 34.429913>,  <42.211388, 35.650261, 34.580414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063828, 35.310295, 34.429913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414832, 0.211703, -0.884927,
		0.831763, -0.482529, 0.274474,
		-0.368896, -0.849910, -0.376256,
		41.953159, 35.055321, 34.317036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738670, 35.232735, 34.310528>,  <42.211388, 35.650261, 34.580414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738670, 35.232735, 34.310528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420963, 35.197247, 34.070107>,  <42.230339, 35.175953, 33.925854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420963, 35.197247, 34.070107>,  <42.738670, 35.232735, 34.310528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420963, 35.197247, 34.070107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484253, 0.505022, -0.714459,
		0.366931, -0.858535, -0.358161,
		-0.794268, -0.088716, -0.601056,
		42.182682, 35.170631, 33.889790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415398, 34.807896, 34.271313>,  <42.738670, 35.232735, 34.310528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415398, 34.807896, 34.271313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604755, 34.739536, 34.616959>,  <43.718369, 34.698521, 34.824345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604755, 34.739536, 34.616959>,  <43.415398, 34.807896, 34.271313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604755, 34.739536, 34.616959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124249, -0.984146, -0.126569,
		0.872045, -0.047448, -0.487121,
		0.473392, -0.170898, 0.864115,
		43.746773, 34.688267, 34.876194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676434, 34.110275, 34.208954>,  <43.415398, 34.807896, 34.271313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676434, 34.110275, 34.208954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709389, 34.152447, 34.605358>,  <43.729164, 34.177750, 34.843201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709389, 34.152447, 34.605358>,  <43.676434, 34.110275, 34.208954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709389, 34.152447, 34.605358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094639, -0.989068, 0.113088,
		0.992097, -0.103105, -0.071510,
		0.082388, 0.105427, 0.991008,
		43.734104, 34.184074, 34.902660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220768, 33.704147, 34.572651>,  <43.676434, 34.110275, 34.208954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220768, 33.704147, 34.572651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923725, 33.752548, 34.836132>,  <43.745499, 33.781590, 34.994221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923725, 33.752548, 34.836132>,  <44.220768, 33.704147, 34.572651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923725, 33.752548, 34.836132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117948, -0.991799, 0.049221,
		0.659258, -0.041141, 0.750791,
		-0.742609, 0.121004, 0.658704,
		43.700943, 33.788849, 35.033745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539257, 34.078747, 34.935230>,  <44.220768, 33.704147, 34.572651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539257, 34.078747, 34.935230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377789, 33.996857, 35.291912>,  <44.280907, 33.947723, 35.505920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377789, 33.996857, 35.291912>,  <44.539257, 34.078747, 34.935230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377789, 33.996857, 35.291912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537513, 0.735629, 0.412224,
		-0.740358, 0.645706, -0.186908,
		-0.403671, -0.204727, 0.891704,
		44.256687, 33.935440, 35.559422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249397, 34.780865, 35.200241>,  <44.539257, 34.078747, 34.935230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249397, 34.780865, 35.200241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319321, 34.546852, 35.517021>,  <44.361275, 34.406445, 35.707088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319321, 34.546852, 35.517021>,  <44.249397, 34.780865, 35.200241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319321, 34.546852, 35.517021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771022, 0.581568, 0.259432,
		-0.612346, 0.565257, 0.552736,
		0.174808, -0.585033, 0.791946,
		44.371761, 34.371342, 35.754604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392784, 35.181049, 35.822742>,  <44.249397, 34.780865, 35.200241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392784, 35.181049, 35.822742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546432, 34.817375, 35.887032>,  <44.638622, 34.599171, 35.925606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546432, 34.817375, 35.887032>,  <44.392784, 35.181049, 35.822742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546432, 34.817375, 35.887032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838053, 0.416385, 0.352550,
		-0.387455, -0.000729, 0.921888,
		0.384117, -0.909188, 0.160720,
		44.661667, 34.544621, 35.935249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055981, 35.742722, 35.661861>,  <44.392784, 35.181049, 35.822742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055981, 35.742722, 35.661861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316757, 35.810112, 35.957588>,  <44.473225, 35.850548, 36.135025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316757, 35.810112, 35.957588>,  <44.055981, 35.742722, 35.661861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316757, 35.810112, 35.957588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295368, 0.841569, -0.452238,
		-0.698378, 0.513202, 0.498890,
		0.651940, 0.168477, 0.739317,
		44.512341, 35.860657, 36.179382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963619, 36.421959, 35.983585>,  <44.055981, 35.742722, 35.661861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963619, 36.421959, 35.983585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349995, 36.329277, 36.029663>,  <44.581821, 36.273666, 36.057308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349995, 36.329277, 36.029663>,  <43.963619, 36.421959, 35.983585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349995, 36.329277, 36.029663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258633, 0.878488, -0.401706,
		-0.008117, 0.417817, 0.908495,
		0.965942, -0.231706, 0.115192,
		44.639778, 36.259766, 36.064220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339012, 36.967422, 36.256233>,  <43.963619, 36.421959, 35.983585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339012, 36.967422, 36.256233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592529, 36.754841, 36.031425>,  <44.744640, 36.627293, 35.896542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592529, 36.754841, 36.031425>,  <44.339012, 36.967422, 36.256233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592529, 36.754841, 36.031425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395708, 0.847085, -0.354771,
		0.664625, 0.002453, 0.747173,
		0.633789, -0.531452, -0.562023,
		44.782665, 36.595406, 35.862820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847549, 37.581078, 35.990452>,  <44.339012, 36.967422, 36.256233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847549, 37.581078, 35.990452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937881, 37.241016, 35.800194>,  <44.992081, 37.036980, 35.686039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937881, 37.241016, 35.800194>,  <44.847549, 37.581078, 35.990452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937881, 37.241016, 35.800194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585070, 0.508754, -0.631555,
		0.778905, -0.135659, 0.612293,
		0.225831, -0.850156, -0.475642,
		45.005630, 36.985970, 35.657501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648151, 37.557255, 35.871479>,  <44.847549, 37.581078, 35.990452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648151, 37.557255, 35.871479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506126, 37.352016, 35.558899>,  <45.420910, 37.228874, 35.371349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506126, 37.352016, 35.558899>,  <45.648151, 37.557255, 35.871479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506126, 37.352016, 35.558899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630687, 0.485553, -0.605370,
		0.690047, -0.707795, 0.151200,
		-0.355062, -0.513094, -0.781451,
		45.399609, 37.198090, 35.324463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.169945, 37.082218, 35.641479>,  <45.648151, 37.557255, 35.871479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.169945, 37.082218, 35.641479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.928474, 37.171604, 35.335373>,  <45.783592, 37.225235, 35.151707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.928474, 37.171604, 35.335373>,  <46.169945, 37.082218, 35.641479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.928474, 37.171604, 35.335373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795781, 0.111107, -0.595304,
		-0.048002, -0.968359, -0.244901,
		-0.603679, 0.223464, -0.765269,
		45.747372, 37.238644, 35.105793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450241, 36.328209, 35.517582>,  <46.169945, 37.082218, 35.641479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450241, 36.328209, 35.517582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831604, 36.438904, 35.469517>,  <47.060421, 36.505322, 35.440678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831604, 36.438904, 35.469517>,  <46.450241, 36.328209, 35.517582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831604, 36.438904, 35.469517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210627, -0.895699, -0.391611,
		-0.216004, 0.348053, -0.912251,
		0.953404, 0.276734, -0.120165,
		47.117626, 36.521923, 35.433468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.735733, 36.239376, 34.823643>,  <46.450241, 36.328209, 35.517582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.735733, 36.239376, 34.823643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.042377, 36.175930, 35.072529>,  <47.226364, 36.137863, 35.221859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.042377, 36.175930, 35.072529>,  <46.735733, 36.239376, 34.823643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.042377, 36.175930, 35.072529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104284, -0.925391, -0.364386,
		0.633587, 0.344229, -0.692874,
		0.766611, -0.158615, 0.622213,
		47.272362, 36.128345, 35.259193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.301216, 35.857815, 34.531937>,  <46.735733, 36.239376, 34.823643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.301216, 35.857815, 34.531937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.345409, 35.779305, 34.921658>,  <47.371925, 35.732197, 35.155491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.345409, 35.779305, 34.921658>,  <47.301216, 35.857815, 34.531937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.345409, 35.779305, 34.921658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071905, -0.976158, -0.204805,
		0.991274, 0.092685, -0.093735,
		0.110483, -0.196278, 0.974304,
		47.378555, 35.720421, 35.213947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.897106, 35.525299, 34.628685>,  <47.301216, 35.857815, 34.531937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.897106, 35.525299, 34.628685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621029, 35.435925, 34.903992>,  <47.455383, 35.382301, 35.069176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.621029, 35.435925, 34.903992>,  <47.897106, 35.525299, 34.628685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.621029, 35.435925, 34.903992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064098, -0.966275, -0.249407,
		0.720779, -0.128023, 0.681240,
		-0.690195, -0.223433, 0.688265,
		47.413971, 35.368893, 35.110470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.064022, 34.949013, 35.043758>,  <47.897106, 35.525299, 34.628685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.064022, 34.949013, 35.043758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669937, 34.975086, 34.980373>,  <47.433487, 34.990730, 34.942341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669937, 34.975086, 34.980373>,  <48.064022, 34.949013, 35.043758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.669937, 34.975086, 34.980373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032637, -0.979272, -0.199903,
		-0.168212, -0.191775, 0.966916,
		-0.985210, 0.065184, -0.158466,
		47.374374, 34.994640, 34.932835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.027313, 30.599007, 27.862885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.777531, 30.317406, 27.727570>,  <41.627663, 30.148445, 27.646381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.777531, 30.317406, 27.727570>,  <42.027313, 30.599007, 27.862885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777531, 30.317406, 27.727570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497725, 0.024887, 0.866978,
		-0.601937, 0.709760, -0.365941,
		-0.624453, -0.704004, -0.338285,
		41.590195, 30.106205, 27.626083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367805, 30.825665, 28.089474>,  <42.027313, 30.599007, 27.862885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367805, 30.825665, 28.089474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.313622, 30.436769, 28.013155>,  <41.281109, 30.203432, 27.967363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.313622, 30.436769, 28.013155>,  <41.367805, 30.825665, 28.089474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313622, 30.436769, 28.013155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455716, -0.109853, 0.883320,
		-0.879757, 0.206608, -0.428183,
		-0.135464, -0.972237, -0.190798,
		41.272984, 30.145098, 27.955915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605927, 30.634705, 28.150152>,  <41.367805, 30.825665, 28.089474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605927, 30.634705, 28.150152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.814323, 30.295784, 28.191422>,  <40.939362, 30.092432, 28.216183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.814323, 30.295784, 28.191422>,  <40.605927, 30.634705, 28.150152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814323, 30.295784, 28.191422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637939, -0.306217, 0.706587,
		-0.567100, -0.433946, -0.700064,
		0.520992, -0.847303, 0.103175,
		40.970623, 30.041594, 28.222374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203529, 30.009787, 28.080185>,  <40.605927, 30.634705, 28.150152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203529, 30.009787, 28.080185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.516552, 29.881121, 28.293402>,  <40.704365, 29.803921, 28.421331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.516552, 29.881121, 28.293402>,  <40.203529, 30.009787, 28.080185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516552, 29.881121, 28.293402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613629, -0.253863, 0.747672,
		-0.105181, -0.912187, -0.396046,
		0.782558, -0.321666, 0.533042,
		40.751320, 29.784620, 28.453314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998844, 29.440851, 28.388191>,  <40.203529, 30.009787, 28.080185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998844, 29.440851, 28.388191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.305782, 29.522484, 28.631350>,  <40.489944, 29.571463, 28.777245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.305782, 29.522484, 28.631350>,  <39.998844, 29.440851, 28.388191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305782, 29.522484, 28.631350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566928, -0.227059, 0.791856,
		0.299632, -0.952258, -0.058532,
		0.767341, 0.204082, 0.607896,
		40.535984, 29.583708, 28.813719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998913, 28.973257, 28.865246>,  <39.998844, 29.440851, 28.388191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998913, 28.973257, 28.865246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.208176, 29.270769, 29.031662>,  <40.333733, 29.449276, 29.131512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.208176, 29.270769, 29.031662>,  <39.998913, 28.973257, 28.865246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208176, 29.270769, 29.031662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449703, -0.173751, 0.876115,
		0.723927, -0.645444, 0.243581,
		0.523161, 0.743783, 0.416041,
		40.365124, 29.493904, 29.156475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061600, 28.752789, 29.547029>,  <39.998913, 28.973257, 28.865246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061600, 28.752789, 29.547029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.164761, 29.137085, 29.587938>,  <40.226658, 29.367662, 29.612484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.164761, 29.137085, 29.587938>,  <40.061600, 28.752789, 29.547029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164761, 29.137085, 29.587938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376218, 0.002362, 0.926528,
		0.889914, -0.277430, 0.362058,
		0.257902, 0.960743, 0.102273,
		40.242130, 29.425308, 29.618620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161674, 28.761084, 30.249464>,  <40.061600, 28.752789, 29.547029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161674, 28.761084, 30.249464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.182465, 29.148281, 30.151253>,  <40.194939, 29.380600, 30.092325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.182465, 29.148281, 30.151253>,  <40.161674, 28.761084, 30.249464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182465, 29.148281, 30.151253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306244, 0.249465, 0.918685,
		0.950533, 0.027443, 0.309408,
		0.051975, 0.967995, -0.245529,
		40.198055, 29.438679, 30.077595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631397, 29.138947, 30.720242>,  <40.161674, 28.761084, 30.249464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631397, 29.138947, 30.720242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365417, 29.397703, 30.570906>,  <40.205830, 29.552958, 30.481304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365417, 29.397703, 30.570906>,  <40.631397, 29.138947, 30.720242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365417, 29.397703, 30.570906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223175, 0.304932, 0.925856,
		0.712769, 0.698963, -0.058394,
		-0.664946, 0.646890, -0.373338,
		40.165936, 29.591770, 30.458904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705784, 29.818266, 31.031635>,  <40.631397, 29.138947, 30.720242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705784, 29.818266, 31.031635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.336357, 29.834082, 30.879078>,  <40.114700, 29.843571, 30.787542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.336357, 29.834082, 30.879078>,  <40.705784, 29.818266, 31.031635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336357, 29.834082, 30.879078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315216, 0.488054, 0.813906,
		0.218320, 0.871917, -0.438287,
		-0.923567, 0.039537, -0.381394,
		40.059288, 29.845943, 30.764660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504635, 30.596752, 31.141586>,  <40.705784, 29.818266, 31.031635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504635, 30.596752, 31.141586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.168938, 30.382013, 31.107012>,  <39.967522, 30.253170, 31.086267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.168938, 30.382013, 31.107012>,  <40.504635, 30.596752, 31.141586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168938, 30.382013, 31.107012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433495, 0.564584, 0.702372,
		-0.328267, 0.626928, -0.706542,
		-0.839239, -0.536848, -0.086437,
		39.917168, 30.220959, 31.081081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950321, 31.061516, 31.363495>,  <40.504635, 30.596752, 31.141586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950321, 31.061516, 31.363495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.763931, 30.707754, 31.352890>,  <39.652100, 30.495497, 31.346527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.763931, 30.707754, 31.352890>,  <39.950321, 31.061516, 31.363495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763931, 30.707754, 31.352890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433652, 0.202161, 0.878110,
		-0.771243, 0.420671, -0.477724,
		-0.465973, -0.884402, -0.026510,
		39.624138, 30.442434, 31.344936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317623, 31.234638, 31.581337>,  <39.950321, 31.061516, 31.363495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317623, 31.234638, 31.581337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.348225, 30.841526, 31.648617>,  <39.366585, 30.605659, 31.688986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.348225, 30.841526, 31.648617>,  <39.317623, 31.234638, 31.581337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348225, 30.841526, 31.648617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133546, 0.157075, 0.978515,
		-0.988085, -0.097326, -0.119229,
		0.076507, -0.982779, 0.168201,
		39.371178, 30.546692, 31.699078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720135, 31.111568, 31.920641>,  <39.317623, 31.234638, 31.581337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720135, 31.111568, 31.920641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957787, 30.807837, 32.026794>,  <39.100376, 30.625597, 32.090488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957787, 30.807837, 32.026794>,  <38.720135, 31.111568, 31.920641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957787, 30.807837, 32.026794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319648, 0.079880, 0.944163,
		-0.738132, -0.645782, -0.195260,
		0.594126, -0.759332, 0.265385,
		39.136024, 30.580038, 32.106411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280735, 30.662256, 32.204990>,  <38.720135, 31.111568, 31.920641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280735, 30.662256, 32.204990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640144, 30.561682, 32.348904>,  <38.855789, 30.501337, 32.435249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640144, 30.561682, 32.348904>,  <38.280735, 30.662256, 32.204990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640144, 30.561682, 32.348904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362107, 0.038644, 0.931335,
		-0.248075, -0.967102, -0.056324,
		0.898520, -0.251437, 0.359781,
		38.909698, 30.486252, 32.456837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056885, 30.169088, 32.671616>,  <38.280735, 30.662256, 32.204990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056885, 30.169088, 32.671616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424385, 30.292208, 32.770538>,  <38.644886, 30.366079, 32.829891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424385, 30.292208, 32.770538>,  <38.056885, 30.169088, 32.671616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424385, 30.292208, 32.770538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290363, 0.102258, 0.951437,
		0.267565, -0.945939, 0.183324,
		0.918748, 0.307802, 0.247305,
		38.700008, 30.384548, 32.844730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204208, 29.833881, 33.396465>,  <38.056885, 30.169088, 32.671616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204208, 29.833881, 33.396465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.438900, 30.149448, 33.323410>,  <38.579716, 30.338789, 33.279575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.438900, 30.149448, 33.323410>,  <38.204208, 29.833881, 33.396465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438900, 30.149448, 33.323410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103304, 0.296621, 0.949392,
		0.803165, -0.538170, 0.255535,
		0.586731, 0.788916, -0.182640,
		38.614918, 30.386124, 33.268620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476036, 29.865593, 33.979900>,  <38.204208, 29.833881, 33.396465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476036, 29.865593, 33.979900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576668, 30.221701, 33.828045>,  <38.637047, 30.435366, 33.736931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576668, 30.221701, 33.828045>,  <38.476036, 29.865593, 33.979900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576668, 30.221701, 33.828045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001360, 0.391928, 0.919995,
		0.967835, -0.231970, 0.097392,
		0.251581, 0.890271, -0.379638,
		38.652142, 30.488781, 33.714153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872726, 30.055559, 34.467842>,  <38.476036, 29.865593, 33.979900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872726, 30.055559, 34.467842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811493, 30.403521, 34.280296>,  <38.774754, 30.612297, 34.167770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811493, 30.403521, 34.280296>,  <38.872726, 30.055559, 34.467842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811493, 30.403521, 34.280296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010587, 0.475870, 0.879452,
		0.988156, 0.129670, -0.082060,
		-0.153088, 0.869904, -0.468861,
		38.765568, 30.664492, 34.139637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359650, 30.467461, 34.628593>,  <38.872726, 30.055559, 34.467842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359650, 30.467461, 34.628593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051979, 30.703579, 34.530682>,  <38.867378, 30.845249, 34.471935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051979, 30.703579, 34.530682>,  <39.359650, 30.467461, 34.628593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051979, 30.703579, 34.530682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014718, 0.399310, 0.916698,
		0.638866, 0.701500, -0.315828,
		-0.769177, 0.590296, -0.244781,
		38.821224, 30.880667, 34.457249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529812, 31.102291, 34.960140>,  <39.359650, 30.467461, 34.628593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529812, 31.102291, 34.960140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139156, 31.165325, 34.901699>,  <38.904762, 31.203146, 34.866634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139156, 31.165325, 34.901699>,  <39.529812, 31.102291, 34.960140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139156, 31.165325, 34.901699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052843, 0.482888, 0.874086,
		0.208295, 0.861386, -0.463279,
		-0.976637, 0.157587, -0.146102,
		38.846165, 31.212601, 34.857868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215298, 31.824888, 34.936569>,  <39.529812, 31.102291, 34.960140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215298, 31.824888, 34.936569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.372875, 32.181004, 35.027954>,  <39.467422, 32.394672, 35.082783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.372875, 32.181004, 35.027954>,  <39.215298, 31.824888, 34.936569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372875, 32.181004, 35.027954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679521, -0.114729, -0.724630,
		-0.618920, 0.440705, -0.650167,
		0.393941, 0.890290, 0.228461,
		39.491058, 32.448090, 35.096493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325294, 32.162991, 34.334026>,  <39.215298, 31.824888, 34.936569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325294, 32.162991, 34.334026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.594803, 32.339630, 34.571014>,  <39.756508, 32.445614, 34.713207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.594803, 32.339630, 34.571014>,  <39.325294, 32.162991, 34.334026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594803, 32.339630, 34.571014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692174, -0.096465, -0.715255,
		-0.258703, 0.892012, -0.370659,
		0.673772, 0.441599, 0.592471,
		39.796936, 32.472111, 34.748756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704071, 32.773506, 33.968300>,  <39.325294, 32.162991, 34.334026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704071, 32.773506, 33.968300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.940685, 32.646904, 34.264923>,  <40.082653, 32.570942, 34.442898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.940685, 32.646904, 34.264923>,  <39.704071, 32.773506, 33.968300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940685, 32.646904, 34.264923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777791, -0.018319, -0.628256,
		0.212434, 0.948412, 0.235342,
		0.591534, -0.316510, 0.741558,
		40.118145, 32.551952, 34.487392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244228, 33.166004, 33.951984>,  <39.704071, 32.773506, 33.968300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244228, 33.166004, 33.951984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.343929, 32.824623, 34.135063>,  <40.403751, 32.619793, 34.244911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.343929, 32.824623, 34.135063>,  <40.244228, 33.166004, 33.951984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343929, 32.824623, 34.135063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754768, -0.124929, -0.643985,
		0.606791, 0.505976, 0.613020,
		0.249257, -0.853453, 0.457701,
		40.418705, 32.568588, 34.272373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929543, 33.191063, 33.835533>,  <40.244228, 33.166004, 33.951984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929543, 33.191063, 33.835533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.851528, 32.806313, 33.912216>,  <40.804722, 32.575462, 33.958225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.851528, 32.806313, 33.912216>,  <40.929543, 33.191063, 33.835533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851528, 32.806313, 33.912216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773743, -0.271009, -0.572605,
		0.602731, 0.036657, 0.797102,
		-0.195032, -0.961879, 0.191709,
		40.793018, 32.517750, 33.969730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553871, 32.872269, 33.841393>,  <40.929543, 33.191063, 33.835533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553871, 32.872269, 33.841393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.322304, 32.549835, 33.792278>,  <41.183365, 32.356373, 33.762810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.322304, 32.549835, 33.792278>,  <41.553871, 32.872269, 33.841393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322304, 32.549835, 33.792278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706256, -0.420461, -0.569574,
		0.407498, -0.416457, 0.812717,
		-0.578919, -0.806087, -0.122788,
		41.148628, 32.308010, 33.755444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951786, 32.325169, 33.854836>,  <41.553871, 32.872269, 33.841393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951786, 32.325169, 33.854836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.640671, 32.156433, 33.668465>,  <41.454002, 32.055191, 33.556641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.640671, 32.156433, 33.668465>,  <41.951786, 32.325169, 33.854836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640671, 32.156433, 33.668465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627568, -0.562035, -0.538771,
		-0.034591, -0.711453, 0.701882,
		-0.777793, -0.421842, -0.465927,
		41.407333, 32.029881, 33.528687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064804, 31.544521, 33.804832>,  <41.951786, 32.325169, 33.854836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064804, 31.544521, 33.804832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.787674, 31.633154, 33.530346>,  <41.621395, 31.686335, 33.365654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.787674, 31.633154, 33.530346>,  <42.064804, 31.544521, 33.804832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787674, 31.633154, 33.530346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519404, -0.506764, -0.688048,
		-0.500196, -0.833126, 0.236022,
		-0.692837, 0.221568, -0.686210,
		41.579826, 31.699629, 33.324482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974998, 30.905020, 33.494282>,  <42.064804, 31.544521, 33.804832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974998, 30.905020, 33.494282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.847725, 31.170721, 33.223721>,  <41.771362, 31.330141, 33.061382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.847725, 31.170721, 33.223721>,  <41.974998, 30.905020, 33.494282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847725, 31.170721, 33.223721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548769, -0.452751, -0.702758,
		-0.773053, -0.594798, -0.220463,
		-0.318184, 0.664253, -0.676407,
		41.752270, 31.369997, 33.020798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827934, 30.558298, 32.770222>,  <41.974998, 30.905020, 33.494282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827934, 30.558298, 32.770222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.851006, 30.945299, 32.671745>,  <41.864849, 31.177500, 32.612659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.851006, 30.945299, 32.671745>,  <41.827934, 30.558298, 32.770222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851006, 30.945299, 32.671745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504329, -0.241056, -0.829183,
		-0.861583, -0.076335, -0.501844,
		0.057677, 0.967505, -0.246187,
		41.868309, 31.235550, 32.597889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576351, 30.736368, 32.034435>,  <41.827934, 30.558298, 32.770222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576351, 30.736368, 32.034435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.835716, 31.030205, 32.114365>,  <41.991337, 31.206507, 32.162323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.835716, 31.030205, 32.114365>,  <41.576351, 30.736368, 32.034435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835716, 31.030205, 32.114365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467069, -0.176593, -0.866407,
		-0.601167, 0.655127, -0.457610,
		0.648417, 0.734591, 0.199827,
		42.030243, 31.250582, 32.174313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737144, 30.984457, 31.406254>,  <41.576351, 30.736368, 32.034435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737144, 30.984457, 31.406254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.009121, 31.186081, 31.619272>,  <42.172306, 31.307055, 31.747084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.009121, 31.186081, 31.619272>,  <41.737144, 30.984457, 31.406254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009121, 31.186081, 31.619272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650854, -0.080354, -0.754939,
		-0.337741, 0.859923, -0.382705,
		0.679941, 0.504059, 0.532545,
		42.213104, 31.337299, 31.779036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018963, 31.482674, 30.983868>,  <41.737144, 30.984457, 31.406254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018963, 31.482674, 30.983868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.297783, 31.452040, 31.269035>,  <42.465076, 31.433659, 31.440136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.297783, 31.452040, 31.269035>,  <42.018963, 31.482674, 30.983868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297783, 31.452040, 31.269035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716686, 0.043899, -0.696013,
		0.022009, 0.996096, 0.085488,
		0.697049, -0.076587, 0.712922,
		42.506897, 31.429064, 31.482912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487419, 32.034527, 30.842163>,  <42.018963, 31.482674, 30.983868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487419, 32.034527, 30.842163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.687248, 31.766403, 31.061657>,  <42.807148, 31.605528, 31.193354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.687248, 31.766403, 31.061657>,  <42.487419, 32.034527, 30.842163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687248, 31.766403, 31.061657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681694, -0.086661, -0.726487,
		0.534526, 0.737004, 0.413652,
		0.499576, -0.670310, 0.548733,
		42.837120, 31.565310, 31.226276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195484, 32.302296, 30.922514>,  <42.487419, 32.034527, 30.842163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195484, 32.302296, 30.922514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.233986, 31.913260, 31.007175>,  <43.257088, 31.679836, 31.057972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.233986, 31.913260, 31.007175>,  <43.195484, 32.302296, 30.922514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233986, 31.913260, 31.007175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633645, -0.104113, -0.766586,
		0.767612, 0.207903, 0.606258,
		0.096256, -0.972593, 0.211655,
		43.262863, 31.621481, 31.070671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970982, 32.079247, 30.916105>,  <43.195484, 32.302296, 30.922514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970982, 32.079247, 30.916105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.722290, 31.773592, 30.847355>,  <43.573074, 31.590199, 30.806105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.722290, 31.773592, 30.847355>,  <43.970982, 32.079247, 30.916105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722290, 31.773592, 30.847355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499359, -0.217672, -0.838606,
		0.603397, -0.607217, 0.516913,
		-0.621733, -0.764138, -0.171877,
		43.535770, 31.544352, 30.795792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433006, 31.595768, 30.564390>,  <43.970982, 32.079247, 30.916105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433006, 31.595768, 30.564390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.068455, 31.453186, 30.482096>,  <43.849724, 31.367638, 30.432718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.068455, 31.453186, 30.482096>,  <44.433006, 31.595768, 30.564390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068455, 31.453186, 30.482096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273187, -0.150059, -0.950185,
		0.307824, -0.922184, 0.234139,
		-0.911380, -0.356453, -0.205737,
		43.795040, 31.346251, 30.420374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627403, 31.219133, 30.003876>,  <44.433006, 31.595768, 30.564390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627403, 31.219133, 30.003876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.231682, 31.265738, 29.968752>,  <43.994251, 31.293699, 29.947678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.231682, 31.265738, 29.968752>,  <44.627403, 31.219133, 30.003876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231682, 31.265738, 29.968752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090086, 0.014419, -0.995830,
		-0.114759, -0.993085, -0.024761,
		-0.989300, 0.116512, -0.087808,
		43.934891, 31.300690, 29.942410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473259, 30.678366, 29.543497>,  <44.627403, 31.219133, 30.003876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473259, 30.678366, 29.543497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.187897, 30.958630, 29.547930>,  <44.016678, 31.126787, 29.550589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.187897, 30.958630, 29.547930>,  <44.473259, 30.678366, 29.543497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187897, 30.958630, 29.547930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188397, 0.207007, -0.960028,
		-0.674948, -0.682805, -0.279683,
		-0.713409, 0.700660, 0.011081,
		43.973873, 31.168827, 29.551254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.960644, 30.473494, 29.055456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.874344, 30.863457, 29.077385>,  <43.822563, 31.097435, 29.090542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.874344, 30.863457, 29.077385>,  <43.960644, 30.473494, 29.055456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874344, 30.863457, 29.077385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011494, 0.053605, -0.998496,
		-0.976380, -0.216060, -0.000360,
		-0.215754, 0.974907, 0.054822,
		43.809616, 31.155930, 29.093832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580387, 30.572481, 28.476030>,  <43.960644, 30.473494, 29.055456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580387, 30.572481, 28.476030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.694527, 30.943554, 28.572346>,  <43.763012, 31.166199, 28.630135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.694527, 30.943554, 28.572346>,  <43.580387, 30.572481, 28.476030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694527, 30.943554, 28.572346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155522, 0.203087, -0.966731,
		-0.945721, 0.313304, -0.086324,
		0.285350, 0.927683, 0.240789,
		43.780132, 31.221859, 28.644583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023830, 31.037067, 28.255157>,  <43.580387, 30.572481, 28.476030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023830, 31.037067, 28.255157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.366673, 31.238913, 28.296616>,  <43.572376, 31.360020, 28.321489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.366673, 31.238913, 28.296616>,  <43.023830, 31.037067, 28.255157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366673, 31.238913, 28.296616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050179, 0.282016, -0.958097,
		-0.512696, 0.815987, 0.267038,
		0.857103, 0.504612, 0.103644,
		43.623802, 31.390297, 28.327709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904964, 31.657791, 27.868715>,  <43.023830, 31.037067, 28.255157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904964, 31.657791, 27.868715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.301277, 31.610455, 27.895069>,  <43.539066, 31.582052, 27.910881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.301277, 31.610455, 27.895069>,  <42.904964, 31.657791, 27.868715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301277, 31.610455, 27.895069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084410, 0.159076, -0.983651,
		0.105926, 0.980148, 0.167599,
		0.990785, -0.118341, 0.065884,
		43.598511, 31.574953, 27.914835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144779, 32.171860, 27.450834>,  <42.904964, 31.657791, 27.868715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144779, 32.171860, 27.450834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.441502, 31.905375, 27.481524>,  <43.619534, 31.745483, 27.499937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.441502, 31.905375, 27.481524>,  <43.144779, 32.171860, 27.450834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441502, 31.905375, 27.481524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261880, 0.182457, -0.947696,
		0.617368, 0.723098, 0.309816,
		0.741806, -0.666212, 0.076722,
		43.664043, 31.705511, 27.504539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702412, 32.409260, 26.951111>,  <43.144779, 32.171860, 27.450834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702412, 32.409260, 26.951111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.813301, 32.037479, 27.048496>,  <43.879837, 31.814413, 27.106928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.813301, 32.037479, 27.048496>,  <43.702412, 32.409260, 26.951111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813301, 32.037479, 27.048496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242570, -0.177482, -0.953761,
		0.929680, 0.323465, 0.176254,
		0.277226, -0.929446, 0.243465,
		43.896469, 31.758646, 27.121536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366539, 32.303158, 26.648846>,  <43.702412, 32.409260, 26.951111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366539, 32.303158, 26.648846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.195602, 31.943136, 26.682964>,  <44.093040, 31.727121, 26.703436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.195602, 31.943136, 26.682964>,  <44.366539, 32.303158, 26.648846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.195602, 31.943136, 26.682964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298718, -0.229613, -0.926308,
		0.853316, -0.370368, 0.366986,
		-0.427339, -0.900059, 0.085297,
		44.067402, 31.673119, 26.708553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772282, 31.914469, 26.283306>,  <44.366539, 32.303158, 26.648846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772282, 31.914469, 26.283306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.456314, 31.671564, 26.317389>,  <44.266735, 31.525822, 26.337839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.456314, 31.671564, 26.317389>,  <44.772282, 31.914469, 26.283306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456314, 31.671564, 26.317389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269978, -0.469164, -0.840831,
		0.550582, -0.641184, 0.534549,
		-0.789919, -0.607263, 0.085207,
		44.219337, 31.489386, 26.342951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007099, 31.249514, 26.321808>,  <44.772282, 31.914469, 26.283306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007099, 31.249514, 26.321808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.633465, 31.253813, 26.179056>,  <44.409283, 31.256392, 26.093405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.633465, 31.253813, 26.179056>,  <45.007099, 31.249514, 26.321808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633465, 31.253813, 26.179056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297669, -0.528504, -0.795033,
		-0.197154, -0.848863, 0.490471,
		-0.934090, 0.010746, -0.356877,
		44.353237, 31.257036, 26.071993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935715, 30.631269, 25.810890>,  <45.007099, 31.249514, 26.321808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935715, 30.631269, 25.810890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.610676, 30.849226, 25.728161>,  <44.415653, 30.980000, 25.678524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.610676, 30.849226, 25.728161>,  <44.935715, 30.631269, 25.810890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610676, 30.849226, 25.728161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169719, -0.118256, -0.978372,
		-0.557564, -0.830126, 0.003617,
		-0.812599, 0.544890, -0.206823,
		44.366898, 31.012693, 25.666115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677139, 30.273323, 25.261465>,  <44.935715, 30.631269, 25.810890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677139, 30.273323, 25.261465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.484955, 30.624069, 25.254957>,  <44.369644, 30.834517, 25.251053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.484955, 30.624069, 25.254957>,  <44.677139, 30.273323, 25.261465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484955, 30.624069, 25.254957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057876, 0.013193, -0.998237,
		-0.875104, -0.480556, -0.057089,
		-0.480462, 0.876865, -0.016267,
		44.340816, 30.887129, 25.250076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041588, 30.340483, 24.744083>,  <44.677139, 30.273323, 25.261465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041588, 30.340483, 24.744083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.151356, 30.724911, 24.756956>,  <44.217216, 30.955568, 24.764679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.151356, 30.724911, 24.756956>,  <44.041588, 30.340483, 24.744083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151356, 30.724911, 24.756956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157981, 0.078069, -0.984351,
		-0.948544, 0.265041, 0.173255,
		0.274420, 0.961071, 0.032181,
		44.233681, 31.013231, 24.766611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571144, 30.633570, 24.331713>,  <44.041588, 30.340483, 24.744083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571144, 30.633570, 24.331713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.863251, 30.905630, 24.357334>,  <44.038517, 31.068867, 24.372707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.863251, 30.905630, 24.357334>,  <43.571144, 30.633570, 24.331713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863251, 30.905630, 24.357334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022430, 0.069837, -0.997306,
		-0.682791, 0.729739, 0.035744,
		0.730269, 0.680150, 0.064052,
		44.082333, 31.109674, 24.376551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347542, 31.259121, 23.907360>,  <43.571144, 30.633570, 24.331713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347542, 31.259121, 23.907360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.744987, 31.268919, 23.951416>,  <43.983456, 31.274797, 23.977850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.744987, 31.268919, 23.951416>,  <43.347542, 31.259121, 23.907360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744987, 31.268919, 23.951416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104589, 0.166316, -0.980510,
		-0.042334, 0.985768, 0.162692,
		0.993614, 0.024493, 0.110141,
		44.043072, 31.276266, 23.984459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475510, 31.807751, 23.713924>,  <43.347542, 31.259121, 23.907360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475510, 31.807751, 23.713924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.846180, 31.657579, 23.721134>,  <44.068581, 31.567476, 23.725460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.846180, 31.657579, 23.721134>,  <43.475510, 31.807751, 23.713924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846180, 31.657579, 23.721134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192912, 0.433919, -0.880056,
		0.322575, 0.819005, 0.474527,
		0.926677, -0.375426, 0.018025,
		44.124184, 31.544952, 23.726542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001083, 32.398659, 23.733421>,  <43.475510, 31.807751, 23.713924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001083, 32.398659, 23.733421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.184490, 32.075130, 23.586138>,  <44.294533, 31.881014, 23.497768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.184490, 32.075130, 23.586138>,  <44.001083, 32.398659, 23.733421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184490, 32.075130, 23.586138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475034, 0.573234, -0.667642,
		0.751070, 0.131213, 0.647053,
		0.458516, -0.808818, -0.368208,
		44.322044, 31.832485, 23.475676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667316, 32.577785, 23.475441>,  <44.001083, 32.398659, 23.733421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667316, 32.577785, 23.475441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.613106, 32.229149, 23.286991>,  <44.580582, 32.019966, 23.173922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.613106, 32.229149, 23.286991>,  <44.667316, 32.577785, 23.475441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613106, 32.229149, 23.286991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366087, 0.397810, -0.841266,
		0.920660, -0.286485, 0.265165,
		-0.135524, -0.871593, -0.471126,
		44.572449, 31.967670, 23.145653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177128, 32.505054, 22.968641>,  <44.667316, 32.577785, 23.475441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177128, 32.505054, 22.968641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.885899, 32.260094, 22.845438>,  <44.711163, 32.113117, 22.771517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.885899, 32.260094, 22.845438>,  <45.177128, 32.505054, 22.968641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885899, 32.260094, 22.845438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224102, 0.211987, -0.951231,
		0.647832, -0.761591, -0.017100,
		-0.728074, -0.612405, -0.308006,
		44.667477, 32.076370, 22.753036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507023, 32.222004, 22.437771>,  <45.177128, 32.505054, 22.968641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507023, 32.222004, 22.437771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.125786, 32.136826, 22.351728>,  <44.897045, 32.085716, 22.300104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.125786, 32.136826, 22.351728>,  <45.507023, 32.222004, 22.437771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125786, 32.136826, 22.351728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140064, 0.319710, -0.937106,
		0.268324, -0.923276, -0.274887,
		-0.953092, -0.212947, -0.215104,
		44.839859, 32.072941, 22.287197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467415, 31.883327, 21.739580>,  <45.507023, 32.222004, 22.437771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467415, 31.883327, 21.739580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.092335, 32.016087, 21.780678>,  <44.867287, 32.095741, 21.805336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.092335, 32.016087, 21.780678>,  <45.467415, 31.883327, 21.739580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092335, 32.016087, 21.780678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021107, 0.349593, -0.936664,
		-0.346793, -0.876145, -0.334820,
		-0.937704, 0.331896, 0.102744,
		44.811024, 32.115654, 21.811501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169281, 31.695736, 21.165461>,  <45.467415, 31.883327, 21.739580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169281, 31.695736, 21.165461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.943081, 31.989672, 21.315245>,  <44.807362, 32.166035, 21.405115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.943081, 31.989672, 21.315245>,  <45.169281, 31.695736, 21.165461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.943081, 31.989672, 21.315245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030760, 0.434921, -0.899943,
		-0.824174, -0.520436, -0.223344,
		-0.565500, 0.734840, 0.374459,
		44.773430, 32.210125, 21.427582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608570, 31.783375, 20.728413>,  <45.169281, 31.695736, 21.165461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608570, 31.783375, 20.728413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.646832, 32.131683, 20.921329>,  <44.669788, 32.340668, 21.037081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.646832, 32.131683, 20.921329>,  <44.608570, 31.783375, 20.728413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646832, 32.131683, 20.921329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092225, 0.490184, -0.866726,
		-0.991133, 0.038426, 0.127195,
		0.095654, 0.870771, 0.482294,
		44.675529, 32.392914, 21.066017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012371, 32.283333, 20.653105>,  <44.608570, 31.783375, 20.728413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012371, 32.283333, 20.653105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.332901, 32.508724, 20.733469>,  <44.525219, 32.643959, 20.781689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.332901, 32.508724, 20.733469>,  <44.012371, 32.283333, 20.653105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332901, 32.508724, 20.733469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128844, 0.490524, -0.861850,
		-0.584189, 0.664736, 0.465671,
		0.801325, 0.563482, 0.200912,
		44.573299, 32.677769, 20.793743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470875, 31.788656, 20.641140>,  <44.012371, 32.283333, 20.653105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470875, 31.788656, 20.641140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.258842, 31.997599, 20.373960>,  <43.131622, 32.122963, 20.213654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.258842, 31.997599, 20.373960>,  <43.470875, 31.788656, 20.641140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258842, 31.997599, 20.373960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797379, -0.039114, 0.602210,
		0.288442, 0.851830, 0.437249,
		-0.530083, 0.522356, -0.667949,
		43.099819, 32.154305, 20.173576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157627, 32.442333, 20.810722>,  <43.470875, 31.788656, 20.641140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157627, 32.442333, 20.810722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.936771, 32.258442, 20.532501>,  <42.804256, 32.148109, 20.365568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.936771, 32.258442, 20.532501>,  <43.157627, 32.442333, 20.810722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936771, 32.258442, 20.532501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650336, -0.284570, 0.704331,
		-0.521731, 0.841234, -0.141853,
		-0.552140, -0.459724, -0.695554,
		42.771130, 32.120525, 20.323835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440712, 32.714886, 20.909010>,  <43.157627, 32.442333, 20.810722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440712, 32.714886, 20.909010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.483791, 32.355419, 20.738930>,  <42.509640, 32.139740, 20.636881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.483791, 32.355419, 20.738930>,  <42.440712, 32.714886, 20.909010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483791, 32.355419, 20.738930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582391, -0.403653, 0.705609,
		-0.805743, 0.171639, -0.566850,
		0.107701, -0.898668, -0.425202,
		42.516102, 32.085819, 20.611370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828365, 32.463211, 21.081055>,  <42.440712, 32.714886, 20.909010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828365, 32.463211, 21.081055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.014557, 32.125198, 20.975796>,  <42.126274, 31.922390, 20.912640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.014557, 32.125198, 20.975796>,  <41.828365, 32.463211, 21.081055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014557, 32.125198, 20.975796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438173, -0.478358, 0.761038,
		-0.768980, -0.238945, -0.592937,
		0.465482, -0.845032, -0.263149,
		42.154202, 31.871689, 20.896851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324921, 31.927727, 21.179455>,  <41.828365, 32.463211, 21.081055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324921, 31.927727, 21.179455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.665062, 31.717545, 21.168194>,  <41.869148, 31.591434, 21.161436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.665062, 31.717545, 21.168194>,  <41.324921, 31.927727, 21.179455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665062, 31.717545, 21.168194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331601, -0.576640, 0.746677,
		-0.408581, -0.625604, -0.664591,
		0.850354, -0.525457, -0.028153,
		41.920170, 31.559908, 21.159748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136292, 31.158802, 21.198103>,  <41.324921, 31.927727, 21.179455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136292, 31.158802, 21.198103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.520672, 31.197760, 21.301704>,  <41.751301, 31.221134, 21.363865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.520672, 31.197760, 21.301704>,  <41.136292, 31.158802, 21.198103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520672, 31.197760, 21.301704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140542, -0.634508, 0.760032,
		0.238362, -0.766756, -0.596044,
		0.960954, 0.097393, 0.259003,
		41.808956, 31.226978, 21.379406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292366, 30.488863, 21.405308>,  <41.136292, 31.158802, 21.198103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292366, 30.488863, 21.405308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.558964, 30.731426, 21.578768>,  <41.718922, 30.876965, 21.682844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.558964, 30.731426, 21.578768>,  <41.292366, 30.488863, 21.405308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558964, 30.731426, 21.578768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209126, -0.406251, 0.889509,
		0.715577, -0.683541, -0.143948,
		0.666495, 0.606409, 0.433650,
		41.758911, 30.913349, 21.708862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635063, 30.054703, 21.963533>,  <41.292366, 30.488863, 21.405308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635063, 30.054703, 21.963533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.716187, 30.435532, 22.055126>,  <41.764858, 30.664028, 22.110083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.716187, 30.435532, 22.055126>,  <41.635063, 30.054703, 21.963533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716187, 30.435532, 22.055126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207104, -0.186848, 0.960310,
		0.957068, -0.242178, 0.159284,
		0.202804, 0.952070, 0.228982,
		41.777027, 30.721153, 22.123821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975555, 30.039280, 22.505802>,  <41.635063, 30.054703, 21.963533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975555, 30.039280, 22.505802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.894882, 30.431025, 22.511169>,  <41.846478, 30.666071, 22.514391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.894882, 30.431025, 22.511169>,  <41.975555, 30.039280, 22.505802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894882, 30.431025, 22.511169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064113, -0.026873, 0.997581,
		0.977351, 0.200333, 0.068209,
		-0.201681, 0.979360, 0.013420,
		41.834377, 30.724833, 22.515196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415695, 30.296095, 22.941950>,  <41.975555, 30.039280, 22.505802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415695, 30.296095, 22.941950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.108761, 30.552567, 22.945732>,  <41.924603, 30.706450, 22.948002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.108761, 30.552567, 22.945732>,  <42.415695, 30.296095, 22.941950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108761, 30.552567, 22.945732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084688, -0.115948, 0.989638,
		0.635631, 0.758582, 0.143271,
		-0.767334, 0.641178, 0.009457,
		41.878559, 30.744921, 22.948570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577381, 30.818798, 23.396536>,  <42.415695, 30.296095, 22.941950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577381, 30.818798, 23.396536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178753, 30.849796, 23.384871>,  <41.939575, 30.868395, 23.377871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178753, 30.849796, 23.384871>,  <42.577381, 30.818798, 23.396536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178753, 30.849796, 23.384871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035773, -0.085320, 0.995711,
		0.074677, 0.993335, 0.087799,
		-0.996566, 0.077497, -0.029163,
		41.879784, 30.873045, 23.376122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409027, 31.354849, 23.834463>,  <42.577381, 30.818798, 23.396536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409027, 31.354849, 23.834463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.088963, 31.117285, 23.800980>,  <41.896923, 30.974747, 23.780890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.088963, 31.117285, 23.800980>,  <42.409027, 31.354849, 23.834463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088963, 31.117285, 23.800980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057601, -0.062824, 0.996361,
		-0.597010, 0.802073, 0.016059,
		-0.800163, -0.593912, -0.083707,
		41.848915, 30.939112, 23.775867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996006, 31.533154, 24.420408>,  <42.409027, 31.354849, 23.834463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996006, 31.533154, 24.420408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.844006, 31.179771, 24.310789>,  <41.752804, 30.967741, 24.245018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.844006, 31.179771, 24.310789>,  <41.996006, 31.533154, 24.420408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844006, 31.179771, 24.310789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142592, -0.236780, 0.961043,
		-0.913929, 0.404276, -0.035997,
		-0.380003, -0.883457, -0.274047,
		41.730003, 30.914734, 24.228575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445347, 31.365496, 24.833868>,  <41.996006, 31.533154, 24.420408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445347, 31.365496, 24.833868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516884, 30.991175, 24.712353>,  <41.559807, 30.766582, 24.639444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516884, 30.991175, 24.712353>,  <41.445347, 31.365496, 24.833868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516884, 30.991175, 24.712353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169190, -0.333418, 0.927473,
		-0.969221, -0.114477, -0.217959,
		0.178846, -0.935803, -0.303787,
		41.570538, 30.710434, 24.621216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872890, 31.014151, 25.204414>,  <41.445347, 31.365496, 24.833868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872890, 31.014151, 25.204414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163567, 30.760500, 25.098730>,  <41.337971, 30.608311, 25.035318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163567, 30.760500, 25.098730>,  <40.872890, 31.014151, 25.204414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163567, 30.760500, 25.098730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003561, -0.388079, 0.921619,
		-0.686958, -0.668789, -0.284271,
		0.726689, -0.634126, -0.264212,
		41.381573, 30.570263, 25.019466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739571, 30.327782, 25.337954>,  <40.872890, 31.014151, 25.204414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739571, 30.327782, 25.337954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.137833, 30.290565, 25.336338>,  <41.376789, 30.268236, 25.335369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.137833, 30.290565, 25.336338>,  <40.739571, 30.327782, 25.337954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137833, 30.290565, 25.336338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033686, -0.400265, 0.915780,
		-0.086822, -0.911664, -0.401659,
		0.995654, -0.093040, -0.004041,
		41.436527, 30.262653, 25.335125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920727, 29.577785, 25.623581>,  <40.739571, 30.327782, 25.337954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920727, 29.577785, 25.623581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.271927, 29.769098, 25.631151>,  <41.482647, 29.883886, 25.635693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.271927, 29.769098, 25.631151>,  <40.920727, 29.577785, 25.623581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271927, 29.769098, 25.631151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191866, -0.387886, 0.901517,
		0.438520, -0.787903, -0.432330,
		0.878002, 0.478282, 0.018924,
		41.535328, 29.912582, 25.636827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336990, 29.074144, 25.892113>,  <40.920727, 29.577785, 25.623581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336990, 29.074144, 25.892113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.511574, 29.425730, 25.968977>,  <41.616325, 29.636681, 26.015095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.511574, 29.425730, 25.968977>,  <41.336990, 29.074144, 25.892113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511574, 29.425730, 25.968977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032337, -0.228763, 0.972945,
		0.899142, -0.418438, -0.128269,
		0.436460, 0.878964, 0.192160,
		41.642513, 29.689419, 26.026625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034798, 28.874111, 26.170258>,  <41.336990, 29.074144, 25.892113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034798, 28.874111, 26.170258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.948830, 29.248047, 26.283316>,  <41.897247, 29.472408, 26.351151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.948830, 29.248047, 26.283316>,  <42.034798, 28.874111, 26.170258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948830, 29.248047, 26.283316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033922, -0.282088, 0.958789,
		0.976042, 0.215652, 0.028915,
		-0.214922, 0.934837, 0.282645,
		41.884354, 29.528498, 26.368109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553501, 29.228943, 26.686279>,  <42.034798, 28.874111, 26.170258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553501, 29.228943, 26.686279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.223656, 29.447958, 26.743151>,  <42.025749, 29.579367, 26.777273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.223656, 29.447958, 26.743151>,  <42.553501, 29.228943, 26.686279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223656, 29.447958, 26.743151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054084, -0.173879, 0.983281,
		0.563105, 0.818516, 0.113770,
		-0.824614, 0.547537, 0.142181,
		41.976273, 29.612219, 26.785805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548618, 29.562309, 27.383209>,  <42.553501, 29.228943, 26.686279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548618, 29.562309, 27.383209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.160015, 29.571108, 27.288813>,  <41.926853, 29.576387, 27.232174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.160015, 29.571108, 27.288813>,  <42.548618, 29.562309, 27.383209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160015, 29.571108, 27.288813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237011, -0.084652, 0.967812,
		0.001313, 0.996168, 0.087454,
		-0.971506, 0.021998, -0.235991,
		41.868565, 29.577707, 27.218016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.384861, 31.248432, 32.442451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.118065, 31.314991, 32.151951>,  <42.957989, 31.354927, 31.977652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.118065, 31.314991, 32.151951>,  <43.384861, 31.248432, 32.442451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118065, 31.314991, 32.151951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629884, 0.394700, 0.668923,
		0.397958, 0.903617, -0.158449,
		-0.666990, 0.166398, -0.726248,
		42.917969, 31.364910, 31.934076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096054, 31.902349, 32.555981>,  <43.384861, 31.248432, 32.442451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096054, 31.902349, 32.555981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835190, 31.699131, 32.330921>,  <42.678669, 31.577200, 32.195885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835190, 31.699131, 32.330921>,  <43.096054, 31.902349, 32.555981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835190, 31.699131, 32.330921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745116, 0.292935, 0.599158,
		-0.139580, 0.809988, -0.569594,
		-0.652165, -0.508044, -0.562647,
		42.639542, 31.546719, 32.162128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573746, 32.353977, 32.532082>,  <43.096054, 31.902349, 32.555981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573746, 32.353977, 32.532082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.421631, 31.996819, 32.435650>,  <42.330360, 31.782524, 32.377792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.421631, 31.996819, 32.435650>,  <42.573746, 32.353977, 32.532082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421631, 31.996819, 32.435650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850015, 0.234700, 0.471583,
		-0.364494, 0.384257, -0.848228,
		-0.380288, -0.892896, -0.241077,
		42.307545, 31.728951, 32.363327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911724, 32.469479, 32.299091>,  <42.573746, 32.353977, 32.532082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911724, 32.469479, 32.299091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.907276, 32.079853, 32.389496>,  <41.904606, 31.846079, 32.443741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.907276, 32.079853, 32.389496>,  <41.911724, 32.469479, 32.299091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907276, 32.079853, 32.389496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821289, 0.137833, 0.553612,
		-0.570404, -0.179468, -0.801518,
		-0.011120, -0.974060, 0.226016,
		41.903938, 31.787636, 32.457302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187607, 32.281464, 32.238380>,  <41.911724, 32.469479, 32.299091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187607, 32.281464, 32.238380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.346825, 31.995359, 32.468151>,  <41.442356, 31.823696, 32.606014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.346825, 31.995359, 32.468151>,  <41.187607, 32.281464, 32.238380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346825, 31.995359, 32.468151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719536, 0.145003, 0.679148,
		-0.569062, -0.683649, -0.456938,
		0.398042, -0.715260, 0.574426,
		41.466236, 31.780781, 32.640480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572613, 31.926945, 32.488571>,  <41.187607, 32.281464, 32.238380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572613, 31.926945, 32.488571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.871956, 31.844662, 32.740810>,  <41.051559, 31.795292, 32.892151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.871956, 31.844662, 32.740810>,  <40.572613, 31.926945, 32.488571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871956, 31.844662, 32.740810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621878, 0.113090, 0.774905,
		-0.230717, -0.972057, -0.043293,
		0.748356, -0.205707, 0.630593,
		41.096462, 31.782949, 32.929989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374321, 31.483612, 33.020977>,  <40.572613, 31.926945, 32.488571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374321, 31.483612, 33.020977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.701149, 31.640915, 33.189617>,  <40.897247, 31.735296, 33.290802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.701149, 31.640915, 33.189617>,  <40.374321, 31.483612, 33.020977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701149, 31.640915, 33.189617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555614, 0.341887, 0.757896,
		0.153912, -0.853499, 0.497846,
		0.817070, 0.393259, 0.421596,
		40.946270, 31.758892, 33.316097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436638, 31.178385, 33.731461>,  <40.374321, 31.483612, 33.020977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436638, 31.178385, 33.731461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.637852, 31.523954, 33.721798>,  <40.758579, 31.731297, 33.716000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.637852, 31.523954, 33.721798>,  <40.436638, 31.178385, 33.731461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637852, 31.523954, 33.721798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440661, 0.280425, 0.852748,
		0.743485, -0.418322, 0.521764,
		0.503039, 0.863926, -0.024153,
		40.788765, 31.783133, 33.714554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710648, 31.298170, 34.364384>,  <40.436638, 31.178385, 33.731461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710648, 31.298170, 34.364384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.706661, 31.669138, 34.214828>,  <40.704269, 31.891720, 34.125095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.706661, 31.669138, 34.214828>,  <40.710648, 31.298170, 34.364384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706661, 31.669138, 34.214828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437930, 0.332093, 0.835423,
		0.898954, 0.172061, 0.402836,
		-0.009965, 0.927421, -0.373887,
		40.703671, 31.947365, 34.102661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969410, 31.663099, 34.934326>,  <40.710648, 31.298170, 34.364384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969410, 31.663099, 34.934326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.774269, 31.936188, 34.716743>,  <40.657185, 32.100040, 34.586193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.774269, 31.936188, 34.716743>,  <40.969410, 31.663099, 34.934326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774269, 31.936188, 34.716743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509714, 0.283080, 0.812439,
		0.708653, 0.673615, 0.209891,
		-0.487855, 0.682722, -0.543956,
		40.627914, 32.141003, 34.553558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917130, 32.229179, 35.465088>,  <40.969410, 31.663099, 34.934326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917130, 32.229179, 35.465088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.677307, 32.327435, 35.160404>,  <40.533413, 32.386387, 34.977596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.677307, 32.327435, 35.160404>,  <40.917130, 32.229179, 35.465088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677307, 32.327435, 35.160404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669992, 0.366541, 0.645569,
		0.437775, 0.897389, -0.055183,
		-0.599553, 0.245641, -0.761706,
		40.497440, 32.401127, 34.931892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634853, 32.994854, 35.566406>,  <40.917130, 32.229179, 35.465088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634853, 32.994854, 35.566406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.390991, 32.790741, 35.323780>,  <40.244675, 32.668274, 35.178204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.390991, 32.790741, 35.323780>,  <40.634853, 32.994854, 35.566406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390991, 32.790741, 35.323780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786988, 0.298248, 0.540091,
		-0.094693, 0.806632, -0.583419,
		-0.609658, -0.510286, -0.606568,
		40.208096, 32.637653, 35.141811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016006, 33.402454, 35.399075>,  <40.634853, 32.994854, 35.566406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016006, 33.402454, 35.399075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.888126, 33.023449, 35.400322>,  <39.811398, 32.796047, 35.401070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.888126, 33.023449, 35.400322>,  <40.016006, 33.402454, 35.399075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888126, 33.023449, 35.400322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853339, 0.289356, 0.433688,
		-0.411828, 0.135989, -0.901058,
		-0.319703, -0.947513, 0.003120,
		39.792213, 32.739197, 35.401257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328728, 33.552322, 35.546135>,  <40.016006, 33.402454, 35.399075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328728, 33.552322, 35.546135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.410667, 33.165333, 35.605499>,  <39.459831, 32.933140, 35.641117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.410667, 33.165333, 35.605499>,  <39.328728, 33.552322, 35.546135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410667, 33.165333, 35.605499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763699, -0.063148, 0.642477,
		-0.612210, -0.244948, -0.751797,
		0.204848, -0.967478, 0.148407,
		39.472122, 32.875088, 35.650021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739788, 34.117619, 35.627392>,  <39.328728, 33.552322, 35.546135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739788, 34.117619, 35.627392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693283, 34.509563, 35.692329>,  <39.665379, 34.744732, 35.731293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693283, 34.509563, 35.692329>,  <39.739788, 34.117619, 35.627392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693283, 34.509563, 35.692329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463177, 0.091097, -0.881571,
		-0.878606, -0.177689, 0.443258,
		-0.116266, 0.979861, 0.162340,
		39.658401, 34.803520, 35.741032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993816, 34.209164, 35.473629>,  <39.739788, 34.117619, 35.627392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993816, 34.209164, 35.473629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212418, 34.543613, 35.454739>,  <39.343578, 34.744286, 35.443405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212418, 34.543613, 35.454739>,  <38.993816, 34.209164, 35.473629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212418, 34.543613, 35.454739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442969, 0.240746, -0.863609,
		-0.710716, 0.492883, 0.501945,
		0.546500, 0.836126, -0.047230,
		39.376366, 34.794453, 35.440571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460938, 34.705303, 35.318851>,  <38.993816, 34.209164, 35.473629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460938, 34.705303, 35.318851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812756, 34.874233, 35.231174>,  <39.023846, 34.975590, 35.178570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.812756, 34.874233, 35.231174>,  <38.460938, 34.705303, 35.318851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812756, 34.874233, 35.231174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336295, 0.225854, -0.914273,
		-0.336613, 0.877857, 0.340674,
		0.879544, 0.422324, -0.219194,
		39.076618, 35.000931, 35.165417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279449, 35.214993, 34.893421>,  <38.460938, 34.705303, 35.318851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279449, 35.214993, 34.893421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.668514, 35.183380, 34.806076>,  <38.901955, 35.164413, 34.753670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.668514, 35.183380, 34.806076>,  <38.279449, 35.214993, 34.893421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668514, 35.183380, 34.806076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185793, 0.299288, -0.935899,
		0.139319, 0.950884, 0.276423,
		0.972662, -0.079032, -0.218364,
		38.960312, 35.159672, 34.740566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558609, 35.688190, 34.517323>,  <38.279449, 35.214993, 34.893421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558609, 35.688190, 34.517323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.846779, 35.426701, 34.424686>,  <39.019680, 35.269806, 34.369106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.846779, 35.426701, 34.424686>,  <38.558609, 35.688190, 34.517323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846779, 35.426701, 34.424686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207233, 0.115754, -0.971419,
		0.661847, 0.747828, -0.052081,
		0.720426, -0.653724, -0.231586,
		39.062908, 35.230583, 34.355209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940434, 35.892101, 33.914833>,  <38.558609, 35.688190, 34.517323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940434, 35.892101, 33.914833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060905, 35.511566, 33.940899>,  <39.133190, 35.283245, 33.956539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060905, 35.511566, 33.940899>,  <38.940434, 35.892101, 33.914833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060905, 35.511566, 33.940899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073466, -0.091282, -0.993111,
		0.950733, 0.294318, -0.097383,
		0.301180, -0.951338, 0.065162,
		39.151260, 35.226166, 33.960449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593044, 35.797081, 33.414616>,  <38.940434, 35.892101, 33.914833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593044, 35.797081, 33.414616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.398552, 35.454239, 33.482670>,  <39.281857, 35.248535, 33.523502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.398552, 35.454239, 33.482670>,  <39.593044, 35.797081, 33.414616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398552, 35.454239, 33.482670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028179, -0.209977, -0.977300,
		0.873373, -0.470404, 0.126250,
		-0.486235, -0.857106, 0.170133,
		39.252682, 35.197105, 33.533710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947857, 35.320797, 33.068058>,  <39.593044, 35.797081, 33.414616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947857, 35.320797, 33.068058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.581886, 35.167133, 33.117596>,  <39.362305, 35.074936, 33.147320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.581886, 35.167133, 33.117596>,  <39.947857, 35.320797, 33.068058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581886, 35.167133, 33.117596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018833, -0.347122, -0.937631,
		0.403191, -0.855527, 0.324824,
		-0.914922, -0.384161, 0.123844,
		39.307411, 35.051884, 33.154751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991104, 34.782692, 32.694199>,  <39.947857, 35.320797, 33.068058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991104, 34.782692, 32.694199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595806, 34.779728, 32.755283>,  <39.358627, 34.777950, 32.791935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.595806, 34.779728, 32.755283>,  <39.991104, 34.782692, 32.694199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595806, 34.779728, 32.755283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143895, -0.292451, -0.945392,
		0.051665, -0.956252, 0.287947,
		-0.988244, -0.007410, 0.152709,
		39.299332, 34.777504, 32.801098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758553, 34.120472, 32.465363>,  <39.991104, 34.782692, 32.694199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758553, 34.120472, 32.465363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.447144, 34.371380, 32.456985>,  <39.260300, 34.521923, 32.451962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.447144, 34.371380, 32.456985>,  <39.758553, 34.120472, 32.465363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447144, 34.371380, 32.456985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159412, -0.229901, -0.960069,
		-0.607035, -0.744097, 0.278977,
		-0.778522, 0.627268, -0.020940,
		39.213589, 34.559559, 32.450703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158520, 33.807877, 32.055229>,  <39.758553, 34.120472, 32.465363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158520, 33.807877, 32.055229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.088787, 34.201729, 32.050972>,  <39.046947, 34.438038, 32.048416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.088787, 34.201729, 32.050972>,  <39.158520, 33.807877, 32.055229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088787, 34.201729, 32.050972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096340, -0.027815, -0.994960,
		-0.979962, -0.172430, 0.099709,
		-0.174334, 0.984629, -0.010646,
		39.036488, 34.497116, 32.047779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629021, 33.876080, 31.462934>,  <39.158520, 33.807877, 32.055229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629021, 33.876080, 31.462934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756157, 34.247173, 31.541199>,  <38.832439, 34.469830, 31.588158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756157, 34.247173, 31.541199>,  <38.629021, 33.876080, 31.462934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756157, 34.247173, 31.541199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015585, 0.211445, -0.977266,
		-0.948015, 0.307570, 0.081665,
		0.317845, 0.927735, 0.195660,
		38.851509, 34.525494, 31.599897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298512, 34.294846, 30.838985>,  <38.629021, 33.876080, 31.462934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298512, 34.294846, 30.838985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.603027, 34.478901, 31.021723>,  <38.785736, 34.589333, 31.131365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.603027, 34.478901, 31.021723>,  <38.298512, 34.294846, 30.838985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603027, 34.478901, 31.021723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391898, 0.234785, -0.889546,
		-0.516573, 0.856242, -0.001587,
		0.761293, 0.460137, 0.456843,
		38.831417, 34.616943, 31.158775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334671, 34.964485, 30.503229>,  <38.298512, 34.294846, 30.838985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334671, 34.964485, 30.503229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.684113, 34.889683, 30.682941>,  <38.893776, 34.844803, 30.790768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.684113, 34.889683, 30.682941>,  <38.334671, 34.964485, 30.503229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684113, 34.889683, 30.682941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481870, 0.461423, -0.744909,
		-0.068004, 0.867247, 0.493212,
		0.873600, -0.187008, 0.449279,
		38.946194, 34.833580, 30.817724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377064, 35.728451, 30.383057>,  <38.334671, 34.964485, 30.503229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377064, 35.728451, 30.383057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.031788, 35.665817, 30.191061>,  <37.824623, 35.628239, 30.075863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.031788, 35.665817, 30.191061>,  <38.377064, 35.728451, 30.383057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031788, 35.665817, 30.191061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497942, 0.106918, 0.860594,
		-0.083436, 0.981860, -0.170260,
		-0.863187, -0.156584, -0.479989,
		37.772831, 35.618843, 30.047064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997444, 36.175774, 30.699984>,  <38.377064, 35.728451, 30.383057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997444, 36.175774, 30.699984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.733227, 35.930595, 30.526558>,  <37.574696, 35.783489, 30.422503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.733227, 35.930595, 30.526558>,  <37.997444, 36.175774, 30.699984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733227, 35.930595, 30.526558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570840, 0.034921, 0.820319,
		-0.487671, 0.789353, -0.372960,
		-0.660545, -0.612946, -0.433564,
		37.535065, 35.746712, 30.396488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271767, 36.416939, 30.840353>,  <37.997444, 36.175774, 30.699984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271767, 36.416939, 30.840353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207561, 36.041088, 30.719463>,  <37.169037, 35.815578, 30.646931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207561, 36.041088, 30.719463>,  <37.271767, 36.416939, 30.840353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207561, 36.041088, 30.719463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836122, -0.033278, 0.547532,
		-0.524533, 0.340580, -0.780301,
		-0.160511, -0.939626, -0.302222,
		37.159409, 35.759201, 30.628798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616188, 36.418686, 30.718607>,  <37.271767, 36.416939, 30.840353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616188, 36.418686, 30.718607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.715527, 36.035919, 30.778786>,  <36.775131, 35.806259, 30.814894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.715527, 36.035919, 30.778786>,  <36.616188, 36.418686, 30.718607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715527, 36.035919, 30.778786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825088, -0.127600, 0.550408,
		-0.507497, -0.260826, -0.821229,
		0.248349, -0.956916, 0.150448,
		36.790031, 35.748844, 30.823919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003548, 35.992146, 30.565025>,  <36.616188, 36.418686, 30.718607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003548, 35.992146, 30.565025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.215103, 35.732674, 30.783930>,  <36.342037, 35.576992, 30.915272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.215103, 35.732674, 30.783930>,  <36.003548, 35.992146, 30.565025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215103, 35.732674, 30.783930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799176, -0.163622, 0.578400,
		-0.285652, -0.743266, -0.604946,
		0.528887, -0.648679, 0.547261,
		36.373768, 35.538071, 30.948109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531368, 35.360203, 30.714462>,  <36.003548, 35.992146, 30.565025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531368, 35.360203, 30.714462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.829762, 35.366524, 30.980776>,  <36.008797, 35.370316, 31.140564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.829762, 35.366524, 30.980776>,  <35.531368, 35.360203, 30.714462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829762, 35.366524, 30.980776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663060, 0.110979, 0.740294,
		-0.062191, -0.993697, 0.093265,
		0.745979, 0.015801, 0.665783,
		36.053555, 35.371265, 31.180511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308643, 34.865158, 31.120417>,  <35.531368, 35.360203, 30.714462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308643, 34.865158, 31.120417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.573872, 35.082710, 31.326147>,  <35.733009, 35.213242, 31.449585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.573872, 35.082710, 31.326147>,  <35.308643, 34.865158, 31.120417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573872, 35.082710, 31.326147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495797, -0.195675, 0.846107,
		0.560821, -0.816031, 0.139907,
		0.663072, 0.543880, 0.514324,
		35.772793, 35.245872, 31.480444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533531, 34.453262, 31.796280>,  <35.308643, 34.865158, 31.120417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533531, 34.453262, 31.796280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.590752, 34.846451, 31.842422>,  <35.625084, 35.082363, 31.870108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.590752, 34.846451, 31.842422>,  <35.533531, 34.453262, 31.796280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590752, 34.846451, 31.842422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447293, -0.039762, 0.893503,
		0.882874, -0.179413, 0.433988,
		0.143050, 0.982970, 0.115355,
		35.633667, 35.141342, 31.877029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760162, 34.478886, 32.502689>,  <35.533531, 34.453262, 31.796280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760162, 34.478886, 32.502689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.604862, 34.833851, 32.403282>,  <35.511684, 35.046829, 32.343636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.604862, 34.833851, 32.403282>,  <35.760162, 34.478886, 32.502689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604862, 34.833851, 32.403282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520213, 0.011557, 0.853958,
		0.760685, 0.460832, 0.457156,
		-0.388248, 0.887412, -0.248522,
		35.488388, 35.100075, 32.328724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663685, 34.826241, 33.151146>,  <35.760162, 34.478886, 32.502689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663685, 34.826241, 33.151146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.431908, 35.033978, 32.899899>,  <35.292843, 35.158619, 32.749149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.431908, 35.033978, 32.899899>,  <35.663685, 34.826241, 33.151146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431908, 35.033978, 32.899899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751979, -0.043486, 0.657752,
		0.314283, 0.853460, 0.415731,
		-0.579443, 0.519340, -0.628117,
		35.258076, 35.189781, 32.711464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331596, 35.333004, 33.603054>,  <35.663685, 34.826241, 33.151146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331596, 35.333004, 33.603054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.113239, 35.326736, 33.267971>,  <34.982224, 35.322975, 33.066921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.113239, 35.326736, 33.267971>,  <35.331596, 35.333004, 33.603054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113239, 35.326736, 33.267971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836197, -0.052702, 0.545892,
		-0.052702, 0.998487, 0.015668,
		-0.545892, -0.015668, -0.837709,
		34.949471, 35.322037, 33.016659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867294, 35.946915, 33.651283>,  <35.331596, 35.333004, 33.603054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867294, 35.946915, 33.651283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.725765, 35.665096, 33.405216>,  <34.640850, 35.496006, 33.257576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.725765, 35.665096, 33.405216>,  <34.867294, 35.946915, 33.651283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725765, 35.665096, 33.405216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869218, 0.004834, 0.494405,
		-0.345358, 0.709641, -0.614116,
		-0.353818, -0.704547, -0.615163,
		34.619621, 35.453732, 33.220669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.411461, 36.320488, 26.756649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200840, 36.003239, 26.634209>,  <39.074467, 35.812889, 26.560743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200840, 36.003239, 26.634209>,  <39.411461, 36.320488, 26.756649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200840, 36.003239, 26.634209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561742, 0.054326, 0.825527,
		-0.638117, 0.606631, -0.474137,
		-0.526548, -0.793125, -0.306103,
		39.042877, 35.765301, 26.542377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716988, 36.553471, 26.713760>,  <39.411461, 36.320488, 26.756649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716988, 36.553471, 26.713760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728985, 36.155586, 26.753069>,  <38.736183, 35.916855, 26.776653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728985, 36.155586, 26.753069>,  <38.716988, 36.553471, 26.713760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728985, 36.155586, 26.753069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522657, 0.068195, 0.849811,
		-0.852015, -0.076853, -0.517846,
		0.029996, -0.994708, 0.098271,
		38.737984, 35.857174, 26.782551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998028, 36.376396, 26.876123>,  <38.716988, 36.553471, 26.713760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998028, 36.376396, 26.876123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226154, 36.073902, 27.004408>,  <38.363029, 35.892406, 27.081379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226154, 36.073902, 27.004408>,  <37.998028, 36.376396, 26.876123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226154, 36.073902, 27.004408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477955, 0.012030, 0.878302,
		-0.668057, -0.654194, -0.354583,
		0.570314, -0.756231, 0.320712,
		38.397247, 35.847034, 27.100622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591850, 36.064053, 27.275627>,  <37.998028, 36.376396, 26.876123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591850, 36.064053, 27.275627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935455, 35.903484, 27.402727>,  <38.141617, 35.807144, 27.478987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935455, 35.903484, 27.402727>,  <37.591850, 36.064053, 27.275627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935455, 35.903484, 27.402727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440030, -0.261674, 0.859011,
		-0.261674, -0.877720, -0.401416,
		-0.859011, 0.401416, -0.317750,
		38.193157, 35.783058, 27.498053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389339, 35.491055, 27.572968>,  <37.591850, 36.064053, 27.275627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389339, 35.491055, 27.572968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751488, 35.524654, 27.739460>,  <37.968777, 35.544815, 27.839355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751488, 35.524654, 27.739460>,  <37.389339, 35.491055, 27.572968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751488, 35.524654, 27.739460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397907, -0.174389, 0.900699,
		0.148244, -0.981088, -0.124462,
		0.905369, 0.083999, 0.416233,
		38.023098, 35.549854, 27.864330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494362, 34.910114, 28.213966>,  <37.389339, 35.491055, 27.572968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494362, 34.910114, 28.213966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791874, 35.155933, 28.319132>,  <37.970383, 35.303425, 28.382231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791874, 35.155933, 28.319132>,  <37.494362, 34.910114, 28.213966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791874, 35.155933, 28.319132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303792, -0.039566, 0.951916,
		0.595399, -0.787888, 0.157266,
		0.743781, 0.614546, 0.262912,
		38.015007, 35.340298, 28.398005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913612, 34.598728, 28.776855>,  <37.494362, 34.910114, 28.213966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913612, 34.598728, 28.776855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995495, 34.989552, 28.800385>,  <38.044624, 35.224045, 28.814503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995495, 34.989552, 28.800385>,  <37.913612, 34.598728, 28.776855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995495, 34.989552, 28.800385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222073, -0.012171, 0.974954,
		0.953299, -0.212642, 0.214486,
		0.204706, 0.977055, 0.058825,
		38.056908, 35.282669, 28.818031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267601, 34.746284, 29.484364>,  <37.913612, 34.598728, 28.776855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267601, 34.746284, 29.484364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172840, 35.119396, 29.375694>,  <38.115982, 35.343262, 29.310493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172840, 35.119396, 29.375694>,  <38.267601, 34.746284, 29.484364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172840, 35.119396, 29.375694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324571, 0.187579, 0.927075,
		0.915713, 0.307806, 0.258314,
		-0.236905, 0.932775, -0.271673,
		38.101768, 35.399227, 29.294191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621090, 35.251431, 29.859953>,  <38.267601, 34.746284, 29.484364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621090, 35.251431, 29.859953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248009, 35.370293, 29.778208>,  <38.024158, 35.441612, 29.729160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248009, 35.370293, 29.778208>,  <38.621090, 35.251431, 29.859953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248009, 35.370293, 29.778208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241123, -0.092425, 0.966084,
		0.268191, 0.950345, 0.157856,
		-0.932702, 0.297158, -0.204362,
		37.968197, 35.459438, 29.716900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052475, 35.711208, 30.178217>,  <38.621090, 35.251431, 29.859953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052475, 35.711208, 30.178217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222137, 35.397663, 30.359615>,  <39.323933, 35.209538, 30.468454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222137, 35.397663, 30.359615>,  <39.052475, 35.711208, 30.178217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222137, 35.397663, 30.359615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850115, 0.172069, -0.497691,
		0.312088, 0.596620, 0.739355,
		0.424153, -0.783860, 0.453495,
		39.349384, 35.162506, 30.495665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804638, 35.943905, 30.254013>,  <39.052475, 35.711208, 30.178217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804638, 35.943905, 30.254013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781059, 35.546852, 30.296368>,  <39.766911, 35.308620, 30.321781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781059, 35.546852, 30.296368>,  <39.804638, 35.943905, 30.254013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781059, 35.546852, 30.296368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816264, -0.108992, -0.567304,
		0.574663, 0.052988, 0.816673,
		-0.058951, -0.992629, 0.105886,
		39.763374, 35.249062, 30.328133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429176, 35.864841, 30.434998>,  <39.804638, 35.943905, 30.254013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429176, 35.864841, 30.434998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275284, 35.514801, 30.317568>,  <40.182949, 35.304779, 30.247110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275284, 35.514801, 30.317568>,  <40.429176, 35.864841, 30.434998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275284, 35.514801, 30.317568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827280, -0.185859, -0.530155,
		0.409374, -0.446836, 0.795456,
		-0.384735, -0.875097, -0.293573,
		40.159863, 35.252274, 30.229496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921291, 35.410927, 30.550076>,  <40.429176, 35.864841, 30.434998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921291, 35.410927, 30.550076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676476, 35.270767, 30.266491>,  <40.529587, 35.186672, 30.096340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676476, 35.270767, 30.266491>,  <40.921291, 35.410927, 30.550076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676476, 35.270767, 30.266491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788100, -0.195872, -0.583552,
		0.065610, -0.915891, 0.396031,
		-0.612041, -0.350398, -0.708962,
		40.492863, 35.165649, 30.053802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293655, 35.054077, 30.164516>,  <40.921291, 35.410927, 30.550076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293655, 35.054077, 30.164516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979652, 35.081978, 29.918295>,  <40.791252, 35.098717, 29.770563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979652, 35.081978, 29.918295>,  <41.293655, 35.054077, 30.164516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979652, 35.081978, 29.918295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616333, -0.012263, -0.787390,
		-0.062471, -0.997489, -0.033364,
		-0.785004, 0.069752, -0.615552,
		40.744152, 35.102901, 29.733629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262310, 34.432472, 29.732145>,  <41.293655, 35.054077, 30.164516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262310, 34.432472, 29.732145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053841, 34.708458, 29.531216>,  <40.928761, 34.874050, 29.410658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053841, 34.708458, 29.531216>,  <41.262310, 34.432472, 29.732145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053841, 34.708458, 29.531216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471365, -0.257960, -0.843369,
		-0.711473, -0.676319, -0.190783,
		-0.521172, 0.689963, -0.502325,
		40.897488, 34.915447, 29.380518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986927, 34.040958, 29.025684>,  <41.262310, 34.432472, 29.732145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986927, 34.040958, 29.025684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012550, 34.440033, 29.016624>,  <41.027924, 34.679478, 29.011189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012550, 34.440033, 29.016624>,  <40.986927, 34.040958, 29.025684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012550, 34.440033, 29.016624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541902, -0.053836, -0.838716,
		-0.837997, 0.041455, -0.544098,
		0.064061, 0.997689, -0.022650,
		41.031769, 34.739338, 29.009829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786629, 34.150780, 28.355148>,  <40.986927, 34.040958, 29.025684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786629, 34.150780, 28.355148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999374, 34.474239, 28.455711>,  <41.127022, 34.668316, 28.516048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999374, 34.474239, 28.455711>,  <40.786629, 34.150780, 28.355148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999374, 34.474239, 28.455711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534186, -0.090015, -0.840561,
		-0.657091, 0.581360, -0.479846,
		0.531861, 0.808652, 0.251407,
		41.158932, 34.716835, 28.531134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981140, 34.561768, 27.778418>,  <40.786629, 34.150780, 28.355148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981140, 34.561768, 27.778418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218147, 34.773834, 28.021017>,  <41.360352, 34.901073, 28.166576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218147, 34.773834, 28.021017>,  <40.981140, 34.561768, 27.778418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218147, 34.773834, 28.021017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636321, 0.153649, -0.755968,
		-0.493978, 0.833855, -0.246317,
		0.592521, 0.530168, 0.606498,
		41.395905, 34.932884, 28.202967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100719, 35.168102, 27.391014>,  <40.981140, 34.561768, 27.778418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100719, 35.168102, 27.391014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397652, 35.108906, 27.652409>,  <41.575809, 35.073387, 27.809246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397652, 35.108906, 27.652409>,  <41.100719, 35.168102, 27.391014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397652, 35.108906, 27.652409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669459, 0.204227, -0.714224,
		-0.027762, 0.967673, 0.250677,
		0.742330, -0.147989, 0.653487,
		41.620350, 35.064510, 27.848455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568462, 35.637035, 27.256670>,  <41.100719, 35.168102, 27.391014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568462, 35.637035, 27.256670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795719, 35.388668, 27.472698>,  <41.932072, 35.239647, 27.602316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795719, 35.388668, 27.472698>,  <41.568462, 35.637035, 27.256670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795719, 35.388668, 27.472698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731318, 0.080025, -0.677326,
		0.377343, 0.779782, 0.499552,
		0.568143, -0.620915, 0.540072,
		41.966164, 35.202393, 27.634720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151375, 36.008945, 27.304386>,  <41.568462, 35.637035, 27.256670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151375, 36.008945, 27.304386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233780, 35.622822, 27.368570>,  <42.283222, 35.391148, 27.407080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233780, 35.622822, 27.368570>,  <42.151375, 36.008945, 27.304386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233780, 35.622822, 27.368570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582123, -0.010914, -0.813027,
		0.786570, 0.260897, 0.559678,
		0.206008, -0.965305, 0.160459,
		42.295582, 35.333229, 27.416708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814087, 35.948784, 27.196901>,  <42.151375, 36.008945, 27.304386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814087, 35.948784, 27.196901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694828, 35.567219, 27.183319>,  <42.623272, 35.338280, 27.175169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694828, 35.567219, 27.183319>,  <42.814087, 35.948784, 27.196901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694828, 35.567219, 27.183319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704635, -0.195961, -0.681975,
		0.643891, -0.227259, 0.730587,
		-0.298152, -0.953914, -0.033958,
		42.605381, 35.281044, 27.173132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453857, 35.607037, 27.241478>,  <42.814087, 35.948784, 27.196901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453857, 35.607037, 27.241478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189838, 35.362999, 27.066149>,  <43.031429, 35.216576, 26.960951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189838, 35.362999, 27.066149>,  <43.453857, 35.607037, 27.241478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189838, 35.362999, 27.066149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683686, -0.246052, -0.687046,
		0.311312, -0.753156, 0.579518,
		-0.660044, -0.610094, -0.438323,
		42.991825, 35.179970, 26.934652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.328327, 28.605955, 24.860682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184608, 28.973059, 24.928349>,  <39.098377, 29.193321, 24.968948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184608, 28.973059, 24.928349>,  <39.328327, 28.605955, 24.860682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184608, 28.973059, 24.928349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195327, -0.251214, 0.948018,
		0.912551, 0.307582, 0.269526,
		-0.359302, 0.917761, 0.169167,
		39.076817, 29.248386, 24.979099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543758, 28.667326, 25.481762>,  <39.328327, 28.605955, 24.860682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543758, 28.667326, 25.481762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.249855, 28.934174, 25.432642>,  <39.073513, 29.094282, 25.403170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.249855, 28.934174, 25.432642>,  <39.543758, 28.667326, 25.481762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249855, 28.934174, 25.432642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307141, -0.165783, 0.937113,
		0.604805, 0.726272, 0.326710,
		-0.734762, 0.667117, -0.122802,
		39.029427, 29.134308, 25.395802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649143, 29.280815, 25.960588>,  <39.543758, 28.667326, 25.481762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649143, 29.280815, 25.960588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263889, 29.251270, 25.857115>,  <39.032738, 29.233543, 25.795031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263889, 29.251270, 25.857115>,  <39.649143, 29.280815, 25.960588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263889, 29.251270, 25.857115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253717, -0.070323, 0.964719,
		-0.089446, 0.994786, 0.048991,
		-0.963134, -0.073861, -0.258684,
		38.974949, 29.229113, 25.779510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316914, 29.756344, 26.282902>,  <39.649143, 29.280815, 25.960588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316914, 29.756344, 26.282902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036484, 29.486662, 26.190004>,  <38.868225, 29.324852, 26.134266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036484, 29.486662, 26.190004>,  <39.316914, 29.756344, 26.282902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036484, 29.486662, 26.190004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325956, 0.013324, 0.945291,
		-0.634227, 0.738423, -0.229103,
		-0.701077, -0.674206, -0.232243,
		38.826160, 29.284401, 26.120331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858440, 29.976851, 26.719910>,  <39.316914, 29.756344, 26.282902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858440, 29.976851, 26.719910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.714508, 29.621689, 26.605268>,  <38.628147, 29.408592, 26.536484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.714508, 29.621689, 26.605268>,  <38.858440, 29.976851, 26.719910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714508, 29.621689, 26.605268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396471, -0.132554, 0.908428,
		-0.844588, 0.440515, -0.304331,
		-0.359836, -0.887906, -0.286605,
		38.606556, 29.355318, 26.519287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188213, 29.985172, 27.001150>,  <38.858440, 29.976851, 26.719910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188213, 29.985172, 27.001150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.315643, 29.613169, 26.927835>,  <38.392101, 29.389967, 26.883846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.315643, 29.613169, 26.927835>,  <38.188213, 29.985172, 27.001150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315643, 29.613169, 26.927835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391707, -0.305243, 0.867982,
		-0.863178, -0.204721, -0.461533,
		0.318574, -0.930009, -0.183289,
		38.411217, 29.334166, 26.872849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592728, 29.504549, 27.058771>,  <38.188213, 29.985172, 27.001150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592728, 29.504549, 27.058771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925129, 29.292488, 27.126141>,  <38.124569, 29.165251, 27.166563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925129, 29.292488, 27.126141>,  <37.592728, 29.504549, 27.058771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925129, 29.292488, 27.126141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301952, -0.175623, 0.937007,
		-0.467180, -0.829513, -0.306025,
		0.831004, -0.530156, 0.168425,
		38.174431, 29.133442, 27.176668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308029, 28.964785, 27.484394>,  <37.592728, 29.504549, 27.058771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308029, 28.964785, 27.484394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706177, 28.957458, 27.522131>,  <37.945065, 28.953062, 27.544773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706177, 28.957458, 27.522131>,  <37.308029, 28.964785, 27.484394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706177, 28.957458, 27.522131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095218, -0.320867, 0.942326,
		0.013013, -0.946947, -0.321126,
		0.995371, -0.018314, 0.094342,
		38.004787, 28.951963, 27.550434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462784, 28.295292, 27.853868>,  <37.308029, 28.964785, 27.484394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462784, 28.295292, 27.853868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.766251, 28.548569, 27.915173>,  <37.948330, 28.700535, 27.951956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.766251, 28.548569, 27.915173>,  <37.462784, 28.295292, 27.853868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766251, 28.548569, 27.915173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018293, -0.255865, 0.966540,
		0.651218, -0.730481, -0.205700,
		0.758671, 0.633191, 0.153261,
		37.993851, 28.738525, 27.961151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879093, 27.925220, 28.262281>,  <37.462784, 28.295292, 27.853868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879093, 27.925220, 28.262281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989994, 28.308388, 28.292025>,  <38.056534, 28.538288, 28.309872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989994, 28.308388, 28.292025>,  <37.879093, 27.925220, 28.262281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989994, 28.308388, 28.292025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030916, -0.068458, 0.997175,
		0.960300, -0.278766, 0.010635,
		0.277251, 0.957916, 0.074359,
		38.073170, 28.595762, 28.314333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162956, 27.937006, 28.818958>,  <37.879093, 27.925220, 28.262281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162956, 27.937006, 28.818958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.137619, 28.335855, 28.802299>,  <38.122417, 28.575165, 28.792303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.137619, 28.335855, 28.802299>,  <38.162956, 27.937006, 28.818958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137619, 28.335855, 28.802299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051799, 0.044960, 0.997645,
		0.996647, 0.061033, -0.054498,
		-0.063339, 0.997123, -0.041648,
		38.118618, 28.634993, 28.789804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632179, 28.181097, 29.270241>,  <38.162956, 27.937006, 28.818958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632179, 28.181097, 29.270241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360283, 28.471399, 29.227865>,  <38.197144, 28.645580, 29.202440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360283, 28.471399, 29.227865>,  <38.632179, 28.181097, 29.270241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360283, 28.471399, 29.227865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088673, 0.224699, 0.970385,
		0.728068, 0.650221, -0.217093,
		-0.679745, 0.725757, -0.105939,
		38.156361, 28.689127, 29.196083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838760, 28.769218, 29.707455>,  <38.632179, 28.181097, 29.270241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838760, 28.769218, 29.707455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.446831, 28.822468, 29.647831>,  <38.211674, 28.854418, 29.612057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.446831, 28.822468, 29.647831>,  <38.838760, 28.769218, 29.707455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446831, 28.822468, 29.647831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081507, 0.414815, 0.906248,
		0.182477, 0.900114, -0.395596,
		-0.979826, 0.133125, -0.149059,
		38.152882, 28.862406, 29.603113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724178, 29.380232, 30.124958>,  <38.838760, 28.769218, 29.707455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724178, 29.380232, 30.124958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362743, 29.232397, 30.038305>,  <38.145882, 29.143696, 29.986315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362743, 29.232397, 30.038305>,  <38.724178, 29.380232, 30.124958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362743, 29.232397, 30.038305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389531, 0.498369, 0.774528,
		-0.178294, 0.784241, -0.594287,
		-0.903591, -0.369587, -0.216630,
		38.091667, 29.121521, 29.973316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908829, 30.025442, 30.217958>,  <38.724178, 29.380232, 30.124958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908829, 30.025442, 30.217958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.277527, 30.003256, 30.371481>,  <39.498745, 29.989944, 30.463594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.277527, 30.003256, 30.371481>,  <38.908829, 30.025442, 30.217958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277527, 30.003256, 30.371481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359439, -0.249308, -0.899249,
		0.145562, 0.966835, -0.209863,
		0.921746, -0.055464, 0.383808,
		39.554050, 29.986616, 30.486624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333889, 30.434620, 29.835630>,  <38.908829, 30.025442, 30.217958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333889, 30.434620, 29.835630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.592186, 30.200979, 30.032341>,  <39.747166, 30.060795, 30.150368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.592186, 30.200979, 30.032341>,  <39.333889, 30.434620, 29.835630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592186, 30.200979, 30.032341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485628, -0.182837, -0.854831,
		0.589223, 0.790820, 0.165590,
		0.645742, -0.584101, 0.491776,
		39.785908, 30.025749, 30.179874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937996, 30.675213, 29.693996>,  <39.333889, 30.434620, 29.835630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937996, 30.675213, 29.693996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.015686, 30.299440, 29.806953>,  <40.062298, 30.073977, 29.874727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.015686, 30.299440, 29.806953>,  <39.937996, 30.675213, 29.693996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015686, 30.299440, 29.806953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414011, -0.182477, -0.891794,
		0.889310, 0.290119, 0.353495,
		0.194222, -0.939432, 0.282392,
		40.073952, 30.017611, 29.891670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626934, 30.668232, 29.472622>,  <39.937996, 30.675213, 29.693996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626934, 30.668232, 29.472622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.512020, 30.291962, 29.544847>,  <40.443073, 30.066200, 29.588182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.512020, 30.291962, 29.544847>,  <40.626934, 30.668232, 29.472622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512020, 30.291962, 29.544847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592835, -0.322681, -0.737851,
		0.752341, -0.104927, 0.650364,
		-0.287280, -0.940674, 0.180562,
		40.425835, 30.009760, 29.599016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253338, 30.252346, 29.748180>,  <40.626934, 30.668232, 29.472622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253338, 30.252346, 29.748180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.997005, 29.996767, 29.577969>,  <40.843204, 29.843420, 29.475842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.997005, 29.996767, 29.577969>,  <41.253338, 30.252346, 29.748180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997005, 29.996767, 29.577969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637290, -0.133731, -0.758932,
		0.428012, -0.757536, 0.492894,
		-0.640834, -0.638949, -0.425531,
		40.804756, 29.805082, 29.450310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605900, 29.744963, 29.530214>,  <41.253338, 30.252346, 29.748180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605900, 29.744963, 29.530214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.288696, 29.741465, 29.286556>,  <41.098373, 29.739367, 29.140362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.288696, 29.741465, 29.286556>,  <41.605900, 29.744963, 29.530214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288696, 29.741465, 29.286556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609187, -0.019786, -0.792780,
		-0.005111, -0.999766, 0.021024,
		-0.793010, -0.008756, -0.609146,
		41.050793, 29.738842, 29.103813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827900, 29.349264, 29.081690>,  <41.605900, 29.744963, 29.530214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827900, 29.349264, 29.081690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.507980, 29.492058, 28.888660>,  <41.316029, 29.577734, 28.772842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.507980, 29.492058, 28.888660>,  <41.827900, 29.349264, 29.081690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507980, 29.492058, 28.888660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477478, -0.108842, -0.871876,
		-0.363771, -0.927747, -0.083400,
		-0.799803, 0.356985, -0.482572,
		41.268040, 29.599154, 28.743889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750114, 29.040716, 28.407553>,  <41.827900, 29.349264, 29.081690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750114, 29.040716, 28.407553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.487091, 29.336489, 28.349794>,  <41.329277, 29.513952, 28.315140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.487091, 29.336489, 28.349794>,  <41.750114, 29.040716, 28.407553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487091, 29.336489, 28.349794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385081, 0.165134, -0.907989,
		-0.647552, -0.652664, -0.393327,
		-0.657563, 0.739433, -0.144396,
		41.289822, 29.558319, 28.306477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218830, 28.861044, 27.813009>,  <41.750114, 29.040716, 28.407553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218830, 28.861044, 27.813009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.262474, 29.256968, 27.849607>,  <41.288662, 29.494522, 27.871567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.262474, 29.256968, 27.849607>,  <41.218830, 28.861044, 27.813009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262474, 29.256968, 27.849607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202382, 0.067998, -0.976943,
		-0.973209, 0.125111, -0.192900,
		0.109110, 0.989810, 0.091497,
		41.295208, 29.553911, 27.877056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830406, 29.209627, 27.212477>,  <41.218830, 28.861044, 27.813009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830406, 29.209627, 27.212477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.101532, 29.472410, 27.344521>,  <41.264210, 29.630079, 27.423746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.101532, 29.472410, 27.344521>,  <40.830406, 29.209627, 27.212477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101532, 29.472410, 27.344521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264353, 0.201194, -0.943206,
		-0.686061, 0.726588, -0.037295,
		0.677819, 0.656956, 0.330107,
		41.304878, 29.669497, 27.443552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726906, 29.909431, 26.884947>,  <40.830406, 29.209627, 27.212477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726906, 29.909431, 26.884947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.097630, 29.838692, 27.017458>,  <41.320065, 29.796247, 27.096964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.097630, 29.838692, 27.017458>,  <40.726906, 29.909431, 26.884947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097630, 29.838692, 27.017458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364189, 0.208166, -0.907763,
		0.091577, 0.961973, 0.257337,
		0.926812, -0.176849, 0.331277,
		41.375671, 29.785637, 27.116840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174812, 30.552187, 26.949532>,  <40.726906, 29.909431, 26.884947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174812, 30.552187, 26.949532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.415539, 30.235928, 26.904455>,  <41.559975, 30.046173, 26.877409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.415539, 30.235928, 26.904455>,  <41.174812, 30.552187, 26.949532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415539, 30.235928, 26.904455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140431, 0.243666, -0.959639,
		0.786193, 0.561698, 0.257672,
		0.601813, -0.790646, -0.112689,
		41.596085, 29.998734, 26.870649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730694, 30.785915, 26.663042>,  <41.174812, 30.552187, 26.949532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730694, 30.785915, 26.663042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.758202, 30.397579, 26.571180>,  <41.774708, 30.164577, 26.516064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.758202, 30.397579, 26.571180>,  <41.730694, 30.785915, 26.663042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758202, 30.397579, 26.571180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096215, 0.235580, -0.967081,
		0.992982, 0.044411, 0.109610,
		0.068771, -0.970840, -0.229653,
		41.778831, 30.106327, 26.502285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367123, 30.699768, 26.236574>,  <41.730694, 30.785915, 26.663042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367123, 30.699768, 26.236574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.112560, 30.398298, 26.170895>,  <41.959824, 30.217417, 26.131487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.112560, 30.398298, 26.170895>,  <42.367123, 30.699768, 26.236574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112560, 30.398298, 26.170895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115199, 0.117615, -0.986355,
		0.762701, -0.646640, 0.011971,
		-0.636409, -0.753673, -0.164197,
		41.921638, 30.172195, 26.121635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143791, 30.724710, 26.373566>,  <42.367123, 30.699768, 26.236574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143791, 30.724710, 26.373566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.446049, 30.986706, 26.373121>,  <43.627403, 31.143902, 26.372854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.446049, 30.986706, 26.373121>,  <43.143791, 30.724710, 26.373566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446049, 30.986706, 26.373121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089651, 0.105110, 0.990411,
		0.648823, -0.748294, 0.138145,
		0.755640, 0.654987, -0.001113,
		43.672741, 31.183201, 26.372787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563572, 30.509113, 26.885540>,  <43.143791, 30.724710, 26.373566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563572, 30.509113, 26.885540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.718449, 30.874285, 26.833941>,  <43.811375, 31.093388, 26.802980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.718449, 30.874285, 26.833941>,  <43.563572, 30.509113, 26.885540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718449, 30.874285, 26.833941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131059, 0.083993, 0.987810,
		0.912635, -0.399381, -0.087126,
		0.387195, 0.912929, -0.128997,
		43.834606, 31.148163, 26.795242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257492, 30.553406, 27.277889>,  <43.563572, 30.509113, 26.885540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257492, 30.553406, 27.277889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.135262, 30.930941, 27.227617>,  <44.061924, 31.157461, 27.197454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.135262, 30.930941, 27.227617>,  <44.257492, 30.553406, 27.277889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135262, 30.930941, 27.227617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143926, 0.176262, 0.973764,
		0.941226, 0.279472, -0.189705,
		-0.305578, 0.943836, -0.125679,
		44.043587, 31.214092, 27.189913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703342, 30.949665, 27.656258>,  <44.257492, 30.553406, 27.277889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703342, 30.949665, 27.656258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.388287, 31.191954, 27.611137>,  <44.199253, 31.337326, 27.584066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.388287, 31.191954, 27.611137>,  <44.703342, 30.949665, 27.656258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388287, 31.191954, 27.611137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083698, 0.286567, 0.954397,
		0.610424, 0.742280, -0.276409,
		-0.787640, 0.605722, -0.112800,
		44.151993, 31.373671, 27.577297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874695, 31.632803, 27.926920>,  <44.703342, 30.949665, 27.656258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874695, 31.632803, 27.926920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.479046, 31.574541, 27.935160>,  <44.241657, 31.539585, 27.940104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.479046, 31.574541, 27.935160>,  <44.874695, 31.632803, 27.926920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479046, 31.574541, 27.935160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016786, 0.250864, 0.967877,
		-0.146141, 0.957002, -0.250580,
		-0.989121, -0.145652, 0.020597,
		44.182308, 31.530846, 27.941339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731789, 32.092316, 28.540918>,  <44.874695, 31.632803, 27.926920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731789, 32.092316, 28.540918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.398083, 31.888224, 28.457331>,  <44.197861, 31.765768, 28.407179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.398083, 31.888224, 28.457331>,  <44.731789, 32.092316, 28.540918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398083, 31.888224, 28.457331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236921, -0.010489, 0.971472,
		-0.497865, 0.859975, -0.112134,
		-0.834266, -0.510229, -0.208968,
		44.147804, 31.735155, 28.394640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229389, 32.396454, 28.999990>,  <44.731789, 32.092316, 28.540918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229389, 32.396454, 28.999990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.070518, 32.048222, 28.883820>,  <43.975197, 31.839283, 28.814117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.070518, 32.048222, 28.883820>,  <44.229389, 32.396454, 28.999990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070518, 32.048222, 28.883820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194970, -0.229196, 0.953654,
		-0.896793, 0.435393, -0.078705,
		-0.397175, -0.870576, -0.290429,
		43.951366, 31.787048, 28.796690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525700, 32.398106, 29.247175>,  <44.229389, 32.396454, 28.999990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525700, 32.398106, 29.247175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.643925, 32.020115, 29.191092>,  <43.714859, 31.793320, 29.157442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.643925, 32.020115, 29.191092>,  <43.525700, 32.398106, 29.247175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643925, 32.020115, 29.191092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358108, -0.245656, 0.900784,
		-0.885665, -0.216028, -0.411011,
		0.295562, -0.944979, -0.140207,
		43.732594, 31.736622, 29.149029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946350, 31.975840, 29.399033>,  <43.525700, 32.398106, 29.247175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946350, 31.975840, 29.399033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.271313, 31.750933, 29.460812>,  <43.466290, 31.615988, 29.497879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.271313, 31.750933, 29.460812>,  <42.946350, 31.975840, 29.399033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271313, 31.750933, 29.460812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346858, -0.253084, 0.903127,
		-0.468711, -0.787276, -0.400634,
		0.812404, -0.562268, 0.154449,
		43.515034, 31.582253, 29.507147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703297, 31.489643, 29.780661>,  <42.946350, 31.975840, 29.399033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703297, 31.489643, 29.780661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.096687, 31.468349, 29.849865>,  <43.332722, 31.455574, 29.891388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.096687, 31.468349, 29.849865>,  <42.703297, 31.489643, 29.780661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096687, 31.468349, 29.849865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181015, -0.293984, 0.938513,
		0.000903, -0.954327, -0.298763,
		0.983480, -0.053233, 0.173013,
		43.391731, 31.452379, 29.901770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668949, 30.821367, 30.093966>,  <42.703297, 31.489643, 29.780661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668949, 30.821367, 30.093966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.002296, 31.014603, 30.201387>,  <43.202305, 31.130545, 30.265841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.002296, 31.014603, 30.201387>,  <42.668949, 30.821367, 30.093966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002296, 31.014603, 30.201387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192802, -0.201284, 0.960371,
		0.518002, -0.852120, -0.074603,
		0.833367, 0.483090, 0.268555,
		43.252308, 31.159529, 30.281954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076550, 30.374517, 30.513371>,  <42.668949, 30.821367, 30.093966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076550, 30.374517, 30.513371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.173569, 30.757393, 30.576569>,  <43.231781, 30.987118, 30.614489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.173569, 30.757393, 30.576569>,  <43.076550, 30.374517, 30.513371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173569, 30.757393, 30.576569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175666, -0.116834, 0.977492,
		0.954102, -0.264846, 0.139807,
		0.242551, 0.957187, 0.157996,
		43.246334, 31.044548, 30.623968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314739, 30.346519, 31.202841>,  <43.076550, 30.374517, 30.513371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314739, 30.346519, 31.202841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.279972, 30.741409, 31.149422>,  <43.259109, 30.978342, 31.117371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.279972, 30.741409, 31.149422>,  <43.314739, 30.346519, 31.202841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279972, 30.741409, 31.149422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355513, 0.094490, 0.929883,
		0.930621, 0.128303, 0.342758,
		-0.086920, 0.987223, -0.133548,
		43.253895, 31.037577, 31.109358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604366, 30.697479, 31.792385>,  <43.314739, 30.346519, 31.202841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604366, 30.697479, 31.792385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.345356, 30.957005, 31.632509>,  <43.189949, 31.112720, 31.536585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.345356, 30.957005, 31.632509>,  <43.604366, 30.697479, 31.792385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345356, 30.957005, 31.632509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375627, 0.184596, 0.908201,
		0.663033, 0.738218, 0.124181,
		-0.647527, 0.648813, -0.399688,
		43.151096, 31.151649, 31.512604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.898502, 34.863628, 27.123062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.578663, 34.864513, 26.882851>,  <43.386757, 34.865044, 26.738724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.578663, 34.864513, 26.882851>,  <43.898502, 34.863628, 27.123062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578663, 34.864513, 26.882851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523142, -0.488480, -0.698363,
		-0.294889, -0.872573, 0.389432,
		-0.799602, 0.002211, -0.600526,
		43.338783, 34.865177, 26.702692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833847, 34.191097, 26.809816>,  <43.898502, 34.863628, 27.123062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833847, 34.191097, 26.809816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.619289, 34.450901, 26.594255>,  <43.490555, 34.606785, 26.464918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.619289, 34.450901, 26.594255>,  <43.833847, 34.191097, 26.809816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619289, 34.450901, 26.594255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462224, -0.308167, -0.831494,
		-0.706135, -0.695105, -0.134919,
		-0.536398, 0.649509, -0.538902,
		43.458370, 34.645752, 26.432585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527363, 33.824593, 26.349947>,  <43.833847, 34.191097, 26.809816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527363, 33.824593, 26.349947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.549713, 34.197235, 26.206284>,  <43.563126, 34.420818, 26.120085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.549713, 34.197235, 26.206284>,  <43.527363, 33.824593, 26.349947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549713, 34.197235, 26.206284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396686, -0.350826, -0.848269,
		-0.916252, -0.095073, -0.389157,
		0.055879, 0.931602, -0.359159,
		43.566479, 34.476715, 26.098536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051811, 33.910652, 25.762041>,  <43.527363, 33.824593, 26.349947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051811, 33.910652, 25.762041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.296974, 34.221558, 25.705175>,  <43.444073, 34.408100, 25.671055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.296974, 34.221558, 25.705175>,  <43.051811, 33.910652, 25.762041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296974, 34.221558, 25.705175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186914, -0.317432, -0.929677,
		-0.767732, 0.543230, -0.339836,
		0.612904, 0.777263, -0.142165,
		43.480846, 34.454735, 25.662525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032593, 34.056850, 25.099777>,  <43.051811, 33.910652, 25.762041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032593, 34.056850, 25.099777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.369213, 34.260036, 25.173285>,  <43.571186, 34.381947, 25.217390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.369213, 34.260036, 25.173285>,  <43.032593, 34.056850, 25.099777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369213, 34.260036, 25.173285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365196, -0.284330, -0.886447,
		-0.398030, 0.813100, -0.424783,
		0.841549, 0.507962, 0.183770,
		43.621677, 34.412426, 25.228415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125034, 34.472984, 24.549807>,  <43.032593, 34.056850, 25.099777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125034, 34.472984, 24.549807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.475975, 34.406864, 24.730000>,  <43.686539, 34.367191, 24.838116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.475975, 34.406864, 24.730000>,  <43.125034, 34.472984, 24.549807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475975, 34.406864, 24.730000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436268, -0.116149, -0.892289,
		0.199821, 0.979380, -0.029787,
		0.877349, -0.165303, 0.450481,
		43.739182, 34.357273, 24.865143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516430, 34.673042, 24.076862>,  <43.125034, 34.472984, 24.549807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516430, 34.673042, 24.076862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.770145, 34.488400, 24.324923>,  <43.922375, 34.377613, 24.473759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.770145, 34.488400, 24.324923>,  <43.516430, 34.673042, 24.076862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770145, 34.488400, 24.324923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601185, -0.209819, -0.771072,
		0.486055, 0.861911, 0.144428,
		0.634292, -0.461612, 0.620152,
		43.960434, 34.349915, 24.510967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128227, 35.003677, 23.979473>,  <43.516430, 34.673042, 24.076862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128227, 35.003677, 23.979473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.236675, 34.651394, 24.134830>,  <44.301743, 34.440025, 24.228045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.236675, 34.651394, 24.134830>,  <44.128227, 35.003677, 23.979473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236675, 34.651394, 24.134830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798786, -0.019276, -0.601307,
		0.537062, 0.473269, 0.698270,
		0.271120, -0.880707, 0.388392,
		44.318012, 34.387180, 24.251348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864990, 34.963806, 23.939613>,  <44.128227, 35.003677, 23.979473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864990, 34.963806, 23.939613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.737740, 34.585339, 23.963501>,  <44.661388, 34.358257, 23.977833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.737740, 34.585339, 23.963501>,  <44.864990, 34.963806, 23.939613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737740, 34.585339, 23.963501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653578, -0.264506, -0.709135,
		0.686756, -0.186562, 0.702539,
		-0.318123, -0.946167, 0.059718,
		44.642303, 34.301487, 23.981417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446671, 34.581329, 23.712307>,  <44.864990, 34.963806, 23.939613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446671, 34.581329, 23.712307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.131172, 34.340885, 23.660845>,  <44.941875, 34.196617, 23.629969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.131172, 34.340885, 23.660845>,  <45.446671, 34.581329, 23.712307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131172, 34.340885, 23.660845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378818, -0.310463, -0.871843,
		0.484133, -0.736394, 0.472587,
		-0.788741, -0.601112, -0.128654,
		44.894550, 34.160553, 23.622248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742794, 33.876465, 23.685396>,  <45.446671, 34.581329, 23.712307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742794, 33.876465, 23.685396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.375252, 33.889103, 23.528063>,  <45.154728, 33.896687, 23.433662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.375252, 33.889103, 23.528063>,  <45.742794, 33.876465, 23.685396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375252, 33.889103, 23.528063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383061, -0.167873, -0.908341,
		-0.094733, -0.985302, 0.142147,
		-0.918853, 0.031599, -0.393334,
		45.099594, 33.898582, 23.410063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496151, 33.328026, 23.310936>,  <45.742794, 33.876465, 23.685396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496151, 33.328026, 23.310936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.312019, 33.645290, 23.151440>,  <45.201538, 33.835648, 23.055742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.312019, 33.645290, 23.151440>,  <45.496151, 33.328026, 23.310936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312019, 33.645290, 23.151440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530817, -0.114101, -0.839770,
		-0.711567, -0.598232, -0.368497,
		-0.460332, 0.793158, -0.398743,
		45.173920, 33.883236, 23.031816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553276, 33.128891, 22.615479>,  <45.496151, 33.328026, 23.310936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553276, 33.128891, 22.615479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.427235, 33.508156, 22.599033>,  <45.351608, 33.735714, 22.589167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.427235, 33.508156, 22.599033>,  <45.553276, 33.128891, 22.615479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427235, 33.508156, 22.599033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530517, 0.140059, -0.836023,
		-0.786930, -0.285248, -0.547152,
		-0.315108, 0.948165, -0.041112,
		45.332703, 33.792606, 22.586700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448246, 33.149513, 21.902731>,  <45.553276, 33.128891, 22.615479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448246, 33.149513, 21.902731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.536987, 33.489864, 22.093218>,  <45.590233, 33.694077, 22.207510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.536987, 33.489864, 22.093218>,  <45.448246, 33.149513, 21.902731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536987, 33.489864, 22.093218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683062, 0.212917, -0.698637,
		-0.695852, 0.480279, -0.533969,
		0.221849, 0.850881, 0.476218,
		45.603542, 33.745129, 22.236084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741505, 33.345726, 21.897854>,  <45.448246, 33.149513, 21.902731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741505, 33.345726, 21.897854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.690353, 33.065239, 21.617300>,  <44.659664, 32.896946, 21.448967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.690353, 33.065239, 21.617300>,  <44.741505, 33.345726, 21.897854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690353, 33.065239, 21.617300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375357, -0.620370, 0.688656,
		-0.918016, 0.351335, -0.183874,
		-0.127879, -0.701216, -0.701386,
		44.651989, 32.854874, 21.406885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037048, 33.085381, 22.021393>,  <44.741505, 33.345726, 21.897854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037048, 33.085381, 22.021393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.256004, 32.811638, 21.828718>,  <44.387379, 32.647392, 21.713114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.256004, 32.811638, 21.828718>,  <44.037048, 33.085381, 22.021393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256004, 32.811638, 21.828718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303218, -0.698651, 0.648032,
		-0.780018, -0.208667, -0.589941,
		0.547386, -0.684357, -0.481688,
		44.420219, 32.606331, 21.684212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595196, 32.457527, 22.046551>,  <44.037048, 33.085381, 22.021393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595196, 32.457527, 22.046551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.983089, 32.369041, 22.005199>,  <44.215824, 32.315952, 21.980389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.983089, 32.369041, 22.005199>,  <43.595196, 32.457527, 22.046551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983089, 32.369041, 22.005199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063545, -0.637420, 0.767892,
		-0.235761, -0.738080, -0.632183,
		0.969731, -0.221211, -0.103378,
		44.274010, 32.302677, 21.974186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604965, 31.725300, 22.048264>,  <43.595196, 32.457527, 22.046551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604965, 31.725300, 22.048264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.977036, 31.844055, 22.134645>,  <44.200275, 31.915308, 22.186474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.977036, 31.844055, 22.134645>,  <43.604965, 31.725300, 22.048264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.977036, 31.844055, 22.134645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027569, -0.643062, 0.765318,
		0.366084, -0.705924, -0.606344,
		0.930173, 0.296888, 0.215953,
		44.256088, 31.933121, 22.199430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903130, 31.147835, 22.296301>,  <43.604965, 31.725300, 22.048264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903130, 31.147835, 22.296301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.145229, 31.442089, 22.417963>,  <44.290489, 31.618643, 22.490961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.145229, 31.442089, 22.417963>,  <43.903130, 31.147835, 22.296301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145229, 31.442089, 22.417963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286482, -0.557781, 0.778979,
		0.742698, -0.384342, -0.548343,
		0.605250, 0.735637, 0.304156,
		44.326805, 31.662781, 22.509211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415356, 30.781866, 22.558641>,  <43.903130, 31.147835, 22.296301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415356, 30.781866, 22.558641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.426220, 31.141418, 22.733582>,  <44.432739, 31.357149, 22.838545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.426220, 31.141418, 22.733582>,  <44.415356, 30.781866, 22.558641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426220, 31.141418, 22.733582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298571, -0.424836, 0.854617,
		0.954001, 0.107365, -0.279921,
		0.027165, 0.898881, 0.437350,
		44.434368, 31.411083, 22.864786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879364, 30.681047, 23.047192>,  <44.415356, 30.781866, 22.558641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879364, 30.681047, 23.047192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.730545, 31.035549, 23.157558>,  <44.641251, 31.248251, 23.223778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.730545, 31.035549, 23.157558>,  <44.879364, 30.681047, 23.047192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730545, 31.035549, 23.157558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186978, -0.219605, 0.957504,
		0.909185, 0.407832, -0.084006,
		-0.372052, 0.886255, 0.275917,
		44.618931, 31.301426, 23.240334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150978, 30.836916, 23.649883>,  <44.879364, 30.681047, 23.047192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150978, 30.836916, 23.649883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.840981, 31.089685, 23.652960>,  <44.654984, 31.241346, 23.654806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.840981, 31.089685, 23.652960>,  <45.150978, 30.836916, 23.649883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840981, 31.089685, 23.652960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143676, -0.188033, 0.971597,
		0.615420, 0.751876, 0.236516,
		-0.774994, 0.631922, 0.007693,
		44.608482, 31.279263, 23.655268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328434, 31.278147, 24.217762>,  <45.150978, 30.836916, 23.649883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328434, 31.278147, 24.217762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.941250, 31.308153, 24.121906>,  <44.708939, 31.326157, 24.064394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.941250, 31.308153, 24.121906>,  <45.328434, 31.278147, 24.217762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.941250, 31.308153, 24.121906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234720, 0.068783, 0.969626,
		0.089222, 0.994807, -0.048972,
		-0.967960, 0.075017, -0.239638,
		44.650864, 31.330658, 24.050014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136845, 31.863413, 24.579060>,  <45.328434, 31.278147, 24.217762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136845, 31.863413, 24.579060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.815434, 31.636896, 24.505680>,  <44.622585, 31.500986, 24.461653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.815434, 31.636896, 24.505680>,  <45.136845, 31.863413, 24.579060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815434, 31.636896, 24.505680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247232, 0.037149, 0.968244,
		-0.541494, 0.823367, -0.169855,
		-0.803530, -0.566292, -0.183447,
		44.574375, 31.467009, 24.450645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622299, 32.238411, 25.009739>,  <45.136845, 31.863413, 24.579060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622299, 32.238411, 25.009739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.490807, 31.868256, 24.934273>,  <44.411911, 31.646162, 24.888992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.490807, 31.868256, 24.934273>,  <44.622299, 32.238411, 25.009739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490807, 31.868256, 24.934273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331442, -0.074022, 0.940567,
		-0.884354, 0.371726, -0.282378,
		-0.328731, -0.925386, -0.188667,
		44.392189, 31.590639, 24.877672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890072, 32.160336, 25.169760>,  <44.622299, 32.238411, 25.009739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890072, 32.160336, 25.169760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.016594, 31.781891, 25.197535>,  <44.092506, 31.554823, 25.214199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.016594, 31.781891, 25.197535>,  <43.890072, 32.160336, 25.169760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016594, 31.781891, 25.197535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389556, -0.062801, 0.918859,
		-0.864985, -0.317686, -0.388429,
		0.316303, -0.946114, 0.069435,
		44.111485, 31.498056, 25.218365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320431, 31.751472, 25.439224>,  <43.890072, 32.160336, 25.169760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320431, 31.751472, 25.439224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.644024, 31.529213, 25.515961>,  <43.838181, 31.395857, 25.562002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.644024, 31.529213, 25.515961>,  <43.320431, 31.751472, 25.439224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644024, 31.529213, 25.515961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324386, -0.149813, 0.933986,
		-0.490231, -0.817806, -0.301441,
		0.808980, -0.555652, 0.191842,
		43.886719, 31.362518, 25.573513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094482, 31.052664, 25.713243>,  <43.320431, 31.751472, 25.439224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094482, 31.052664, 25.713243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.467857, 31.136137, 25.829964>,  <43.691883, 31.186220, 25.899996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.467857, 31.136137, 25.829964>,  <43.094482, 31.052664, 25.713243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467857, 31.136137, 25.829964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329580, 0.177620, 0.927269,
		0.141669, -0.961720, 0.234573,
		0.933438, 0.208676, 0.291801,
		43.747887, 31.198742, 25.917503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769173, 30.350225, 25.750898>,  <43.094482, 31.052664, 25.713243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769173, 30.350225, 25.750898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.386925, 30.235249, 25.725084>,  <42.157574, 30.166262, 25.709597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.386925, 30.235249, 25.725084>,  <42.769173, 30.350225, 25.750898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386925, 30.235249, 25.725084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036760, 0.101000, -0.994207,
		0.292296, -0.952458, -0.085951,
		-0.955621, -0.287443, -0.064534,
		42.100239, 30.149015, 25.705725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672531, 29.980160, 25.171940>,  <42.769173, 30.350225, 25.750898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672531, 29.980160, 25.171940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.287487, 30.080406, 25.213085>,  <42.056461, 30.140554, 25.237772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.287487, 30.080406, 25.213085>,  <42.672531, 29.980160, 25.171940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287487, 30.080406, 25.213085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078902, 0.103878, -0.991455,
		-0.259161, -0.962497, -0.080220,
		-0.962606, 0.250618, 0.102864,
		41.998707, 30.155592, 25.243944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321514, 29.678406, 24.692360>,  <42.672531, 29.980160, 25.171940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321514, 29.678406, 24.692360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.041573, 29.952608, 24.772650>,  <41.873608, 30.117130, 24.820824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.041573, 29.952608, 24.772650>,  <42.321514, 29.678406, 24.692360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041573, 29.952608, 24.772650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158114, 0.125366, -0.979430,
		-0.696571, -0.717191, 0.020652,
		-0.699849, 0.685508, 0.200724,
		41.831619, 30.158260, 24.832867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705677, 29.515011, 24.307327>,  <42.321514, 29.678406, 24.692360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705677, 29.515011, 24.307327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.660110, 29.901495, 24.399813>,  <41.632771, 30.133385, 24.455305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.660110, 29.901495, 24.399813>,  <41.705677, 29.515011, 24.307327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660110, 29.901495, 24.399813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128498, 0.216445, -0.967802,
		-0.985145, -0.139961, 0.099499,
		-0.113919, 0.966210, 0.231215,
		41.625935, 30.191359, 24.469177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296082, 29.764093, 23.821148>,  <41.705677, 29.515011, 24.307327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296082, 29.764093, 23.821148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.401760, 30.124187, 23.959581>,  <41.465168, 30.340244, 24.042641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.401760, 30.124187, 23.959581>,  <41.296082, 29.764093, 23.821148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401760, 30.124187, 23.959581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269857, 0.413501, -0.869594,
		-0.925946, 0.136353, 0.352181,
		0.264199, 0.900236, 0.346084,
		41.481018, 30.394258, 24.063406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726578, 30.297176, 23.654911>,  <41.296082, 29.764093, 23.821148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726578, 30.297176, 23.654911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.071014, 30.496706, 23.694286>,  <41.277676, 30.616423, 23.717913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.071014, 30.496706, 23.694286>,  <40.726578, 30.297176, 23.654911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071014, 30.496706, 23.694286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180332, 0.480655, -0.858167,
		-0.475388, 0.721213, 0.503843,
		0.861096, 0.498822, 0.098440,
		41.329342, 30.646353, 23.723818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615257, 31.062634, 23.514343>,  <40.726578, 30.297176, 23.654911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615257, 31.062634, 23.514343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.000542, 30.992744, 23.432657>,  <41.231712, 30.950811, 23.383646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.000542, 30.992744, 23.432657>,  <40.615257, 31.062634, 23.514343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000542, 30.992744, 23.432657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102114, 0.464945, -0.879431,
		0.248605, 0.867928, 0.429997,
		0.963207, -0.174722, -0.204215,
		41.289505, 30.940329, 23.371393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991673, 31.310995, 23.067375>,  <40.615257, 31.062634, 23.514343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991673, 31.310995, 23.067375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.704849, 31.131969, 22.853640>,  <39.532757, 31.024555, 22.725397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.704849, 31.131969, 22.853640>,  <39.991673, 31.310995, 23.067375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704849, 31.131969, 22.853640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324335, -0.464314, 0.824147,
		-0.616960, 0.764264, 0.187778,
		-0.717055, -0.447563, -0.534341,
		39.489735, 30.997700, 22.693336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455627, 31.441284, 23.492725>,  <39.991673, 31.310995, 23.067375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455627, 31.441284, 23.492725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.328758, 31.142162, 23.259424>,  <39.252636, 30.962688, 23.119444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.328758, 31.142162, 23.259424>,  <39.455627, 31.441284, 23.492725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328758, 31.142162, 23.259424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262460, -0.521774, 0.811706,
		-0.911325, 0.410536, -0.030774,
		-0.317177, -0.747805, -0.583255,
		39.233604, 30.917820, 23.084448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687546, 31.322050, 23.622459>,  <39.455627, 31.441284, 23.492725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687546, 31.322050, 23.622459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.875534, 30.998470, 23.481194>,  <38.988327, 30.804323, 23.396435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.875534, 30.998470, 23.481194>,  <38.687546, 31.322050, 23.622459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875534, 30.998470, 23.481194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296070, -0.521397, 0.800305,
		-0.831545, -0.271561, -0.484548,
		0.469973, -0.808950, -0.353164,
		39.016525, 30.755785, 23.375244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240356, 30.760305, 23.722467>,  <38.687546, 31.322050, 23.622459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240356, 30.760305, 23.722467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.583748, 30.561522, 23.671803>,  <38.789783, 30.442251, 23.641403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.583748, 30.561522, 23.671803>,  <38.240356, 30.760305, 23.722467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583748, 30.561522, 23.671803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250036, -0.621221, 0.742675,
		-0.447765, -0.605902, -0.657564,
		0.858481, -0.496958, -0.126663,
		38.841293, 30.412434, 23.633802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032604, 30.097593, 24.001249>,  <38.240356, 30.760305, 23.722467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032604, 30.097593, 24.001249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432301, 30.100992, 23.986071>,  <38.672119, 30.103031, 23.976963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432301, 30.100992, 23.986071>,  <38.032604, 30.097593, 24.001249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432301, 30.100992, 23.986071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036224, -0.558286, 0.828857,
		-0.014141, -0.829605, -0.558172,
		0.999244, 0.008499, -0.037946,
		38.732075, 30.103542, 23.974688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182209, 29.426441, 24.172565>,  <38.032604, 30.097593, 24.001249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182209, 29.426441, 24.172565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.533260, 29.610367, 24.226727>,  <38.743893, 29.720722, 24.259224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.533260, 29.610367, 24.226727>,  <38.182209, 29.426441, 24.172565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533260, 29.610367, 24.226727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142363, -0.519779, 0.842355,
		0.457707, -0.720001, -0.521635,
		0.877631, 0.459813, 0.135404,
		38.796551, 29.748310, 24.267347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801792, 28.903198, 24.165167>,  <38.182209, 29.426441, 24.172565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801792, 28.903198, 24.165167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862293, 29.226255, 24.393145>,  <38.898594, 29.420090, 24.529932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.862293, 29.226255, 24.393145>,  <38.801792, 28.903198, 24.165167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862293, 29.226255, 24.393145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127374, -0.555849, 0.821467,
		0.980254, -0.196846, 0.018799,
		0.151253, 0.807641, 0.569946,
		38.907669, 29.468548, 24.564129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.136383, 34.072941, 20.924398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.460796, 34.060661, 21.158075>,  <42.655445, 34.053295, 21.298283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.460796, 34.060661, 21.158075>,  <42.136383, 34.072941, 20.924398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460796, 34.060661, 21.158075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532261, 0.375643, 0.758677,
		-0.242739, -0.926256, 0.288318,
		0.811034, -0.030700, 0.584194,
		42.704105, 34.051453, 21.333334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946953, 33.668999, 21.462469>,  <42.136383, 34.072941, 20.924398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946953, 33.668999, 21.462469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256107, 33.876133, 21.609163>,  <42.441601, 34.000416, 21.697180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256107, 33.876133, 21.609163>,  <41.946953, 33.668999, 21.462469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256107, 33.876133, 21.609163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470269, 0.079411, 0.878943,
		0.426030, -0.851783, 0.304900,
		0.772881, 0.517841, 0.366736,
		42.487972, 34.031487, 21.719185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160000, 33.336624, 22.091930>,  <41.946953, 33.668999, 21.462469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160000, 33.336624, 22.091930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.254791, 33.725227, 22.093124>,  <42.311668, 33.958389, 22.093842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.254791, 33.725227, 22.093124>,  <42.160000, 33.336624, 22.091930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254791, 33.725227, 22.093124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459846, 0.109464, 0.881226,
		0.855793, -0.210207, 0.472686,
		0.236982, 0.971509, 0.002984,
		42.325886, 34.016682, 22.094019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244385, 33.519814, 22.832830>,  <42.160000, 33.336624, 22.091930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244385, 33.519814, 22.832830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.164482, 33.862099, 22.641891>,  <42.116539, 34.067471, 22.527328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.164482, 33.862099, 22.641891>,  <42.244385, 33.519814, 22.832830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164482, 33.862099, 22.641891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738755, 0.188505, 0.647075,
		0.643690, 0.481900, 0.594504,
		-0.199758, 0.855709, -0.477346,
		42.104553, 34.118813, 22.498688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327770, 33.952030, 23.355955>,  <42.244385, 33.519814, 22.832830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327770, 33.952030, 23.355955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.121819, 34.159977, 23.083300>,  <41.998245, 34.284744, 22.919706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.121819, 34.159977, 23.083300>,  <42.327770, 33.952030, 23.355955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121819, 34.159977, 23.083300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699097, 0.205559, 0.684843,
		0.496144, 0.829147, 0.257597,
		-0.514884, 0.519866, -0.681641,
		41.967354, 34.315937, 22.878807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937744, 34.460011, 23.776678>,  <42.327770, 33.952030, 23.355955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937744, 34.460011, 23.776678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.743702, 34.491055, 23.428276>,  <41.627277, 34.509682, 23.219234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.743702, 34.491055, 23.428276>,  <41.937744, 34.460011, 23.776678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743702, 34.491055, 23.428276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789609, 0.389127, 0.474445,
		0.375755, 0.917909, -0.127483,
		-0.485104, 0.077614, -0.871005,
		41.598171, 34.514339, 23.166975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641716, 35.101601, 23.774055>,  <41.937744, 34.460011, 23.776678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641716, 35.101601, 23.774055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.448368, 34.887959, 23.496614>,  <41.332359, 34.759773, 23.330151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.448368, 34.887959, 23.496614>,  <41.641716, 35.101601, 23.774055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448368, 34.887959, 23.496614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862295, 0.427163, 0.271992,
		0.151008, 0.729561, -0.667036,
		-0.483368, -0.534109, -0.693602,
		41.303356, 34.727726, 23.288534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123638, 35.518353, 23.450005>,  <41.641716, 35.101601, 23.774055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123638, 35.518353, 23.450005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.984928, 35.153549, 23.362371>,  <40.901703, 34.934669, 23.309792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.984928, 35.153549, 23.362371>,  <41.123638, 35.518353, 23.450005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984928, 35.153549, 23.362371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859367, 0.215340, 0.463807,
		-0.375816, 0.349108, -0.858420,
		-0.346771, -0.912005, -0.219084,
		40.880898, 34.879948, 23.296646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497261, 35.604469, 23.169041>,  <41.123638, 35.518353, 23.450005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497261, 35.604469, 23.169041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.483898, 35.231480, 23.312914>,  <40.475880, 35.007687, 23.399237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.483898, 35.231480, 23.312914>,  <40.497261, 35.604469, 23.169041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483898, 35.231480, 23.312914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736321, 0.266312, 0.622020,
		-0.675807, -0.244060, -0.695500,
		-0.033410, -0.932477, 0.359682,
		40.473877, 34.951736, 23.420818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809540, 35.559830, 23.135498>,  <40.497261, 35.604469, 23.169041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809540, 35.559830, 23.135498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950993, 35.254784, 23.352148>,  <40.035866, 35.071754, 23.482138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950993, 35.254784, 23.352148>,  <39.809540, 35.559830, 23.135498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950993, 35.254784, 23.352148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558640, 0.292239, 0.776220,
		-0.750242, -0.577073, -0.322682,
		0.353635, -0.762616, 0.541626,
		40.057083, 35.025997, 23.514635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205078, 35.251083, 23.414688>,  <39.809540, 35.559830, 23.135498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205078, 35.251083, 23.414688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.493473, 35.127625, 23.662853>,  <39.666512, 35.053551, 23.811752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.493473, 35.127625, 23.662853>,  <39.205078, 35.251083, 23.414688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493473, 35.127625, 23.662853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620063, 0.112342, 0.776467,
		-0.309352, -0.944519, -0.110383,
		0.720987, -0.308647, 0.620415,
		39.709770, 35.035030, 23.848978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872040, 34.829216, 23.876516>,  <39.205078, 35.251083, 23.414688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872040, 34.829216, 23.876516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.223557, 34.911060, 24.048962>,  <39.434467, 34.960167, 24.152430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.223557, 34.911060, 24.048962>,  <38.872040, 34.829216, 23.876516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223557, 34.911060, 24.048962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436688, -0.019495, 0.899402,
		0.192432, -0.978649, 0.072219,
		0.878792, 0.204611, 0.431115,
		39.487194, 34.972443, 24.178297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831581, 34.081871, 23.960583>,  <38.872040, 34.829216, 23.876516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831581, 34.081871, 23.960583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.489285, 33.919407, 23.832369>,  <38.283909, 33.821926, 23.755440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.489285, 33.919407, 23.832369>,  <38.831581, 34.081871, 23.960583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489285, 33.919407, 23.832369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404383, -0.138546, -0.904035,
		0.322779, -0.903236, 0.282805,
		-0.855738, -0.406165, -0.320534,
		38.232563, 33.797558, 23.736208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058216, 33.459957, 23.485826>,  <38.831581, 34.081871, 23.960583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058216, 33.459957, 23.485826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.679314, 33.557735, 23.402922>,  <38.451973, 33.616402, 23.353180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.679314, 33.557735, 23.402922>,  <39.058216, 33.459957, 23.485826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679314, 33.557735, 23.402922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187401, -0.102146, -0.976958,
		-0.259987, -0.964267, 0.050948,
		-0.947253, 0.244448, -0.207261,
		38.395138, 33.631069, 23.340744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898144, 32.962288, 23.025877>,  <39.058216, 33.459957, 23.485826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898144, 32.962288, 23.025877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.616611, 33.240257, 22.966942>,  <38.447693, 33.407040, 22.931581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.616611, 33.240257, 22.966942>,  <38.898144, 32.962288, 23.025877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616611, 33.240257, 22.966942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224081, 0.020371, -0.974358,
		-0.674101, -0.718797, -0.170056,
		-0.703830, 0.694921, -0.147336,
		38.405464, 33.448734, 22.922741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376446, 32.686749, 22.505676>,  <38.898144, 32.962288, 23.025877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376446, 32.686749, 22.505676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.294498, 33.077919, 22.489279>,  <38.245331, 33.312622, 22.479441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.294498, 33.077919, 22.489279>,  <38.376446, 32.686749, 22.505676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294498, 33.077919, 22.489279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021107, -0.046287, -0.998705,
		-0.978561, -0.203740, 0.030124,
		-0.204871, 0.977930, -0.040994,
		38.233036, 33.371300, 22.476980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824177, 32.659981, 22.114637>,  <38.376446, 32.686749, 22.505676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824177, 32.659981, 22.114637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985325, 33.025745, 22.098915>,  <38.082012, 33.245205, 22.089481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.985325, 33.025745, 22.098915>,  <37.824177, 32.659981, 22.114637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985325, 33.025745, 22.098915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040289, -0.060620, -0.997347,
		-0.914371, 0.400216, -0.061263,
		0.402868, 0.914414, -0.039305,
		38.106186, 33.300068, 22.087124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543774, 32.904812, 21.498306>,  <37.824177, 32.659981, 22.114637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543774, 32.904812, 21.498306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.847500, 33.155430, 21.568604>,  <38.029736, 33.305801, 21.610781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.847500, 33.155430, 21.568604>,  <37.543774, 32.904812, 21.498306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847500, 33.155430, 21.568604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169202, 0.070681, -0.983044,
		-0.628342, 0.776174, -0.052343,
		0.759313, 0.626544, 0.175742,
		38.075294, 33.343391, 21.621326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426922, 33.439548, 21.105658>,  <37.543774, 32.904812, 21.498306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426922, 33.439548, 21.105658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.821205, 33.472736, 21.164293>,  <38.057777, 33.492649, 21.199474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.821205, 33.472736, 21.164293>,  <37.426922, 33.439548, 21.105658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821205, 33.472736, 21.164293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121132, 0.255555, -0.959176,
		-0.117042, 0.963228, 0.241854,
		0.985712, 0.082968, 0.146589,
		38.116920, 33.497627, 21.208269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760784, 34.106918, 20.782604>,  <37.426922, 33.439548, 21.105658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760784, 34.106918, 20.782604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.061707, 33.846027, 20.819763>,  <38.242260, 33.689491, 20.842058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.061707, 33.846027, 20.819763>,  <37.760784, 34.106918, 20.782604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061707, 33.846027, 20.819763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215257, 0.110081, -0.970333,
		0.622654, 0.749986, 0.223212,
		0.752308, -0.652230, 0.092897,
		38.287399, 33.650360, 20.847631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313915, 34.406025, 20.416039>,  <37.760784, 34.106918, 20.782604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313915, 34.406025, 20.416039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.429653, 34.023788, 20.438417>,  <38.499096, 33.794449, 20.451845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.429653, 34.023788, 20.438417>,  <38.313915, 34.406025, 20.416039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429653, 34.023788, 20.438417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197519, 0.002415, -0.980296,
		0.936625, 0.294692, 0.189445,
		0.289343, -0.955589, 0.055945,
		38.516457, 33.737110, 20.455200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829536, 34.327263, 19.924213>,  <38.313915, 34.406025, 20.416039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829536, 34.327263, 19.924213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.744205, 33.937599, 19.953890>,  <38.693008, 33.703800, 19.971697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.744205, 33.937599, 19.953890>,  <38.829536, 34.327263, 19.924213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744205, 33.937599, 19.953890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118319, -0.101142, -0.987811,
		0.969790, -0.201948, 0.136837,
		-0.213326, -0.974160, 0.074192,
		38.680206, 33.645351, 19.976147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238842, 33.987320, 19.397791>,  <38.829536, 34.327263, 19.924213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238842, 33.987320, 19.397791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.963917, 33.712025, 19.490675>,  <38.798962, 33.546848, 19.546406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.963917, 33.712025, 19.490675>,  <39.238842, 33.987320, 19.397791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963917, 33.712025, 19.490675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077716, -0.248175, -0.965593,
		0.722188, -0.681715, 0.117088,
		-0.687317, -0.688240, 0.232209,
		38.757721, 33.505554, 19.560337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450222, 33.410019, 19.089911>,  <39.238842, 33.987320, 19.397791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450222, 33.410019, 19.089911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.056854, 33.362095, 19.144365>,  <38.820835, 33.333340, 19.177038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.056854, 33.362095, 19.144365>,  <39.450222, 33.410019, 19.089911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056854, 33.362095, 19.144365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126201, -0.086976, -0.988184,
		0.130236, -0.988979, 0.070413,
		-0.983418, -0.119811, 0.136138,
		38.761829, 33.326153, 19.185207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257595, 32.834167, 18.627962>,  <39.450222, 33.410019, 19.089911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257595, 32.834167, 18.627962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.916801, 33.030792, 18.700050>,  <38.712326, 33.148769, 18.743303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.916801, 33.030792, 18.700050>,  <39.257595, 32.834167, 18.627962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916801, 33.030792, 18.700050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272393, -0.122207, -0.954394,
		-0.447123, -0.862223, 0.238018,
		-0.851987, 0.491566, 0.180222,
		38.661205, 33.178261, 18.754116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102787, 32.302265, 19.125864>,  <39.257595, 32.834167, 18.627962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102787, 32.302265, 19.125864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.280907, 31.954451, 19.211294>,  <39.387779, 31.745762, 19.262552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.280907, 31.954451, 19.211294>,  <39.102787, 32.302265, 19.125864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280907, 31.954451, 19.211294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328920, 0.062993, 0.942255,
		-0.832777, -0.489839, -0.257956,
		0.445303, -0.869534, 0.213577,
		39.414497, 31.693590, 19.275368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599003, 31.938017, 19.583769>,  <39.102787, 32.302265, 19.125864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599003, 31.938017, 19.583769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.967388, 31.802292, 19.660391>,  <39.188419, 31.720858, 19.706364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.967388, 31.802292, 19.660391>,  <38.599003, 31.938017, 19.583769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967388, 31.802292, 19.660391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136746, 0.178891, 0.974320,
		-0.364865, -0.923508, 0.118352,
		0.920964, -0.339311, 0.191557,
		39.243679, 31.700499, 19.717857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642014, 31.719112, 20.283035>,  <38.599003, 31.938017, 19.583769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642014, 31.719112, 20.283035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.034550, 31.653463, 20.242960>,  <39.270069, 31.614073, 20.218914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.034550, 31.653463, 20.242960>,  <38.642014, 31.719112, 20.283035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034550, 31.653463, 20.242960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082904, -0.108995, 0.990579,
		-0.173503, -0.980399, -0.093354,
		0.981338, -0.164129, -0.100190,
		39.328953, 31.604225, 20.212904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812077, 31.016472, 20.491037>,  <38.642014, 31.719112, 20.283035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812077, 31.016472, 20.491037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.144470, 31.233887, 20.538431>,  <39.343906, 31.364336, 20.566868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.144470, 31.233887, 20.538431>,  <38.812077, 31.016472, 20.491037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144470, 31.233887, 20.538431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098049, -0.352751, 0.930566,
		0.547592, -0.761665, -0.346422,
		0.830981, 0.543537, 0.118483,
		39.393764, 31.396948, 20.573977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334892, 30.503613, 20.644196>,  <38.812077, 31.016472, 20.491037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334892, 30.503613, 20.644196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.444923, 30.860739, 20.786865>,  <39.510941, 31.075014, 20.872467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.444923, 30.860739, 20.786865>,  <39.334892, 30.503613, 20.644196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444923, 30.860739, 20.786865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177792, -0.317347, 0.931494,
		0.944840, -0.319645, 0.071441,
		0.275075, 0.892815, 0.356673,
		39.527447, 31.128584, 20.893867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969296, 30.458591, 21.126024>,  <39.334892, 30.503613, 20.644196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969296, 30.458591, 21.126024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.789574, 30.797701, 21.238743>,  <39.681740, 31.001165, 21.306374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.789574, 30.797701, 21.238743>,  <39.969296, 30.458591, 21.126024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789574, 30.797701, 21.238743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064614, -0.345437, 0.936215,
		0.891039, 0.402438, 0.209984,
		-0.449304, 0.847772, 0.281795,
		39.654781, 31.052032, 21.323280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307743, 30.587008, 21.834036>,  <39.969296, 30.458591, 21.126024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307743, 30.587008, 21.834036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.975845, 30.806570, 21.793600>,  <39.776707, 30.938307, 21.769339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.975845, 30.806570, 21.793600>,  <40.307743, 30.587008, 21.834036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975845, 30.806570, 21.793600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332741, -0.341071, 0.879178,
		0.448108, 0.763133, 0.465647,
		-0.829748, 0.548907, -0.101089,
		39.726921, 30.971243, 21.763273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305195, 31.056511, 22.450455>,  <40.307743, 30.587008, 21.834036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305195, 31.056511, 22.450455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.925327, 31.079851, 22.327343>,  <39.697407, 31.093855, 22.253477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.925327, 31.079851, 22.327343>,  <40.305195, 31.056511, 22.450455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925327, 31.079851, 22.327343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308467, -0.345377, 0.886320,
		-0.054584, 0.936648, 0.345992,
		-0.949667, 0.058349, -0.307777,
		39.640427, 31.097355, 22.235010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844147, 31.523432, 22.906219>,  <40.305195, 31.056511, 22.450455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844147, 31.523432, 22.906219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.169628, 31.291418, 22.921455>,  <41.364918, 31.152210, 22.930597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.169628, 31.291418, 22.921455>,  <40.844147, 31.523432, 22.906219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169628, 31.291418, 22.921455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132620, 0.121445, -0.983698,
		0.565951, 0.805489, 0.175745,
		0.813702, -0.580033, 0.038092,
		41.413738, 31.117409, 22.932882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269508, 31.870911, 22.381683>,  <40.844147, 31.523432, 22.906219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269508, 31.870911, 22.381683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.444855, 31.517929, 22.449930>,  <41.550060, 31.306139, 22.490879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.444855, 31.517929, 22.449930>,  <41.269508, 31.870911, 22.381683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444855, 31.517929, 22.449930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341715, -0.011943, -0.939728,
		0.831305, 0.470245, 0.296313,
		0.438363, -0.882455, 0.170618,
		41.576363, 31.253193, 22.501116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061378, 31.991192, 22.283539>,  <41.269508, 31.870911, 22.381683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061378, 31.991192, 22.283539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.980137, 31.600140, 22.261673>,  <41.931393, 31.365509, 22.248554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.980137, 31.600140, 22.261673>,  <42.061378, 31.991192, 22.283539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980137, 31.600140, 22.261673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567427, -0.072018, -0.820269,
		0.797982, -0.197618, 0.569360,
		-0.203104, -0.977630, -0.054665,
		41.919205, 31.306850, 22.245274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658699, 31.622608, 22.340916>,  <42.061378, 31.991192, 22.283539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658699, 31.622608, 22.340916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.386196, 31.424799, 22.125015>,  <42.222694, 31.306114, 21.995474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.386196, 31.424799, 22.125015>,  <42.658699, 31.622608, 22.340916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386196, 31.424799, 22.125015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575056, 0.094732, -0.812611,
		0.452986, -0.863987, 0.219841,
		-0.681259, -0.494522, -0.539753,
		42.181820, 31.276442, 21.963089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044582, 31.222942, 21.788694>,  <42.658699, 31.622608, 22.340916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044582, 31.222942, 21.788694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.662922, 31.223326, 21.668964>,  <42.433926, 31.223555, 21.597126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.662922, 31.223326, 21.668964>,  <43.044582, 31.222942, 21.788694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662922, 31.223326, 21.668964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294513, 0.181641, -0.938226,
		0.053469, -0.983365, -0.173595,
		-0.954151, 0.000960, -0.299326,
		42.376678, 31.223614, 21.579166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027603, 30.778515, 21.147114>,  <43.044582, 31.222942, 21.788694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027603, 30.778515, 21.147114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.708263, 31.019159, 21.136545>,  <42.516659, 31.163546, 21.130205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.708263, 31.019159, 21.136545>,  <43.027603, 30.778515, 21.147114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708263, 31.019159, 21.136545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281517, 0.334076, -0.899523,
		-0.532337, -0.725573, -0.436074,
		-0.798352, 0.601612, -0.026419,
		42.468758, 31.199642, 21.128620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791210, 30.782743, 20.526663>,  <43.027603, 30.778515, 21.147114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791210, 30.782743, 20.526663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.578850, 31.107950, 20.622278>,  <42.451431, 31.303074, 20.679647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.578850, 31.107950, 20.622278>,  <42.791210, 30.782743, 20.526663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578850, 31.107950, 20.622278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114256, 0.348174, -0.930441,
		-0.839693, -0.466664, -0.277740,
		-0.530905, 0.813018, 0.239040,
		42.419579, 31.351856, 20.693991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420856, 30.935328, 19.901545>,  <42.791210, 30.782743, 20.526663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420856, 30.935328, 19.901545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.428699, 31.273708, 20.114706>,  <42.433407, 31.476736, 20.242603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.428699, 31.273708, 20.114706>,  <42.420856, 30.935328, 19.901545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428699, 31.273708, 20.114706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190639, 0.520062, -0.832582,
		-0.981464, 0.117917, -0.151074,
		0.019608, 0.845950, 0.532902,
		42.434582, 31.527493, 20.274576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942638, 31.336115, 19.551140>,  <42.420856, 30.935328, 19.901545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942638, 31.336115, 19.551140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.219486, 31.535009, 19.760416>,  <42.385593, 31.654346, 19.885983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.219486, 31.535009, 19.760416>,  <41.942638, 31.336115, 19.551140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219486, 31.535009, 19.760416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345210, 0.408540, -0.844941,
		-0.633879, 0.765410, 0.111108,
		0.692118, 0.497235, 0.523192,
		42.427120, 31.684179, 19.917374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.592304, 31.169456, 35.225456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953262, 31.336300, 35.182171>,  <38.169838, 31.436407, 35.156200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953262, 31.336300, 35.182171>,  <37.592304, 31.169456, 35.225456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953262, 31.336300, 35.182171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051925, -0.354543, -0.933597,
		-0.427778, 0.836850, -0.341595,
		0.902391, 0.417110, -0.108213,
		38.223980, 31.461433, 35.149708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622841, 31.363264, 34.541042>,  <37.592304, 31.169456, 35.225456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622841, 31.363264, 34.541042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.009987, 31.322575, 34.633041>,  <38.242275, 31.298161, 34.688240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.009987, 31.322575, 34.633041>,  <37.622841, 31.363264, 34.541042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009987, 31.322575, 34.633041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181459, -0.350713, -0.918735,
		0.174117, 0.930942, -0.320983,
		0.967861, -0.101722, 0.229993,
		38.300346, 31.292057, 34.702038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009079, 31.850618, 34.117245>,  <37.622841, 31.363264, 34.541042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009079, 31.850618, 34.117245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.236164, 31.539145, 34.224094>,  <38.372417, 31.352261, 34.288204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.236164, 31.539145, 34.224094>,  <38.009079, 31.850618, 34.117245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236164, 31.539145, 34.224094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141901, -0.227059, -0.963488,
		0.810903, 0.584891, -0.018409,
		0.567715, -0.778683, 0.267120,
		38.406479, 31.305540, 34.304230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148094, 31.534801, 33.455341>,  <38.009079, 31.850618, 34.117245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148094, 31.534801, 33.455341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.362041, 31.294239, 33.692734>,  <38.490410, 31.149900, 33.835171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.362041, 31.294239, 33.692734>,  <38.148094, 31.534801, 33.455341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362041, 31.294239, 33.692734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333639, -0.494992, -0.802289,
		0.776273, 0.627129, -0.064102,
		0.534869, -0.601408, 0.593484,
		38.522503, 31.113817, 33.870777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846729, 31.712711, 33.292873>,  <38.148094, 31.534801, 33.455341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846729, 31.712711, 33.292873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.799644, 31.333609, 33.411465>,  <38.771393, 31.106146, 33.482620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.799644, 31.333609, 33.411465>,  <38.846729, 31.712711, 33.292873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799644, 31.333609, 33.411465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279462, -0.318100, -0.905932,
		0.952914, -0.023787, 0.302307,
		-0.117714, -0.947759, 0.296474,
		38.764332, 31.049280, 33.500408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425259, 31.422041, 33.227512>,  <38.846729, 31.712711, 33.292873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425259, 31.422041, 33.227512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.180889, 31.105551, 33.238365>,  <39.034267, 30.915657, 33.244877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.180889, 31.105551, 33.238365>,  <39.425259, 31.422041, 33.227512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180889, 31.105551, 33.238365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405348, -0.342053, -0.847757,
		0.680047, -0.506916, 0.529690,
		-0.610924, -0.791224, 0.027134,
		38.997612, 30.868183, 33.246506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848064, 30.823784, 33.242722>,  <39.425259, 31.422041, 33.227512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848064, 30.823784, 33.242722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.499275, 30.674347, 33.116169>,  <39.290001, 30.584684, 33.040237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.499275, 30.674347, 33.116169>,  <39.848064, 30.823784, 33.242722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499275, 30.674347, 33.116169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458283, -0.395616, -0.795905,
		0.172179, -0.838997, 0.516176,
		-0.871969, -0.373593, -0.316381,
		39.237686, 30.562269, 33.021255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056301, 30.241169, 32.920910>,  <39.848064, 30.823784, 33.242722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056301, 30.241169, 32.920910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686466, 30.308765, 32.784332>,  <39.464565, 30.349323, 32.702385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686466, 30.308765, 32.784332>,  <40.056301, 30.241169, 32.920910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686466, 30.308765, 32.784332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257342, -0.383839, -0.886816,
		-0.280925, -0.907805, 0.311403,
		-0.924585, 0.168991, -0.341447,
		39.409092, 30.359463, 32.681900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757168, 29.598434, 32.603783>,  <40.056301, 30.241169, 32.920910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757168, 29.598434, 32.603783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.579975, 29.915733, 32.436680>,  <39.473660, 30.106113, 32.336418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.579975, 29.915733, 32.436680>,  <39.757168, 29.598434, 32.603783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579975, 29.915733, 32.436680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242412, -0.342636, -0.907654,
		-0.863135, -0.503345, -0.040511,
		-0.442983, 0.793249, -0.417758,
		39.447079, 30.153708, 32.311352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453426, 29.338083, 32.129108>,  <39.757168, 29.598434, 32.603783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453426, 29.338083, 32.129108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.434998, 29.716167, 31.999828>,  <39.423939, 29.943018, 31.922260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.434998, 29.716167, 31.999828>,  <39.453426, 29.338083, 32.129108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434998, 29.716167, 31.999828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062950, -0.325648, -0.943393,
		-0.996953, -0.023123, 0.074505,
		-0.046076, 0.945208, -0.323200,
		39.421173, 29.999729, 31.902868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137672, 29.231279, 31.403605>,  <39.453426, 29.338083, 32.129108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137672, 29.231279, 31.403605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.301464, 29.595539, 31.381527>,  <39.399738, 29.814095, 31.368280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.301464, 29.595539, 31.381527>,  <39.137672, 29.231279, 31.403605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301464, 29.595539, 31.381527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016010, -0.053314, -0.998450,
		-0.912178, 0.409730, -0.007252,
		0.409481, 0.910648, -0.055192,
		39.424309, 29.868734, 31.364969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806271, 29.637762, 30.885559>,  <39.137672, 29.231279, 31.403605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806271, 29.637762, 30.885559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.169098, 29.799898, 30.931055>,  <39.386795, 29.897179, 30.958353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.169098, 29.799898, 30.931055>,  <38.806271, 29.637762, 30.885559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169098, 29.799898, 30.931055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081296, 0.096438, -0.992014,
		-0.413069, 0.909066, 0.054523,
		0.907064, 0.405338, 0.113739,
		39.441216, 29.921499, 30.965178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145550, 29.947241, 30.343105>,  <38.806271, 29.637762, 30.885559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145550, 29.947241, 30.343105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.912235, 29.628485, 30.280184>,  <37.772247, 29.437231, 30.242430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.912235, 29.628485, 30.280184>,  <38.145550, 29.947241, 30.343105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912235, 29.628485, 30.280184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488887, 0.189765, 0.851457,
		-0.648667, 0.573546, -0.500277,
		-0.583285, -0.796890, -0.157305,
		37.737251, 29.389418, 30.232992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516953, 30.237734, 30.330196>,  <38.145550, 29.947241, 30.343105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516953, 30.237734, 30.330196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.490753, 29.851366, 30.430365>,  <37.475033, 29.619545, 30.490465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.490753, 29.851366, 30.430365>,  <37.516953, 30.237734, 30.330196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490753, 29.851366, 30.430365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469071, 0.251307, 0.846651,
		-0.880728, -0.062007, -0.469545,
		-0.065501, -0.965919, 0.250419,
		37.471104, 29.561590, 30.505489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858734, 30.137753, 30.313925>,  <37.516953, 30.237734, 30.330196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858734, 30.137753, 30.313925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000103, 29.844402, 30.546219>,  <37.084923, 29.668392, 30.685595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000103, 29.844402, 30.546219>,  <36.858734, 30.137753, 30.313925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000103, 29.844402, 30.546219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628044, 0.274069, 0.728318,
		-0.693294, -0.622128, -0.363732,
		0.353419, -0.733378, 0.580734,
		37.106129, 29.624390, 30.720440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234966, 29.672707, 30.467844>,  <36.858734, 30.137753, 30.313925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234966, 29.672707, 30.467844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.519882, 29.647785, 30.747490>,  <36.690830, 29.632832, 30.915277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.519882, 29.647785, 30.747490>,  <36.234966, 29.672707, 30.467844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519882, 29.647785, 30.747490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669723, 0.237729, 0.703531,
		-0.210032, -0.969331, 0.127606,
		0.712290, -0.062303, 0.699114,
		36.733570, 29.629095, 30.957224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896957, 29.697954, 31.024254>,  <36.234966, 29.672707, 30.467844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896957, 29.697954, 31.024254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221996, 29.700655, 31.257368>,  <36.417019, 29.702276, 31.397236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221996, 29.700655, 31.257368>,  <35.896957, 29.697954, 31.024254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221996, 29.700655, 31.257368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557726, 0.299278, 0.774192,
		-0.169187, -0.954142, 0.246959,
		0.812599, 0.006752, 0.582784,
		36.465775, 29.702681, 31.432203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690018, 29.312542, 31.591679>,  <35.896957, 29.697954, 31.024254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690018, 29.312542, 31.591679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995556, 29.544857, 31.704264>,  <36.178879, 29.684246, 31.771814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995556, 29.544857, 31.704264>,  <35.690018, 29.312542, 31.591679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995556, 29.544857, 31.704264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482120, 0.223560, 0.847101,
		0.429063, -0.782755, 0.450776,
		0.763849, 0.580788, 0.281461,
		36.224709, 29.719093, 31.788702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731903, 29.192358, 32.316891>,  <35.690018, 29.312542, 31.591679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731903, 29.192358, 32.316891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933708, 29.533003, 32.260002>,  <36.054790, 29.737391, 32.225868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933708, 29.533003, 32.260002>,  <35.731903, 29.192358, 32.316891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933708, 29.533003, 32.260002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530436, 0.435682, 0.727199,
		0.681254, -0.291441, 0.671532,
		0.504510, 0.851612, -0.142219,
		36.085060, 29.788486, 32.217335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598209, 29.521467, 32.969395>,  <35.731903, 29.192358, 32.316891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598209, 29.521467, 32.969395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753429, 29.820383, 32.753628>,  <35.846561, 29.999733, 32.624168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753429, 29.820383, 32.753628>,  <35.598209, 29.521467, 32.969395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753429, 29.820383, 32.753628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319822, 0.658099, 0.681630,
		0.864367, -0.091989, 0.494376,
		0.388051, 0.747291, -0.539419,
		35.869846, 30.044571, 32.591801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102642, 29.940229, 33.427513>,  <35.598209, 29.521467, 32.969395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102642, 29.940229, 33.427513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953190, 30.151854, 33.122753>,  <35.863518, 30.278828, 32.939896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.953190, 30.151854, 33.122753>,  <36.102642, 29.940229, 33.427513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953190, 30.151854, 33.122753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252361, 0.732426, 0.632350,
		0.892587, 0.428541, -0.140145,
		-0.373634, 0.529060, -0.761901,
		35.841099, 30.310572, 32.894184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388054, 30.582300, 33.568592>,  <36.102642, 29.940229, 33.427513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388054, 30.582300, 33.568592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.075272, 30.640158, 33.326065>,  <35.887600, 30.674871, 33.180550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.075272, 30.640158, 33.326065>,  <36.388054, 30.582300, 33.568592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075272, 30.640158, 33.326065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218465, 0.847410, 0.483911,
		0.583793, 0.510857, -0.631040,
		-0.781959, 0.144643, -0.606316,
		35.840683, 30.683550, 33.144169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343807, 31.338793, 33.361629>,  <36.388054, 30.582300, 33.568592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343807, 31.338793, 33.361629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978859, 31.190527, 33.292126>,  <35.759892, 31.101568, 33.250423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978859, 31.190527, 33.292126>,  <36.343807, 31.338793, 33.361629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978859, 31.190527, 33.292126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408909, 0.805079, 0.429699,
		-0.019385, 0.463095, -0.886097,
		-0.912369, -0.370663, -0.173758,
		35.705147, 31.079329, 33.239998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900520, 31.855606, 32.971355>,  <36.343807, 31.338793, 33.361629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900520, 31.855606, 32.971355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647602, 31.599850, 33.146343>,  <35.495850, 31.446396, 33.251335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647602, 31.599850, 33.146343>,  <35.900520, 31.855606, 32.971355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647602, 31.599850, 33.146343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539700, 0.768647, 0.343374,
		-0.555812, -0.018990, -0.831091,
		-0.632295, -0.639391, 0.437472,
		35.457912, 31.408031, 33.277584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179615, 32.163021, 32.816311>,  <35.900520, 31.855606, 32.971355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179615, 32.163021, 32.816311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.167435, 31.947210, 33.152878>,  <35.160126, 31.817724, 33.354816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.167435, 31.947210, 33.152878>,  <35.179615, 32.163021, 32.816311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167435, 31.947210, 33.152878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647702, 0.651806, 0.394502,
		-0.761285, -0.532973, -0.369302,
		-0.030454, -0.539526, 0.841418,
		35.158298, 31.785353, 33.405304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488503, 32.349251, 33.044529>,  <35.179615, 32.163021, 32.816311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488503, 32.349251, 33.044529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677906, 32.185707, 33.356586>,  <34.791550, 32.087582, 33.543819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677906, 32.185707, 33.356586>,  <34.488503, 32.349251, 33.044529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677906, 32.185707, 33.356586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588823, 0.511774, 0.625599,
		-0.655038, -0.755594, 0.001587,
		0.473512, -0.408857, 0.780143,
		34.819958, 32.063049, 33.590630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968266, 32.585918, 33.382774>,  <34.488503, 32.349251, 33.044529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968266, 32.585918, 33.382774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694908, 32.870518, 33.448174>,  <33.530891, 33.041279, 33.487411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694908, 32.870518, 33.448174>,  <33.968266, 32.585918, 33.382774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694908, 32.870518, 33.448174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043107, 0.184238, -0.981936,
		-0.728773, -0.678100, -0.095237,
		-0.683397, 0.711503, 0.163498,
		33.489887, 33.083969, 33.497223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491600, 32.397301, 32.842068>,  <33.968266, 32.585918, 33.382774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491600, 32.397301, 32.842068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465084, 32.786953, 32.928493>,  <33.449177, 33.020744, 32.980347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465084, 32.786953, 32.928493>,  <33.491600, 32.397301, 32.842068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465084, 32.786953, 32.928493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120917, 0.207100, -0.970818,
		-0.990447, -0.090479, 0.104061,
		-0.066287, 0.974127, 0.216062,
		33.445198, 33.079189, 32.993313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829380, 32.730549, 32.571583>,  <33.491600, 32.397301, 32.842068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829380, 32.730549, 32.571583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.127415, 32.995319, 32.604317>,  <33.306236, 33.154182, 32.623955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.127415, 32.995319, 32.604317>,  <32.829380, 32.730549, 32.571583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127415, 32.995319, 32.604317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173759, 0.311098, -0.934358,
		-0.643938, 0.681957, 0.346811,
		0.745085, 0.661931, 0.081832,
		33.350941, 33.193897, 32.628868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693760, 33.391460, 32.174076>,  <32.829380, 32.730549, 32.571583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693760, 33.391460, 32.174076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.091145, 33.394398, 32.219635>,  <33.329575, 33.396160, 32.246971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.091145, 33.394398, 32.219635>,  <32.693760, 33.391460, 32.174076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091145, 33.394398, 32.219635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102828, 0.375511, -0.921096,
		-0.049532, 0.926789, 0.372302,
		0.993465, 0.007341, 0.113900,
		33.389183, 33.396599, 32.253803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873009, 34.017532, 31.858679>,  <32.693760, 33.391460, 32.174076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873009, 34.017532, 31.858679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192116, 33.776417, 31.864428>,  <33.383579, 33.631748, 31.867876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192116, 33.776417, 31.864428>,  <32.873009, 34.017532, 31.858679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192116, 33.776417, 31.864428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183329, 0.219783, -0.958168,
		0.574418, 0.767031, 0.285845,
		0.797769, -0.602793, 0.014371,
		33.431446, 33.595577, 31.868738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389065, 34.427372, 31.593054>,  <32.873009, 34.017532, 31.858679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389065, 34.427372, 31.593054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.526859, 34.055157, 31.543362>,  <33.609535, 33.831829, 31.513546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.526859, 34.055157, 31.543362>,  <33.389065, 34.427372, 31.593054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526859, 34.055157, 31.543362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154292, 0.186649, -0.970235,
		0.926027, 0.315061, 0.207872,
		0.344483, -0.930537, -0.124230,
		33.630203, 33.775997, 31.506092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014881, 34.431217, 31.179749>,  <33.389065, 34.427372, 31.593054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014881, 34.431217, 31.179749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921795, 34.043209, 31.151741>,  <33.865944, 33.810406, 31.134937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921795, 34.043209, 31.151741>,  <34.014881, 34.431217, 31.179749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921795, 34.043209, 31.151741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201784, 0.022269, -0.979177,
		0.951382, -0.241996, 0.190553,
		-0.232714, -0.970021, -0.070017,
		33.851982, 33.752201, 31.130735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540829, 33.992176, 30.808372>,  <34.014881, 34.431217, 31.179749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540829, 33.992176, 30.808372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209503, 33.771137, 30.771439>,  <34.010708, 33.638515, 30.749277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209503, 33.771137, 30.771439>,  <34.540829, 33.992176, 30.808372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209503, 33.771137, 30.771439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133174, -0.034112, -0.990505,
		0.544202, -0.832749, 0.101847,
		-0.828317, -0.552599, -0.092337,
		33.961010, 33.605358, 30.743738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691284, 33.281364, 30.533009>,  <34.540829, 33.992176, 30.808372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691284, 33.281364, 30.533009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300232, 33.289608, 30.449278>,  <34.065601, 33.294556, 30.399040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300232, 33.289608, 30.449278>,  <34.691284, 33.281364, 30.533009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300232, 33.289608, 30.449278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187227, -0.368258, -0.910677,
		-0.095855, -0.929495, 0.356161,
		-0.977629, 0.020610, -0.209326,
		34.006943, 33.295792, 30.386480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558231, 32.719131, 30.157366>,  <34.691284, 33.281364, 30.533009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558231, 32.719131, 30.157366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266060, 32.963524, 30.035271>,  <34.090755, 33.110161, 29.962013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266060, 32.963524, 30.035271>,  <34.558231, 32.719131, 30.157366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266060, 32.963524, 30.035271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200653, -0.235224, -0.951004,
		-0.652846, -0.755890, 0.049219,
		-0.730432, 0.610983, -0.305237,
		34.046928, 33.146820, 29.943699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182781, 32.491253, 29.546316>,  <34.558231, 32.719131, 30.157366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182781, 32.491253, 29.546316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080070, 32.876549, 29.514717>,  <34.018444, 33.107727, 29.495758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080070, 32.876549, 29.514717>,  <34.182781, 32.491253, 29.546316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080070, 32.876549, 29.514717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158426, -0.038684, -0.986613,
		-0.953398, -0.265854, -0.142668,
		-0.256776, 0.963237, -0.079000,
		34.003036, 33.165520, 29.491016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961411, 32.556244, 28.908897>,  <34.182781, 32.491253, 29.546316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961411, 32.556244, 28.908897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977337, 32.946045, 28.997225>,  <33.986893, 33.179924, 29.050222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977337, 32.946045, 28.997225>,  <33.961411, 32.556244, 28.908897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977337, 32.946045, 28.997225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107167, 0.215555, -0.970593,
		-0.993443, 0.062312, -0.095851,
		0.039819, 0.974501, 0.220820,
		33.989281, 33.238396, 29.063471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582035, 32.812908, 28.351475>,  <33.961411, 32.556244, 28.908897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582035, 32.812908, 28.351475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825737, 33.090199, 28.505482>,  <33.971958, 33.256573, 28.597885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825737, 33.090199, 28.505482>,  <33.582035, 32.812908, 28.351475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825737, 33.090199, 28.505482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338321, 0.211886, -0.916866,
		-0.717179, 0.688866, -0.105442,
		0.609256, 0.693230, 0.385018,
		34.008514, 33.298168, 28.620987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620884, 33.304573, 27.861370>,  <33.582035, 32.812908, 28.351475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620884, 33.304573, 27.861370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955608, 33.366295, 28.071489>,  <34.156445, 33.403328, 28.197561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955608, 33.366295, 28.071489>,  <33.620884, 33.304573, 27.861370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955608, 33.366295, 28.071489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521592, 0.066917, -0.850567,
		-0.166396, 0.985755, -0.024486,
		0.836812, 0.154303, 0.525296,
		34.206654, 33.412586, 28.229078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949905, 34.033401, 27.592609>,  <33.620884, 33.304573, 27.861370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949905, 34.033401, 27.592609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.240177, 33.824512, 27.771797>,  <34.414341, 33.699181, 27.879309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.240177, 33.824512, 27.771797>,  <33.949905, 34.033401, 27.592609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240177, 33.824512, 27.771797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554009, 0.057413, -0.830529,
		0.408000, 0.850876, 0.330978,
		0.725679, -0.522221, 0.447968,
		34.457882, 33.667847, 27.906187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551262, 34.418633, 27.570036>,  <33.949905, 34.033401, 27.592609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551262, 34.418633, 27.570036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677307, 34.044281, 27.633074>,  <34.752934, 33.819672, 27.670897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.677307, 34.044281, 27.633074>,  <34.551262, 34.418633, 27.570036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677307, 34.044281, 27.633074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656140, 0.094861, -0.748653,
		0.685698, 0.339317, 0.643958,
		0.315117, -0.935877, 0.157593,
		34.771843, 33.763519, 27.680351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167889, 34.547260, 27.363871>,  <34.551262, 34.418633, 27.570036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167889, 34.547260, 27.363871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109478, 34.151688, 27.374363>,  <35.074432, 33.914345, 27.380659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109478, 34.151688, 27.374363>,  <35.167889, 34.547260, 27.363871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109478, 34.151688, 27.374363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636653, -0.114236, -0.762642,
		0.757199, -0.094665, 0.646288,
		-0.146025, -0.988933, 0.026230,
		35.065670, 33.855007, 27.382233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733479, 34.341789, 27.430651>,  <35.167889, 34.547260, 27.363871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733479, 34.341789, 27.430651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.532127, 34.038067, 27.265694>,  <35.411316, 33.855835, 27.166719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.532127, 34.038067, 27.265694>,  <35.733479, 34.341789, 27.430651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532127, 34.038067, 27.265694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715585, -0.098829, -0.691499,
		0.484301, -0.643190, 0.593094,
		-0.503380, -0.759302, -0.412394,
		35.381115, 33.810276, 27.141975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356987, 34.056648, 27.253639>,  <35.733479, 34.341789, 27.430651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356987, 34.056648, 27.253639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.053707, 33.880333, 27.061459>,  <35.871738, 33.774544, 26.946150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.053707, 33.880333, 27.061459>,  <36.356987, 34.056648, 27.253639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053707, 33.880333, 27.061459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620572, -0.261776, -0.739164,
		0.200044, -0.858592, 0.472019,
		-0.758204, -0.440787, -0.480451,
		35.826244, 33.748096, 26.917322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589733, 33.443771, 27.106676>,  <36.356987, 34.056648, 27.253639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589733, 33.443771, 27.106676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291203, 33.465389, 26.841322>,  <36.112083, 33.478359, 26.682110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291203, 33.465389, 26.841322>,  <36.589733, 33.443771, 27.106676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291203, 33.465389, 26.841322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599767, -0.377540, -0.705509,
		-0.288580, -0.924415, 0.249356,
		-0.746325, 0.054040, -0.663384,
		36.067307, 33.481602, 26.642307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511593, 32.724716, 26.731499>,  <36.589733, 33.443771, 27.106676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511593, 32.724716, 26.731499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323273, 32.990700, 26.499575>,  <36.210281, 33.150291, 26.360420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323273, 32.990700, 26.499575>,  <36.511593, 32.724716, 26.731499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323273, 32.990700, 26.499575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497248, -0.342870, -0.796985,
		-0.728763, -0.663525, -0.169229,
		-0.470796, 0.664962, -0.579808,
		36.182034, 33.190189, 26.325632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434456, 32.378460, 26.164028>,  <36.511593, 32.724716, 26.731499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434456, 32.378460, 26.164028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395748, 32.762810, 26.060215>,  <36.372524, 32.993420, 25.997927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395748, 32.762810, 26.060215>,  <36.434456, 32.378460, 26.164028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395748, 32.762810, 26.060215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481462, -0.183031, -0.857143,
		-0.871109, -0.207897, -0.444913,
		-0.096765, 0.960874, -0.259535,
		36.366718, 33.051071, 25.982355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304050, 32.428097, 25.338734>,  <36.434456, 32.378460, 26.164028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304050, 32.428097, 25.338734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489662, 32.753700, 25.478489>,  <36.601028, 32.949062, 25.562342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489662, 32.753700, 25.478489>,  <36.304050, 32.428097, 25.338734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489662, 32.753700, 25.478489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564811, 0.031960, -0.824601,
		-0.682397, 0.579975, -0.444930,
		0.464028, 0.814007, 0.349386,
		36.628872, 32.997902, 25.583305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317165, 32.898651, 24.719847>,  <36.304050, 32.428097, 25.338734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317165, 32.898651, 24.719847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.571312, 33.081982, 24.968441>,  <36.723801, 33.191982, 25.117598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.571312, 33.081982, 24.968441>,  <36.317165, 32.898651, 24.719847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571312, 33.081982, 24.968441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544193, 0.305243, -0.781460,
		-0.547871, 0.834721, -0.055479,
		0.635367, 0.458331, 0.621484,
		36.761921, 33.219482, 25.154886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404755, 33.586212, 24.511614>,  <36.317165, 32.898651, 24.719847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404755, 33.586212, 24.511614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.721420, 33.533772, 24.750301>,  <36.911419, 33.502308, 24.893515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.721420, 33.533772, 24.750301>,  <36.404755, 33.586212, 24.511614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721420, 33.533772, 24.750301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603625, 0.318639, -0.730825,
		-0.094329, 0.938767, 0.331390,
		0.791668, -0.131097, 0.596720,
		36.958920, 33.494442, 24.929317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797737, 34.197048, 24.500587>,  <36.404755, 33.586212, 24.511614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797737, 34.197048, 24.500587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024773, 33.885338, 24.606846>,  <37.160995, 33.698311, 24.670601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024773, 33.885338, 24.606846>,  <36.797737, 34.197048, 24.500587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024773, 33.885338, 24.606846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616800, 0.188761, -0.764151,
		0.545341, 0.597576, 0.587797,
		0.567592, -0.779276, 0.265646,
		37.195049, 33.651554, 24.686539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473328, 34.525021, 24.477163>,  <36.797737, 34.197048, 24.500587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473328, 34.525021, 24.477163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521183, 34.130566, 24.431175>,  <37.549896, 33.893894, 24.403582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521183, 34.130566, 24.431175>,  <37.473328, 34.525021, 24.477163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521183, 34.130566, 24.431175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577424, 0.163312, -0.799944,
		0.807632, 0.029314, 0.588958,
		0.119634, -0.986139, -0.114970,
		37.557072, 33.834724, 24.396685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152905, 34.501915, 24.319954>,  <37.473328, 34.525021, 24.477163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152905, 34.501915, 24.319954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.019268, 34.145237, 24.197800>,  <37.939087, 33.931229, 24.124506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.019268, 34.145237, 24.197800>,  <38.152905, 34.501915, 24.319954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019268, 34.145237, 24.197800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479969, 0.117898, -0.869327,
		0.811181, -0.437009, 0.388598,
		-0.334089, -0.891697, -0.305387,
		37.919041, 33.877728, 24.106184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890614, 34.454655, 24.592819>,  <38.152905, 34.501915, 24.319954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890614, 34.454655, 24.592819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.158207, 34.749603, 24.630203>,  <39.318764, 34.926575, 24.652634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.158207, 34.749603, 24.630203>,  <38.890614, 34.454655, 24.592819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158207, 34.749603, 24.630203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366112, 0.217477, 0.904802,
		0.646853, -0.639517, 0.415451,
		0.668987, 0.737375, 0.093459,
		39.358902, 34.970814, 24.658241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388130, 34.345406, 25.178614>,  <38.890614, 34.454655, 24.592819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388130, 34.345406, 25.178614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.392750, 34.741318, 25.121759>,  <39.395523, 34.978867, 25.087646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.392750, 34.741318, 25.121759>,  <39.388130, 34.345406, 25.178614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392750, 34.741318, 25.121759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054529, 0.142555, 0.988284,
		0.998445, -0.003665, 0.055618,
		0.011551, 0.989780, -0.142134,
		39.396214, 35.038250, 25.079119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857552, 34.591053, 25.678234>,  <39.388130, 34.345406, 25.178614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857552, 34.591053, 25.678234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.610149, 34.888241, 25.575901>,  <39.461708, 35.066555, 25.514502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.610149, 34.888241, 25.575901>,  <39.857552, 34.591053, 25.678234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610149, 34.888241, 25.575901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103690, 0.245561, 0.963820,
		0.778912, 0.622651, -0.074841,
		-0.618501, 0.742971, -0.255833,
		39.424599, 35.111134, 25.499151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996876, 35.055519, 26.117363>,  <39.857552, 34.591053, 25.678234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996876, 35.055519, 26.117363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.640865, 35.164146, 25.970882>,  <39.427258, 35.229321, 25.882994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.640865, 35.164146, 25.970882>,  <39.996876, 35.055519, 26.117363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640865, 35.164146, 25.970882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261762, 0.353252, 0.898161,
		0.373269, 0.895246, -0.243319,
		-0.890028, 0.271565, -0.366200,
		39.373856, 35.245617, 25.861023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811897, 35.812111, 26.354239>,  <39.996876, 35.055519, 26.117363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811897, 35.812111, 26.354239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.457165, 35.665611, 26.241535>,  <39.244324, 35.577713, 26.173914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.457165, 35.665611, 26.241535>,  <39.811897, 35.812111, 26.354239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457165, 35.665611, 26.241535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421132, 0.389629, 0.819046,
		-0.190194, 0.845015, -0.499776,
		-0.886833, -0.366250, -0.281758,
		39.191116, 35.555737, 26.157007>
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
