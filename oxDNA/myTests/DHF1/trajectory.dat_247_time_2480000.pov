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
	<1.813725, 2.472049, 1.524810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.739681, 2.131226, 1.328960>,  <1.695255, 1.926732, 1.211451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.739681, 2.131226, 1.328960>,  <1.813725, 2.472049, 1.524810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.739681, 2.131226, 1.328960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810083, -0.414358, 0.414816,
		-0.556327, -0.319850, 0.766939,
		-0.185108, -0.852058, -0.489624,
		1.684149, 1.875608, 1.182073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.853677, 2.053596, 1.998842>,  <1.813725, 2.472049, 1.524810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.853677, 2.053596, 1.998842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.919815, 1.831474, 1.672825>,  <1.959498, 1.698201, 1.477214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.919815, 1.831474, 1.672825>,  <1.853677, 2.053596, 1.998842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.919815, 1.831474, 1.672825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684390, -0.530443, 0.500241,
		-0.710121, -0.640521, 0.292339,
		0.165346, -0.555305, -0.815044,
		1.969419, 1.664883, 1.428312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.758410, 1.388054, 2.148432>,  <1.853677, 2.053596, 1.998842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.758410, 1.388054, 2.148432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.019043, 1.411896, 1.845940>,  <2.175423, 1.426201, 1.664444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.019043, 1.411896, 1.845940>,  <1.758410, 1.388054, 2.148432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.019043, 1.411896, 1.845940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649145, -0.559618, 0.515207,
		-0.392492, -0.826605, -0.403330,
		0.651583, 0.059605, -0.756232,
		2.214518, 1.429777, 1.619070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.996617, 0.693843, 1.902271>,  <1.758410, 1.388054, 2.148432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.996617, 0.693843, 1.902271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.272728, 0.982162, 1.877071>,  <2.438394, 1.155154, 1.861952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.272728, 0.982162, 1.877071>,  <1.996617, 0.693843, 1.902271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.272728, 0.982162, 1.877071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667533, -0.600830, 0.439776,
		0.279138, -0.345621, -0.895895,
		0.690277, 0.720798, -0.062999,
		2.479811, 1.198402, 1.858172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.618775, 0.432450, 1.642932>,  <1.996617, 0.693843, 1.902271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.618775, 0.432450, 1.642932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.693745, 0.758362, 1.862389>,  <2.738726, 0.953909, 1.994062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.693745, 0.758362, 1.862389>,  <2.618775, 0.432450, 1.642932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.693745, 0.758362, 1.862389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780802, -0.462473, 0.420079,
		0.596004, 0.349647, -0.722860,
		0.187424, 0.814779, 0.548641,
		2.749972, 1.002796, 2.026981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.279045, 0.451501, 1.647205>,  <2.618775, 0.432450, 1.642932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.279045, 0.451501, 1.647205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.196148, 0.699936, 1.949543>,  <3.146410, 0.848997, 2.130946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.196148, 0.699936, 1.949543>,  <3.279045, 0.451501, 1.647205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.196148, 0.699936, 1.949543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795499, -0.342713, 0.499729,
		0.569413, 0.704839, -0.423049,
		-0.207243, 0.621088, 0.755844,
		3.133975, 0.886262, 2.176296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.855560, 0.978687, 1.854787>,  <3.279045, 0.451501, 1.647205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.855560, 0.978687, 1.854787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.631096, 0.921799, 2.180946>,  <3.496418, 0.887666, 2.376642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.631096, 0.921799, 2.180946>,  <3.855560, 0.978687, 1.854787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.631096, 0.921799, 2.180946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802783, -0.333447, 0.494319,
		0.201590, 0.931980, 0.301289,
		-0.561160, -0.142220, 0.815397,
		3.462748, 0.879133, 2.425565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.241643, 1.167673, 2.417098>,  <3.855560, 0.978687, 1.854787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.241643, 1.167673, 2.417098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.971767, 0.919449, 2.576946>,  <3.809842, 0.770514, 2.672855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.971767, 0.919449, 2.576946>,  <4.241643, 1.167673, 2.417098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.971767, 0.919449, 2.576946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732469, -0.496168, 0.466160,
		-0.091002, 0.607224, 0.789302,
		-0.674690, -0.620561, 0.399621,
		3.769360, 0.733280, 2.696832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.435847, -0.190147, 2.980486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.179438, -0.059891, 3.258492>,  <5.025592, 0.018263, 3.425295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.179438, -0.059891, 3.258492>,  <5.435847, -0.190147, 2.980486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.179438, -0.059891, 3.258492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628802, 0.296431, -0.718844,
		-0.440109, -0.897823, 0.014745,
		-0.641024, 0.325642, 0.695015,
		4.987130, 0.037802, 3.466996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.782876, -0.352318, 2.774315>,  <5.435847, -0.190147, 2.980486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.782876, -0.352318, 2.774315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.666996, -0.119186, 3.077995>,  <4.597468, 0.020692, 3.260203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.666996, -0.119186, 3.077995>,  <4.782876, -0.352318, 2.774315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.666996, -0.119186, 3.077995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788890, 0.303752, -0.534216,
		-0.541965, -0.753688, 0.371791,
		-0.289701, 0.582829, 0.759200,
		4.580086, 0.055662, 3.305755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.091623, -0.549195, 2.894688>,  <4.782876, -0.352318, 2.774315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.091623, -0.549195, 2.894688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.169590, -0.182587, 3.034401>,  <4.216370, 0.037378, 3.118229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.169590, -0.182587, 3.034401>,  <4.091623, -0.549195, 2.894688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.169590, -0.182587, 3.034401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886942, 0.316740, -0.336169,
		-0.418737, -0.244268, 0.874638,
		0.194917, 0.916520, 0.349283,
		4.228065, 0.092369, 3.139186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.428189, -0.360860, 3.113273>,  <4.091623, -0.549195, 2.894688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.428189, -0.360860, 3.113273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.607431, -0.003616, 3.129059>,  <3.714977, 0.210730, 3.138530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.607431, -0.003616, 3.129059>,  <3.428189, -0.360860, 3.113273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.607431, -0.003616, 3.129059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856383, 0.441510, -0.267726,
		-0.256532, 0.086172, 0.962687,
		0.448106, 0.893109, 0.039465,
		3.741863, 0.264316, 3.140898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.873695, 0.153354, 3.394401>,  <3.428189, -0.360860, 3.113273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.873695, 0.153354, 3.394401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.152733, 0.359085, 3.194870>,  <3.320156, 0.482524, 3.075151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.152733, 0.359085, 3.194870>,  <2.873695, 0.153354, 3.394401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.152733, 0.359085, 3.194870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716198, 0.520508, -0.464900,
		0.020533, 0.681571, 0.731464,
		0.697595, 0.514327, -0.498828,
		3.362011, 0.513383, 3.045222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.679315, 0.842570, 3.500805>,  <2.873695, 0.153354, 3.394401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.679315, 0.842570, 3.500805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.923071, 0.858078, 3.184036>,  <3.069324, 0.867383, 2.993975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.923071, 0.858078, 3.184036>,  <2.679315, 0.842570, 3.500805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.923071, 0.858078, 3.184036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622644, 0.641770, -0.447712,
		0.490874, 0.765917, 0.415228,
		0.609390, 0.038769, -0.791922,
		3.105888, 0.869709, 2.946460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.681110, 1.563398, 3.228816>,  <2.679315, 0.842570, 3.500805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.681110, 1.563398, 3.228816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.831951, 1.373535, 2.910698>,  <2.922456, 1.259617, 2.719827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.831951, 1.373535, 2.910698>,  <2.681110, 1.563398, 3.228816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.831951, 1.373535, 2.910698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598749, 0.530184, -0.600338,
		0.706607, 0.702571, -0.084267,
		0.377103, -0.474657, -0.795295,
		2.945082, 1.231138, 2.672109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.823261, 2.039137, 2.741606>,  <2.681110, 1.563398, 3.228816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.823261, 2.039137, 2.741606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.770905, 1.693314, 2.547531>,  <2.739491, 1.485820, 2.431086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.770905, 1.693314, 2.547531>,  <2.823261, 2.039137, 2.741606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.770905, 1.693314, 2.547531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665229, 0.439458, -0.603611,
		0.735077, 0.243755, -0.632650,
		-0.130890, -0.864558, -0.485188,
		2.731637, 1.433946, 2.401975>
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
