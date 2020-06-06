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
	<24.296417, 34.534294, 35.286392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265963, 34.869701, 35.070580>,  <24.247690, 35.070946, 34.941093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265963, 34.869701, 35.070580>,  <24.296417, 34.534294, 35.286392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.265963, 34.869701, 35.070580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642975, 0.454858, 0.616188,
		0.762093, -0.299991, -0.573776,
		-0.076136, 0.838516, -0.539531,
		24.243122, 35.121258, 34.908722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020199, 34.683617, 35.043926>,  <24.296417, 34.534294, 35.286392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020199, 34.683617, 35.043926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.787064, 34.995037, 35.137012>,  <24.647182, 35.181889, 35.192863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.787064, 34.995037, 35.137012>,  <25.020199, 34.683617, 35.043926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.787064, 34.995037, 35.137012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782862, 0.461247, 0.417586,
		0.217775, 0.425566, -0.878332,
		-0.582839, 0.778553, 0.232712,
		24.612211, 35.228603, 35.206825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445267, 35.122265, 34.760632>,  <25.020199, 34.683617, 35.043926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445267, 35.122265, 34.760632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217415, 35.298458, 35.038193>,  <25.080704, 35.404175, 35.204727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217415, 35.298458, 35.038193>,  <25.445267, 35.122265, 34.760632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217415, 35.298458, 35.038193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815270, 0.409858, 0.409086,
		-0.104203, 0.798742, -0.592582,
		-0.569628, 0.440487, 0.693899,
		25.046526, 35.430603, 35.246361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012905, 35.092533, 35.375740>,  <25.445267, 35.122265, 34.760632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012905, 35.092533, 35.375740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411366, 35.062122, 35.393188>,  <26.650442, 35.043877, 35.403656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411366, 35.062122, 35.393188>,  <26.012905, 35.092533, 35.375740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411366, 35.062122, 35.393188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087450, -0.828427, 0.553227,
		-0.005925, -0.554913, -0.831887,
		0.996151, -0.076026, 0.043619,
		26.710211, 35.039314, 35.406273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203861, 34.449265, 35.151203>,  <26.012905, 35.092533, 35.375740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203861, 34.449265, 35.151203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490679, 34.572922, 35.401093>,  <26.662769, 34.647114, 35.551025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490679, 34.572922, 35.401093>,  <26.203861, 34.449265, 35.151203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490679, 34.572922, 35.401093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045873, -0.873397, 0.484844,
		0.695519, -0.376311, -0.612081,
		0.717042, 0.309140, 0.624727,
		26.705791, 34.665665, 35.588509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668161, 33.895695, 35.210537>,  <26.203861, 34.449265, 35.151203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668161, 33.895695, 35.210537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718718, 34.114590, 35.541489>,  <26.749052, 34.245926, 35.740059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718718, 34.114590, 35.541489>,  <26.668161, 33.895695, 35.210537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718718, 34.114590, 35.541489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101853, -0.822504, 0.559566,
		0.986738, -0.154995, -0.048219,
		0.126390, 0.547234, 0.827382,
		26.756634, 34.278759, 35.789703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226061, 33.633324, 35.604458>,  <26.668161, 33.895695, 35.210537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226061, 33.633324, 35.604458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002073, 33.833561, 35.868530>,  <26.867680, 33.953701, 36.026974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002073, 33.833561, 35.868530>,  <27.226061, 33.633324, 35.604458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002073, 33.833561, 35.868530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009046, -0.800477, 0.599295,
		0.828463, 0.329615, 0.452772,
		-0.559970, 0.500590, 0.660184,
		26.834082, 33.983738, 36.066586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495493, 33.408089, 36.251694>,  <27.226061, 33.633324, 35.604458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495493, 33.408089, 36.251694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143167, 33.568756, 36.351959>,  <26.931772, 33.665157, 36.412117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143167, 33.568756, 36.351959>,  <27.495493, 33.408089, 36.251694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143167, 33.568756, 36.351959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242324, -0.837270, 0.490162,
		0.406752, 0.371000, 0.834812,
		-0.880813, 0.401669, 0.250659,
		26.878923, 33.689259, 36.427158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462606, 33.381302, 36.976467>,  <27.495493, 33.408089, 36.251694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462606, 33.381302, 36.976467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082518, 33.428028, 36.860931>,  <26.854464, 33.456062, 36.791611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082518, 33.428028, 36.860931>,  <27.462606, 33.381302, 36.976467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082518, 33.428028, 36.860931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265695, -0.788007, 0.555384,
		-0.162731, 0.604483, 0.779820,
		-0.950224, 0.116816, -0.288841,
		26.797451, 33.463074, 36.774281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097601, 33.338509, 37.606441>,  <27.462606, 33.381302, 36.976467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097601, 33.338509, 37.606441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823650, 33.236412, 37.333447>,  <26.659279, 33.175152, 37.169647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823650, 33.236412, 37.333447>,  <27.097601, 33.338509, 37.606441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823650, 33.236412, 37.333447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209166, -0.828353, 0.519693,
		-0.697991, 0.498680, 0.513933,
		-0.684878, -0.255244, -0.682490,
		26.618187, 33.159840, 37.128700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574928, 33.067944, 38.031326>,  <27.097601, 33.338509, 37.606441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574928, 33.067944, 38.031326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495911, 32.948021, 37.657997>,  <26.448500, 32.876068, 37.433998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495911, 32.948021, 37.657997>,  <26.574928, 33.067944, 38.031326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495911, 32.948021, 37.657997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489344, -0.794822, 0.358887,
		-0.849422, 0.527613, 0.010308,
		-0.197546, -0.299802, -0.933324,
		26.436647, 32.858082, 37.377998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859110, 32.760227, 38.094437>,  <26.574928, 33.067944, 38.031326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859110, 32.760227, 38.094437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019976, 32.607441, 37.761604>,  <26.116495, 32.515770, 37.561905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019976, 32.607441, 37.761604>,  <25.859110, 32.760227, 38.094437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019976, 32.607441, 37.761604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263424, -0.918662, 0.294394,
		-0.876853, 0.100796, -0.470073,
		0.402165, -0.381969, -0.832083,
		26.140625, 32.492851, 37.511978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457104, 32.193268, 38.051121>,  <25.859110, 32.760227, 38.094437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457104, 32.193268, 38.051121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764246, 32.126411, 37.803749>,  <25.948532, 32.086296, 37.655327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764246, 32.126411, 37.803749>,  <25.457104, 32.193268, 38.051121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764246, 32.126411, 37.803749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019697, -0.971067, 0.237992,
		-0.640317, -0.170563, -0.748934,
		0.767858, -0.167142, -0.618432,
		25.994604, 32.076267, 37.618221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219326, 31.734632, 37.439945>,  <25.457104, 32.193268, 38.051121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219326, 31.734632, 37.439945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614042, 31.714706, 37.501610>,  <25.850872, 31.702751, 37.538609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614042, 31.714706, 37.501610>,  <25.219326, 31.734632, 37.439945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614042, 31.714706, 37.501610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071248, -0.988034, 0.136792,
		0.145504, -0.145969, -0.978530,
		0.986789, -0.049815, 0.154163,
		25.910078, 31.699762, 37.547859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478043, 31.199371, 37.063675>,  <25.219326, 31.734632, 37.439945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478043, 31.199371, 37.063675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766672, 31.246309, 37.336605>,  <25.939850, 31.274473, 37.500362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766672, 31.246309, 37.336605>,  <25.478043, 31.199371, 37.063675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766672, 31.246309, 37.336605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068927, -0.992811, 0.097853,
		0.688899, -0.023577, -0.724474,
		0.721573, 0.117347, 0.682321,
		25.983145, 31.281513, 37.541302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906431, 30.578180, 37.142742>,  <25.478043, 31.199371, 37.063675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906431, 30.578180, 37.142742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003050, 30.747824, 37.491863>,  <26.061020, 30.849609, 37.701336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003050, 30.747824, 37.491863>,  <25.906431, 30.578180, 37.142742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003050, 30.747824, 37.491863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164754, -0.904302, 0.393820,
		0.956301, 0.048672, -0.288304,
		0.241545, 0.424110, 0.872804,
		26.075514, 30.875057, 37.753704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524300, 30.237623, 37.357380>,  <25.906431, 30.578180, 37.142742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524300, 30.237623, 37.357380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411123, 30.431463, 37.688465>,  <26.343218, 30.547768, 37.887115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411123, 30.431463, 37.688465>,  <26.524300, 30.237623, 37.357380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411123, 30.431463, 37.688465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311927, -0.769572, 0.557190,
		0.906998, 0.415838, 0.066583,
		-0.282941, 0.484601, 0.827711,
		26.326241, 30.576843, 37.936779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023146, 30.174871, 37.949696>,  <26.524300, 30.237623, 37.357380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023146, 30.174871, 37.949696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684149, 30.270769, 38.139130>,  <26.480751, 30.328308, 38.252789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684149, 30.270769, 38.139130>,  <27.023146, 30.174871, 37.949696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684149, 30.270769, 38.139130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126662, -0.775079, 0.619040,
		0.515477, 0.584615, 0.626505,
		-0.847491, 0.239746, 0.473583,
		26.429901, 30.342693, 38.281204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218840, 30.102827, 38.587791>,  <27.023146, 30.174871, 37.949696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218840, 30.102827, 38.587791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819231, 30.085852, 38.582851>,  <26.579466, 30.075666, 38.579887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819231, 30.085852, 38.582851>,  <27.218840, 30.102827, 38.587791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819231, 30.085852, 38.582851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029209, -0.843592, 0.536190,
		-0.033169, 0.535305, 0.844007,
		-0.999023, -0.042437, -0.012346,
		26.519524, 30.073120, 38.579147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247477, 29.925142, 39.196880>,  <27.218840, 30.102827, 38.587791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247477, 29.925142, 39.196880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874552, 29.840666, 39.079445>,  <26.650797, 29.789980, 39.008984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874552, 29.840666, 39.079445>,  <27.247477, 29.925142, 39.196880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874552, 29.840666, 39.079445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020207, -0.840937, 0.540756,
		-0.361089, 0.498221, 0.788284,
		-0.932312, -0.211189, -0.293586,
		26.594858, 29.777309, 38.991367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765938, 29.769575, 39.866116>,  <27.247477, 29.925142, 39.196880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765938, 29.769575, 39.866116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594280, 29.615376, 39.539379>,  <26.491285, 29.522856, 39.343338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594280, 29.615376, 39.539379>,  <26.765938, 29.769575, 39.866116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594280, 29.615376, 39.539379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071825, -0.886920, 0.456305,
		-0.900376, 0.254490, 0.352928,
		-0.429144, -0.385497, -0.816840,
		26.465538, 29.499727, 39.294327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219213, 29.360632, 40.072239>,  <26.765938, 29.769575, 39.866116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219213, 29.360632, 40.072239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340389, 29.208948, 39.722511>,  <26.413095, 29.117939, 39.512676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340389, 29.208948, 39.722511>,  <26.219213, 29.360632, 40.072239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340389, 29.208948, 39.722511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173599, -0.924035, 0.340622,
		-0.937066, 0.048594, -0.345755,
		0.302938, -0.379208, -0.874317,
		26.431273, 29.095186, 39.460217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696426, 28.909737, 39.917454>,  <26.219213, 29.360632, 40.072239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696426, 28.909737, 39.917454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009125, 28.802465, 39.692261>,  <26.196745, 28.738104, 39.557144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009125, 28.802465, 39.692261>,  <25.696426, 28.909737, 39.917454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009125, 28.802465, 39.692261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248998, -0.961951, 0.112470,
		-0.571725, 0.052258, -0.818779,
		0.781748, -0.268176, -0.562984,
		26.243649, 28.722012, 39.523365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509956, 28.297918, 39.540909>,  <25.696426, 28.909737, 39.917454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509956, 28.297918, 39.540909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907787, 28.283518, 39.501884>,  <26.146486, 28.274878, 39.478470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907787, 28.283518, 39.501884>,  <25.509956, 28.297918, 39.540909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907787, 28.283518, 39.501884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029985, -0.997597, 0.062462,
		-0.099575, -0.059198, -0.993268,
		0.994578, -0.036002, -0.097560,
		26.206161, 28.272717, 39.472618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662519, 27.753965, 39.041050>,  <25.509956, 28.297918, 39.540909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662519, 27.753965, 39.041050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025135, 27.797611, 39.204159>,  <26.242704, 27.823799, 39.302025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025135, 27.797611, 39.204159>,  <25.662519, 27.753965, 39.041050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025135, 27.797611, 39.204159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120616, -0.992696, -0.002519,
		0.404522, 0.051468, -0.913079,
		0.906540, 0.109113, 0.407775,
		26.297096, 27.830345, 39.326492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213306, 27.293869, 38.682644>,  <25.662519, 27.753965, 39.041050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213306, 27.293869, 38.682644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246706, 27.315004, 39.080685>,  <26.266745, 27.327686, 39.319511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246706, 27.315004, 39.080685>,  <26.213306, 27.293869, 38.682644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246706, 27.315004, 39.080685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196219, -0.979915, 0.035569,
		0.976999, 0.192289, -0.092188,
		0.083497, 0.052840, 0.995106,
		26.271755, 27.330856, 39.379215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624538, 26.792349, 38.854420>,  <26.213306, 27.293869, 38.682644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624538, 26.792349, 38.854420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433977, 26.876945, 39.195786>,  <26.319641, 26.927704, 39.400604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433977, 26.876945, 39.195786>,  <26.624538, 26.792349, 38.854420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433977, 26.876945, 39.195786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092880, -0.953102, 0.288046,
		0.874307, 0.216491, 0.434418,
		-0.476404, 0.211492, 0.853411,
		26.291056, 26.940393, 39.451809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950949, 26.563560, 39.562809>,  <26.624538, 26.792349, 38.854420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950949, 26.563560, 39.562809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553036, 26.549538, 39.601128>,  <26.314287, 26.541124, 39.624119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553036, 26.549538, 39.601128>,  <26.950949, 26.563560, 39.562809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553036, 26.549538, 39.601128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053631, -0.978567, 0.198822,
		0.086775, 0.202922, 0.975342,
		-0.994783, -0.035055, 0.095798,
		26.254601, 26.539021, 39.629868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418692, 27.081856, 39.237633>,  <26.950949, 26.563560, 39.562809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418692, 27.081856, 39.237633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547138, 26.709455, 39.168213>,  <27.624207, 26.486015, 39.126560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547138, 26.709455, 39.168213>,  <27.418692, 27.081856, 39.237633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547138, 26.709455, 39.168213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152834, 0.231793, -0.960684,
		0.934626, 0.281969, 0.216722,
		0.321117, -0.931002, -0.173545,
		27.643473, 26.430155, 39.116150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093481, 27.176249, 38.883152>,  <27.418692, 27.081856, 39.237633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093481, 27.176249, 38.883152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905743, 26.836109, 38.787971>,  <27.793098, 26.632025, 38.730865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905743, 26.836109, 38.787971>,  <28.093481, 27.176249, 38.883152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905743, 26.836109, 38.787971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327488, 0.082626, -0.941236,
		0.820040, -0.519692, 0.239699,
		-0.469347, -0.850349, -0.237949,
		27.764938, 26.581005, 38.716587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532560, 26.716473, 38.380360>,  <28.093481, 27.176249, 38.883152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532560, 26.716473, 38.380360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141859, 26.641005, 38.339653>,  <27.907438, 26.595724, 38.315228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141859, 26.641005, 38.339653>,  <28.532560, 26.716473, 38.380360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141859, 26.641005, 38.339653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099290, 0.022557, -0.994803,
		0.189989, -0.981781, -0.003300,
		-0.976753, -0.188674, -0.101766,
		27.848833, 26.584402, 38.309124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377199, 26.166546, 37.932198>,  <28.532560, 26.716473, 38.380360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377199, 26.166546, 37.932198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058716, 26.407820, 37.913368>,  <27.867626, 26.552584, 37.902073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058716, 26.407820, 37.913368>,  <28.377199, 26.166546, 37.932198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058716, 26.407820, 37.913368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019755, -0.051840, -0.998460,
		-0.604697, -0.795914, 0.029359,
		-0.796210, 0.603186, -0.047071,
		27.819853, 26.588776, 37.899246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896639, 25.797489, 37.480549>,  <28.377199, 26.166546, 37.932198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896639, 25.797489, 37.480549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902714, 26.197060, 37.463062>,  <27.906359, 26.436802, 37.452568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902714, 26.197060, 37.463062>,  <27.896639, 25.797489, 37.480549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902714, 26.197060, 37.463062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018230, -0.043439, -0.998890,
		-0.999719, 0.015968, 0.017551,
		0.015187, 0.998928, -0.043718,
		27.907270, 26.496738, 37.449947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251066, 26.057486, 36.977280>,  <27.896639, 25.797489, 37.480549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251066, 26.057486, 36.977280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559406, 26.310158, 37.010197>,  <27.744410, 26.461761, 37.029949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559406, 26.310158, 37.010197>,  <27.251066, 26.057486, 36.977280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559406, 26.310158, 37.010197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065388, 0.050046, -0.996604,
		-0.633653, 0.773613, -0.002726,
		0.770849, 0.631679, 0.082297,
		27.790661, 26.499662, 37.034885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320904, 26.525074, 36.519814>,  <27.251066, 26.057486, 36.977280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320904, 26.525074, 36.519814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566484, 26.784073, 36.700394>,  <27.713833, 26.939472, 36.808743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566484, 26.784073, 36.700394>,  <27.320904, 26.525074, 36.519814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566484, 26.784073, 36.700394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703822, 0.707983, -0.058267,
		-0.357348, -0.281968, 0.890391,
		0.613952, 0.647498, 0.451452,
		27.750669, 26.978323, 36.835831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396715, 26.650438, 35.713631>,  <27.320904, 26.525074, 36.519814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396715, 26.650438, 35.713631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143723, 26.840422, 35.958378>,  <26.991928, 26.954412, 36.105225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143723, 26.840422, 35.958378>,  <27.396715, 26.650438, 35.713631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143723, 26.840422, 35.958378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372133, 0.879126, -0.297748,
		-0.679328, 0.039376, -0.732778,
		-0.632480, 0.474959, 0.611868,
		26.953978, 26.982910, 36.141937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910952, 27.135546, 35.287468>,  <27.396715, 26.650438, 35.713631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910952, 27.135546, 35.287468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993019, 27.245716, 35.663136>,  <27.042259, 27.311819, 35.888538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993019, 27.245716, 35.663136>,  <26.910952, 27.135546, 35.287468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993019, 27.245716, 35.663136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203159, 0.926701, -0.316152,
		-0.957409, 0.255666, 0.134177,
		0.205171, 0.275427, 0.939172,
		27.054571, 27.328344, 35.944889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730913, 27.827765, 35.305401>,  <26.910952, 27.135546, 35.287468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730913, 27.827765, 35.305401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952402, 27.791145, 35.636463>,  <27.085297, 27.769175, 35.835098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952402, 27.791145, 35.636463>,  <26.730913, 27.827765, 35.305401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952402, 27.791145, 35.636463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374184, 0.915290, -0.149100,
		-0.743892, 0.392255, 0.541073,
		0.553724, -0.091547, 0.827652,
		27.118519, 27.763681, 35.884758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576275, 28.351341, 35.667393>,  <26.730913, 27.827765, 35.305401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576275, 28.351341, 35.667393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940714, 28.247145, 35.795174>,  <27.159376, 28.184628, 35.871841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940714, 28.247145, 35.795174>,  <26.576275, 28.351341, 35.667393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940714, 28.247145, 35.795174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307571, 0.945586, -0.106149,
		-0.274417, 0.194965, 0.941639,
		0.911096, -0.260492, 0.319450,
		27.214043, 28.168997, 35.891010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751604, 28.941431, 36.099728>,  <26.576275, 28.351341, 35.667393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751604, 28.941431, 36.099728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102097, 28.764896, 36.022327>,  <27.312391, 28.658976, 35.975887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102097, 28.764896, 36.022327>,  <26.751604, 28.941431, 36.099728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102097, 28.764896, 36.022327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411219, 0.894140, -0.177235,
		0.251235, 0.075729, 0.964959,
		0.876231, -0.441337, -0.193498,
		27.364965, 28.632496, 35.964279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240265, 29.197861, 36.583996>,  <26.751604, 28.941431, 36.099728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240265, 29.197861, 36.583996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471855, 29.062408, 36.287315>,  <27.610809, 28.981138, 36.109306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471855, 29.062408, 36.287315>,  <27.240265, 29.197861, 36.583996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471855, 29.062408, 36.287315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438644, 0.896179, -0.066750,
		0.687300, -0.286696, 0.667401,
		0.578974, -0.338629, -0.741701,
		27.645548, 28.960819, 36.064804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933823, 29.405096, 36.770428>,  <27.240265, 29.197861, 36.583996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933823, 29.405096, 36.770428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943977, 29.330580, 36.377560>,  <27.950069, 29.285870, 36.141838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943977, 29.330580, 36.377560>,  <27.933823, 29.405096, 36.770428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943977, 29.330580, 36.377560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439543, 0.884500, -0.156403,
		0.897863, -0.427734, 0.104335,
		0.025385, -0.186288, -0.982167,
		27.951593, 29.274693, 36.082909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675125, 29.492384, 36.602325>,  <27.933823, 29.405096, 36.770428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675125, 29.492384, 36.602325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429277, 29.549269, 36.291965>,  <28.281769, 29.583399, 36.105751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429277, 29.549269, 36.291965>,  <28.675125, 29.492384, 36.602325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429277, 29.549269, 36.291965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469151, 0.856641, -0.214623,
		0.634144, -0.495925, -0.593228,
		-0.614621, 0.142211, -0.775898,
		28.244892, 29.591932, 36.059196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095764, 29.793043, 36.096756>,  <28.675125, 29.492384, 36.602325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095764, 29.793043, 36.096756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722881, 29.871639, 35.975178>,  <28.499151, 29.918797, 35.902229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722881, 29.871639, 35.975178>,  <29.095764, 29.793043, 36.096756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722881, 29.871639, 35.975178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258307, 0.949436, -0.178460,
		0.253513, -0.244873, -0.935825,
		-0.932206, 0.196489, -0.303947,
		28.443220, 29.930586, 35.883995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239782, 30.181770, 35.514507>,  <29.095764, 29.793043, 36.096756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239782, 30.181770, 35.514507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854332, 30.265068, 35.581509>,  <28.623062, 30.315046, 35.621708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854332, 30.265068, 35.581509>,  <29.239782, 30.181770, 35.514507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854332, 30.265068, 35.581509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183561, 0.971266, -0.151485,
		-0.194237, -0.115228, -0.974163,
		-0.963627, 0.208243, 0.167504,
		28.565245, 30.327541, 35.631760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979992, 30.576992, 34.942310>,  <29.239782, 30.181770, 35.514507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979992, 30.576992, 34.942310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728994, 30.676825, 35.237324>,  <28.578396, 30.736725, 35.414333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728994, 30.676825, 35.237324>,  <28.979992, 30.576992, 34.942310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728994, 30.676825, 35.237324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122859, 0.967106, -0.222739,
		-0.768868, -0.049154, -0.637515,
		-0.627493, 0.249581, 0.737538,
		28.540747, 30.751699, 35.458584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377134, 31.092663, 34.680241>,  <28.979992, 30.576992, 34.942310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377134, 31.092663, 34.680241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411484, 31.139454, 35.076008>,  <28.432095, 31.167528, 35.313469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411484, 31.139454, 35.076008>,  <28.377134, 31.092663, 34.680241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411484, 31.139454, 35.076008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023517, 0.993045, -0.115366,
		-0.996028, -0.013361, 0.088028,
		0.085875, 0.116978, 0.989415,
		28.437246, 31.174547, 35.372833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101736, 31.649523, 34.783131>,  <28.377134, 31.092663, 34.680241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101736, 31.649523, 34.783131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290579, 31.629377, 35.135170>,  <28.403885, 31.617290, 35.346394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290579, 31.629377, 35.135170>,  <28.101736, 31.649523, 34.783131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290579, 31.629377, 35.135170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062531, 0.993938, 0.090423,
		-0.879320, -0.097723, 0.466097,
		0.472108, -0.050365, 0.880101,
		28.432211, 31.614267, 35.399200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724785, 32.050961, 35.262325>,  <28.101736, 31.649523, 34.783131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724785, 32.050961, 35.262325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089849, 32.026100, 35.423912>,  <28.308887, 32.011185, 35.520863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089849, 32.026100, 35.423912>,  <27.724785, 32.050961, 35.262325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089849, 32.026100, 35.423912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031245, 0.996087, 0.082667,
		-0.407521, -0.062825, 0.911032,
		0.912661, -0.062154, 0.403963,
		28.363647, 32.007454, 35.545101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677464, 32.430439, 35.849789>,  <27.724785, 32.050961, 35.262325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677464, 32.430439, 35.849789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073509, 32.406010, 35.799286>,  <28.311136, 32.391354, 35.768986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073509, 32.406010, 35.799286>,  <27.677464, 32.430439, 35.849789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073509, 32.406010, 35.799286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107006, 0.910893, 0.398527,
		0.090667, -0.408098, 0.908425,
		0.990116, -0.061074, -0.126257,
		28.370544, 32.387688, 35.761410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031454, 32.669594, 36.413818>,  <27.677464, 32.430439, 35.849789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031454, 32.669594, 36.413818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309490, 32.717197, 36.130219>,  <28.476313, 32.745758, 35.960056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309490, 32.717197, 36.130219>,  <28.031454, 32.669594, 36.413818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309490, 32.717197, 36.130219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143148, 0.943546, 0.298714,
		0.704525, -0.309126, 0.638816,
		0.695093, 0.119006, -0.709002,
		28.518019, 32.752899, 35.917519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565722, 32.968437, 36.765137>,  <28.031454, 32.669594, 36.413818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565722, 32.968437, 36.765137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629423, 33.050652, 36.378895>,  <28.667645, 33.099979, 36.147148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629423, 33.050652, 36.378895>,  <28.565722, 32.968437, 36.765137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629423, 33.050652, 36.378895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155622, 0.960633, 0.230144,
		0.974895, -0.186920, 0.120996,
		0.159251, 0.205536, -0.965605,
		28.677198, 33.112312, 36.089214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090912, 33.374519, 36.884438>,  <28.565722, 32.968437, 36.765137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090912, 33.374519, 36.884438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964794, 33.450809, 36.512585>,  <28.889124, 33.496582, 36.289474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964794, 33.450809, 36.512585>,  <29.090912, 33.374519, 36.884438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964794, 33.450809, 36.512585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171170, 0.974959, 0.141968,
		0.933430, -0.114363, -0.340044,
		-0.315293, 0.190722, -0.929632,
		28.870207, 33.508026, 36.233696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587084, 33.865932, 36.585129>,  <29.090912, 33.374519, 36.884438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587084, 33.865932, 36.585129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242691, 33.899681, 36.384491>,  <29.036055, 33.919930, 36.264111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242691, 33.899681, 36.384491>,  <29.587084, 33.865932, 36.585129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242691, 33.899681, 36.384491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001136, 0.985826, 0.167769,
		0.508635, 0.145016, -0.848682,
		-0.860982, 0.084369, -0.501590,
		28.984396, 33.924992, 36.234013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665466, 34.490517, 36.271206>,  <29.587084, 33.865932, 36.585129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665466, 34.490517, 36.271206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277456, 34.414978, 36.210037>,  <29.044649, 34.369656, 36.173336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277456, 34.414978, 36.210037>,  <29.665466, 34.490517, 36.271206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277456, 34.414978, 36.210037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210836, 0.966966, 0.143263,
		0.120816, 0.171210, -0.977799,
		-0.970026, -0.188847, -0.152922,
		28.986448, 34.358322, 36.164162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483896, 34.938316, 35.711147>,  <29.665466, 34.490517, 36.271206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483896, 34.938316, 35.711147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169758, 34.849560, 35.942318>,  <28.981276, 34.796307, 36.081020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169758, 34.849560, 35.942318>,  <29.483896, 34.938316, 35.711147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169758, 34.849560, 35.942318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226422, 0.971828, 0.065447,
		-0.576165, -0.079456, -0.813463,
		-0.785346, -0.221894, 0.577923,
		28.934155, 34.782993, 36.115696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011606, 35.466446, 35.572994>,  <29.483896, 34.938316, 35.711147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011606, 35.466446, 35.572994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915335, 35.313820, 35.929977>,  <28.857573, 35.222244, 36.144169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915335, 35.313820, 35.929977>,  <29.011606, 35.466446, 35.572994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915335, 35.313820, 35.929977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189049, 0.920304, 0.342491,
		-0.952016, -0.086288, -0.293633,
		-0.240678, -0.381568, 0.892457,
		28.843132, 35.199348, 36.197716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532282, 35.640991, 34.937267>,  <29.011606, 35.466446, 35.572994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532282, 35.640991, 34.937267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699724, 35.923428, 35.165722>,  <29.800190, 36.092892, 35.302795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699724, 35.923428, 35.165722>,  <29.532282, 35.640991, 34.937267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699724, 35.923428, 35.165722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447652, 0.386754, -0.806244,
		-0.790174, 0.593171, -0.154186,
		0.418608, 0.706095, 0.571137,
		29.825306, 36.135258, 35.337063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449072, 36.275455, 34.649273>,  <29.532282, 35.640991, 34.937267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449072, 36.275455, 34.649273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778759, 36.225159, 34.870129>,  <29.976572, 36.194981, 35.002640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778759, 36.225159, 34.870129>,  <29.449072, 36.275455, 34.649273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778759, 36.225159, 34.870129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539321, 0.471528, -0.697707,
		-0.172620, 0.872841, 0.456454,
		0.824218, -0.125737, 0.552137,
		30.026024, 36.187439, 35.035770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839764, 36.914116, 34.574680>,  <29.449072, 36.275455, 34.649273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839764, 36.914116, 34.574680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089594, 36.618252, 34.674927>,  <30.239492, 36.440735, 34.735073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089594, 36.618252, 34.674927>,  <29.839764, 36.914116, 34.574680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089594, 36.618252, 34.674927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645202, 0.307901, -0.699222,
		0.440021, 0.598416, 0.669537,
		0.624577, -0.739659, 0.250616,
		30.276966, 36.396355, 34.750111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649603, 37.113762, 34.753391>,  <29.839764, 36.914116, 34.574680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649603, 37.113762, 34.753391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551479, 36.760239, 34.594036>,  <30.492605, 36.548126, 34.498425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551479, 36.760239, 34.594036>,  <30.649603, 37.113762, 34.753391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551479, 36.760239, 34.594036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539714, 0.216866, -0.813436,
		0.805316, -0.414559, 0.423802,
		-0.245308, -0.883804, -0.398389,
		30.477886, 36.495098, 34.474518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240023, 36.687107, 34.585907>,  <30.649603, 37.113762, 34.753391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240023, 36.687107, 34.585907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936754, 36.579353, 34.348381>,  <30.754793, 36.514702, 34.205868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936754, 36.579353, 34.348381>,  <31.240023, 36.687107, 34.585907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936754, 36.579353, 34.348381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595509, 0.084892, -0.798851,
		0.265609, -0.959284, 0.096059,
		-0.758169, -0.269385, -0.593810,
		30.709303, 36.498539, 34.170238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204370, 36.682819, 35.309395>,  <31.240023, 36.687107, 34.585907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204370, 36.682819, 35.309395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901588, 36.437260, 35.398972>,  <30.719919, 36.289925, 35.452717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901588, 36.437260, 35.398972>,  <31.204370, 36.682819, 35.309395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901588, 36.437260, 35.398972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164829, 0.152243, 0.974502,
		-0.632339, 0.774564, -0.014053,
		-0.756954, -0.613899, 0.223940,
		30.674503, 36.253090, 35.466152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876253, 37.034595, 35.795979>,  <31.204370, 36.682819, 35.309395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876253, 37.034595, 35.795979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845053, 36.637894, 35.836670>,  <30.826332, 36.399872, 35.861084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845053, 36.637894, 35.836670>,  <30.876253, 37.034595, 35.795979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845053, 36.637894, 35.836670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296280, 0.074368, 0.952201,
		-0.951911, 0.104411, 0.288035,
		-0.078000, -0.991750, 0.101726,
		30.821653, 36.340370, 35.867188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538002, 36.902611, 36.397446>,  <30.876253, 37.034595, 35.795979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538002, 36.902611, 36.397446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773588, 36.591827, 36.308495>,  <30.914940, 36.405357, 36.255123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773588, 36.591827, 36.308495>,  <30.538002, 36.902611, 36.397446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773588, 36.591827, 36.308495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317289, -0.030764, 0.947830,
		-0.743269, -0.628796, 0.228403,
		0.588965, -0.776962, -0.222375,
		30.950277, 36.358738, 36.241783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380976, 36.351284, 36.883240>,  <30.538002, 36.902611, 36.397446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380976, 36.351284, 36.883240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755121, 36.321510, 36.744930>,  <30.979609, 36.303646, 36.661945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755121, 36.321510, 36.744930>,  <30.380976, 36.351284, 36.883240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755121, 36.321510, 36.744930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327962, -0.183506, 0.926697,
		-0.132433, -0.980196, -0.147231,
		0.935362, -0.074439, -0.345769,
		31.035730, 36.299179, 36.641201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579514, 35.759151, 37.251587>,  <30.380976, 36.351284, 36.883240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579514, 35.759151, 37.251587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915331, 35.933346, 37.121651>,  <31.116821, 36.037861, 37.043690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915331, 35.933346, 37.121651>,  <30.579514, 35.759151, 37.251587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915331, 35.933346, 37.121651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417365, -0.134186, 0.898777,
		0.347816, -0.890138, -0.294411,
		0.839542, 0.435486, -0.324841,
		31.167194, 36.063992, 37.024197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214703, 35.254444, 37.312771>,  <30.579514, 35.759151, 37.251587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214703, 35.254444, 37.312771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320301, 35.640167, 37.320995>,  <31.383659, 35.871601, 37.325932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320301, 35.640167, 37.320995>,  <31.214703, 35.254444, 37.312771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320301, 35.640167, 37.320995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385647, -0.125068, 0.914130,
		0.884072, -0.233398, -0.404898,
		0.263996, 0.964304, 0.020560,
		31.399500, 35.929459, 37.327164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792511, 35.291744, 37.817291>,  <31.214703, 35.254444, 37.312771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792511, 35.291744, 37.817291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680605, 35.673172, 37.772686>,  <31.613461, 35.902027, 37.745922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680605, 35.673172, 37.772686>,  <31.792511, 35.291744, 37.817291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680605, 35.673172, 37.772686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337717, 0.206478, 0.918321,
		0.898709, 0.219254, -0.379802,
		-0.279766, 0.953569, -0.111518,
		31.596676, 35.959244, 37.739231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343037, 35.572716, 37.903713>,  <31.792511, 35.291744, 37.817291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343037, 35.572716, 37.903713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086403, 35.869946, 37.979820>,  <31.932423, 36.048283, 38.025486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086403, 35.869946, 37.979820>,  <32.343037, 35.572716, 37.903713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086403, 35.869946, 37.979820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517082, 0.235771, 0.822823,
		0.566562, 0.626297, -0.535500,
		-0.641587, 0.743078, 0.190268,
		31.893927, 36.092869, 38.036900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734505, 35.910557, 38.348515>,  <32.343037, 35.572716, 37.903713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734505, 35.910557, 38.348515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375210, 36.082783, 38.383785>,  <32.159630, 36.186119, 38.404949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375210, 36.082783, 38.383785>,  <32.734505, 35.910557, 38.348515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375210, 36.082783, 38.383785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240961, 0.314669, 0.918107,
		0.367558, 0.845930, -0.386399,
		-0.898242, 0.430565, 0.088176,
		32.105736, 36.211952, 38.410236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772629, 36.631092, 38.627731>,  <32.734505, 35.910557, 38.348515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772629, 36.631092, 38.627731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412106, 36.481785, 38.715656>,  <32.195793, 36.392200, 38.768410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412106, 36.481785, 38.715656>,  <32.772629, 36.631092, 38.627731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412106, 36.481785, 38.715656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164042, 0.175536, 0.970710,
		-0.400922, 0.910965, -0.096979,
		-0.901305, -0.373271, 0.219813,
		32.141712, 36.369804, 38.781601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508507, 37.038609, 39.234501>,  <32.772629, 36.631092, 38.627731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508507, 37.038609, 39.234501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283291, 36.708271, 39.222107>,  <32.148159, 36.510067, 39.214672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283291, 36.708271, 39.222107>,  <32.508507, 37.038609, 39.234501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283291, 36.708271, 39.222107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079887, -0.091701, 0.992577,
		-0.822557, 0.556389, 0.117606,
		-0.563043, -0.825846, -0.030981,
		32.114376, 36.460518, 39.212814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934315, 37.091652, 39.769707>,  <32.508507, 37.038609, 39.234501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934315, 37.091652, 39.769707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000141, 36.704258, 39.694916>,  <32.039639, 36.471821, 39.650040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000141, 36.704258, 39.694916>,  <31.934315, 37.091652, 39.769707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000141, 36.704258, 39.694916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119721, -0.168551, 0.978395,
		-0.979073, -0.183397, 0.088210,
		0.164567, -0.968481, -0.186980,
		32.049511, 36.413715, 39.638821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633032, 36.658154, 40.378891>,  <31.934315, 37.091652, 39.769707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633032, 36.658154, 40.378891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867378, 36.406700, 40.174309>,  <32.007984, 36.255829, 40.051559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867378, 36.406700, 40.174309>,  <31.633032, 36.658154, 40.378891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867378, 36.406700, 40.174309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189667, -0.507216, 0.840689,
		-0.787902, -0.589535, -0.177929,
		0.585865, -0.628633, -0.511452,
		32.043137, 36.218109, 40.020874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385042, 35.953693, 40.518539>,  <31.633032, 36.658154, 40.378891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385042, 35.953693, 40.518539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772093, 35.917576, 40.424263>,  <32.004322, 35.895905, 40.367699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772093, 35.917576, 40.424263>,  <31.385042, 35.953693, 40.518539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772093, 35.917576, 40.424263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098707, -0.724056, 0.682642,
		-0.232291, -0.683805, -0.691702,
		0.967625, -0.090296, -0.235688,
		32.062382, 35.890488, 40.353558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442467, 35.228683, 40.413387>,  <31.385042, 35.953693, 40.518539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442467, 35.228683, 40.413387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800861, 35.393646, 40.479271>,  <32.015900, 35.492622, 40.518803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800861, 35.393646, 40.479271>,  <31.442467, 35.228683, 40.413387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800861, 35.393646, 40.479271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222101, -0.737336, 0.637971,
		0.384551, -0.535030, -0.752239,
		0.895986, 0.412405, 0.164713,
		32.069656, 35.517368, 40.528687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803230, 34.629910, 40.485573>,  <31.442467, 35.228683, 40.413387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803230, 34.629910, 40.485573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057999, 34.889538, 40.651962>,  <32.210861, 35.045315, 40.751797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057999, 34.889538, 40.651962>,  <31.803230, 34.629910, 40.485573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057999, 34.889538, 40.651962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261842, -0.689630, 0.675166,
		0.725099, -0.321110, -0.609196,
		0.636922, 0.649075, 0.415970,
		32.249077, 35.084259, 40.776752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352955, 34.207466, 40.665905>,  <31.803230, 34.629910, 40.485573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352955, 34.207466, 40.665905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385662, 34.544140, 40.879402>,  <32.405285, 34.746143, 41.007500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385662, 34.544140, 40.879402>,  <32.352955, 34.207466, 40.665905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385662, 34.544140, 40.879402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288430, -0.532601, 0.795704,
		0.954004, 0.088887, -0.286315,
		0.081764, 0.841686, 0.533741,
		32.410191, 34.796646, 41.039524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907421, 34.171314, 41.013115>,  <32.352955, 34.207466, 40.665905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907421, 34.171314, 41.013115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676300, 34.423588, 41.220337>,  <32.537628, 34.574951, 41.344669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676300, 34.423588, 41.220337>,  <32.907421, 34.171314, 41.013115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676300, 34.423588, 41.220337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109471, -0.569118, 0.814936,
		0.808801, 0.527585, 0.259797,
		-0.577804, 0.630681, 0.518058,
		32.502960, 34.612793, 41.375755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297089, 34.214264, 41.612206>,  <32.907421, 34.171314, 41.013115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297089, 34.214264, 41.612206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933811, 34.359482, 41.695526>,  <32.715847, 34.446613, 41.745518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933811, 34.359482, 41.695526>,  <33.297089, 34.214264, 41.612206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933811, 34.359482, 41.695526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101087, -0.292692, 0.950849,
		0.406169, 0.884608, 0.229120,
		-0.908189, 0.363044, 0.208305,
		32.661354, 34.468395, 41.758018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386761, 34.577957, 42.208397>,  <33.297089, 34.214264, 41.612206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386761, 34.577957, 42.208397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991760, 34.515114, 42.203297>,  <32.754761, 34.477409, 42.200237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991760, 34.515114, 42.203297>,  <33.386761, 34.577957, 42.208397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991760, 34.515114, 42.203297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010125, -0.143936, 0.989535,
		-0.157299, 0.977036, 0.143727,
		-0.987499, -0.157108, -0.012749,
		32.695511, 34.467983, 42.199471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223679, 34.980507, 42.727856>,  <33.386761, 34.577957, 42.208397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223679, 34.980507, 42.727856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911922, 34.734875, 42.678135>,  <32.724869, 34.587498, 42.648300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911922, 34.734875, 42.678135>,  <33.223679, 34.980507, 42.727856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911922, 34.734875, 42.678135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075140, -0.105353, 0.991592,
		-0.622011, 0.782182, 0.035970,
		-0.779395, -0.614078, -0.124304,
		32.678104, 34.550652, 42.640842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712669, 35.257481, 43.235306>,  <33.223679, 34.980507, 42.727856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712669, 35.257481, 43.235306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582249, 34.891968, 43.138393>,  <32.503994, 34.672661, 43.080246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582249, 34.891968, 43.138393>,  <32.712669, 35.257481, 43.235306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582249, 34.891968, 43.138393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180883, -0.191243, 0.964731,
		-0.927884, 0.358380, -0.102931,
		-0.326056, -0.913778, -0.242277,
		32.484432, 34.617836, 43.065712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102924, 35.164726, 43.518784>,  <32.712669, 35.257481, 43.235306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102924, 35.164726, 43.518784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174828, 34.772995, 43.481682>,  <32.217972, 34.537956, 43.459419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174828, 34.772995, 43.481682>,  <32.102924, 35.164726, 43.518784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174828, 34.772995, 43.481682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003807, -0.094985, 0.995471,
		-0.983703, -0.178593, -0.020803,
		0.179760, -0.979327, -0.092758,
		32.228756, 34.479198, 43.453854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712126, 34.796444, 43.983456>,  <32.102924, 35.164726, 43.518784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712126, 34.796444, 43.983456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984348, 34.515293, 43.900696>,  <32.147682, 34.346603, 43.851040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984348, 34.515293, 43.900696>,  <31.712126, 34.796444, 43.983456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984348, 34.515293, 43.900696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058314, -0.229521, 0.971555,
		-0.730372, -0.673263, -0.115214,
		0.680556, -0.702878, -0.206896,
		32.188515, 34.304428, 43.838627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379128, 34.180466, 44.225655>,  <31.712126, 34.796444, 43.983456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379128, 34.180466, 44.225655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778557, 34.167507, 44.208687>,  <32.018215, 34.159733, 44.198505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778557, 34.167507, 44.208687>,  <31.379128, 34.180466, 44.225655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778557, 34.167507, 44.208687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037486, -0.139982, 0.989444,
		-0.037993, -0.989624, -0.138568,
		0.998575, -0.032397, -0.042415,
		32.078129, 34.157787, 44.195961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578094, 33.474979, 44.429264>,  <31.379128, 34.180466, 44.225655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578094, 33.474979, 44.429264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902889, 33.701843, 44.484413>,  <32.097767, 33.837959, 44.517502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902889, 33.701843, 44.484413>,  <31.578094, 33.474979, 44.429264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902889, 33.701843, 44.484413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061127, -0.317545, 0.946271,
		0.580463, -0.759934, -0.292511,
		0.811988, 0.567156, 0.137870,
		32.146484, 33.871990, 44.525776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076782, 32.995338, 44.710697>,  <31.578094, 33.474979, 44.429264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076782, 32.995338, 44.710697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205780, 33.366100, 44.787472>,  <32.283180, 33.588558, 44.833534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205780, 33.366100, 44.787472>,  <32.076782, 32.995338, 44.710697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205780, 33.366100, 44.787472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102167, -0.235669, 0.966448,
		0.941041, -0.292065, -0.170702,
		0.322495, 0.926908, 0.191934,
		32.302528, 33.644173, 44.845051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642708, 32.896000, 45.068684>,  <32.076782, 32.995338, 44.710697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642708, 32.896000, 45.068684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569611, 33.278313, 45.160843>,  <32.525753, 33.507702, 45.216141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569611, 33.278313, 45.160843>,  <32.642708, 32.896000, 45.068684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569611, 33.278313, 45.160843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480750, -0.117549, 0.868943,
		0.857603, 0.269563, -0.438010,
		-0.182748, 0.955781, 0.230403,
		32.514786, 33.565048, 45.229965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289043, 33.170593, 45.238583>,  <32.642708, 32.896000, 45.068684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289043, 33.170593, 45.238583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983257, 33.349079, 45.424698>,  <32.799786, 33.456169, 45.536369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983257, 33.349079, 45.424698>,  <33.289043, 33.170593, 45.238583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983257, 33.349079, 45.424698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434002, -0.177481, 0.883257,
		0.476699, 0.877153, -0.057979,
		-0.764461, 0.446211, 0.465291,
		32.753918, 33.482941, 45.564285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570484, 33.723854, 45.647739>,  <33.289043, 33.170593, 45.238583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570484, 33.723854, 45.647739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253304, 33.540997, 45.808861>,  <33.062996, 33.431282, 45.905533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253304, 33.540997, 45.808861>,  <33.570484, 33.723854, 45.647739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253304, 33.540997, 45.808861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534550, -0.204718, 0.819967,
		-0.292385, 0.865510, 0.406699,
		-0.792948, -0.457147, 0.402802,
		33.015419, 33.403851, 45.929703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603760, 33.875900, 46.378513>,  <33.570484, 33.723854, 45.647739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603760, 33.875900, 46.378513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335365, 33.579391, 46.385323>,  <33.174328, 33.401485, 46.389408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335365, 33.579391, 46.385323>,  <33.603760, 33.875900, 46.378513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335365, 33.579391, 46.385323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153699, -0.116597, 0.981214,
		-0.725361, 0.661001, 0.192168,
		-0.670990, -0.741271, 0.017020,
		33.134068, 33.357010, 46.390430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012646, 33.953133, 46.941017>,  <33.603760, 33.875900, 46.378513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012646, 33.953133, 46.941017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060295, 33.569759, 46.837318>,  <33.088886, 33.339733, 46.775097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060295, 33.569759, 46.837318>,  <33.012646, 33.953133, 46.941017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060295, 33.569759, 46.837318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020756, -0.258650, 0.965748,
		-0.992662, -0.120425, -0.010918,
		0.119124, -0.958435, -0.259252,
		33.096031, 33.282230, 46.759544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637547, 33.652576, 47.424568>,  <33.012646, 33.953133, 46.941017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637547, 33.652576, 47.424568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849354, 33.338093, 47.297142>,  <32.976440, 33.149403, 47.220688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849354, 33.338093, 47.297142>,  <32.637547, 33.652576, 47.424568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849354, 33.338093, 47.297142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063974, -0.337455, 0.939165,
		-0.845881, -0.517687, -0.128393,
		0.529521, -0.786208, -0.318566,
		33.008209, 33.102230, 47.201572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377136, 33.020245, 47.773487>,  <32.637547, 33.652576, 47.424568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377136, 33.020245, 47.773487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758957, 32.955627, 47.673298>,  <32.988049, 32.916859, 47.613186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758957, 32.955627, 47.673298>,  <32.377136, 33.020245, 47.773487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758957, 32.955627, 47.673298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165516, -0.411571, 0.896222,
		-0.247866, -0.896946, -0.366128,
		0.954551, -0.161543, -0.250473,
		33.045322, 32.907166, 47.598156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495255, 32.496841, 48.167992>,  <32.377136, 33.020245, 47.773487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495255, 32.496841, 48.167992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870083, 32.587849, 48.062061>,  <33.094982, 32.642452, 47.998505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870083, 32.587849, 48.062061>,  <32.495255, 32.496841, 48.167992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870083, 32.587849, 48.062061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347515, -0.534897, 0.770142,
		0.033567, -0.813709, -0.580302,
		0.937073, 0.227515, -0.264821,
		33.151203, 32.656101, 47.982616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901661, 31.933565, 48.204193>,  <32.495255, 32.496841, 48.167992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901661, 31.933565, 48.204193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207096, 32.185684, 48.260277>,  <33.390358, 32.336956, 48.293926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207096, 32.185684, 48.260277>,  <32.901661, 31.933565, 48.204193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207096, 32.185684, 48.260277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385717, -0.619390, 0.683797,
		0.517840, -0.468058, -0.716075,
		0.763587, 0.630300, 0.140206,
		33.436172, 32.374775, 48.302338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484764, 31.487183, 48.327721>,  <32.901661, 31.933565, 48.204193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484764, 31.487183, 48.327721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598026, 31.839405, 48.479744>,  <33.665981, 32.050739, 48.570957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598026, 31.839405, 48.479744>,  <33.484764, 31.487183, 48.327721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598026, 31.839405, 48.479744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542840, -0.473833, 0.693403,
		0.790664, 0.009971, -0.612169,
		0.283152, 0.880558, 0.380055,
		33.682972, 32.103573, 48.593761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270248, 31.535913, 48.447601>,  <33.484764, 31.487183, 48.327721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270248, 31.535913, 48.447601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108334, 31.805527, 48.694767>,  <34.011185, 31.967295, 48.843067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108334, 31.805527, 48.694767>,  <34.270248, 31.535913, 48.447601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108334, 31.805527, 48.694767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622998, -0.291359, 0.725936,
		0.669341, 0.678814, -0.301983,
		-0.404791, 0.674034, 0.617919,
		33.986897, 32.007736, 48.880142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814156, 31.926142, 48.730637>,  <34.270248, 31.535913, 48.447601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814156, 31.926142, 48.730637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515171, 31.956705, 48.994595>,  <34.335781, 31.975044, 49.152969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515171, 31.956705, 48.994595>,  <34.814156, 31.926142, 48.730637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515171, 31.956705, 48.994595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648223, -0.133344, 0.749684,
		0.145276, 0.988120, 0.050139,
		-0.747464, 0.076410, 0.659894,
		34.290932, 31.979628, 49.192562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142254, 32.262848, 49.232044>,  <34.814156, 31.926142, 48.730637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142254, 32.262848, 49.232044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806946, 32.120163, 49.396999>,  <34.605762, 32.034554, 49.495972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806946, 32.120163, 49.396999>,  <35.142254, 32.262848, 49.232044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806946, 32.120163, 49.396999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501048, -0.205615, 0.840639,
		-0.215070, 0.911308, 0.351088,
		-0.838270, -0.356709, 0.412387,
		34.555466, 32.013149, 49.520714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352093, 32.314518, 49.949436>,  <35.142254, 32.262848, 49.232044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352093, 32.314518, 49.949436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006958, 32.114590, 49.979626>,  <34.799877, 31.994633, 49.997738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006958, 32.114590, 49.979626>,  <35.352093, 32.314518, 49.949436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006958, 32.114590, 49.979626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266630, -0.323176, 0.908001,
		-0.429447, 0.803578, 0.412115,
		-0.862835, -0.499820, 0.075471,
		34.748108, 31.964643, 50.002266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061592, 32.668449, 50.424011>,  <35.352093, 32.314518, 49.949436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061592, 32.668449, 50.424011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899067, 32.302956, 50.422871>,  <34.801552, 32.083660, 50.422188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899067, 32.302956, 50.422871>,  <35.061592, 32.668449, 50.424011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899067, 32.302956, 50.422871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376066, -0.170067, 0.910852,
		-0.832757, 0.369018, 0.412723,
		-0.406312, -0.913730, -0.002850,
		34.777172, 32.028835, 50.422016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611004, 32.593479, 50.997154>,  <35.061592, 32.668449, 50.424011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611004, 32.593479, 50.997154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768295, 32.240990, 50.892231>,  <34.862671, 32.029495, 50.829277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768295, 32.240990, 50.892231>,  <34.611004, 32.593479, 50.997154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768295, 32.240990, 50.892231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393191, -0.096719, 0.914356,
		-0.831126, -0.462692, 0.308457,
		0.393232, -0.881227, -0.262312,
		34.886265, 31.976622, 50.813538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465759, 31.973595, 51.543694>,  <34.611004, 32.593479, 50.997154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465759, 31.973595, 51.543694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778599, 31.841343, 51.332409>,  <34.966301, 31.761992, 51.205639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778599, 31.841343, 51.332409>,  <34.465759, 31.973595, 51.543694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778599, 31.841343, 51.332409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392735, -0.396581, 0.829749,
		-0.483819, -0.856391, -0.180314,
		0.782098, -0.330633, -0.528208,
		35.013229, 31.742153, 51.173946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595512, 31.207857, 51.642609>,  <34.465759, 31.973595, 51.543694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595512, 31.207857, 51.642609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950745, 31.365166, 51.547409>,  <35.163883, 31.459551, 51.490288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950745, 31.365166, 51.547409>,  <34.595512, 31.207857, 51.642609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950745, 31.365166, 51.547409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421984, -0.492137, 0.761400,
		0.182306, -0.776621, -0.603013,
		0.888085, 0.393270, -0.238002,
		35.217171, 31.483147, 51.476009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055916, 30.692377, 51.517395>,  <34.595512, 31.207857, 51.642609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055916, 30.692377, 51.517395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204964, 31.023325, 51.685497>,  <35.294392, 31.221893, 51.786358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204964, 31.023325, 51.685497>,  <35.055916, 30.692377, 51.517395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204964, 31.023325, 51.685497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157449, -0.502667, 0.850021,
		0.914530, -0.250565, -0.317572,
		0.372619, 0.827371, 0.420253,
		35.316750, 31.271536, 51.811573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838318, 30.575136, 51.867500>,  <35.055916, 30.692377, 51.517395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838318, 30.575136, 51.867500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582951, 30.825111, 52.047222>,  <35.429729, 30.975096, 52.155056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582951, 30.825111, 52.047222>,  <35.838318, 30.575136, 51.867500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582951, 30.825111, 52.047222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093184, -0.516700, 0.851080,
		0.764027, 0.585215, 0.271637,
		-0.638420, 0.624936, 0.449306,
		35.391426, 31.012592, 52.182014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397999, 30.044340, 51.557529>,  <35.838318, 30.575136, 51.867500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397999, 30.044340, 51.557529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324032, 29.738775, 51.804832>,  <35.279652, 29.555437, 51.953217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324032, 29.738775, 51.804832>,  <35.397999, 30.044340, 51.557529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324032, 29.738775, 51.804832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301668, -0.554614, -0.775500,
		0.935309, -0.329912, -0.127890,
		-0.184917, -0.763912, 0.618259,
		35.268559, 29.509602, 51.990311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812893, 29.307360, 51.411118>,  <35.397999, 30.044340, 51.557529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812893, 29.307360, 51.411118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441681, 29.285641, 51.558525>,  <35.218952, 29.272610, 51.646969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441681, 29.285641, 51.558525>,  <35.812893, 29.307360, 51.411118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441681, 29.285641, 51.558525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290593, -0.513427, -0.807433,
		0.233050, -0.856414, 0.460699,
		-0.928032, -0.054297, 0.368522,
		35.163273, 29.269352, 51.669083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624687, 28.661131, 51.534508>,  <35.812893, 29.307360, 51.411118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624687, 28.661131, 51.534508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304436, 28.881290, 51.439796>,  <35.112286, 29.013386, 51.382969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304436, 28.881290, 51.439796>,  <35.624687, 28.661131, 51.534508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304436, 28.881290, 51.439796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251814, -0.667673, -0.700573,
		-0.543682, -0.501273, 0.673153,
		-0.800625, 0.550398, -0.236774,
		35.064247, 29.046410, 51.368763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005981, 28.250618, 51.650295>,  <35.624687, 28.661131, 51.534508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005981, 28.250618, 51.650295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909733, 28.532299, 51.383102>,  <34.851982, 28.701307, 51.222786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909733, 28.532299, 51.383102>,  <35.005981, 28.250618, 51.650295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909733, 28.532299, 51.383102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390072, -0.700339, -0.597804,
		-0.888789, 0.116716, 0.443206,
		-0.240621, 0.704204, -0.667981,
		34.837547, 28.743561, 51.182709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416668, 28.532911, 51.328476>,  <35.005981, 28.250618, 51.650295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416668, 28.532911, 51.328476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223461, 28.867796, 51.225891>,  <34.107536, 29.068726, 51.164341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223461, 28.867796, 51.225891>,  <34.416668, 28.532911, 51.328476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223461, 28.867796, 51.225891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551539, 0.063415, -0.831736,
		-0.680074, -0.543191, -0.492385,
		-0.483016, 0.837211, -0.256464,
		34.078556, 29.118959, 51.148952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318851, 28.404306, 50.630745>,  <34.416668, 28.532911, 51.328476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318851, 28.404306, 50.630745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310497, 28.800884, 50.682278>,  <34.305485, 29.038832, 50.713196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310497, 28.800884, 50.682278>,  <34.318851, 28.404306, 50.630745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310497, 28.800884, 50.682278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368849, 0.127409, -0.920716,
		-0.929255, 0.028290, -0.368355,
		-0.020885, 0.991447, 0.128830,
		34.304234, 29.098318, 50.720928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180725, 28.677385, 49.926575>,  <34.318851, 28.404306, 50.630745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180725, 28.677385, 49.926575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306721, 29.005621, 50.117325>,  <34.382320, 29.202562, 50.231773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306721, 29.005621, 50.117325>,  <34.180725, 28.677385, 49.926575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306721, 29.005621, 50.117325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431569, 0.323663, -0.842016,
		-0.845297, 0.471033, -0.252190,
		0.314993, 0.820591, 0.476875,
		34.401218, 29.251799, 50.260387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172943, 29.173512, 49.418896>,  <34.180725, 28.677385, 49.926575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172943, 29.173512, 49.418896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384892, 29.356127, 49.704781>,  <34.512058, 29.465696, 49.876312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384892, 29.356127, 49.704781>,  <34.172943, 29.173512, 49.418896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384892, 29.356127, 49.704781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414980, 0.595390, -0.687970,
		-0.739616, 0.661124, 0.126024,
		0.529867, 0.456536, 0.714713,
		34.543850, 29.493088, 49.919193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925079, 29.852140, 49.304779>,  <34.172943, 29.173512, 49.418896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925079, 29.852140, 49.304779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276093, 29.871336, 49.495625>,  <34.486702, 29.882853, 49.610130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276093, 29.871336, 49.495625>,  <33.925079, 29.852140, 49.304779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276093, 29.871336, 49.495625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332848, 0.655277, -0.678103,
		-0.345181, 0.753863, 0.559054,
		0.877532, 0.047988, 0.477111,
		34.539352, 29.885733, 49.638760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135227, 30.608734, 49.367176>,  <33.925079, 29.852140, 49.304779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135227, 30.608734, 49.367176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456902, 30.374075, 49.405407>,  <34.649906, 30.233278, 49.428345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456902, 30.374075, 49.405407>,  <34.135227, 30.608734, 49.367176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456902, 30.374075, 49.405407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434638, 0.470718, -0.767798,
		0.405440, 0.658989, 0.633523,
		0.804181, -0.586650, 0.095574,
		34.698154, 30.198080, 49.434078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830276, 30.962742, 49.202656>,  <34.135227, 30.608734, 49.367176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830276, 30.962742, 49.202656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962669, 30.587481, 49.162033>,  <35.042107, 30.362324, 49.137657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962669, 30.587481, 49.162033>,  <34.830276, 30.962742, 49.202656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962669, 30.587481, 49.162033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542154, 0.277150, -0.793257,
		0.772346, 0.207495, 0.600357,
		0.330986, -0.938154, -0.101561,
		35.061966, 30.306034, 49.131565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502552, 30.992710, 49.130924>,  <34.830276, 30.962742, 49.202656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502552, 30.992710, 49.130924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403210, 30.642942, 48.964211>,  <35.343605, 30.433083, 48.864182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403210, 30.642942, 48.964211>,  <35.502552, 30.992710, 49.130924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403210, 30.642942, 48.964211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513081, 0.246207, -0.822272,
		0.821626, -0.418059, 0.387501,
		-0.248353, -0.874419, -0.416789,
		35.328705, 30.380617, 48.839172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040096, 30.846209, 48.838120>,  <35.502552, 30.992710, 49.130924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040096, 30.846209, 48.838120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761677, 30.643581, 48.634586>,  <35.594627, 30.522005, 48.512466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761677, 30.643581, 48.634586>,  <36.040096, 30.846209, 48.838120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761677, 30.643581, 48.634586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373922, 0.349245, -0.859192,
		0.612945, -0.788300, -0.053674,
		-0.696046, -0.506567, -0.508831,
		35.552864, 30.491611, 48.481937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363594, 30.336985, 48.346401>,  <36.040096, 30.846209, 48.838120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363594, 30.336985, 48.346401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005047, 30.341223, 48.169128>,  <35.789917, 30.343765, 48.062763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005047, 30.341223, 48.169128>,  <36.363594, 30.336985, 48.346401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005047, 30.341223, 48.169128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429585, 0.267624, -0.862458,
		0.109471, -0.963465, -0.244441,
		-0.896367, 0.010594, -0.443187,
		35.736137, 30.344400, 48.036171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455475, 30.003689, 47.718719>,  <36.363594, 30.336985, 48.346401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455475, 30.003689, 47.718719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100044, 30.169727, 47.640625>,  <35.886784, 30.269350, 47.593769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100044, 30.169727, 47.640625>,  <36.455475, 30.003689, 47.718719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100044, 30.169727, 47.640625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277907, 0.148516, -0.949058,
		-0.364956, -0.897573, -0.247327,
		-0.888580, 0.415098, -0.195240,
		35.833469, 30.294256, 47.582054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212391, 29.679157, 47.134464>,  <36.455475, 30.003689, 47.718719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212391, 29.679157, 47.134464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066521, 30.051287, 47.149979>,  <35.978996, 30.274565, 47.159286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066521, 30.051287, 47.149979>,  <36.212391, 29.679157, 47.134464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066521, 30.051287, 47.149979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363829, 0.180712, -0.913768,
		-0.857110, -0.319121, -0.404381,
		-0.364679, 0.930325, 0.038785,
		35.957115, 30.330383, 47.161613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908916, 29.693865, 46.537678>,  <36.212391, 29.679157, 47.134464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908916, 29.693865, 46.537678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945900, 30.070061, 46.668476>,  <35.968090, 30.295778, 46.746956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945900, 30.070061, 46.668476>,  <35.908916, 29.693865, 46.537678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945900, 30.070061, 46.668476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155998, 0.310667, -0.937630,
		-0.983421, 0.137699, -0.117992,
		0.092455, 0.940492, 0.326997,
		35.973637, 30.352209, 46.766575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562511, 30.094427, 46.020157>,  <35.908916, 29.693865, 46.537678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562511, 30.094427, 46.020157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782940, 30.366364, 46.213711>,  <35.915195, 30.529526, 46.329842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782940, 30.366364, 46.213711>,  <35.562511, 30.094427, 46.020157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782940, 30.366364, 46.213711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371358, 0.319490, -0.871791,
		-0.747273, 0.660110, -0.076403,
		0.551068, 0.679839, 0.483884,
		35.948261, 30.570314, 46.358875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441143, 30.725161, 45.705479>,  <35.562511, 30.094427, 46.020157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441143, 30.725161, 45.705479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789948, 30.767242, 45.896702>,  <35.999229, 30.792492, 46.011436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789948, 30.767242, 45.896702>,  <35.441143, 30.725161, 45.705479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789948, 30.767242, 45.896702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412298, 0.368559, -0.833172,
		-0.263843, 0.923632, 0.278011,
		0.872008, 0.105204, 0.478053,
		36.051548, 30.798803, 46.040119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624767, 31.411409, 45.692154>,  <35.441143, 30.725161, 45.705479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624767, 31.411409, 45.692154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962463, 31.217024, 45.782574>,  <36.165081, 31.100393, 45.836826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962463, 31.217024, 45.782574>,  <35.624767, 31.411409, 45.692154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962463, 31.217024, 45.782574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466085, 0.457433, -0.757311,
		0.264623, 0.744711, 0.612683,
		0.844239, -0.485964, 0.226051,
		36.215736, 31.071234, 45.850388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259438, 31.916517, 45.939724>,  <35.624767, 31.411409, 45.692154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259438, 31.916517, 45.939724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393166, 31.569849, 45.791611>,  <36.473404, 31.361847, 45.702744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393166, 31.569849, 45.791611>,  <36.259438, 31.916517, 45.939724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393166, 31.569849, 45.791611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391563, 0.485106, -0.781889,
		0.857268, 0.116412, 0.501538,
		0.334320, -0.866672, -0.370283,
		36.493462, 31.309847, 45.680527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879986, 32.104568, 45.697422>,  <36.259438, 31.916517, 45.939724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879986, 32.104568, 45.697422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785370, 31.755129, 45.527309>,  <36.728600, 31.545464, 45.425243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785370, 31.755129, 45.527309>,  <36.879986, 32.104568, 45.697422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785370, 31.755129, 45.527309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239947, 0.371625, -0.896839,
		0.941527, -0.314185, 0.121714,
		-0.236542, -0.873603, -0.425282,
		36.714409, 31.493048, 45.399723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370205, 32.035114, 45.235779>,  <36.879986, 32.104568, 45.697422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370205, 32.035114, 45.235779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122940, 31.758163, 45.086929>,  <36.974579, 31.591991, 44.997620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122940, 31.758163, 45.086929>,  <37.370205, 32.035114, 45.235779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122940, 31.758163, 45.086929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161321, 0.351589, -0.922150,
		0.769316, -0.630074, -0.105644,
		-0.618166, -0.692382, -0.372127,
		36.937489, 31.550449, 44.975292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723343, 31.738636, 44.649426>,  <37.370205, 32.035114, 45.235779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723343, 31.738636, 44.649426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336540, 31.648930, 44.601093>,  <37.104458, 31.595106, 44.572094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336540, 31.648930, 44.601093>,  <37.723343, 31.738636, 44.649426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336540, 31.648930, 44.601093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020111, 0.405618, -0.913821,
		0.253950, -0.886103, -0.387726,
		-0.967008, -0.224267, -0.120827,
		37.046436, 31.581650, 44.564846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615784, 31.551117, 43.956360>,  <37.723343, 31.738636, 44.649426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615784, 31.551117, 43.956360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242130, 31.619114, 44.081894>,  <37.017937, 31.659912, 44.157215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242130, 31.619114, 44.081894>,  <37.615784, 31.551117, 43.956360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242130, 31.619114, 44.081894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255305, 0.296226, -0.920364,
		-0.249424, -0.939868, -0.233314,
		-0.934134, 0.169995, 0.313838,
		36.961891, 31.670113, 44.176044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165108, 31.226772, 43.432682>,  <37.615784, 31.551117, 43.956360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165108, 31.226772, 43.432682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966904, 31.525909, 43.609406>,  <36.847980, 31.705391, 43.715439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966904, 31.525909, 43.609406>,  <37.165108, 31.226772, 43.432682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966904, 31.525909, 43.609406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357661, 0.287857, -0.888379,
		-0.791546, -0.598223, 0.124836,
		-0.495514, 0.747842, 0.441813,
		36.818249, 31.750261, 43.741951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499081, 31.225344, 43.033161>,  <37.165108, 31.226772, 43.432682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499081, 31.225344, 43.033161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495289, 31.569168, 43.237541>,  <36.493011, 31.775463, 43.360168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495289, 31.569168, 43.237541>,  <36.499081, 31.225344, 43.033161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495289, 31.569168, 43.237541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440597, 0.455104, -0.773793,
		-0.897655, -0.232458, 0.374405,
		-0.009481, 0.859560, 0.510946,
		36.492443, 31.827036, 43.390823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766903, 31.535376, 42.976421>,  <36.499081, 31.225344, 43.033161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766903, 31.535376, 42.976421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002048, 31.843098, 43.076492>,  <36.143135, 32.027733, 43.136536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002048, 31.843098, 43.076492>,  <35.766903, 31.535376, 42.976421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002048, 31.843098, 43.076492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367809, 0.529621, -0.764342,
		-0.720512, 0.357308, 0.594301,
		0.587860, 0.769306, 0.250177,
		36.178406, 32.073891, 43.151546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334137, 31.991293, 43.074757>,  <35.766903, 31.535376, 42.976421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334137, 31.991293, 43.074757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672791, 32.189693, 42.997616>,  <35.875984, 32.308735, 42.951332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672791, 32.189693, 42.997616>,  <35.334137, 31.991293, 43.074757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672791, 32.189693, 42.997616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490792, 0.587614, -0.643299,
		-0.205753, 0.639290, 0.740927,
		0.846634, 0.496002, -0.192855,
		35.926781, 32.338493, 42.939758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123535, 32.688065, 43.147045>,  <35.334137, 31.991293, 43.074757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123535, 32.688065, 43.147045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458542, 32.685013, 42.928501>,  <35.659546, 32.683182, 42.797375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458542, 32.685013, 42.928501>,  <35.123535, 32.688065, 43.147045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458542, 32.685013, 42.928501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365200, 0.735946, -0.570098,
		0.406444, 0.676997, 0.613578,
		0.837515, -0.007634, -0.546360,
		35.709797, 32.682724, 42.764591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199158, 33.381401, 42.978539>,  <35.123535, 32.688065, 43.147045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199158, 33.381401, 42.978539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407635, 33.174309, 42.707153>,  <35.532722, 33.050053, 42.544323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407635, 33.174309, 42.707153>,  <35.199158, 33.381401, 42.978539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407635, 33.174309, 42.707153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412283, 0.543322, -0.731317,
		0.747249, 0.660876, 0.069724,
		0.521192, -0.517730, -0.678464,
		35.563992, 33.018990, 42.503613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367828, 33.904762, 42.422962>,  <35.199158, 33.381401, 42.978539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367828, 33.904762, 42.422962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441200, 33.549320, 42.254803>,  <35.485222, 33.336056, 42.153908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441200, 33.549320, 42.254803>,  <35.367828, 33.904762, 42.422962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441200, 33.549320, 42.254803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133810, 0.401100, -0.906208,
		0.973883, 0.222478, -0.045331,
		0.183429, -0.888607, -0.420395,
		35.496227, 33.282738, 42.128685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804714, 33.990158, 41.796398>,  <35.367828, 33.904762, 42.422962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804714, 33.990158, 41.796398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632252, 33.635612, 41.728920>,  <35.528774, 33.422886, 41.688431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632252, 33.635612, 41.728920>,  <35.804714, 33.990158, 41.796398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632252, 33.635612, 41.728920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207195, 0.279236, -0.937602,
		0.878166, -0.369298, -0.304045,
		-0.431154, -0.886367, -0.168699,
		35.502907, 33.369701, 41.678310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077152, 33.724190, 41.242847>,  <35.804714, 33.990158, 41.796398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077152, 33.724190, 41.242847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761379, 33.478943, 41.230919>,  <35.571915, 33.331795, 41.223763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761379, 33.478943, 41.230919>,  <36.077152, 33.724190, 41.242847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761379, 33.478943, 41.230919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186338, 0.285644, -0.940046,
		0.584872, -0.736546, -0.339743,
		-0.789432, -0.613113, -0.029819,
		35.524551, 33.295010, 41.221973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150551, 33.115395, 40.736305>,  <36.077152, 33.724190, 41.242847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150551, 33.115395, 40.736305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759644, 33.153641, 40.811996>,  <35.525101, 33.176590, 40.857410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759644, 33.153641, 40.811996>,  <36.150551, 33.115395, 40.736305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759644, 33.153641, 40.811996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173871, 0.149308, -0.973384,
		-0.121329, -0.984156, -0.129288,
		-0.977266, 0.095621, 0.189232,
		35.466465, 33.182327, 40.868767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885925, 32.811577, 40.135910>,  <36.150551, 33.115395, 40.736305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885925, 32.811577, 40.135910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573082, 32.958336, 40.337379>,  <35.385376, 33.046391, 40.458260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573082, 32.958336, 40.337379>,  <35.885925, 32.811577, 40.135910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573082, 32.958336, 40.337379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461999, 0.200989, -0.863806,
		-0.418162, -0.908289, 0.012311,
		-0.782111, 0.366899, 0.503675,
		35.338448, 33.068405, 40.488483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240993, 32.404480, 40.061253>,  <35.885925, 32.811577, 40.135910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240993, 32.404480, 40.061253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102829, 32.764862, 40.166306>,  <35.019928, 32.981091, 40.229336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102829, 32.764862, 40.166306>,  <35.240993, 32.404480, 40.061253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102829, 32.764862, 40.166306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581137, 0.014392, -0.813679,
		-0.736864, -0.433683, 0.518604,
		-0.345415, 0.900951, 0.262634,
		34.999203, 33.035149, 40.245094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473740, 32.369656, 39.886093>,  <35.240993, 32.404480, 40.061253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473740, 32.369656, 39.886093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586712, 32.753353, 39.889820>,  <34.654495, 32.983570, 39.892056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586712, 32.753353, 39.889820>,  <34.473740, 32.369656, 39.886093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586712, 32.753353, 39.889820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465077, 0.145410, -0.873246,
		-0.839010, 0.242298, 0.487190,
		0.282428, 0.959243, 0.009313,
		34.671440, 33.041126, 39.892612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954262, 32.703281, 39.627956>,  <34.473740, 32.369656, 39.886093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954262, 32.703281, 39.627956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268867, 32.942162, 39.565025>,  <34.457630, 33.085491, 39.527267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268867, 32.942162, 39.565025>,  <33.954262, 32.703281, 39.627956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268867, 32.942162, 39.565025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367418, 0.247725, -0.896458,
		-0.496390, 0.762880, 0.414260,
		0.786512, 0.597199, -0.157328,
		34.504822, 33.121323, 39.517826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618397, 33.370731, 39.390675>,  <33.954262, 32.703281, 39.627956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618397, 33.370731, 39.390675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992630, 33.354885, 39.250320>,  <34.217171, 33.345379, 39.166107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992630, 33.354885, 39.250320>,  <33.618397, 33.370731, 39.390675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992630, 33.354885, 39.250320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313065, 0.366611, -0.876120,
		0.163349, 0.929530, 0.330591,
		0.935578, -0.039617, -0.350889,
		34.273304, 33.342999, 39.145054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663422, 33.983295, 39.062840>,  <33.618397, 33.370731, 39.390675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663422, 33.983295, 39.062840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972004, 33.781822, 38.907322>,  <34.157154, 33.660938, 38.814011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972004, 33.781822, 38.907322>,  <33.663422, 33.983295, 39.062840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972004, 33.781822, 38.907322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119267, 0.485735, -0.865931,
		0.625000, 0.714401, 0.314653,
		0.771460, -0.503679, -0.388789,
		34.203442, 33.630718, 38.790684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119415, 34.515270, 38.764523>,  <33.663422, 33.983295, 39.062840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119415, 34.515270, 38.764523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183826, 34.165852, 38.580788>,  <34.222473, 33.956200, 38.470547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183826, 34.165852, 38.580788>,  <34.119415, 34.515270, 38.764523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183826, 34.165852, 38.580788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074238, 0.474812, -0.876950,
		0.984153, 0.107118, 0.141310,
		0.161033, -0.873544, -0.459336,
		34.232136, 33.903790, 38.442986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612633, 34.702847, 38.255817>,  <34.119415, 34.515270, 38.764523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612633, 34.702847, 38.255817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446087, 34.363873, 38.124062>,  <34.346161, 34.160488, 38.045006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446087, 34.363873, 38.124062>,  <34.612633, 34.702847, 38.255817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446087, 34.363873, 38.124062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001660, 0.362999, -0.931788,
		0.909197, -0.387416, -0.152546,
		-0.416363, -0.847432, -0.329394,
		34.321178, 34.109642, 38.025242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066769, 34.363380, 37.794624>,  <34.612633, 34.702847, 38.255817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066769, 34.363380, 37.794624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701656, 34.228489, 37.702446>,  <34.482590, 34.147552, 37.647141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701656, 34.228489, 37.702446>,  <35.066769, 34.363380, 37.794624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701656, 34.228489, 37.702446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119635, 0.318710, -0.940272,
		0.390538, -0.885831, -0.250567,
		-0.912780, -0.337235, -0.230445,
		34.427822, 34.127319, 37.633312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256325, 33.903500, 37.257751>,  <35.066769, 34.363380, 37.794624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256325, 33.903500, 37.257751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866425, 33.988930, 37.231689>,  <34.632484, 34.040188, 37.216053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866425, 33.988930, 37.231689>,  <35.256325, 33.903500, 37.257751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866425, 33.988930, 37.231689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103777, 0.174921, -0.979098,
		-0.197719, -0.961138, -0.192669,
		-0.974750, 0.213580, -0.065159,
		34.574001, 34.053005, 37.212143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799999, 33.288067, 37.241165>,  <35.256325, 33.903500, 37.257751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799999, 33.288067, 37.241165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591000, 33.508167, 37.501694>,  <35.465599, 33.640228, 37.658009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591000, 33.508167, 37.501694>,  <35.799999, 33.288067, 37.241165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591000, 33.508167, 37.501694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027576, -0.774389, 0.632108,
		0.852193, 0.312316, 0.419792,
		-0.522500, 0.550254, 0.651317,
		35.434250, 33.673244, 37.697090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596729, 33.153122, 36.953491>,  <35.799999, 33.288067, 37.241165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596729, 33.153122, 36.953491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856907, 33.323303, 36.701805>,  <37.013012, 33.425411, 36.550793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856907, 33.323303, 36.701805>,  <36.596729, 33.153122, 36.953491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856907, 33.323303, 36.701805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759291, -0.342247, 0.553483,
		0.020136, -0.837766, -0.545658,
		0.650440, 0.425458, -0.629217,
		37.052040, 33.450939, 36.513039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173820, 32.659798, 36.727001>,  <36.596729, 33.153122, 36.953491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173820, 32.659798, 36.727001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324543, 33.029255, 36.699009>,  <37.414974, 33.250931, 36.682213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324543, 33.029255, 36.699009>,  <37.173820, 32.659798, 36.727001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324543, 33.029255, 36.699009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793796, -0.283046, 0.538306,
		0.477396, -0.258387, -0.839839,
		0.376805, 0.923645, -0.069981,
		37.437584, 33.306347, 36.678013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793159, 32.653393, 36.288475>,  <37.173820, 32.659798, 36.727001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793159, 32.653393, 36.288475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799450, 32.983662, 36.514046>,  <37.803223, 33.181824, 36.649387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799450, 32.983662, 36.514046>,  <37.793159, 32.653393, 36.288475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799450, 32.983662, 36.514046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686014, -0.419222, 0.594674,
		0.727418, 0.377509, -0.573018,
		0.015727, 0.825675, 0.563926,
		37.804169, 33.231365, 36.683224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511795, 32.702858, 36.447296>,  <37.793159, 32.653393, 36.288475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511795, 32.702858, 36.447296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327297, 32.938694, 36.712513>,  <38.216599, 33.080196, 36.871643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327297, 32.938694, 36.712513>,  <38.511795, 32.702858, 36.447296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327297, 32.938694, 36.712513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680233, -0.244818, 0.690904,
		0.569678, 0.769703, -0.288139,
		-0.461249, 0.589594, 0.663044,
		38.188923, 33.115574, 36.911427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106426, 33.109970, 36.879761>,  <38.511795, 32.702858, 36.447296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106426, 33.109970, 36.879761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766830, 33.111835, 37.091118>,  <38.563072, 33.112957, 37.217934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766830, 33.111835, 37.091118>,  <39.106426, 33.109970, 36.879761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766830, 33.111835, 37.091118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480674, -0.408532, 0.775921,
		0.219486, 0.912732, 0.344596,
		-0.848987, 0.004665, 0.528394,
		38.512135, 33.113235, 37.249638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341095, 33.017166, 37.547878>,  <39.106426, 33.109970, 36.879761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341095, 33.017166, 37.547878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951046, 32.939465, 37.590599>,  <38.717018, 32.892845, 37.616234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951046, 32.939465, 37.590599>,  <39.341095, 33.017166, 37.547878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951046, 32.939465, 37.590599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195202, -0.524099, 0.828985,
		-0.105055, 0.829209, 0.548978,
		-0.975120, -0.194251, 0.106804,
		38.658508, 32.881191, 37.622639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321857, 33.291416, 38.262836>,  <39.341095, 33.017166, 37.547878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321857, 33.291416, 38.262836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018791, 33.044239, 38.178856>,  <38.836952, 32.895931, 38.128468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018791, 33.044239, 38.178856>,  <39.321857, 33.291416, 38.262836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018791, 33.044239, 38.178856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152596, -0.480518, 0.863607,
		-0.634549, 0.622290, 0.458370,
		-0.757669, -0.617946, -0.209954,
		38.791492, 32.858856, 38.115871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978466, 33.353058, 38.877014>,  <39.321857, 33.291416, 38.262836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978466, 33.353058, 38.877014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877167, 33.004673, 38.708591>,  <38.816387, 32.795643, 38.607536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877167, 33.004673, 38.708591>,  <38.978466, 33.353058, 38.877014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877167, 33.004673, 38.708591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196509, -0.472486, 0.859152,
		-0.947232, 0.134841, 0.290809,
		-0.253252, -0.870962, -0.421056,
		38.801189, 32.743385, 38.582275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422642, 33.053761, 39.378338>,  <38.978466, 33.353058, 38.877014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422642, 33.053761, 39.378338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587856, 32.757076, 39.166954>,  <38.686985, 32.579067, 39.040123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587856, 32.757076, 39.166954>,  <38.422642, 33.053761, 39.378338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587856, 32.757076, 39.166954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065428, -0.554601, 0.829540,
		-0.908361, -0.377207, -0.180543,
		0.413038, -0.741709, -0.528458,
		38.711769, 32.534565, 39.008415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147423, 32.427303, 39.644451>,  <38.422642, 33.053761, 39.378338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147423, 32.427303, 39.644451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449272, 32.279175, 39.427784>,  <38.630383, 32.190296, 39.297783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449272, 32.279175, 39.427784>,  <38.147423, 32.427303, 39.644451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449272, 32.279175, 39.427784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207939, -0.647994, 0.732711,
		-0.622335, -0.665555, -0.411989,
		0.754626, -0.370323, -0.541665,
		38.675659, 32.168079, 39.265285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062378, 31.648447, 39.644562>,  <38.147423, 32.427303, 39.644451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062378, 31.648447, 39.644562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446301, 31.718388, 39.556744>,  <38.676655, 31.760351, 39.504051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446301, 31.718388, 39.556744>,  <38.062378, 31.648447, 39.644562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446301, 31.718388, 39.556744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279387, -0.669832, 0.687945,
		-0.026772, -0.721632, -0.691760,
		0.959805, 0.174851, -0.219548,
		38.734241, 31.770844, 39.490879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386826, 31.023174, 39.604179>,  <38.062378, 31.648447, 39.644562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386826, 31.023174, 39.604179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688995, 31.279387, 39.659393>,  <38.870296, 31.433115, 39.692520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688995, 31.279387, 39.659393>,  <38.386826, 31.023174, 39.604179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688995, 31.279387, 39.659393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401484, -0.618970, 0.675046,
		0.517829, -0.454526, -0.724748,
		0.755423, 0.640533, 0.138036,
		38.915623, 31.471546, 39.700806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056152, 30.652504, 39.565052>,  <38.386826, 31.023174, 39.604179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056152, 30.652504, 39.565052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111961, 30.978579, 39.789909>,  <39.145447, 31.174223, 39.924824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111961, 30.978579, 39.789909>,  <39.056152, 30.652504, 39.565052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111961, 30.978579, 39.789909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361351, -0.570459, 0.737564,
		0.921932, 0.100225, -0.374160,
		0.139521, 0.815188, 0.562141,
		39.153816, 31.223135, 39.958553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721218, 30.550154, 39.915398>,  <39.056152, 30.652504, 39.565052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721218, 30.550154, 39.915398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480976, 30.803398, 40.110722>,  <39.336830, 30.955345, 40.227917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480976, 30.803398, 40.110722>,  <39.721218, 30.550154, 39.915398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480976, 30.803398, 40.110722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227598, -0.450086, 0.863494,
		0.766469, 0.629755, 0.126228,
		-0.600603, 0.633112, 0.488309,
		39.300797, 30.993332, 40.257214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026573, 30.620354, 40.498898>,  <39.721218, 30.550154, 39.915398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026573, 30.620354, 40.498898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668030, 30.767473, 40.597897>,  <39.452904, 30.855745, 40.657295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668030, 30.767473, 40.597897>,  <40.026573, 30.620354, 40.498898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668030, 30.767473, 40.597897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113339, -0.349610, 0.930015,
		0.428589, 0.861682, 0.271691,
		-0.896362, 0.367801, 0.247501,
		39.399120, 30.877813, 40.672146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113071, 31.003304, 41.203320>,  <40.026573, 30.620354, 40.498898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113071, 31.003304, 41.203320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732273, 30.889698, 41.157642>,  <39.503796, 30.821535, 41.130238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732273, 30.889698, 41.157642>,  <40.113071, 31.003304, 41.203320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732273, 30.889698, 41.157642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036482, -0.265105, 0.963529,
		-0.303926, 0.921442, 0.242018,
		-0.951997, -0.284012, -0.114189,
		39.446674, 30.804495, 41.123386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701397, 31.316183, 41.742756>,  <40.113071, 31.003304, 41.203320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701397, 31.316183, 41.742756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472836, 31.003687, 41.642227>,  <39.335697, 30.816189, 41.581909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472836, 31.003687, 41.642227>,  <39.701397, 31.316183, 41.742756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472836, 31.003687, 41.642227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204608, -0.160949, 0.965521,
		-0.794755, 0.603123, -0.067881,
		-0.571402, -0.781242, -0.251318,
		39.301414, 30.769314, 41.566833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046364, 31.454786, 42.033146>,  <39.701397, 31.316183, 41.742756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046364, 31.454786, 42.033146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059677, 31.058626, 41.979477>,  <39.067665, 30.820930, 41.947277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059677, 31.058626, 41.979477>,  <39.046364, 31.454786, 42.033146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059677, 31.058626, 41.979477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329468, -0.137612, 0.934084,
		-0.943580, 0.013115, -0.330885,
		0.033284, -0.990399, -0.134169,
		39.069664, 30.761507, 41.939228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458637, 31.303902, 42.324051>,  <39.046364, 31.454786, 42.033146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458637, 31.303902, 42.324051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664421, 30.961018, 42.314899>,  <38.787891, 30.755287, 42.309406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664421, 30.961018, 42.314899>,  <38.458637, 31.303902, 42.324051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664421, 30.961018, 42.314899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408521, -0.268461, 0.872376,
		-0.753952, -0.439454, -0.488300,
		0.514459, -0.857210, -0.022881,
		38.818760, 30.703856, 42.308037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021255, 30.868767, 42.672466>,  <38.458637, 31.303902, 42.324051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021255, 30.868767, 42.672466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352760, 30.644960, 42.676472>,  <38.551662, 30.510675, 42.678875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352760, 30.644960, 42.676472>,  <38.021255, 30.868767, 42.672466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352760, 30.644960, 42.676472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163817, -0.225454, 0.960382,
		-0.535093, -0.797565, -0.278505,
		0.828757, -0.559518, 0.010016,
		38.601387, 30.477104, 42.679478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806877, 30.310528, 43.064392>,  <38.021255, 30.868767, 42.672466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806877, 30.310528, 43.064392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206810, 30.309086, 43.071659>,  <38.446770, 30.308220, 43.076019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206810, 30.309086, 43.071659>,  <37.806877, 30.310528, 43.064392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206810, 30.309086, 43.071659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018428, -0.293280, 0.955849,
		0.001884, -0.956020, -0.293296,
		0.999828, -0.003604, 0.018170,
		38.506760, 30.308004, 43.077110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022938, 29.734818, 43.481518>,  <37.806877, 30.310528, 43.064392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022938, 29.734818, 43.481518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353355, 29.960129, 43.489197>,  <38.551605, 30.095316, 43.493805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353355, 29.960129, 43.489197>,  <38.022938, 29.734818, 43.481518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353355, 29.960129, 43.489197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036991, -0.088174, 0.995418,
		0.562392, -0.821548, -0.093672,
		0.826043, 0.563281, 0.019198,
		38.601170, 30.129112, 43.494957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486053, 29.385904, 43.908195>,  <38.022938, 29.734818, 43.481518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486053, 29.385904, 43.908195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595547, 29.770548, 43.915970>,  <38.661243, 30.001333, 43.920635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595547, 29.770548, 43.915970>,  <38.486053, 29.385904, 43.908195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595547, 29.770548, 43.915970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018469, -0.014950, 0.999717,
		0.961628, -0.274017, 0.013668,
		0.273735, 0.961609, 0.019438,
		38.677666, 30.059031, 43.921803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047150, 29.363552, 44.422108>,  <38.486053, 29.385904, 43.908195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047150, 29.363552, 44.422108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905571, 29.736538, 44.393177>,  <38.820625, 29.960329, 44.375816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905571, 29.736538, 44.393177>,  <39.047150, 29.363552, 44.422108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905571, 29.736538, 44.393177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093506, 0.112230, 0.989273,
		0.930581, 0.343382, -0.126914,
		-0.353942, 0.932466, -0.072331,
		38.799389, 30.016277, 44.371479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526497, 29.828318, 44.666409>,  <39.047150, 29.363552, 44.422108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526497, 29.828318, 44.666409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191036, 30.033121, 44.740707>,  <38.989758, 30.156004, 44.785286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191036, 30.033121, 44.740707>,  <39.526497, 29.828318, 44.666409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191036, 30.033121, 44.740707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261597, 0.079525, 0.961895,
		0.477729, 0.855290, -0.200635,
		-0.838655, 0.512011, 0.185750,
		38.939438, 30.186724, 44.796432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707767, 30.206020, 45.252377>,  <39.526497, 29.828318, 44.666409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707767, 30.206020, 45.252377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311905, 30.262934, 45.244995>,  <39.074387, 30.297081, 45.240566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311905, 30.262934, 45.244995>,  <39.707767, 30.206020, 45.252377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311905, 30.262934, 45.244995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000994, 0.135400, 0.990790,
		0.143470, 0.980521, -0.134141,
		-0.989654, 0.142282, -0.018451,
		39.015007, 30.305618, 45.239460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551102, 30.801178, 45.488590>,  <39.707767, 30.206020, 45.252377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551102, 30.801178, 45.488590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199337, 30.614630, 45.526806>,  <38.988277, 30.502701, 45.549736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199337, 30.614630, 45.526806>,  <39.551102, 30.801178, 45.488590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199337, 30.614630, 45.526806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048881, 0.288080, 0.956358,
		-0.473538, 0.836367, -0.276139,
		-0.879416, -0.466370, 0.095535,
		38.935513, 30.474718, 45.555466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150665, 31.214216, 45.858738>,  <39.551102, 30.801178, 45.488590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150665, 31.214216, 45.858738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973507, 30.858130, 45.901367>,  <38.867214, 30.644478, 45.926945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973507, 30.858130, 45.901367>,  <39.150665, 31.214216, 45.858738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973507, 30.858130, 45.901367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148477, 0.190048, 0.970483,
		-0.884196, 0.413995, -0.216348,
		-0.442891, -0.890219, 0.106571,
		38.840641, 30.591064, 45.933338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487728, 31.409002, 46.301170>,  <39.150665, 31.214216, 45.858738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487728, 31.409002, 46.301170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594532, 31.023657, 46.311237>,  <38.658615, 30.792450, 46.317280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594532, 31.023657, 46.311237>,  <38.487728, 31.409002, 46.301170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594532, 31.023657, 46.311237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145480, 0.066114, 0.987150,
		-0.952649, -0.259920, 0.157804,
		0.267013, -0.963364, 0.025170,
		38.674637, 30.734648, 46.318787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141766, 31.220406, 46.948830>,  <38.487728, 31.409002, 46.301170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141766, 31.220406, 46.948830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388626, 30.921406, 46.850552>,  <38.536743, 30.742006, 46.791584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388626, 30.921406, 46.850552>,  <38.141766, 31.220406, 46.948830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388626, 30.921406, 46.850552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121451, -0.218018, 0.968358,
		-0.777414, -0.627465, -0.043766,
		0.617153, -0.747500, -0.245697,
		38.573772, 30.697155, 46.776844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880329, 30.570797, 47.231068>,  <38.141766, 31.220406, 46.948830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880329, 30.570797, 47.231068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275856, 30.531387, 47.186302>,  <38.513172, 30.507742, 47.159443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275856, 30.531387, 47.186302>,  <37.880329, 30.570797, 47.231068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275856, 30.531387, 47.186302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089555, -0.207683, 0.974088,
		-0.119209, -0.973222, -0.196539,
		0.988822, -0.098519, -0.111914,
		38.572502, 30.501831, 47.152729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043518, 30.145189, 47.699295>,  <37.880329, 30.570797, 47.231068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043518, 30.145189, 47.699295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423393, 30.246729, 47.625916>,  <38.651318, 30.307653, 47.581890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423393, 30.246729, 47.625916>,  <38.043518, 30.145189, 47.699295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423393, 30.246729, 47.625916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241997, -0.222926, 0.944320,
		0.198822, -0.941203, -0.273142,
		0.949688, 0.253852, -0.183446,
		38.708298, 30.322884, 47.570881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545090, 29.612902, 47.958469>,  <38.043518, 30.145189, 47.699295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545090, 29.612902, 47.958469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786751, 29.931480, 47.948071>,  <38.931747, 30.122627, 47.941830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786751, 29.931480, 47.948071>,  <38.545090, 29.612902, 47.958469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786751, 29.931480, 47.948071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270427, -0.174225, 0.946845,
		0.749579, -0.579070, -0.320639,
		0.604152, 0.796445, -0.026001,
		38.967995, 30.170414, 47.940269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096272, 29.338150, 48.338474>,  <38.545090, 29.612902, 47.958469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096272, 29.338150, 48.338474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113903, 29.737598, 48.349869>,  <39.124481, 29.977268, 48.356705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113903, 29.737598, 48.349869>,  <39.096272, 29.338150, 48.338474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113903, 29.737598, 48.349869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318350, -0.041063, 0.947084,
		0.946948, -0.032676, -0.319721,
		0.044076, 0.998622, 0.028482,
		39.127125, 30.037186, 48.358414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730030, 29.480463, 48.638550>,  <39.096272, 29.338150, 48.338474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730030, 29.480463, 48.638550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507603, 29.806286, 48.704620>,  <39.374146, 30.001780, 48.744263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507603, 29.806286, 48.704620>,  <39.730030, 29.480463, 48.638550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507603, 29.806286, 48.704620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368106, 0.063192, 0.927634,
		0.745172, 0.576633, -0.334982,
		-0.556072, 0.814556, 0.165173,
		39.340782, 30.050653, 48.754173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144272, 30.069719, 48.877590>,  <39.730030, 29.480463, 48.638550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144272, 30.069719, 48.877590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776649, 30.152689, 49.011639>,  <39.556076, 30.202471, 49.092068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776649, 30.152689, 49.011639>,  <40.144272, 30.069719, 48.877590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776649, 30.152689, 49.011639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389716, 0.351511, 0.851212,
		0.058763, 0.912916, -0.403895,
		-0.919059, 0.207424, 0.335122,
		39.500931, 30.214916, 49.112175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286591, 30.689390, 49.255444>,  <40.144272, 30.069719, 48.877590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286591, 30.689390, 49.255444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931671, 30.558723, 49.385670>,  <39.718719, 30.480324, 49.463806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931671, 30.558723, 49.385670>,  <40.286591, 30.689390, 49.255444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931671, 30.558723, 49.385670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203782, 0.355577, 0.912161,
		-0.413736, 0.875702, -0.248934,
		-0.887297, -0.326666, 0.325567,
		39.665482, 30.460724, 49.483341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913593, 31.287626, 49.640881>,  <40.286591, 30.689390, 49.255444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913593, 31.287626, 49.640881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731827, 30.951975, 49.760464>,  <39.622768, 30.750584, 49.832214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731827, 30.951975, 49.760464>,  <39.913593, 31.287626, 49.640881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731827, 30.951975, 49.760464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059267, 0.306382, 0.950062,
		-0.888818, 0.449438, -0.089491,
		-0.454412, -0.839128, 0.298955,
		39.595505, 30.700237, 49.850151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159966, 31.457577, 49.832985>,  <39.913593, 31.287626, 49.640881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159966, 31.457577, 49.832985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019535, 31.807358, 49.966900>,  <38.935276, 32.017227, 50.047249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019535, 31.807358, 49.966900>,  <39.159966, 31.457577, 49.832985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019535, 31.807358, 49.966900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165635, 0.409908, -0.896962,
		-0.921582, -0.259445, -0.288746,
		-0.351072, 0.874451, 0.334791,
		38.914215, 32.069695, 50.067337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530968, 31.748745, 49.321720>,  <39.159966, 31.457577, 49.832985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530968, 31.748745, 49.321720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710659, 32.045818, 49.520363>,  <38.818474, 32.224064, 49.639549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710659, 32.045818, 49.520363>,  <38.530968, 31.748745, 49.321720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710659, 32.045818, 49.520363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271748, 0.415922, -0.867849,
		-0.851085, 0.524815, -0.014978,
		0.449230, 0.742683, 0.496602,
		38.845428, 32.268623, 49.669342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264999, 32.523636, 49.081154>,  <38.530968, 31.748745, 49.321720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264999, 32.523636, 49.081154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613266, 32.623886, 49.250450>,  <38.822224, 32.684036, 49.352028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613266, 32.623886, 49.250450>,  <38.264999, 32.523636, 49.081154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613266, 32.623886, 49.250450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303991, 0.402288, -0.863571,
		-0.386696, 0.880541, 0.274070,
		0.870664, 0.250624, 0.423239,
		38.874466, 32.699074, 49.377422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348026, 33.173683, 48.879868>,  <38.264999, 32.523636, 49.081154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348026, 33.173683, 48.879868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716511, 33.061890, 48.988136>,  <38.937599, 32.994816, 49.053097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716511, 33.061890, 48.988136>,  <38.348026, 33.173683, 48.879868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716511, 33.061890, 48.988136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388107, 0.611205, -0.689783,
		0.027344, 0.740485, 0.671517,
		0.921209, -0.279482, 0.270675,
		38.992874, 32.978046, 49.069340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716946, 33.826561, 48.972904>,  <38.348026, 33.173683, 48.879868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716946, 33.826561, 48.972904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998035, 33.550095, 48.905415>,  <39.166691, 33.384216, 48.864922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998035, 33.550095, 48.905415>,  <38.716946, 33.826561, 48.972904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998035, 33.550095, 48.905415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368766, 0.556658, -0.744408,
		0.608432, 0.460893, 0.646056,
		0.702725, -0.691165, -0.168727,
		39.208855, 33.342747, 48.854797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364353, 34.152832, 48.929642>,  <38.716946, 33.826561, 48.972904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364353, 34.152832, 48.929642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426353, 33.804501, 48.743038>,  <39.463554, 33.595501, 48.631077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.426353, 33.804501, 48.743038>,  <39.364353, 34.152832, 48.929642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426353, 33.804501, 48.743038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520280, 0.473380, -0.710788,
		0.839811, -0.132538, 0.526452,
		0.155006, -0.870830, -0.466507,
		39.472855, 33.543251, 48.603085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965820, 34.269978, 48.593384>,  <39.364353, 34.152832, 48.929642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965820, 34.269978, 48.593384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817024, 33.948906, 48.406910>,  <39.727745, 33.756264, 48.295025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817024, 33.948906, 48.406910>,  <39.965820, 34.269978, 48.593384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817024, 33.948906, 48.406910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503563, 0.247396, -0.827780,
		0.779772, -0.542684, 0.312168,
		-0.371994, -0.802676, -0.466188,
		39.705425, 33.708103, 48.267052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571060, 33.942654, 48.233105>,  <39.965820, 34.269978, 48.593384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571060, 33.942654, 48.233105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227764, 33.837009, 48.057076>,  <40.021786, 33.773624, 47.951458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227764, 33.837009, 48.057076>,  <40.571060, 33.942654, 48.233105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227764, 33.837009, 48.057076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371872, 0.270962, -0.887857,
		0.353735, -0.925648, -0.134336,
		-0.858244, -0.264111, -0.440072,
		39.970291, 33.757774, 47.925053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755188, 33.523247, 47.617004>,  <40.571060, 33.942654, 48.233105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755188, 33.523247, 47.617004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386066, 33.653362, 47.534424>,  <40.164593, 33.731430, 47.484875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386066, 33.653362, 47.534424>,  <40.755188, 33.523247, 47.617004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386066, 33.653362, 47.534424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273288, 0.174955, -0.945888,
		-0.271566, -0.929289, -0.250346,
		-0.922803, 0.325288, -0.206452,
		40.109226, 33.750950, 47.472488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635311, 33.259895, 46.936382>,  <40.755188, 33.523247, 47.617004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635311, 33.259895, 46.936382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330780, 33.513397, 46.991131>,  <40.148060, 33.665497, 47.023979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330780, 33.513397, 46.991131>,  <40.635311, 33.259895, 46.936382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330780, 33.513397, 46.991131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069298, 0.130348, -0.989043,
		-0.644653, -0.762471, -0.055319,
		-0.761328, 0.633757, 0.136867,
		40.102383, 33.703526, 47.032192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043739, 33.022415, 46.588463>,  <40.635311, 33.259895, 46.936382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043739, 33.022415, 46.588463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001953, 33.420174, 46.595016>,  <39.976883, 33.658829, 46.598949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001953, 33.420174, 46.595016>,  <40.043739, 33.022415, 46.588463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001953, 33.420174, 46.595016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188280, -0.003593, -0.982109,
		-0.976544, -0.105677, 0.187600,
		-0.104461, 0.994394, 0.016388,
		39.970615, 33.718491, 46.599934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505733, 33.178242, 46.056499>,  <40.043739, 33.022415, 46.588463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505733, 33.178242, 46.056499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702785, 33.518879, 46.128174>,  <39.821014, 33.723263, 46.171181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702785, 33.518879, 46.128174>,  <39.505733, 33.178242, 46.056499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702785, 33.518879, 46.128174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227918, 0.324976, -0.917848,
		-0.839864, 0.411317, 0.354185,
		0.492628, 0.851592, 0.179189,
		39.850574, 33.774357, 46.181931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111927, 33.754936, 45.917770>,  <39.505733, 33.178242, 46.056499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111927, 33.754936, 45.917770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488964, 33.883160, 45.880314>,  <39.715187, 33.960094, 45.857841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488964, 33.883160, 45.880314>,  <39.111927, 33.754936, 45.917770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488964, 33.883160, 45.880314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131536, 0.098644, -0.986391,
		-0.306962, 0.942077, 0.135146,
		0.942588, 0.320561, -0.093637,
		39.771740, 33.979328, 45.852222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000896, 34.400700, 45.589081>,  <39.111927, 33.754936, 45.917770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000896, 34.400700, 45.589081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362720, 34.251255, 45.506931>,  <39.579815, 34.161587, 45.457642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362720, 34.251255, 45.506931>,  <39.000896, 34.400700, 45.589081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362720, 34.251255, 45.506931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176925, 0.109319, -0.978135,
		0.387897, 0.921120, 0.032784,
		0.904563, -0.373615, -0.205373,
		39.634090, 34.139172, 45.445320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289589, 34.843155, 45.093994>,  <39.000896, 34.400700, 45.589081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289589, 34.843155, 45.093994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548283, 34.538807, 45.072784>,  <39.703499, 34.356197, 45.060059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548283, 34.538807, 45.072784>,  <39.289589, 34.843155, 45.093994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548283, 34.538807, 45.072784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049503, 0.027506, -0.998395,
		0.761109, 0.648320, -0.019876,
		0.646733, -0.760871, -0.053028,
		39.742302, 34.310547, 45.056877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788113, 35.024807, 44.611725>,  <39.289589, 34.843155, 45.093994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788113, 35.024807, 44.611725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792412, 34.626144, 44.644112>,  <39.794991, 34.386948, 44.663544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792412, 34.626144, 44.644112>,  <39.788113, 35.024807, 44.611725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792412, 34.626144, 44.644112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006525, -0.081044, -0.996689,
		0.999921, 0.010183, -0.007375,
		0.010747, -0.996659, 0.080972,
		39.795635, 34.327148, 44.668404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294888, 34.803230, 44.168526>,  <39.788113, 35.024807, 44.611725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294888, 34.803230, 44.168526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069366, 34.475574, 44.210739>,  <39.934052, 34.278980, 44.236065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069366, 34.475574, 44.210739>,  <40.294888, 34.803230, 44.168526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069366, 34.475574, 44.210739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082551, -0.071245, -0.994037,
		0.821772, -0.569156, -0.027452,
		-0.563806, -0.819137, 0.105532,
		39.900223, 34.229832, 44.242397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550972, 34.301773, 43.774776>,  <40.294888, 34.803230, 44.168526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550972, 34.301773, 43.774776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168373, 34.193672, 43.818726>,  <39.938812, 34.128811, 43.845093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168373, 34.193672, 43.818726>,  <40.550972, 34.301773, 43.774776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168373, 34.193672, 43.818726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025919, -0.296394, -0.954714,
		0.290583, -0.916031, 0.276495,
		-0.956499, -0.270257, 0.109870,
		39.881424, 34.112595, 43.851685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375198, 33.634315, 43.449093>,  <40.550972, 34.301773, 43.774776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375198, 33.634315, 43.449093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005619, 33.785126, 43.474918>,  <39.783871, 33.875610, 43.490414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005619, 33.785126, 43.474918>,  <40.375198, 33.634315, 43.449093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005619, 33.785126, 43.474918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176861, -0.271419, -0.946072,
		-0.339169, -0.885542, 0.317459,
		-0.923951, 0.377024, 0.064561,
		39.728432, 33.898232, 43.494286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944096, 33.103394, 43.159565>,  <40.375198, 33.634315, 43.449093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944096, 33.103394, 43.159565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718418, 33.433460, 43.148380>,  <39.583012, 33.631500, 43.141670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718418, 33.433460, 43.148380>,  <39.944096, 33.103394, 43.159565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718418, 33.433460, 43.148380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459787, -0.342140, -0.819473,
		-0.685770, -0.449486, 0.572435,
		-0.564194, 0.825169, -0.027961,
		39.549160, 33.681011, 43.139992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266129, 32.917110, 43.004723>,  <39.944096, 33.103394, 43.159565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266129, 32.917110, 43.004723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311909, 33.300945, 42.901886>,  <39.339378, 33.531246, 42.840183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311909, 33.300945, 42.901886>,  <39.266129, 32.917110, 43.004723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311909, 33.300945, 42.901886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069373, -0.250436, -0.965645,
		-0.991003, 0.128357, 0.037906,
		0.114454, 0.959587, -0.257088,
		39.346245, 33.588821, 42.824760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916142, 33.010193, 42.441269>,  <39.266129, 32.917110, 43.004723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916142, 33.010193, 42.441269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151649, 33.332226, 42.412441>,  <39.292953, 33.525444, 42.395145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151649, 33.332226, 42.412441>,  <38.916142, 33.010193, 42.441269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151649, 33.332226, 42.412441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014589, -0.099736, -0.994907,
		-0.808171, 0.584717, -0.070467,
		0.588767, 0.805083, -0.072073,
		39.328281, 33.573750, 42.390820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682087, 33.406712, 41.922077>,  <38.916142, 33.010193, 42.441269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682087, 33.406712, 41.922077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053680, 33.551991, 41.950607>,  <39.276634, 33.639156, 41.967724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053680, 33.551991, 41.950607>,  <38.682087, 33.406712, 41.922077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053680, 33.551991, 41.950607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052273, 0.062035, -0.996704,
		-0.366421, 0.929646, 0.038645,
		0.928980, 0.363193, 0.071326,
		39.332375, 33.660950, 41.972004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857929, 34.021881, 41.449013>,  <38.682087, 33.406712, 41.922077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857929, 34.021881, 41.449013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206226, 33.831306, 41.497700>,  <39.415203, 33.716961, 41.526913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206226, 33.831306, 41.497700>,  <38.857929, 34.021881, 41.449013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206226, 33.831306, 41.497700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263789, 0.243665, -0.933297,
		0.414999, 0.844769, 0.337848,
		0.870742, -0.476438, 0.121720,
		39.467449, 33.688374, 41.534214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191380, 34.347042, 41.008045>,  <38.857929, 34.021881, 41.449013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191380, 34.347042, 41.008045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424599, 34.033012, 41.091686>,  <39.564529, 33.844597, 41.141872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424599, 34.033012, 41.091686>,  <39.191380, 34.347042, 41.008045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424599, 34.033012, 41.091686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354933, 0.014620, -0.934777,
		0.730810, 0.619233, 0.287172,
		0.583043, -0.785071, 0.209102,
		39.599510, 33.797489, 41.154415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929455, 34.564484, 40.806881>,  <39.191380, 34.347042, 41.008045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929455, 34.564484, 40.806881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940174, 34.164745, 40.816586>,  <39.946606, 33.924904, 40.822407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940174, 34.164745, 40.816586>,  <39.929455, 34.564484, 40.806881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940174, 34.164745, 40.816586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419650, -0.010781, -0.907622,
		0.907290, 0.034507, 0.419086,
		0.026801, -0.999346, 0.024262,
		39.948215, 33.864941, 40.823864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621147, 34.378849, 40.659157>,  <39.929455, 34.564484, 40.806881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621147, 34.378849, 40.659157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367168, 34.083538, 40.568123>,  <40.214783, 33.906353, 40.513500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367168, 34.083538, 40.568123>,  <40.621147, 34.378849, 40.659157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367168, 34.083538, 40.568123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393170, -0.055210, -0.917807,
		0.665029, -0.672236, 0.325323,
		-0.634944, -0.738275, -0.227587,
		40.176685, 33.862057, 40.499847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038639, 33.898235, 40.392807>,  <40.621147, 34.378849, 40.659157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038639, 33.898235, 40.392807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680637, 33.818924, 40.232975>,  <40.465836, 33.771336, 40.137077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680637, 33.818924, 40.232975>,  <41.038639, 33.898235, 40.392807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680637, 33.818924, 40.232975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409605, -0.010605, -0.912201,
		0.176634, -0.980088, 0.090708,
		-0.895000, -0.198280, -0.399576,
		40.412136, 33.759441, 40.113102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130199, 33.347965, 39.804417>,  <41.038639, 33.898235, 40.392807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130199, 33.347965, 39.804417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781631, 33.534569, 39.743759>,  <40.572491, 33.646530, 39.707367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781631, 33.534569, 39.743759>,  <41.130199, 33.347965, 39.804417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781631, 33.534569, 39.743759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196010, 0.047768, -0.979438,
		-0.449668, -0.883228, -0.133066,
		-0.871423, 0.466505, -0.151642,
		40.520203, 33.674519, 39.698265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945766, 33.023884, 39.238255>,  <41.130199, 33.347965, 39.804417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945766, 33.023884, 39.238255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719837, 33.353966, 39.239994>,  <40.584282, 33.552013, 39.241039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719837, 33.353966, 39.239994>,  <40.945766, 33.023884, 39.238255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719837, 33.353966, 39.239994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023739, 0.021519, -0.999486,
		-0.824872, -0.564428, -0.031744,
		-0.564821, 0.825202, 0.004351,
		40.550392, 33.601528, 39.241299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659145, 32.989025, 38.599983>,  <40.945766, 33.023884, 39.238255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659145, 32.989025, 38.599983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534824, 33.353008, 38.709805>,  <40.460232, 33.571400, 38.775700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534824, 33.353008, 38.709805>,  <40.659145, 32.989025, 38.599983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534824, 33.353008, 38.709805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061430, 0.307488, -0.949567,
		-0.948488, -0.278261, -0.151467,
		-0.310802, 0.909957, 0.274555,
		40.441586, 33.625996, 38.792171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242981, 33.213829, 38.018993>,  <40.659145, 32.989025, 38.599983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242981, 33.213829, 38.018993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368698, 33.528637, 38.231339>,  <40.444130, 33.717522, 38.358746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368698, 33.528637, 38.231339>,  <40.242981, 33.213829, 38.018993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368698, 33.528637, 38.231339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119321, 0.522012, -0.844551,
		-0.941797, 0.328781, 0.070158,
		0.314295, 0.787024, 0.530860,
		40.462986, 33.764744, 38.390598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913803, 33.847820, 37.740589>,  <40.242981, 33.213829, 38.018993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913803, 33.847820, 37.740589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221596, 33.987476, 37.954502>,  <40.406273, 34.071270, 38.082851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221596, 33.987476, 37.954502>,  <39.913803, 33.847820, 37.740589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221596, 33.987476, 37.954502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250584, 0.605157, -0.755641,
		-0.587457, 0.715460, 0.378167,
		0.769482, 0.349144, 0.534787,
		40.452442, 34.092220, 38.114937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821308, 34.563641, 37.652584>,  <39.913803, 33.847820, 37.740589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821308, 34.563641, 37.652584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183575, 34.433514, 37.761356>,  <40.400932, 34.355438, 37.826618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183575, 34.433514, 37.761356>,  <39.821308, 34.563641, 37.652584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183575, 34.433514, 37.761356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420284, 0.604082, -0.677087,
		0.055999, 0.727499, 0.683819,
		0.905663, -0.325314, 0.271928,
		40.455273, 34.335918, 37.842934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220406, 35.160629, 37.694283>,  <39.821308, 34.563641, 37.652584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220406, 35.160629, 37.694283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470535, 34.849854, 37.665073>,  <40.620613, 34.663387, 37.647549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470535, 34.849854, 37.665073>,  <40.220406, 35.160629, 37.694283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470535, 34.849854, 37.665073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508946, 0.476978, -0.716566,
		0.591557, 0.410925, 0.693687,
		0.625328, -0.776938, -0.073021,
		40.658134, 34.616772, 37.643166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786163, 35.508911, 37.270565>,  <40.220406, 35.160629, 37.694283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786163, 35.508911, 37.270565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901237, 35.125912, 37.262321>,  <40.970284, 34.896111, 37.257378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901237, 35.125912, 37.262321>,  <40.786163, 35.508911, 37.270565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901237, 35.125912, 37.262321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685718, 0.220952, -0.693521,
		0.668601, 0.185387, 0.720142,
		0.287686, -0.957503, -0.020606,
		40.987545, 34.838661, 37.256138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521069, 35.451172, 37.366039>,  <40.786163, 35.508911, 37.270565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521069, 35.451172, 37.366039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409100, 35.127174, 37.159912>,  <41.341919, 34.932777, 37.036236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409100, 35.127174, 37.159912>,  <41.521069, 35.451172, 37.366039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409100, 35.127174, 37.159912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583709, 0.282562, -0.761211,
		0.762186, -0.513876, 0.393705,
		-0.279922, -0.809994, -0.515319,
		41.325123, 34.884178, 37.005318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108860, 35.314995, 37.072929>,  <41.521069, 35.451172, 37.366039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108860, 35.314995, 37.072929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853512, 35.106266, 36.846588>,  <41.700302, 34.981030, 36.710785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853512, 35.106266, 36.846588>,  <42.108860, 35.314995, 37.072929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853512, 35.106266, 36.846588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542896, 0.215898, -0.811574,
		0.545663, -0.825281, 0.145473,
		-0.638369, -0.521823, -0.565850,
		41.662003, 34.949718, 36.676834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441761, 34.937115, 36.686905>,  <42.108860, 35.314995, 37.072929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441761, 34.937115, 36.686905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096359, 34.992977, 36.493057>,  <41.889118, 35.026493, 36.376747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096359, 34.992977, 36.493057>,  <42.441761, 34.937115, 36.686905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096359, 34.992977, 36.493057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503119, 0.305361, -0.808471,
		0.035075, -0.941940, -0.333945,
		-0.863505, 0.139657, -0.484618,
		41.837307, 35.034874, 36.347672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402039, 34.352459, 36.274937>,  <42.441761, 34.937115, 36.686905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402039, 34.352459, 36.274937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204662, 34.678066, 36.152378>,  <42.086235, 34.873432, 36.078842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204662, 34.678066, 36.152378>,  <42.402039, 34.352459, 36.274937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204662, 34.678066, 36.152378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648605, 0.109671, -0.753182,
		-0.579504, -0.570385, -0.582096,
		-0.493443, 0.814023, -0.306400,
		42.056629, 34.922272, 36.060459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248047, 34.245594, 35.612133>,  <42.402039, 34.352459, 36.274937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248047, 34.245594, 35.612133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247730, 34.638123, 35.689079>,  <42.247540, 34.873642, 35.735249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247730, 34.638123, 35.689079>,  <42.248047, 34.245594, 35.612133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247730, 34.638123, 35.689079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577138, 0.157540, -0.801307,
		-0.816646, 0.110390, -0.566483,
		-0.000787, 0.981323, 0.192365,
		42.247494, 34.932518, 35.746788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976822, 34.672226, 35.001919>,  <42.248047, 34.245594, 35.612133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976822, 34.672226, 35.001919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257492, 34.858540, 35.217587>,  <42.425892, 34.970325, 35.346989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257492, 34.858540, 35.217587>,  <41.976822, 34.672226, 35.001919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257492, 34.858540, 35.217587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652230, -0.115295, -0.749201,
		-0.286799, 0.877357, -0.384695,
		0.701671, 0.465780, 0.539173,
		42.467995, 34.998272, 35.379337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314960, 35.253536, 34.706581>,  <41.976822, 34.672226, 35.001919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314960, 35.253536, 34.706581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596809, 35.085899, 34.935623>,  <42.765919, 34.985317, 35.073048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596809, 35.085899, 34.935623>,  <42.314960, 35.253536, 34.706581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596809, 35.085899, 34.935623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560544, -0.166043, -0.811308,
		0.435088, 0.892632, 0.117922,
		0.704620, -0.419091, 0.572603,
		42.808197, 34.960171, 35.107403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918423, 35.614365, 34.385872>,  <42.314960, 35.253536, 34.706581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918423, 35.614365, 34.385872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994781, 35.284031, 34.598118>,  <43.040596, 35.085831, 34.725468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994781, 35.284031, 34.598118>,  <42.918423, 35.614365, 34.385872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994781, 35.284031, 34.598118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622321, -0.316222, -0.716045,
		0.759128, 0.466905, 0.453569,
		0.190896, -0.825835, 0.530617,
		43.052052, 35.036282, 34.757301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616611, 35.461391, 34.530701>,  <42.918423, 35.614365, 34.385872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616611, 35.461391, 34.530701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486340, 35.085819, 34.575130>,  <43.408176, 34.860474, 34.601788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486340, 35.085819, 34.575130>,  <43.616611, 35.461391, 34.530701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486340, 35.085819, 34.575130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779025, -0.333052, -0.531222,
		0.535776, -0.086477, 0.839920,
		-0.325675, -0.938935, 0.111073,
		43.388638, 34.804138, 34.608452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097935, 35.260994, 35.127068>,  <43.616611, 35.461391, 34.530701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097935, 35.260994, 35.127068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390038, 35.344139, 35.387379>,  <44.565300, 35.394028, 35.543564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390038, 35.344139, 35.387379>,  <44.097935, 35.260994, 35.127068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390038, 35.344139, 35.387379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042057, 0.964460, -0.260860,
		-0.681872, 0.163126, 0.713049,
		0.730261, 0.207862, 0.650778,
		44.609116, 35.406498, 35.582611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879715, 35.897560, 35.378796>,  <44.097935, 35.260994, 35.127068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879715, 35.897560, 35.378796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266682, 35.877460, 35.478050>,  <44.498863, 35.865398, 35.537605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266682, 35.877460, 35.478050>,  <43.879715, 35.897560, 35.378796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266682, 35.877460, 35.478050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087154, 0.986302, -0.140049,
		-0.237702, 0.157112, 0.958548,
		0.967420, -0.050251, 0.248139,
		44.556908, 35.862385, 35.552490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021973, 36.307201, 36.036610>,  <43.879715, 35.897560, 35.378796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021973, 36.307201, 36.036610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327267, 36.299274, 35.778282>,  <44.510445, 36.294518, 35.623287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327267, 36.299274, 35.778282>,  <44.021973, 36.307201, 36.036610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327267, 36.299274, 35.778282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075020, 0.990052, -0.119034,
		0.641748, 0.139301, 0.754158,
		0.763237, -0.019813, -0.645814,
		44.556236, 36.293331, 35.584538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549461, 36.439320, 36.452682>,  <44.021973, 36.307201, 36.036610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549461, 36.439320, 36.452682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597588, 36.551685, 36.071815>,  <44.626461, 36.619102, 35.843296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597588, 36.551685, 36.071815>,  <44.549461, 36.439320, 36.452682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597588, 36.551685, 36.071815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037828, 0.959731, 0.278363,
		0.992015, 0.002527, 0.126094,
		0.120313, 0.280910, -0.952163,
		44.633682, 36.635960, 35.786167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864635, 37.076778, 36.559700>,  <44.549461, 36.439320, 36.452682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864635, 37.076778, 36.559700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748302, 37.068329, 36.177082>,  <44.678505, 37.063259, 35.947514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748302, 37.068329, 36.177082>,  <44.864635, 37.076778, 36.559700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748302, 37.068329, 36.177082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365665, 0.926314, 0.090721,
		0.884142, 0.376159, -0.277124,
		-0.290829, -0.021124, -0.956542,
		44.661053, 37.061993, 35.890121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125427, 37.706074, 36.276058>,  <44.864635, 37.076778, 36.559700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125427, 37.706074, 36.276058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.819775, 37.581482, 36.050110>,  <44.636383, 37.506729, 35.914539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.819775, 37.581482, 36.050110>,  <45.125427, 37.706074, 36.276058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.819775, 37.581482, 36.050110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401180, 0.915209, 0.038040,
		0.505130, 0.255684, -0.824299,
		-0.764132, -0.311477, -0.564875,
		44.590534, 37.488037, 35.880646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960110, 38.244251, 35.810520>,  <45.125427, 37.706074, 36.276058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960110, 38.244251, 35.810520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630951, 38.018631, 35.783123>,  <44.433456, 37.883259, 35.766685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630951, 38.018631, 35.783123>,  <44.960110, 38.244251, 35.810520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630951, 38.018631, 35.783123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568191, 0.817085, 0.097631,
		0.000897, 0.119257, -0.992863,
		-0.822896, -0.564048, -0.068494,
		44.384083, 37.849415, 35.762573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605011, 38.279453, 35.141781>,  <44.960110, 38.244251, 35.810520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605011, 38.279453, 35.141781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338974, 38.175179, 35.421696>,  <44.179352, 38.112614, 35.589645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338974, 38.175179, 35.421696>,  <44.605011, 38.279453, 35.141781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338974, 38.175179, 35.421696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514485, 0.839165, -0.176371,
		-0.541257, -0.477331, -0.692240,
		-0.665091, -0.260685, 0.699784,
		44.139446, 38.096973, 35.631630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987423, 38.424969, 34.795296>,  <44.605011, 38.279453, 35.141781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987423, 38.424969, 34.795296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917118, 38.412296, 35.188866>,  <43.874935, 38.404694, 35.425007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917118, 38.412296, 35.188866>,  <43.987423, 38.424969, 34.795296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917118, 38.412296, 35.188866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566473, 0.820682, -0.074765,
		-0.805120, -0.570506, -0.162188,
		-0.175759, -0.031681, 0.983923,
		43.864391, 38.402794, 35.484043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317120, 38.669250, 34.831528>,  <43.987423, 38.424969, 34.795296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317120, 38.669250, 34.831528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419773, 38.695786, 35.217220>,  <43.481365, 38.711704, 35.448635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419773, 38.695786, 35.217220>,  <43.317120, 38.669250, 34.831528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419773, 38.695786, 35.217220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578544, 0.809708, 0.098280,
		-0.774226, -0.583072, 0.246175,
		0.256634, 0.066333, 0.964230,
		43.496765, 38.715687, 35.506489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649910, 38.552799, 35.233753>,  <43.317120, 38.669250, 34.831528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649910, 38.552799, 35.233753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916649, 38.763218, 35.444881>,  <43.076691, 38.889469, 35.571560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916649, 38.763218, 35.444881>,  <42.649910, 38.552799, 35.233753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916649, 38.763218, 35.444881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620202, 0.784440, 0.001761,
		-0.413118, -0.328530, 0.849354,
		0.666846, 0.526043, 0.527821,
		43.116703, 38.921032, 35.603230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267502, 39.018467, 35.458633>,  <42.649910, 38.552799, 35.233753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267502, 39.018467, 35.458633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614792, 39.183704, 35.568573>,  <42.823166, 39.282845, 35.634537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614792, 39.183704, 35.568573>,  <42.267502, 39.018467, 35.458633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614792, 39.183704, 35.568573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453357, 0.885574, 0.101121,
		-0.201628, -0.212401, 0.956155,
		0.868224, 0.413091, 0.274850,
		42.875259, 39.307632, 35.651028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043270, 39.595188, 35.863503>,  <42.267502, 39.018467, 35.458633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043270, 39.595188, 35.863503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423080, 39.658920, 35.755413>,  <42.650967, 39.697159, 35.690559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423080, 39.658920, 35.755413>,  <42.043270, 39.595188, 35.863503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423080, 39.658920, 35.755413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175066, 0.983935, -0.034991,
		0.260303, 0.080531, 0.962163,
		0.949523, 0.159333, -0.270220,
		42.707939, 39.706718, 35.674347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333580, 40.145878, 36.289547>,  <42.043270, 39.595188, 35.863503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333580, 40.145878, 36.289547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532913, 40.134937, 35.942924>,  <42.652512, 40.128372, 35.734951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532913, 40.134937, 35.942924>,  <42.333580, 40.145878, 36.289547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532913, 40.134937, 35.942924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107834, 0.989786, -0.093252,
		0.860253, 0.139914, 0.490295,
		0.498334, -0.027349, -0.866554,
		42.682415, 40.126732, 35.682957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739880, 40.711842, 36.393059>,  <42.333580, 40.145878, 36.289547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739880, 40.711842, 36.393059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739677, 40.624481, 36.002716>,  <42.739555, 40.572063, 35.768509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739677, 40.624481, 36.002716>,  <42.739880, 40.711842, 36.393059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739677, 40.624481, 36.002716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207927, 0.954554, -0.213525,
		0.978144, 0.202799, -0.045895,
		-0.000506, -0.218401, -0.975859,
		42.739525, 40.558960, 35.709957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175434, 41.219814, 36.049809>,  <42.739880, 40.711842, 36.393059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175434, 41.219814, 36.049809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944725, 41.099598, 35.745964>,  <42.806301, 41.027470, 35.563656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944725, 41.099598, 35.745964>,  <43.175434, 41.219814, 36.049809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944725, 41.099598, 35.745964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101280, 0.896382, -0.431557,
		0.810602, -0.325844, -0.486570,
		-0.576773, -0.300541, -0.759611,
		42.771694, 41.009438, 35.518082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466293, 41.620258, 35.509880>,  <43.175434, 41.219814, 36.049809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466293, 41.620258, 35.509880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106991, 41.495052, 35.386486>,  <42.891411, 41.419930, 35.312450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106991, 41.495052, 35.386486>,  <43.466293, 41.620258, 35.509880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106991, 41.495052, 35.386486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160336, 0.886967, -0.433107,
		0.409184, -0.339579, -0.846909,
		-0.898254, -0.313011, -0.308486,
		42.837513, 41.401150, 35.293941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466488, 41.679199, 34.854385>,  <43.466293, 41.620258, 35.509880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466488, 41.679199, 34.854385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071217, 41.694904, 34.913662>,  <42.834053, 41.704327, 34.949230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071217, 41.694904, 34.913662>,  <43.466488, 41.679199, 34.854385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071217, 41.694904, 34.913662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034462, 0.885011, -0.464293,
		-0.149383, -0.463912, -0.873196,
		-0.988179, 0.039266, 0.148193,
		42.774761, 41.706684, 34.958118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163654, 41.852695, 34.223072>,  <43.466488, 41.679199, 34.854385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163654, 41.852695, 34.223072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912949, 41.963913, 34.514236>,  <42.762524, 42.030643, 34.688934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912949, 41.963913, 34.514236>,  <43.163654, 41.852695, 34.223072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912949, 41.963913, 34.514236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088085, 0.902901, -0.420726,
		-0.774212, -0.327816, -0.541418,
		-0.626768, 0.278041, 0.727912,
		42.724918, 42.047325, 34.732609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628819, 42.129501, 33.768776>,  <43.163654, 41.852695, 34.223072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628819, 42.129501, 33.768776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621498, 42.263142, 34.145721>,  <42.617104, 42.343327, 34.371887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621498, 42.263142, 34.145721>,  <42.628819, 42.129501, 33.768776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621498, 42.263142, 34.145721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067010, 0.939989, -0.334559,
		-0.997584, -0.069272, 0.005182,
		-0.018304, 0.334098, 0.942360,
		42.616005, 42.363373, 34.428429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072601, 42.643223, 33.731190>,  <42.628819, 42.129501, 33.768776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072601, 42.643223, 33.731190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304497, 42.734978, 34.043926>,  <42.443634, 42.790031, 34.231567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304497, 42.734978, 34.043926>,  <42.072601, 42.643223, 33.731190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304497, 42.734978, 34.043926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148473, 0.973228, -0.175449,
		-0.801159, -0.014368, 0.598280,
		0.579742, 0.229391, 0.781843,
		42.478420, 42.803795, 34.278481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635685, 43.196678, 34.055416>,  <42.072601, 42.643223, 33.731190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635685, 43.196678, 34.055416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020000, 43.226696, 34.162182>,  <42.250591, 43.244709, 34.226242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020000, 43.226696, 34.162182>,  <41.635685, 43.196678, 34.055416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020000, 43.226696, 34.162182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042423, 0.991128, -0.125960,
		-0.274002, 0.109698, 0.955453,
		0.960793, 0.075047, 0.266917,
		42.308239, 43.249210, 34.242256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633999, 43.693775, 34.598484>,  <41.635685, 43.196678, 34.055416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633999, 43.693775, 34.598484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002869, 43.662598, 34.446945>,  <42.224190, 43.643890, 34.356022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002869, 43.662598, 34.446945>,  <41.633999, 43.693775, 34.598484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002869, 43.662598, 34.446945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022264, 0.988558, -0.149189,
		0.386142, 0.129143, 0.913354,
		0.922171, -0.077943, -0.378849,
		42.279518, 43.639214, 34.333290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961323, 44.322262, 34.862415>,  <41.633999, 43.693775, 34.598484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961323, 44.322262, 34.862415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110565, 44.168655, 34.524582>,  <42.200111, 44.076492, 34.321880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110565, 44.168655, 34.524582>,  <41.961323, 44.322262, 34.862415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110565, 44.168655, 34.524582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098826, 0.888690, -0.447731,
		0.922510, 0.250518, 0.293624,
		0.373106, -0.384018, -0.844584,
		42.222496, 44.053452, 34.271206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587597, 44.708412, 34.542782>,  <41.961323, 44.322262, 34.862415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587597, 44.708412, 34.542782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371143, 44.553776, 34.244057>,  <42.241272, 44.460995, 34.064823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371143, 44.553776, 34.244057>,  <42.587597, 44.708412, 34.542782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371143, 44.553776, 34.244057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066260, 0.865707, -0.496146,
		0.838320, -0.317967, -0.442851,
		-0.541138, -0.386586, -0.746807,
		42.208801, 44.437801, 34.020016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936237, 44.834415, 33.846066>,  <42.587597, 44.708412, 34.542782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936237, 44.834415, 33.846066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537117, 44.819904, 33.868286>,  <42.297646, 44.811199, 33.881618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537117, 44.819904, 33.868286>,  <42.936237, 44.834415, 33.846066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537117, 44.819904, 33.868286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056144, 0.907796, -0.415637,
		-0.035351, -0.417840, -0.907833,
		-0.997797, -0.036276, 0.055551,
		42.237778, 44.809021, 33.884953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171146, 45.080574, 33.193748>,  <42.936237, 44.834415, 33.846066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171146, 45.080574, 33.193748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222797, 45.368107, 32.920513>,  <43.253788, 45.540627, 32.756573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222797, 45.368107, 32.920513>,  <43.171146, 45.080574, 33.193748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222797, 45.368107, 32.920513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114477, -0.673441, -0.730323,
		-0.984997, 0.172505, -0.004674,
		0.129132, 0.718831, -0.683086,
		43.261536, 45.583755, 32.715588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584209, 45.312115, 32.699627>,  <43.171146, 45.080574, 33.193748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584209, 45.312115, 32.699627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924362, 45.371807, 32.497803>,  <43.128452, 45.407623, 32.376709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924362, 45.371807, 32.497803>,  <42.584209, 45.312115, 32.699627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924362, 45.371807, 32.497803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275203, -0.691163, -0.668249,
		-0.448458, 0.707123, -0.546683,
		0.850381, 0.149233, -0.504561,
		43.179478, 45.416576, 32.346436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517174, 45.296524, 32.074150>,  <42.584209, 45.312115, 32.699627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517174, 45.296524, 32.074150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911533, 45.229767, 32.078945>,  <43.148151, 45.189713, 32.081821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911533, 45.229767, 32.078945>,  <42.517174, 45.296524, 32.074150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911533, 45.229767, 32.078945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121926, -0.765634, -0.631617,
		0.114594, 0.621250, -0.775188,
		0.985902, -0.166895, 0.011991,
		43.207302, 45.179699, 32.082542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712997, 45.435917, 31.407726>,  <42.517174, 45.296524, 32.074150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712997, 45.435917, 31.407726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915699, 45.159420, 31.613789>,  <43.037319, 44.993523, 31.737427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915699, 45.159420, 31.613789>,  <42.712997, 45.435917, 31.407726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915699, 45.159420, 31.613789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220966, -0.681754, -0.697414,
		0.833290, 0.239587, -0.498223,
		0.506757, -0.691238, 0.515158,
		43.067726, 44.952049, 31.768335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168228, 45.082150, 30.943541>,  <42.712997, 45.435917, 31.407726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168228, 45.082150, 30.943541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115685, 44.836781, 31.255043>,  <43.084160, 44.689560, 31.441944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115685, 44.836781, 31.255043>,  <43.168228, 45.082150, 30.943541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115685, 44.836781, 31.255043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347628, -0.707178, -0.615674,
		0.928386, -0.351590, -0.120350,
		-0.131357, -0.613420, 0.778756,
		43.076279, 44.652756, 31.488670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523590, 44.368069, 30.882090>,  <43.168228, 45.082150, 30.943541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523590, 44.368069, 30.882090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210045, 44.306019, 31.122585>,  <43.021915, 44.268787, 31.266882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210045, 44.306019, 31.122585>,  <43.523590, 44.368069, 30.882090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210045, 44.306019, 31.122585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403854, -0.608130, -0.683432,
		0.471651, -0.778533, 0.414044,
		-0.783867, -0.155129, 0.601238,
		42.974884, 44.259480, 31.302958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469498, 43.642365, 30.794283>,  <43.523590, 44.368069, 30.882090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469498, 43.642365, 30.794283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121506, 43.823589, 30.872129>,  <42.912712, 43.932323, 30.918837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.121506, 43.823589, 30.872129>,  <43.469498, 43.642365, 30.794283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121506, 43.823589, 30.872129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475291, -0.665415, -0.575606,
		-0.131282, -0.593264, 0.794231,
		-0.869979, 0.453057, 0.194617,
		42.860512, 43.959507, 30.930513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419365, 42.902809, 30.793436>,  <43.469498, 43.642365, 30.794283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419365, 42.902809, 30.793436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145424, 42.761562, 31.048399>,  <42.981060, 42.676815, 31.201376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145424, 42.761562, 31.048399>,  <43.419365, 42.902809, 30.793436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145424, 42.761562, 31.048399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440491, -0.897439, -0.023895,
		0.580473, 0.264408, 0.770156,
		-0.684850, -0.353117, 0.637408,
		42.939968, 42.655628, 31.239622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874077, 42.611958, 31.246984>,  <43.419365, 42.902809, 30.793436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874077, 42.611958, 31.246984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526405, 42.448372, 31.358173>,  <43.317802, 42.350220, 31.424887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526405, 42.448372, 31.358173>,  <43.874077, 42.611958, 31.246984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526405, 42.448372, 31.358173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447032, -0.890164, 0.088154,
		0.211388, 0.200884, 0.956536,
		-0.869182, -0.408967, 0.277971,
		43.265652, 42.325684, 31.441565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964436, 42.381714, 31.969069>,  <43.874077, 42.611958, 31.246984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964436, 42.381714, 31.969069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685944, 42.148582, 31.801462>,  <43.518848, 42.008705, 31.700897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685944, 42.148582, 31.801462>,  <43.964436, 42.381714, 31.969069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685944, 42.148582, 31.801462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532405, -0.810815, 0.243156,
		-0.481463, -0.053794, 0.874814,
		-0.696231, -0.582826, -0.419018,
		43.477074, 41.973736, 31.675756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543976, 41.848339, 32.407383>,  <43.964436, 42.381714, 31.969069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543976, 41.848339, 32.407383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490326, 41.694286, 32.042156>,  <43.458138, 41.601856, 31.823021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490326, 41.694286, 32.042156>,  <43.543976, 41.848339, 32.407383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490326, 41.694286, 32.042156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408325, -0.861014, 0.303193,
		-0.902930, -0.332161, 0.272740,
		-0.134124, -0.385128, -0.913065,
		43.450089, 41.578747, 31.768236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764149, 41.212135, 32.500359>,  <43.543976, 41.848339, 32.407383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764149, 41.212135, 32.500359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695461, 41.215530, 32.106316>,  <43.654247, 41.217567, 31.869890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695461, 41.215530, 32.106316>,  <43.764149, 41.212135, 32.500359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695461, 41.215530, 32.106316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440882, -0.893574, -0.084551,
		-0.880986, -0.448836, 0.149700,
		-0.171718, 0.008488, -0.985110,
		43.643948, 41.218079, 31.810783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383572, 40.609734, 32.360649>,  <43.764149, 41.212135, 32.500359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383572, 40.609734, 32.360649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567139, 40.705692, 32.018459>,  <43.677280, 40.763268, 31.813145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567139, 40.705692, 32.018459>,  <43.383572, 40.609734, 32.360649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567139, 40.705692, 32.018459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376713, -0.924563, -0.057183,
		-0.804660, -0.296027, -0.514675,
		0.458922, 0.239898, -0.855476,
		43.704815, 40.777660, 31.761816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303719, 40.034046, 31.793558>,  <43.383572, 40.609734, 32.360649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303719, 40.034046, 31.793558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632679, 40.238956, 31.694571>,  <43.830055, 40.361900, 31.635178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632679, 40.238956, 31.694571>,  <43.303719, 40.034046, 31.793558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632679, 40.238956, 31.694571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504810, -0.857670, -0.097817,
		-0.262354, -0.044479, -0.963946,
		0.822397, 0.512272, -0.247466,
		43.879398, 40.392639, 31.620331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633644, 39.670727, 31.264709>,  <43.303719, 40.034046, 31.793558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633644, 39.670727, 31.264709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920807, 39.909130, 31.408585>,  <44.093105, 40.052174, 31.494909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920807, 39.909130, 31.408585>,  <43.633644, 39.670727, 31.264709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920807, 39.909130, 31.408585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646617, -0.762323, -0.027404,
		0.257866, 0.252256, -0.932669,
		0.717908, 0.596013, 0.359690,
		44.136181, 40.087933, 31.516491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277622, 39.525482, 30.876881>,  <43.633644, 39.670727, 31.264709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277622, 39.525482, 30.876881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424782, 39.705124, 31.202568>,  <44.513077, 39.812908, 31.397980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424782, 39.705124, 31.202568>,  <44.277622, 39.525482, 30.876881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424782, 39.705124, 31.202568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666274, -0.738123, 0.106080,
		0.648635, 0.503465, -0.570785,
		0.367903, 0.449107, 0.814218,
		44.535152, 39.839855, 31.446833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030567, 39.588608, 30.815279>,  <44.277622, 39.525482, 30.876881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030567, 39.588608, 30.815279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988777, 39.644596, 31.209131>,  <44.963703, 39.678188, 31.445442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988777, 39.644596, 31.209131>,  <45.030567, 39.588608, 30.815279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988777, 39.644596, 31.209131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634008, -0.753411, 0.174371,
		0.766237, 0.642480, -0.010032,
		-0.104471, 0.139970, 0.984629,
		44.957436, 39.686588, 31.504520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803452, 39.526943, 31.173983>,  <45.030567, 39.588608, 30.815279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803452, 39.526943, 31.173983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503723, 39.462513, 31.430910>,  <45.323887, 39.423855, 31.585068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503723, 39.462513, 31.430910>,  <45.803452, 39.526943, 31.173983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503723, 39.462513, 31.430910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511459, -0.756885, 0.406859,
		0.420630, 0.633388, 0.649531,
		-0.749320, -0.161071, 0.642321,
		45.278927, 39.414192, 31.623606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.140892, 39.425972, 31.760693>,  <45.803452, 39.526943, 31.173983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.140892, 39.425972, 31.760693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783863, 39.277828, 31.863569>,  <45.569645, 39.188942, 31.925295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783863, 39.277828, 31.863569>,  <46.140892, 39.425972, 31.760693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783863, 39.277828, 31.863569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450862, -0.740560, 0.498291,
		0.005923, 0.560720, 0.827984,
		-0.892574, -0.370355, 0.257193,
		45.516090, 39.166721, 31.940727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.154068, 39.304447, 32.438576>,  <46.140892, 39.425972, 31.760693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.154068, 39.304447, 32.438576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851608, 39.067360, 32.327633>,  <45.670132, 38.925110, 32.261066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851608, 39.067360, 32.327633>,  <46.154068, 39.304447, 32.438576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851608, 39.067360, 32.327633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381075, -0.743383, 0.549693,
		-0.531997, 0.309954, 0.787977,
		-0.756149, -0.592714, -0.277362,
		45.624763, 38.889545, 32.244423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888653, 39.051067, 33.051556>,  <46.154068, 39.304447, 32.438576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888653, 39.051067, 33.051556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756462, 38.791264, 32.777645>,  <45.677147, 38.635380, 32.613300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756462, 38.791264, 32.777645>,  <45.888653, 39.051067, 33.051556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756462, 38.791264, 32.777645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378898, -0.755812, 0.534026,
		-0.864418, -0.082977, 0.495879,
		-0.330479, -0.649510, -0.684778,
		45.657318, 38.596409, 32.572212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.443718, 38.554050, 33.396915>,  <45.888653, 39.051067, 33.051556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.443718, 38.554050, 33.396915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588200, 38.391830, 33.061043>,  <45.674889, 38.294498, 32.859520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588200, 38.391830, 33.061043>,  <45.443718, 38.554050, 33.396915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588200, 38.391830, 33.061043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245710, -0.827258, 0.505243,
		-0.899533, -0.388813, -0.199161,
		0.361203, -0.405547, -0.839681,
		45.696560, 38.270168, 32.809139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082119, 37.966198, 33.319885>,  <45.443718, 38.554050, 33.396915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082119, 37.966198, 33.319885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426979, 37.906811, 33.126122>,  <45.633896, 37.871178, 33.009865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426979, 37.906811, 33.126122>,  <45.082119, 37.966198, 33.319885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426979, 37.906811, 33.126122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067006, -0.914287, 0.399487,
		-0.502196, -0.376877, -0.778308,
		0.862154, -0.148469, -0.484404,
		45.685627, 37.862270, 32.980801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.134815, 37.198009, 33.202633>,  <45.082119, 37.966198, 33.319885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.134815, 37.198009, 33.202633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511452, 37.321678, 33.149246>,  <45.737434, 37.395878, 33.117214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511452, 37.321678, 33.149246>,  <45.134815, 37.198009, 33.202633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511452, 37.321678, 33.149246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336227, -0.885180, 0.321571,
		-0.018724, -0.347665, -0.937432,
		0.941595, 0.309169, -0.133468,
		45.793930, 37.414429, 33.109207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439014, 36.597534, 33.009518>,  <45.134815, 37.198009, 33.202633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439014, 36.597534, 33.009518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737881, 36.854725, 33.076847>,  <45.917198, 37.009037, 33.117245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737881, 36.854725, 33.076847>,  <45.439014, 36.597534, 33.009518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737881, 36.854725, 33.076847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549107, -0.739852, 0.388717,
		0.374471, -0.198005, -0.905851,
		0.747163, 0.642972, 0.168327,
		45.962029, 37.047615, 33.127346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043671, 36.201931, 32.685741>,  <45.439014, 36.597534, 33.009518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043671, 36.201931, 32.685741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.191158, 36.479259, 32.933403>,  <46.279652, 36.645657, 33.082001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.191158, 36.479259, 32.933403>,  <46.043671, 36.201931, 32.685741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.191158, 36.479259, 32.933403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608576, -0.683539, 0.403001,
		0.702624, 0.228206, -0.673975,
		0.368721, 0.693323, 0.619152,
		46.301773, 36.687256, 33.119148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.795788, 36.132145, 32.632950>,  <46.043671, 36.201931, 32.685741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.795788, 36.132145, 32.632950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.710392, 36.318283, 32.976547>,  <46.659157, 36.429966, 33.182705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.710392, 36.318283, 32.976547>,  <46.795788, 36.132145, 32.632950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.710392, 36.318283, 32.976547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560620, -0.661732, 0.497811,
		0.800081, 0.587847, -0.119611,
		-0.213486, 0.465345, 0.858998,
		46.646347, 36.457886, 33.234245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.413330, 36.137497, 33.018566>,  <46.795788, 36.132145, 32.632950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.413330, 36.137497, 33.018566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.140057, 36.218872, 33.299103>,  <46.976093, 36.267696, 33.467422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.140057, 36.218872, 33.299103>,  <47.413330, 36.137497, 33.018566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.140057, 36.218872, 33.299103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469325, -0.613472, 0.635127,
		0.559460, 0.763063, 0.323635,
		-0.683183, 0.203438, 0.701337,
		46.935101, 36.279903, 33.509502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.816654, 36.293221, 33.656353>,  <47.413330, 36.137497, 33.018566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.816654, 36.293221, 33.656353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461216, 36.137047, 33.752659>,  <47.247955, 36.043343, 33.810444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461216, 36.137047, 33.752659>,  <47.816654, 36.293221, 33.656353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.461216, 36.137047, 33.752659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448873, -0.632088, 0.631647,
		-0.094428, 0.669351, 0.736922,
		-0.888592, -0.390430, 0.240767,
		47.194637, 36.019917, 33.824890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.707726, 36.286537, 34.409706>,  <47.816654, 36.293221, 33.656353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.707726, 36.286537, 34.409706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.524025, 35.985043, 34.221680>,  <47.413803, 35.804146, 34.108864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.524025, 35.985043, 34.221680>,  <47.707726, 36.286537, 34.409706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.524025, 35.985043, 34.221680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485314, -0.656117, 0.577912,
		-0.744012, 0.037280, 0.667125,
		-0.459256, -0.753738, -0.470066,
		47.386250, 35.758923, 34.080658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.495567, 35.840801, 35.007175>,  <47.707726, 36.286537, 34.409706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.495567, 35.840801, 35.007175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.568256, 35.682144, 34.647255>,  <47.611870, 35.586948, 34.431301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.568256, 35.682144, 34.647255>,  <47.495567, 35.840801, 35.007175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.568256, 35.682144, 34.647255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618697, -0.665109, 0.418143,
		-0.764323, -0.632694, 0.124536,
		0.181727, -0.396646, -0.899804,
		47.622776, 35.563152, 34.377316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.420650, 35.132298, 35.021442>,  <47.495567, 35.840801, 35.007175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.420650, 35.132298, 35.021442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.716980, 35.219826, 34.767418>,  <47.894775, 35.272343, 34.615002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.716980, 35.219826, 34.767418>,  <47.420650, 35.132298, 35.021442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.716980, 35.219826, 34.767418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671433, -0.268056, 0.690886,
		-0.019055, -0.938224, -0.345502,
		0.740820, 0.218817, -0.635063,
		47.939224, 35.285469, 34.576900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.948257, 37.295940, 45.187435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.611084, 37.099331, 45.099915>,  <34.408779, 36.981365, 45.047401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.611084, 37.099331, 45.099915>,  <34.948257, 37.295940, 45.187435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611084, 37.099331, 45.099915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010396, 0.421489, -0.906774,
		0.537923, -0.762072, -0.360396,
		-0.842930, -0.491521, -0.218806,
		34.358204, 36.951874, 45.034271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081680, 36.815727, 44.561867>,  <34.948257, 37.295940, 45.187435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081680, 36.815727, 44.561867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704041, 36.944546, 44.590061>,  <34.477459, 37.021835, 44.606979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704041, 36.944546, 44.590061>,  <35.081680, 36.815727, 44.561867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704041, 36.944546, 44.590061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012147, 0.247658, -0.968771,
		-0.329443, -0.913758, -0.237725,
		-0.944098, 0.322043, 0.070489,
		34.420811, 37.041157, 44.611206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967773, 36.532887, 43.867760>,  <35.081680, 36.815727, 44.561867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967773, 36.532887, 43.867760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.665131, 36.770763, 43.976494>,  <34.483547, 36.913490, 44.041737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.665131, 36.770763, 43.976494>,  <34.967773, 36.532887, 43.867760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665131, 36.770763, 43.976494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259934, 0.107928, -0.959576,
		-0.599989, -0.796678, 0.072922,
		-0.756603, 0.594690, 0.271839,
		34.438148, 36.949169, 44.058044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318947, 36.274273, 43.477623>,  <34.967773, 36.532887, 43.867760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318947, 36.274273, 43.477623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.230644, 36.648052, 43.589397>,  <34.177662, 36.872318, 43.656460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.230644, 36.648052, 43.589397>,  <34.318947, 36.274273, 43.477623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230644, 36.648052, 43.589397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233864, 0.227430, -0.945296,
		-0.946877, -0.274027, 0.168326,
		-0.220754, 0.934444, 0.279433,
		34.164417, 36.928387, 43.673225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657135, 36.320526, 43.238392>,  <34.318947, 36.274273, 43.477623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657135, 36.320526, 43.238392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.823666, 36.683327, 43.263771>,  <33.923584, 36.901005, 43.278999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.823666, 36.683327, 43.263771>,  <33.657135, 36.320526, 43.238392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823666, 36.683327, 43.263771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165222, 0.144088, -0.975674,
		-0.894077, 0.395716, 0.209844,
		0.416326, 0.906999, 0.063445,
		33.948563, 36.955425, 43.282806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203300, 36.796741, 42.916649>,  <33.657135, 36.320526, 43.238392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203300, 36.796741, 42.916649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.556400, 36.982727, 42.943657>,  <33.768261, 37.094318, 42.959862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.556400, 36.982727, 42.943657>,  <33.203300, 36.796741, 42.916649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556400, 36.982727, 42.943657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091463, 0.311026, -0.945990,
		-0.460854, 0.828897, 0.317085,
		0.882750, 0.464965, 0.067524,
		33.821224, 37.122215, 42.963913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090710, 37.419323, 42.483139>,  <33.203300, 36.796741, 42.916649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090710, 37.419323, 42.483139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.488182, 37.376190, 42.495556>,  <33.726665, 37.350311, 42.503006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.488182, 37.376190, 42.495556>,  <33.090710, 37.419323, 42.483139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488182, 37.376190, 42.495556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036178, 0.046001, -0.998286,
		0.106215, 0.993105, 0.049611,
		0.993685, -0.107828, 0.031043,
		33.786289, 37.343842, 42.504868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351433, 37.895565, 42.005894>,  <33.090710, 37.419323, 42.483139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351433, 37.895565, 42.005894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.638912, 37.623398, 42.063175>,  <33.811401, 37.460098, 42.097546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.638912, 37.623398, 42.063175>,  <33.351433, 37.895565, 42.005894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638912, 37.623398, 42.063175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229322, 0.037522, -0.972627,
		0.656417, 0.731866, 0.183001,
		0.718699, -0.680415, 0.143203,
		33.854523, 37.419273, 42.106136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031952, 38.216721, 41.600681>,  <33.351433, 37.895565, 42.005894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031952, 38.216721, 41.600681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.066669, 37.822304, 41.657520>,  <34.087498, 37.585655, 41.691624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.066669, 37.822304, 41.657520>,  <34.031952, 38.216721, 41.600681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066669, 37.822304, 41.657520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245806, -0.117026, -0.962229,
		0.965426, 0.118441, 0.232218,
		0.086792, -0.986041, 0.142094,
		34.092709, 37.526493, 41.700150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582302, 38.066998, 41.301842>,  <34.031952, 38.216721, 41.600681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582302, 38.066998, 41.301842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.414391, 37.705559, 41.336040>,  <34.313644, 37.488697, 41.356560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.414391, 37.705559, 41.336040>,  <34.582302, 38.066998, 41.301842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414391, 37.705559, 41.336040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334506, -0.241589, -0.910901,
		0.843739, -0.353774, 0.403670,
		-0.419775, -0.903592, 0.085499,
		34.288460, 37.434483, 41.361691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107086, 37.507248, 41.246845>,  <34.582302, 38.066998, 41.301842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107086, 37.507248, 41.246845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.759155, 37.354717, 41.121628>,  <34.550396, 37.263199, 41.046497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.759155, 37.354717, 41.121628>,  <35.107086, 37.507248, 41.246845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759155, 37.354717, 41.121628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432563, -0.284292, -0.855609,
		0.237267, -0.879642, 0.412230,
		-0.869824, -0.381324, -0.313047,
		34.498207, 37.240318, 41.027714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293255, 36.828190, 40.907967>,  <35.107086, 37.507248, 41.246845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293255, 36.828190, 40.907967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926899, 36.937180, 40.790051>,  <34.707085, 37.002575, 40.719299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926899, 36.937180, 40.790051>,  <35.293255, 36.828190, 40.907967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926899, 36.937180, 40.790051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259241, -0.159218, -0.952598,
		-0.306495, -0.948898, 0.075190,
		-0.915890, 0.272474, -0.294793,
		34.652130, 37.018921, 40.701614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946415, 36.249531, 40.490490>,  <35.293255, 36.828190, 40.907967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946415, 36.249531, 40.490490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.759819, 36.591751, 40.400665>,  <34.647861, 36.797081, 40.346771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.759819, 36.591751, 40.400665>,  <34.946415, 36.249531, 40.490490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759819, 36.591751, 40.400665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234150, -0.125377, -0.964082,
		-0.852973, -0.502313, -0.141840,
		-0.466488, 0.855548, -0.224560,
		34.619873, 36.848415, 40.333298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629402, 36.117458, 39.879189>,  <34.946415, 36.249531, 40.490490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629402, 36.117458, 39.879189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.626438, 36.517445, 39.877316>,  <34.624660, 36.757435, 39.876190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.626438, 36.517445, 39.877316>,  <34.629402, 36.117458, 39.879189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626438, 36.517445, 39.877316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179830, -0.003278, -0.983692,
		-0.983670, -0.008135, -0.179799,
		-0.007413, 0.999961, -0.004687,
		34.624214, 36.817432, 39.875908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341469, 36.368614, 39.260963>,  <34.629402, 36.117458, 39.879189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341469, 36.368614, 39.260963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552536, 36.691357, 39.367214>,  <34.679176, 36.885002, 39.430965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552536, 36.691357, 39.367214>,  <34.341469, 36.368614, 39.260963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552536, 36.691357, 39.367214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187667, 0.194247, -0.962834,
		-0.828464, 0.557901, -0.048923,
		0.527663, 0.806854, 0.265626,
		34.710835, 36.933414, 39.446903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158600, 36.830612, 38.835148>,  <34.341469, 36.368614, 39.260963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158600, 36.830612, 38.835148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524376, 36.943085, 38.951584>,  <34.743843, 37.010567, 39.021446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524376, 36.943085, 38.951584>,  <34.158600, 36.830612, 38.835148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524376, 36.943085, 38.951584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279182, 0.082478, -0.956689,
		-0.293012, 0.956104, -0.003079,
		0.914441, 0.281181, 0.291094,
		34.798710, 37.027439, 39.038914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317528, 37.418133, 38.465809>,  <34.158600, 36.830612, 38.835148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317528, 37.418133, 38.465809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.679943, 37.303562, 38.590416>,  <34.897392, 37.234818, 38.665180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.679943, 37.303562, 38.590416>,  <34.317528, 37.418133, 38.465809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679943, 37.303562, 38.590416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350668, 0.096081, -0.931558,
		0.236894, 0.953272, 0.187494,
		0.906043, -0.286428, 0.311521,
		34.951756, 37.217632, 38.683872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756042, 37.943913, 38.244011>,  <34.317528, 37.418133, 38.465809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756042, 37.943913, 38.244011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.980995, 37.616413, 38.290260>,  <35.115967, 37.419914, 38.318008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.980995, 37.616413, 38.290260>,  <34.756042, 37.943913, 38.244011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980995, 37.616413, 38.290260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409786, 0.154520, -0.898999,
		0.718190, 0.552964, 0.422413,
		0.562385, -0.818751, 0.115622,
		35.149712, 37.370789, 38.324947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327564, 38.144730, 37.994267>,  <34.756042, 37.943913, 38.244011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327564, 38.144730, 37.994267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361691, 37.746189, 37.994732>,  <35.382164, 37.507065, 37.995010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361691, 37.746189, 37.994732>,  <35.327564, 38.144730, 37.994267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361691, 37.746189, 37.994732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291178, 0.023817, -0.956372,
		0.952857, 0.081930, 0.292148,
		0.085314, -0.996354, 0.001162,
		35.387283, 37.447285, 37.995079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935955, 38.012863, 37.614323>,  <35.327564, 38.144730, 37.994267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935955, 38.012863, 37.614323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758884, 37.654472, 37.600166>,  <35.652641, 37.439438, 37.591671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758884, 37.654472, 37.600166>,  <35.935955, 38.012863, 37.614323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758884, 37.654472, 37.600166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177956, -0.049104, -0.982812,
		0.878844, -0.441369, 0.181183,
		-0.442680, -0.895981, -0.035389,
		35.626080, 37.385677, 37.589550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319359, 37.655003, 37.197475>,  <35.935955, 38.012863, 37.614323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319359, 37.655003, 37.197475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.966366, 37.467358, 37.183861>,  <35.754570, 37.354771, 37.175690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.966366, 37.467358, 37.183861>,  <36.319359, 37.655003, 37.197475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966366, 37.467358, 37.183861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045291, 0.156789, -0.986593,
		0.468161, -0.869109, -0.159611,
		-0.882482, -0.469113, -0.034040,
		35.701622, 37.326622, 37.173649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737675, 37.107193, 36.741497>,  <36.319359, 37.655003, 37.197475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737675, 37.107193, 36.741497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.794746, 37.503078, 36.745720>,  <36.828991, 37.740608, 36.748253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.794746, 37.503078, 36.745720>,  <36.737675, 37.107193, 36.741497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794746, 37.503078, 36.745720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517693, -0.083710, 0.851462,
		0.843586, -0.116022, -0.524311,
		0.142678, 0.989713, 0.010553,
		36.837551, 37.799992, 36.748886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372829, 36.824524, 36.725288>,  <36.737675, 37.107193, 36.741497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372829, 36.824524, 36.725288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732933, 36.659641, 36.669273>,  <37.948997, 36.560711, 36.635666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732933, 36.659641, 36.669273>,  <37.372829, 36.824524, 36.725288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732933, 36.659641, 36.669273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117988, -0.078609, 0.989899,
		-0.419054, -0.907692, -0.022133,
		0.900263, -0.412209, -0.140038,
		38.003014, 36.535980, 36.627262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474686, 36.530445, 37.332737>,  <37.372829, 36.824524, 36.725288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474686, 36.530445, 37.332737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847717, 36.532936, 37.188370>,  <38.071537, 36.534431, 37.101749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847717, 36.532936, 37.188370>,  <37.474686, 36.530445, 37.332737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847717, 36.532936, 37.188370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357468, -0.154816, 0.921004,
		-0.050136, -0.987924, -0.146606,
		0.932579, 0.006232, -0.360913,
		38.127491, 36.534805, 37.080097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643406, 36.074520, 37.767323>,  <37.474686, 36.530445, 37.332737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643406, 36.074520, 37.767323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967171, 36.280220, 37.653904>,  <38.161430, 36.403641, 37.585854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967171, 36.280220, 37.653904>,  <37.643406, 36.074520, 37.767323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967171, 36.280220, 37.653904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306898, 0.041224, 0.950849,
		0.500660, -0.856651, -0.124454,
		0.809416, 0.514247, -0.283544,
		38.209995, 36.434494, 37.568840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165829, 35.719746, 38.051235>,  <37.643406, 36.074520, 37.767323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165829, 35.719746, 38.051235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307171, 36.086800, 37.978485>,  <38.391975, 36.307034, 37.934834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.307171, 36.086800, 37.978485>,  <38.165829, 35.719746, 38.051235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307171, 36.086800, 37.978485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247644, 0.095726, 0.964111,
		0.902116, -0.385714, -0.193422,
		0.353355, 0.917639, -0.181875,
		38.413177, 36.362091, 37.923923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769291, 35.688004, 38.379616>,  <38.165829, 35.719746, 38.051235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769291, 35.688004, 38.379616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.681133, 36.075417, 38.333366>,  <38.628239, 36.307865, 38.305614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.681133, 36.075417, 38.333366>,  <38.769291, 35.688004, 38.379616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681133, 36.075417, 38.333366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020063, 0.123017, 0.992202,
		0.975204, 0.216358, -0.046544,
		-0.220396, 0.968533, -0.115626,
		38.615013, 36.365978, 38.298679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214554, 36.062164, 38.849289>,  <38.769291, 35.688004, 38.379616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214554, 36.062164, 38.849289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.895580, 36.296112, 38.789921>,  <38.704197, 36.436481, 38.754299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.895580, 36.296112, 38.789921>,  <39.214554, 36.062164, 38.849289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895580, 36.296112, 38.789921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043087, 0.300530, 0.952798,
		0.601865, 0.753400, -0.264854,
		-0.797435, 0.584867, -0.148417,
		38.656349, 36.471573, 38.745396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290100, 36.605354, 39.348873>,  <39.214554, 36.062164, 38.849289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290100, 36.605354, 39.348873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.909603, 36.663403, 39.240013>,  <38.681305, 36.698231, 39.174698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.909603, 36.663403, 39.240013>,  <39.290100, 36.605354, 39.348873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909603, 36.663403, 39.240013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203954, 0.365948, 0.908011,
		0.231369, 0.919250, -0.318509,
		-0.951247, 0.145125, -0.272154,
		38.624229, 36.706940, 39.158367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143341, 37.187790, 39.670555>,  <39.290100, 36.605354, 39.348873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143341, 37.187790, 39.670555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777676, 37.042278, 39.599033>,  <38.558277, 36.954971, 39.556122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777676, 37.042278, 39.599033>,  <39.143341, 37.187790, 39.670555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777676, 37.042278, 39.599033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322808, 0.386565, 0.863923,
		-0.245159, 0.847485, -0.470815,
		-0.914162, -0.363781, -0.178805,
		38.503426, 36.933144, 39.545391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781902, 37.649639, 39.972073>,  <39.143341, 37.187790, 39.670555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781902, 37.649639, 39.972073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.515499, 37.352959, 39.940281>,  <38.355656, 37.174950, 39.921204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.515499, 37.352959, 39.940281>,  <38.781902, 37.649639, 39.972073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515499, 37.352959, 39.940281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337617, 0.204705, 0.918755,
		-0.665168, 0.638733, -0.386745,
		-0.666008, -0.741699, -0.079484,
		38.315697, 37.130447, 39.916435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152340, 38.005234, 40.076752>,  <38.781902, 37.649639, 39.972073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152340, 38.005234, 40.076752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112587, 37.615898, 40.159439>,  <38.088734, 37.382298, 40.209053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112587, 37.615898, 40.159439>,  <38.152340, 38.005234, 40.076752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112587, 37.615898, 40.159439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301155, 0.227424, 0.926058,
		-0.948382, 0.029780, -0.315728,
		-0.099382, -0.973340, 0.206717,
		38.082771, 37.323895, 40.221455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464664, 37.933952, 40.512722>,  <38.152340, 38.005234, 40.076752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464664, 37.933952, 40.512722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652729, 37.591732, 40.599419>,  <37.765568, 37.386398, 40.651436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.652729, 37.591732, 40.599419>,  <37.464664, 37.933952, 40.512722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652729, 37.591732, 40.599419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461711, -0.029127, 0.886552,
		-0.752180, -0.516893, -0.408713,
		0.470157, -0.855554, 0.216746,
		37.793777, 37.335064, 40.664444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916439, 37.454906, 40.795006>,  <37.464664, 37.933952, 40.512722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916439, 37.454906, 40.795006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282513, 37.331486, 40.898716>,  <37.502159, 37.257431, 40.960941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282513, 37.331486, 40.898716>,  <36.916439, 37.454906, 40.795006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282513, 37.331486, 40.898716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318961, -0.161251, 0.933949,
		-0.246367, -0.937438, -0.245992,
		0.915186, -0.308557, 0.259280,
		37.557068, 37.238918, 40.976501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905411, 36.868256, 41.260479>,  <36.916439, 37.454906, 40.795006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905411, 36.868256, 41.260479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.265423, 37.024323, 41.338165>,  <37.481430, 37.117962, 41.384777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.265423, 37.024323, 41.338165>,  <36.905411, 36.868256, 41.260479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265423, 37.024323, 41.338165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196402, -0.034722, 0.979908,
		0.389071, -0.920090, 0.045379,
		0.900028, 0.390166, 0.194217,
		37.535431, 37.141373, 41.396431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090508, 36.501392, 41.862701>,  <36.905411, 36.868256, 41.260479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090508, 36.501392, 41.862701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.357243, 36.799446, 41.866768>,  <37.517284, 36.978279, 41.869209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.357243, 36.799446, 41.866768>,  <37.090508, 36.501392, 41.862701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357243, 36.799446, 41.866768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014972, -0.000244, 0.999888,
		0.745050, -0.666918, 0.010993,
		0.666840, 0.745131, 0.010167,
		37.557293, 37.022987, 41.869820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672646, 36.264462, 42.137390>,  <37.090508, 36.501392, 41.862701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672646, 36.264462, 42.137390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670406, 36.660175, 42.195747>,  <37.669064, 36.897602, 42.230762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670406, 36.660175, 42.195747>,  <37.672646, 36.264462, 42.137390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670406, 36.660175, 42.195747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100254, -0.145716, 0.984234,
		0.994946, -0.009120, 0.099995,
		-0.005594, 0.989284, 0.145894,
		37.668728, 36.956959, 42.239517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177048, 36.330639, 42.645069>,  <37.672646, 36.264462, 42.137390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177048, 36.330639, 42.645069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.926636, 36.641479, 42.670986>,  <37.776390, 36.827984, 42.686535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.926636, 36.641479, 42.670986>,  <38.177048, 36.330639, 42.645069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926636, 36.641479, 42.670986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046166, -0.119876, 0.991715,
		0.778432, 0.617850, 0.110922,
		-0.626028, 0.777104, 0.064792,
		37.738827, 36.874611, 42.690422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350838, 36.715137, 43.220600>,  <38.177048, 36.330639, 42.645069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350838, 36.715137, 43.220600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979164, 36.852421, 43.165726>,  <37.756161, 36.934792, 43.132801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979164, 36.852421, 43.165726>,  <38.350838, 36.715137, 43.220600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979164, 36.852421, 43.165726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145777, 0.000775, 0.989317,
		0.339649, 0.939259, 0.049312,
		-0.929186, 0.343210, -0.137186,
		37.700409, 36.955383, 43.124569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133961, 37.162926, 43.669842>,  <38.350838, 36.715137, 43.220600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133961, 37.162926, 43.669842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.754230, 37.085629, 43.570694>,  <37.526394, 37.039249, 43.511204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.754230, 37.085629, 43.570694>,  <38.133961, 37.162926, 43.669842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754230, 37.085629, 43.570694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271763, 0.108497, 0.956229,
		-0.157895, 0.975133, -0.155516,
		-0.949323, -0.193248, -0.247874,
		37.469433, 37.027653, 43.496330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.691723, 37.546089, 44.179672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.450233, 37.271885, 44.016899>,  <37.305340, 37.107361, 43.919235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.450233, 37.271885, 44.016899>,  <37.691723, 37.546089, 44.179672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450233, 37.271885, 44.016899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466543, -0.110092, 0.877620,
		-0.646418, 0.719691, -0.253355,
		-0.603723, -0.685511, -0.406932,
		37.269115, 37.066231, 43.894821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969471, 37.668194, 44.351013>,  <37.691723, 37.546089, 44.179672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969471, 37.668194, 44.351013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987701, 37.273674, 44.287598>,  <36.998642, 37.036961, 44.249550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987701, 37.273674, 44.287598>,  <36.969471, 37.668194, 44.351013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987701, 37.273674, 44.287598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464340, -0.161431, 0.870820,
		-0.884483, 0.033923, -0.465337,
		0.045579, -0.986301, -0.158535,
		37.001373, 36.977783, 44.240036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359406, 37.550751, 44.633587>,  <36.969471, 37.668194, 44.351013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359406, 37.550751, 44.633587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537056, 37.193138, 44.610088>,  <36.643646, 36.978569, 44.595989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537056, 37.193138, 44.610088>,  <36.359406, 37.550751, 44.633587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537056, 37.193138, 44.610088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364807, -0.240335, 0.899531,
		-0.818333, -0.378072, -0.432890,
		0.444126, -0.894036, -0.058751,
		36.670296, 36.924927, 44.592464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940514, 36.953503, 44.776588>,  <36.359406, 37.550751, 44.633587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940514, 36.953503, 44.776588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.302959, 36.797298, 44.841648>,  <36.520428, 36.703575, 44.880684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.302959, 36.797298, 44.841648>,  <35.940514, 36.953503, 44.776588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302959, 36.797298, 44.841648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307515, -0.344025, 0.887176,
		-0.290487, -0.853906, -0.431813,
		0.906119, -0.390502, 0.162654,
		36.574795, 36.680145, 44.890442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886009, 36.203651, 44.916512>,  <35.940514, 36.953503, 44.776588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886009, 36.203651, 44.916512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.230915, 36.337170, 45.068867>,  <36.437859, 36.417282, 45.160282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.230915, 36.337170, 45.068867>,  <35.886009, 36.203651, 44.916512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230915, 36.337170, 45.068867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148266, -0.552748, 0.820053,
		0.484267, -0.763577, -0.427125,
		0.862266, 0.333796, 0.380890,
		36.489594, 36.437309, 45.183132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163696, 35.503342, 45.144745>,  <35.886009, 36.203651, 44.916512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163696, 35.503342, 45.144745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.380581, 35.772865, 45.345539>,  <36.510712, 35.934578, 45.466015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.380581, 35.772865, 45.345539>,  <36.163696, 35.503342, 45.144745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380581, 35.772865, 45.345539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084547, -0.638149, 0.765256,
		0.835976, -0.372491, -0.402981,
		0.542214, 0.673807, 0.501985,
		36.543243, 35.975006, 45.496136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751492, 35.126492, 45.525459>,  <36.163696, 35.503342, 45.144745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751492, 35.126492, 45.525459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.704025, 35.482288, 45.701965>,  <36.675545, 35.695766, 45.807869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.704025, 35.482288, 45.701965>,  <36.751492, 35.126492, 45.525459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704025, 35.482288, 45.701965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024941, -0.441594, 0.896868,
		0.992621, 0.117432, 0.030217,
		-0.118665, 0.889497, 0.441265,
		36.668427, 35.749138, 45.834343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302761, 35.236504, 46.041203>,  <36.751492, 35.126492, 45.525459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302761, 35.236504, 46.041203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.993916, 35.473274, 46.133682>,  <36.808609, 35.615337, 46.189171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.993916, 35.473274, 46.133682>,  <37.302761, 35.236504, 46.041203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993916, 35.473274, 46.133682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044785, -0.312230, 0.948950,
		0.633901, 0.743055, 0.214568,
		-0.772117, 0.591931, 0.231200,
		36.762280, 35.650852, 46.203041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543434, 35.654350, 46.565853>,  <37.302761, 35.236504, 46.041203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543434, 35.654350, 46.565853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145370, 35.631680, 46.597965>,  <36.906532, 35.618076, 46.617233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145370, 35.631680, 46.597965>,  <37.543434, 35.654350, 46.565853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145370, 35.631680, 46.597965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092535, -0.265272, 0.959723,
		-0.033100, 0.962506, 0.269232,
		-0.995159, -0.056680, 0.080285,
		36.846825, 35.614677, 46.622051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411980, 36.015717, 47.208038>,  <37.543434, 35.654350, 46.565853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411980, 36.015717, 47.208038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.091911, 35.795982, 47.111740>,  <36.899872, 35.664143, 47.053963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.091911, 35.795982, 47.111740>,  <37.411980, 36.015717, 47.208038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091911, 35.795982, 47.111740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132535, -0.229521, 0.964238,
		-0.584945, 0.803462, 0.110850,
		-0.800171, -0.549335, -0.240744,
		36.851860, 35.631184, 47.039516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985672, 36.272541, 47.722763>,  <37.411980, 36.015717, 47.208038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985672, 36.272541, 47.722763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.814030, 35.937382, 47.587833>,  <36.711044, 35.736286, 47.506874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.814030, 35.937382, 47.587833>,  <36.985672, 36.272541, 47.722763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814030, 35.937382, 47.587833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098157, -0.327990, 0.939568,
		-0.897903, 0.436289, 0.058497,
		-0.429109, -0.837899, -0.337328,
		36.685295, 35.686012, 47.486633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570225, 36.149815, 48.206078>,  <36.985672, 36.272541, 47.722763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570225, 36.149815, 48.206078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607063, 35.796585, 48.022034>,  <36.629166, 35.584648, 47.911610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607063, 35.796585, 48.022034>,  <36.570225, 36.149815, 48.206078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607063, 35.796585, 48.022034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042997, -0.458113, 0.887854,
		-0.994821, -0.101552, -0.004221,
		0.092097, -0.883074, -0.460107,
		36.634693, 35.531662, 47.884003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104252, 35.725502, 48.453106>,  <36.570225, 36.149815, 48.206078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104252, 35.725502, 48.453106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.405304, 35.501759, 48.314156>,  <36.585934, 35.367512, 48.230785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.405304, 35.501759, 48.314156>,  <36.104252, 35.725502, 48.453106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405304, 35.501759, 48.314156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062754, -0.586109, 0.807798,
		-0.655449, -0.586172, -0.476224,
		0.752628, -0.559355, -0.347379,
		36.631092, 35.333954, 48.209942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888855, 34.987164, 48.564301>,  <36.104252, 35.725502, 48.453106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888855, 34.987164, 48.564301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.283386, 34.956486, 48.505962>,  <36.520107, 34.938080, 48.470959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.283386, 34.956486, 48.505962>,  <35.888855, 34.987164, 48.564301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283386, 34.956486, 48.505962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050281, -0.702796, 0.709613,
		-0.156918, -0.707246, -0.689333,
		0.986331, -0.076691, -0.145842,
		36.579285, 34.933479, 48.462208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956852, 34.310101, 48.534389>,  <35.888855, 34.987164, 48.564301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956852, 34.310101, 48.534389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.319801, 34.461929, 48.606609>,  <36.537571, 34.553024, 48.649940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.319801, 34.461929, 48.606609>,  <35.956852, 34.310101, 48.534389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319801, 34.461929, 48.606609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141386, -0.680141, 0.719318,
		0.395828, -0.627164, -0.670809,
		0.907375, 0.379569, 0.180547,
		36.592014, 34.575802, 48.660774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291195, 33.674274, 48.641335>,  <35.956852, 34.310101, 48.534389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291195, 33.674274, 48.641335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.508522, 33.981873, 48.776062>,  <36.638920, 34.166431, 48.856899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.508522, 33.981873, 48.776062>,  <36.291195, 33.674274, 48.641335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508522, 33.981873, 48.776062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243534, -0.528317, 0.813371,
		0.803425, -0.359897, -0.474323,
		0.543322, 0.768996, 0.336816,
		36.671520, 34.212570, 48.877106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854130, 33.376411, 48.928040>,  <36.291195, 33.674274, 48.641335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854130, 33.376411, 48.928040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.843029, 33.741695, 49.090660>,  <36.836369, 33.960865, 49.188232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.843029, 33.741695, 49.090660>,  <36.854130, 33.376411, 48.928040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843029, 33.741695, 49.090660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083752, -0.403152, 0.911293,
		0.996100, 0.059337, -0.065295,
		-0.027750, 0.913208, 0.406549,
		36.834705, 34.015659, 49.212624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560074, 33.562412, 49.231430>,  <36.854130, 33.376411, 48.928040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560074, 33.562412, 49.231430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254475, 33.740372, 49.418354>,  <37.071114, 33.847149, 49.530506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254475, 33.740372, 49.418354>,  <37.560074, 33.562412, 49.231430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254475, 33.740372, 49.418354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321718, -0.365133, 0.873599,
		0.559292, 0.817767, 0.135829,
		-0.763996, 0.444898, 0.467306,
		37.025276, 33.873840, 49.558544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818474, 33.905769, 49.951603>,  <37.560074, 33.562412, 49.231430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818474, 33.905769, 49.951603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419903, 33.874340, 49.964001>,  <37.180759, 33.855480, 49.971439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419903, 33.874340, 49.964001>,  <37.818474, 33.905769, 49.951603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419903, 33.874340, 49.964001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055932, -0.338838, 0.939181,
		-0.063296, 0.937557, 0.342022,
		-0.996426, -0.078577, 0.030992,
		37.120975, 33.850765, 49.973297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867874, 33.871838, 50.596127>,  <37.818474, 33.905769, 49.951603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867874, 33.871838, 50.596127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474251, 33.821774, 50.545582>,  <37.238075, 33.791737, 50.515255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474251, 33.821774, 50.545582>,  <37.867874, 33.871838, 50.596127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474251, 33.821774, 50.545582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107740, -0.145755, 0.983437,
		-0.141500, 0.981372, 0.129947,
		-0.984058, -0.125156, -0.126358,
		37.179035, 33.784225, 50.507675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535866, 34.265392, 51.088650>,  <37.867874, 33.871838, 50.596127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535866, 34.265392, 51.088650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266380, 33.985172, 50.994553>,  <37.104687, 33.817039, 50.938095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266380, 33.985172, 50.994553>,  <37.535866, 34.265392, 51.088650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266380, 33.985172, 50.994553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054217, -0.270620, 0.961158,
		-0.736999, 0.660301, 0.144339,
		-0.673715, -0.700547, -0.235246,
		37.064266, 33.775009, 50.923977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945278, 34.342209, 51.554260>,  <37.535866, 34.265392, 51.088650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945278, 34.342209, 51.554260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956352, 33.961384, 51.432400>,  <36.962997, 33.732887, 51.359283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956352, 33.961384, 51.432400>,  <36.945278, 34.342209, 51.554260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956352, 33.961384, 51.432400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013356, -0.305092, 0.952229,
		-0.999527, -0.022293, -0.021162,
		0.027685, -0.952062, -0.304651,
		36.964657, 33.675766, 51.341003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386402, 33.952446, 51.868179>,  <36.945278, 34.342209, 51.554260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386402, 33.952446, 51.868179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637165, 33.652885, 51.782265>,  <36.787624, 33.473148, 51.730717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.637165, 33.652885, 51.782265>,  <36.386402, 33.952446, 51.868179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637165, 33.652885, 51.782265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053806, -0.316653, 0.947014,
		-0.777231, -0.582136, -0.238808,
		0.626910, -0.748898, -0.214790,
		36.825237, 33.428215, 51.717827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767059, 33.586643, 52.038784>,  <36.386402, 33.952446, 51.868179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767059, 33.586643, 52.038784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771862, 33.408180, 51.680836>,  <35.774742, 33.301102, 51.466068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771862, 33.408180, 51.680836>,  <35.767059, 33.586643, 52.038784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771862, 33.408180, 51.680836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838769, 0.482705, -0.251919,
		0.544355, 0.753616, -0.368430,
		0.012007, -0.446161, -0.894872,
		35.775463, 33.274330, 51.412373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300922, 34.154076, 52.011356>,  <35.767059, 33.586643, 52.038784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300922, 34.154076, 52.011356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968140, 33.932804, 52.028530>,  <34.768471, 33.800041, 52.038834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968140, 33.932804, 52.028530>,  <35.300922, 34.154076, 52.011356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968140, 33.932804, 52.028530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330725, 0.432272, -0.838905,
		0.445524, -0.712119, -0.542582,
		-0.831943, -0.553198, 0.042928,
		34.718555, 33.766850, 52.041412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318310, 33.812099, 51.442974>,  <35.300922, 34.154076, 52.011356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318310, 33.812099, 51.442974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937077, 33.841167, 51.560513>,  <34.708336, 33.858608, 51.631035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937077, 33.841167, 51.560513>,  <35.318310, 33.812099, 51.442974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937077, 33.841167, 51.560513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259040, 0.306439, -0.915966,
		-0.156607, -0.949113, -0.273239,
		-0.953086, 0.072667, 0.293849,
		34.651150, 33.862968, 51.648666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952606, 33.581581, 50.929764>,  <35.318310, 33.812099, 51.442974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952606, 33.581581, 50.929764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695282, 33.804691, 51.139542>,  <34.540890, 33.938557, 51.265408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695282, 33.804691, 51.139542>,  <34.952606, 33.581581, 50.929764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695282, 33.804691, 51.139542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341476, 0.404060, -0.848604,
		-0.685239, -0.724998, -0.069467,
		-0.643306, 0.557775, 0.524447,
		34.502289, 33.972023, 51.296875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315414, 33.427902, 50.728405>,  <34.952606, 33.581581, 50.929764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315414, 33.427902, 50.728405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.287495, 33.799194, 50.874561>,  <34.270741, 34.021969, 50.962254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.287495, 33.799194, 50.874561>,  <34.315414, 33.427902, 50.728405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287495, 33.799194, 50.874561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366165, 0.316876, -0.874936,
		-0.927929, -0.194865, 0.317768,
		-0.069801, 0.928234, 0.365391,
		34.266556, 34.077663, 50.984177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732918, 33.640182, 50.483189>,  <34.315414, 33.427902, 50.728405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732918, 33.640182, 50.483189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913334, 33.986027, 50.571739>,  <34.021584, 34.193535, 50.624870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913334, 33.986027, 50.571739>,  <33.732918, 33.640182, 50.483189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913334, 33.986027, 50.571739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343966, 0.397273, -0.850800,
		-0.823561, 0.307597, 0.476583,
		0.451037, 0.864614, 0.221376,
		34.048645, 34.245411, 50.638153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276516, 34.168419, 50.272354>,  <33.732918, 33.640182, 50.483189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276516, 34.168419, 50.272354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651562, 34.306942, 50.284657>,  <33.876591, 34.390057, 50.292038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.651562, 34.306942, 50.284657>,  <33.276516, 34.168419, 50.272354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651562, 34.306942, 50.284657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146931, 0.474865, -0.867707,
		-0.315101, 0.809056, 0.496124,
		0.937616, 0.346311, 0.030755,
		33.932846, 34.410835, 50.293884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186035, 34.879955, 50.145836>,  <33.276516, 34.168419, 50.272354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186035, 34.879955, 50.145836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.566673, 34.788658, 50.063503>,  <33.795055, 34.733879, 50.014103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.566673, 34.788658, 50.063503>,  <33.186035, 34.879955, 50.145836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566673, 34.788658, 50.063503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003343, 0.661990, -0.749505,
		0.307326, 0.713916, 0.629185,
		0.951598, -0.228239, -0.205833,
		33.852154, 34.720188, 50.001755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334492, 35.390785, 49.713623>,  <33.186035, 34.879955, 50.145836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334492, 35.390785, 49.713623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.647861, 35.149502, 49.653774>,  <33.835884, 35.004730, 49.617867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.647861, 35.149502, 49.653774>,  <33.334492, 35.390785, 49.713623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647861, 35.149502, 49.653774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146316, 0.412988, -0.898906,
		0.604020, 0.682333, 0.411803,
		0.783423, -0.603211, -0.149617,
		33.882889, 34.968540, 49.608891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734970, 35.843288, 49.351250>,  <33.334492, 35.390785, 49.713623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734970, 35.843288, 49.351250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810230, 35.453918, 49.299015>,  <33.855385, 35.220299, 49.267673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810230, 35.453918, 49.299015>,  <33.734970, 35.843288, 49.351250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810230, 35.453918, 49.299015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281292, 0.180795, -0.942437,
		0.940997, 0.140586, 0.307832,
		0.188148, -0.973421, -0.130582,
		33.866676, 35.161892, 49.259842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294746, 35.991756, 48.922672>,  <33.734970, 35.843288, 49.351250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294746, 35.991756, 48.922672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.213024, 35.603329, 48.873215>,  <34.163990, 35.370274, 48.843540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.213024, 35.603329, 48.873215>,  <34.294746, 35.991756, 48.922672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213024, 35.603329, 48.873215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132103, 0.097804, -0.986399,
		0.969952, -0.217863, 0.108299,
		-0.204308, -0.971066, -0.123646,
		34.151733, 35.312008, 48.836121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875877, 35.662865, 48.577534>,  <34.294746, 35.991756, 48.922672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875877, 35.662865, 48.577534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.573959, 35.404507, 48.531731>,  <34.392811, 35.249493, 48.504250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.573959, 35.404507, 48.531731>,  <34.875877, 35.662865, 48.577534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573959, 35.404507, 48.531731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259720, -0.133967, -0.956346,
		0.602356, -0.751583, 0.268869,
		-0.754793, -0.645892, -0.114505,
		34.347523, 35.210739, 48.497379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209602, 35.129505, 48.189140>,  <34.875877, 35.662865, 48.577534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209602, 35.129505, 48.189140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.813042, 35.143063, 48.138580>,  <34.575104, 35.151199, 48.108246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.813042, 35.143063, 48.138580>,  <35.209602, 35.129505, 48.189140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813042, 35.143063, 48.138580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130798, 0.287380, -0.948844,
		0.004160, -0.957217, -0.289342,
		-0.991400, 0.033898, -0.126398,
		34.515621, 35.153233, 48.100662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106396, 34.773895, 47.538002>,  <35.209602, 35.129505, 48.189140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106396, 34.773895, 47.538002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773808, 34.984432, 47.609135>,  <34.574253, 35.110756, 47.651814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773808, 34.984432, 47.609135>,  <35.106396, 34.773895, 47.538002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773808, 34.984432, 47.609135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041141, 0.260870, -0.964497,
		-0.554045, -0.809266, -0.195251,
		-0.831470, 0.526342, 0.177828,
		34.524368, 35.142334, 47.662483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539219, 34.515884, 47.127941>,  <35.106396, 34.773895, 47.538002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539219, 34.515884, 47.127941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.429970, 34.888149, 47.225319>,  <34.364422, 35.111507, 47.283745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.429970, 34.888149, 47.225319>,  <34.539219, 34.515884, 47.127941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429970, 34.888149, 47.225319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047432, 0.265789, -0.962864,
		-0.960810, -0.251431, -0.116736,
		-0.273121, 0.930666, 0.243447,
		34.348034, 35.167351, 47.298351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127586, 34.700100, 46.616543>,  <34.539219, 34.515884, 47.127941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127586, 34.700100, 46.616543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.211708, 35.054836, 46.781116>,  <34.262180, 35.267677, 46.879860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.211708, 35.054836, 46.781116>,  <34.127586, 34.700100, 46.616543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211708, 35.054836, 46.781116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066896, 0.432915, -0.898949,
		-0.975344, 0.161531, 0.150371,
		0.210306, 0.886844, 0.411435,
		34.274799, 35.320889, 46.904549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591778, 35.167309, 46.401199>,  <34.127586, 34.700100, 46.616543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591778, 35.167309, 46.401199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913860, 35.387764, 46.488743>,  <34.107109, 35.520035, 46.541267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913860, 35.387764, 46.488743>,  <33.591778, 35.167309, 46.401199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913860, 35.387764, 46.488743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199072, 0.598878, -0.775704,
		-0.558586, 0.581031, 0.591933,
		0.805203, 0.551134, 0.218858,
		34.155422, 35.553104, 46.554401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439930, 35.877529, 46.594452>,  <33.591778, 35.167309, 46.401199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439930, 35.877529, 46.594452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814590, 35.899761, 46.456127>,  <34.039387, 35.913101, 46.373131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814590, 35.899761, 46.456127>,  <33.439930, 35.877529, 46.594452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814590, 35.899761, 46.456127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293940, 0.661644, -0.689802,
		0.190467, 0.747755, 0.636070,
		0.936654, 0.055581, -0.345817,
		34.095589, 35.916435, 46.352383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467720, 36.550987, 46.457111>,  <33.439930, 35.877529, 46.594452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467720, 36.550987, 46.457111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.780518, 36.428524, 46.239948>,  <33.968197, 36.355045, 46.109650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.780518, 36.428524, 46.239948>,  <33.467720, 36.550987, 46.457111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780518, 36.428524, 46.239948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161889, 0.741384, -0.651262,
		0.601894, 0.597174, 0.530194,
		0.781994, -0.306158, -0.542911,
		34.015118, 36.336678, 46.077076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811230, 37.240162, 46.284576>,  <33.467720, 36.550987, 46.457111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811230, 37.240162, 46.284576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931763, 36.948326, 46.039009>,  <34.004082, 36.773224, 45.891666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931763, 36.948326, 46.039009>,  <33.811230, 37.240162, 46.284576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931763, 36.948326, 46.039009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095805, 0.617423, -0.780776,
		0.948693, 0.294093, 0.116154,
		0.301337, -0.729587, -0.613920,
		34.022163, 36.729450, 45.854832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404728, 37.416187, 45.934227>,  <33.811230, 37.240162, 46.284576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404728, 37.416187, 45.934227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.227592, 37.153999, 45.689518>,  <34.121311, 36.996689, 45.542694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.227592, 37.153999, 45.689518>,  <34.404728, 37.416187, 45.934227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227592, 37.153999, 45.689518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122905, 0.631501, -0.765572,
		0.888140, -0.414211, -0.199090,
		-0.442834, -0.655466, -0.611770,
		34.094742, 36.957359, 45.505985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.528088, 43.512924, 34.033249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.140938, 43.545181, 34.128510>,  <42.908649, 43.564537, 34.185665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.140938, 43.545181, 34.128510>,  <43.528088, 43.512924, 34.033249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140938, 43.545181, 34.128510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091298, -0.769809, 0.631711,
		0.234276, 0.633160, 0.737715,
		-0.967874, 0.080643, 0.238154,
		42.850574, 43.569374, 34.199955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528118, 43.349621, 34.707523>,  <43.528088, 43.512924, 34.033249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528118, 43.349621, 34.707523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.144360, 43.313343, 34.600697>,  <42.914104, 43.291576, 34.536602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.144360, 43.313343, 34.600697>,  <43.528118, 43.349621, 34.707523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144360, 43.313343, 34.600697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021792, -0.920226, 0.390779,
		-0.281203, 0.380734, 0.880890,
		-0.959401, -0.090692, -0.267068,
		42.856541, 43.286137, 34.520576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047047, 43.137798, 35.372005>,  <43.528118, 43.349621, 34.707523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047047, 43.137798, 35.372005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902370, 43.027924, 35.015640>,  <42.815563, 42.961998, 34.801823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902370, 43.027924, 35.015640>,  <43.047047, 43.137798, 35.372005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902370, 43.027924, 35.015640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093860, -0.940026, 0.327934,
		-0.927560, 0.202233, 0.314220,
		-0.361694, -0.274686, -0.890912,
		42.793861, 42.945518, 34.748367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351086, 42.796837, 35.580669>,  <43.047047, 43.137798, 35.372005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351086, 42.796837, 35.580669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.448479, 42.662693, 35.216637>,  <42.506912, 42.582207, 34.998215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.448479, 42.662693, 35.216637>,  <42.351086, 42.796837, 35.580669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448479, 42.662693, 35.216637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450770, -0.869952, 0.199975,
		-0.858792, 0.361548, -0.362986,
		0.243479, -0.335360, -0.910083,
		42.521523, 42.562084, 34.943611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783062, 42.412079, 35.462471>,  <42.351086, 42.796837, 35.580669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783062, 42.412079, 35.462471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.111691, 42.301048, 35.263283>,  <42.308868, 42.234428, 35.143772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.111691, 42.301048, 35.263283>,  <41.783062, 42.412079, 35.462471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111691, 42.301048, 35.263283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277357, -0.957736, 0.076261,
		-0.498088, 0.075461, -0.863837,
		0.821572, -0.277576, -0.497967,
		42.358162, 42.217777, 35.113892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494324, 41.822956, 35.043510>,  <41.783062, 42.412079, 35.462471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494324, 41.822956, 35.043510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.892056, 41.786526, 35.065449>,  <42.130695, 41.764668, 35.078613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.892056, 41.786526, 35.065449>,  <41.494324, 41.822956, 35.043510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892056, 41.786526, 35.065449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099102, -0.980797, 0.167975,
		0.038497, -0.172459, -0.984264,
		0.994332, -0.091076, 0.054849,
		42.190353, 41.759201, 35.081902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631287, 41.076382, 34.875526>,  <41.494324, 41.822956, 35.043510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631287, 41.076382, 34.875526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.999405, 41.167091, 35.003048>,  <42.220276, 41.221519, 35.079559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.999405, 41.167091, 35.003048>,  <41.631287, 41.076382, 34.875526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999405, 41.167091, 35.003048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172054, -0.966434, 0.190797,
		0.351369, -0.120738, -0.928419,
		0.920292, 0.226779, 0.318801,
		42.275494, 41.235126, 35.098690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036892, 40.576488, 34.539047>,  <41.631287, 41.076382, 34.875526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036892, 40.576488, 34.539047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.268436, 40.710144, 34.836575>,  <42.407364, 40.790337, 35.015091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.268436, 40.710144, 34.836575>,  <42.036892, 40.576488, 34.539047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268436, 40.710144, 34.836575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373874, -0.919413, 0.122059,
		0.724661, 0.207439, -0.657141,
		0.578864, 0.334140, 0.743819,
		42.442097, 40.810387, 35.059719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717762, 40.210941, 34.413792>,  <42.036892, 40.576488, 34.539047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717762, 40.210941, 34.413792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.731010, 40.333828, 34.794216>,  <42.738960, 40.407562, 35.022472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.731010, 40.333828, 34.794216>,  <42.717762, 40.210941, 34.413792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731010, 40.333828, 34.794216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473481, -0.842849, 0.255776,
		0.880181, 0.441840, -0.173375,
		0.033117, 0.307219, 0.951062,
		42.740944, 40.425995, 35.079536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354355, 40.133598, 34.601009>,  <42.717762, 40.210941, 34.413792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354355, 40.133598, 34.601009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.146603, 40.120365, 34.942570>,  <43.021954, 40.112427, 35.147507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.146603, 40.120365, 34.942570>,  <43.354355, 40.133598, 34.601009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146603, 40.120365, 34.942570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497962, -0.823779, 0.270967,
		0.694466, 0.565946, 0.444322,
		-0.519376, -0.033078, 0.853905,
		42.990791, 40.110443, 35.198742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850437, 40.056366, 35.156696>,  <43.354355, 40.133598, 34.601009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850437, 40.056366, 35.156696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.514191, 39.962032, 35.351734>,  <43.312443, 39.905430, 35.468758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.514191, 39.962032, 35.351734>,  <43.850437, 40.056366, 35.156696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514191, 39.962032, 35.351734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450667, -0.803898, 0.388133,
		0.300437, 0.546012, 0.782054,
		-0.840617, -0.235836, 0.487590,
		43.262005, 39.891281, 35.498013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095097, 39.822491, 35.751026>,  <43.850437, 40.056366, 35.156696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095097, 39.822491, 35.751026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725121, 39.670628, 35.743496>,  <43.503136, 39.579510, 35.738979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725121, 39.670628, 35.743496>,  <44.095097, 39.822491, 35.751026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725121, 39.670628, 35.743496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351644, -0.873397, 0.336935,
		-0.144358, 0.305025, 0.941340,
		-0.924936, -0.379655, -0.018822,
		43.447639, 39.556732, 35.737850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001789, 39.513535, 36.385162>,  <44.095097, 39.822491, 35.751026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001789, 39.513535, 36.385162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736740, 39.339470, 36.141338>,  <43.577709, 39.235031, 35.995045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736740, 39.339470, 36.141338>,  <44.001789, 39.513535, 36.385162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736740, 39.339470, 36.141338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383561, -0.896222, 0.222863,
		-0.643279, -0.086127, 0.760772,
		-0.662626, -0.435165, -0.609555,
		43.537952, 39.208920, 35.958473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888969, 38.904373, 36.729038>,  <44.001789, 39.513535, 36.385162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888969, 38.904373, 36.729038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756664, 38.846035, 36.356087>,  <43.677280, 38.811031, 36.132317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756664, 38.846035, 36.356087>,  <43.888969, 38.904373, 36.729038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756664, 38.846035, 36.356087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486621, -0.872867, -0.036090,
		-0.808577, -0.465651, 0.359683,
		-0.330761, -0.145848, -0.932376,
		43.657436, 38.802280, 36.076374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535107, 38.213772, 36.718895>,  <43.888969, 38.904373, 36.729038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535107, 38.213772, 36.718895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.647419, 38.282333, 36.341160>,  <43.714806, 38.323471, 36.114517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.647419, 38.282333, 36.341160>,  <43.535107, 38.213772, 36.718895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647419, 38.282333, 36.341160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452160, -0.891517, -0.027377,
		-0.846588, -0.419306, -0.327828,
		0.280785, 0.171408, -0.944341,
		43.731655, 38.333755, 36.057858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137203, 37.612823, 36.329323>,  <43.535107, 38.213772, 36.718895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137203, 37.612823, 36.329323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453060, 37.764053, 36.136028>,  <43.642574, 37.854794, 36.020050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453060, 37.764053, 36.136028>,  <43.137203, 37.612823, 36.329323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453060, 37.764053, 36.136028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342598, -0.925069, -0.163930,
		-0.509007, -0.036110, -0.860005,
		0.789644, 0.378078, -0.483238,
		43.689953, 37.877476, 35.991058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210827, 37.284439, 35.783813>,  <43.137203, 37.612823, 36.329323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210827, 37.284439, 35.783813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.572060, 37.456020, 35.792229>,  <43.788799, 37.558971, 35.797276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.572060, 37.456020, 35.792229>,  <43.210827, 37.284439, 35.783813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572060, 37.456020, 35.792229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410773, -0.848428, -0.333818,
		-0.125348, 0.310104, -0.942403,
		0.903080, 0.428957, 0.021034,
		43.842983, 37.584709, 35.798538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602310, 37.223991, 35.092030>,  <43.210827, 37.284439, 35.783813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602310, 37.223991, 35.092030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915257, 37.311893, 35.325138>,  <44.103024, 37.364635, 35.465004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915257, 37.311893, 35.325138>,  <43.602310, 37.223991, 35.092030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915257, 37.311893, 35.325138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526862, -0.732519, -0.431082,
		0.332155, 0.644300, -0.688877,
		0.782362, 0.219757, 0.582767,
		44.149963, 37.377819, 35.499969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250004, 37.128075, 34.686550>,  <43.602310, 37.223991, 35.092030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250004, 37.128075, 34.686550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.375111, 37.097900, 35.065281>,  <44.450176, 37.079796, 35.292519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.375111, 37.097900, 35.065281>,  <44.250004, 37.128075, 34.686550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375111, 37.097900, 35.065281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477381, -0.849305, -0.225363,
		0.821147, 0.522485, -0.229624,
		0.312770, -0.075438, 0.946828,
		44.468941, 37.075268, 35.349331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861771, 36.926849, 34.542568>,  <44.250004, 37.128075, 34.686550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861771, 36.926849, 34.542568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.771847, 36.837318, 34.921909>,  <44.717892, 36.783600, 35.149513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.771847, 36.837318, 34.921909>,  <44.861771, 36.926849, 34.542568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771847, 36.837318, 34.921909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330835, -0.932979, -0.141771,
		0.916521, 0.281875, 0.283789,
		-0.224808, -0.223824, 0.948348,
		44.704403, 36.770172, 35.206413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.500343, 36.679558, 34.878212>,  <44.861771, 36.926849, 34.542568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.500343, 36.679558, 34.878212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.177094, 36.536926, 35.065742>,  <44.983143, 36.451347, 35.178261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.177094, 36.536926, 35.065742>,  <45.500343, 36.679558, 34.878212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.177094, 36.536926, 35.065742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374926, -0.925272, -0.057475,
		0.454282, 0.129327, 0.881420,
		-0.808120, -0.356577, 0.468823,
		44.934658, 36.429955, 35.206390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967976, 36.409325, 34.346546>,  <45.500343, 36.679558, 34.878212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.967976, 36.409325, 34.346546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.297024, 36.392944, 34.119701>,  <46.494453, 36.383114, 33.983593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.297024, 36.392944, 34.119701>,  <45.967976, 36.409325, 34.346546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.297024, 36.392944, 34.119701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378614, 0.704664, -0.600084,
		0.424199, 0.708359, 0.564166,
		0.822622, -0.040954, -0.567112,
		46.543812, 36.380657, 33.949566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396332, 36.908710, 34.410118>,  <45.967976, 36.409325, 34.346546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396332, 36.908710, 34.410118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.456280, 36.786613, 34.033955>,  <46.492249, 36.713356, 33.808258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.456280, 36.786613, 34.033955>,  <46.396332, 36.908710, 34.410118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456280, 36.786613, 34.033955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318681, 0.885475, -0.338196,
		0.935939, 0.350375, 0.035429,
		0.149867, -0.305240, -0.940409,
		46.501240, 36.695042, 33.751831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.738426, 37.493328, 34.082920>,  <46.396332, 36.908710, 34.410118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.738426, 37.493328, 34.082920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.605129, 37.275047, 33.775372>,  <46.525150, 37.144077, 33.590843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.605129, 37.275047, 33.775372>,  <46.738426, 37.493328, 34.082920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.605129, 37.275047, 33.775372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350185, 0.828781, -0.436453,
		0.875398, 0.123803, -0.467281,
		-0.333239, -0.545705, -0.768867,
		46.505157, 37.111336, 33.544712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.900940, 37.839046, 33.416672>,  <46.738426, 37.493328, 34.082920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.900940, 37.839046, 33.416672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.650608, 37.546230, 33.308998>,  <46.500408, 37.370541, 33.244392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.650608, 37.546230, 33.308998>,  <46.900940, 37.839046, 33.416672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.650608, 37.546230, 33.308998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549451, 0.658732, -0.513979,
		0.553574, -0.173758, -0.814472,
		-0.625827, -0.732038, -0.269186,
		46.462860, 37.326618, 33.228241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.022354, 37.754761, 32.695148>,  <46.900940, 37.839046, 33.416672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.022354, 37.754761, 32.695148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.659405, 37.643726, 32.821396>,  <46.441635, 37.577106, 32.897144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.659405, 37.643726, 32.821396>,  <47.022354, 37.754761, 32.695148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.659405, 37.643726, 32.821396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420163, 0.578659, -0.699011,
		0.011399, -0.766877, -0.641692,
		-0.907377, -0.277584, 0.315617,
		46.387192, 37.560452, 32.916080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.628963, 37.733101, 32.121212>,  <47.022354, 37.754761, 32.695148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.628963, 37.733101, 32.121212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.336819, 37.738464, 32.394382>,  <46.161533, 37.741684, 32.558285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.336819, 37.738464, 32.394382>,  <46.628963, 37.733101, 32.121212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336819, 37.738464, 32.394382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547713, 0.585915, -0.597255,
		-0.408147, -0.810261, -0.420586,
		-0.730360, 0.013408, 0.682930,
		46.117710, 37.742485, 32.599262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079159, 37.690994, 31.660608>,  <46.628963, 37.733101, 32.121212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079159, 37.690994, 31.660608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.967236, 37.865894, 32.002491>,  <45.900082, 37.970833, 32.207619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.967236, 37.865894, 32.002491>,  <46.079159, 37.690994, 31.660608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967236, 37.865894, 32.002491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667023, 0.551764, -0.500637,
		-0.690499, -0.710189, 0.137270,
		-0.279806, 0.437251, 0.854704,
		45.883293, 37.997070, 32.258904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376942, 37.838856, 31.609886>,  <46.079159, 37.690994, 31.660608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376942, 37.838856, 31.609886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.458805, 38.084141, 31.915064>,  <45.507923, 38.231312, 32.098171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.458805, 38.084141, 31.915064>,  <45.376942, 37.838856, 31.609886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.458805, 38.084141, 31.915064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686174, 0.645738, -0.334944,
		-0.698053, -0.454961, 0.552931,
		0.204662, 0.613216, 0.762942,
		45.520203, 38.268105, 32.143948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667133, 38.200348, 31.768675>,  <45.376942, 37.838856, 31.609886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667133, 38.200348, 31.768675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.941910, 38.423580, 31.954863>,  <45.106773, 38.557518, 32.066574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.941910, 38.423580, 31.954863>,  <44.667133, 38.200348, 31.768675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.941910, 38.423580, 31.954863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565643, 0.812737, -0.139669,
		-0.456251, -0.167346, 0.873974,
		0.686937, 0.558081, 0.465470,
		45.147991, 38.591003, 32.094505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324478, 38.661476, 32.133389>,  <44.667133, 38.200348, 31.768675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324478, 38.661476, 32.133389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688122, 38.822639, 32.091087>,  <44.906307, 38.919338, 32.065708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688122, 38.822639, 32.091087>,  <44.324478, 38.661476, 32.133389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688122, 38.822639, 32.091087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416386, 0.886166, -0.203305,
		0.011803, 0.228861, 0.973387,
		0.909111, 0.402906, -0.105754,
		44.960854, 38.943512, 32.059361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427921, 39.238094, 32.575016>,  <44.324478, 38.661476, 32.133389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427921, 39.238094, 32.575016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.704048, 39.294762, 32.291218>,  <44.869724, 39.328762, 32.120937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.704048, 39.294762, 32.291218>,  <44.427921, 39.238094, 32.575016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704048, 39.294762, 32.291218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300467, 0.948213, -0.103015,
		0.658163, 0.284294, 0.697136,
		0.690320, 0.141666, -0.709499,
		44.911144, 39.337261, 32.078369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786926, 39.778465, 32.794495>,  <44.427921, 39.238094, 32.575016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786926, 39.778465, 32.794495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.818626, 39.733227, 32.398327>,  <44.837646, 39.706081, 32.160625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.818626, 39.733227, 32.398327>,  <44.786926, 39.778465, 32.794495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818626, 39.733227, 32.398327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426084, 0.894368, -0.136226,
		0.901205, 0.432798, 0.022692,
		0.079253, -0.113099, -0.990418,
		44.842403, 39.699299, 32.101200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962944, 40.386948, 32.531639>,  <44.786926, 39.778465, 32.794495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962944, 40.386948, 32.531639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820740, 40.215153, 32.199577>,  <44.735416, 40.112076, 32.000340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820740, 40.215153, 32.199577>,  <44.962944, 40.386948, 32.531639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820740, 40.215153, 32.199577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294422, 0.894417, -0.336653,
		0.887088, 0.124729, -0.444429,
		-0.355514, -0.429490, -0.830149,
		44.714088, 40.086308, 31.950531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092499, 40.848175, 31.968044>,  <44.962944, 40.386948, 32.531639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092499, 40.848175, 31.968044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792828, 40.621124, 31.831503>,  <44.613026, 40.484894, 31.749578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792828, 40.621124, 31.831503>,  <45.092499, 40.848175, 31.968044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792828, 40.621124, 31.831503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511937, 0.823233, -0.245372,
		0.420296, -0.009075, -0.907342,
		-0.749181, -0.567631, -0.341356,
		44.568073, 40.450836, 31.729095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863407, 41.217499, 31.414387>,  <45.092499, 40.848175, 31.968044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863407, 41.217499, 31.414387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.564468, 40.959858, 31.479628>,  <44.385105, 40.805271, 31.518772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.564468, 40.959858, 31.479628>,  <44.863407, 41.217499, 31.414387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564468, 40.959858, 31.479628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660759, 0.694681, -0.284282,
		0.069802, -0.320229, -0.944765,
		-0.747345, -0.644105, 0.163104,
		44.340263, 40.766624, 31.528559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423542, 41.208366, 30.752220>,  <44.863407, 41.217499, 31.414387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423542, 41.208366, 30.752220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.198730, 41.090935, 31.061527>,  <44.063843, 41.020477, 31.247110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.198730, 41.090935, 31.061527>,  <44.423542, 41.208366, 30.752220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198730, 41.090935, 31.061527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636765, 0.750235, -0.177982,
		-0.527880, -0.592419, -0.608590,
		-0.562026, -0.293576, 0.773266,
		44.030121, 41.002861, 31.293507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750725, 41.234802, 30.506247>,  <44.423542, 41.208366, 30.752220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750725, 41.234802, 30.506247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699989, 41.219151, 30.902708>,  <43.669548, 41.209759, 31.140585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699989, 41.219151, 30.902708>,  <43.750725, 41.234802, 30.506247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699989, 41.219151, 30.902708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710799, 0.700541, -0.063306,
		-0.691865, -0.712539, -0.116663,
		-0.126835, -0.039125, 0.991152,
		43.661938, 41.207413, 31.200054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024502, 41.276581, 30.564888>,  <43.750725, 41.234802, 30.506247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024502, 41.276581, 30.564888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.178654, 41.392269, 30.915394>,  <43.271145, 41.461681, 31.125696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.178654, 41.392269, 30.915394>,  <43.024502, 41.276581, 30.564888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178654, 41.392269, 30.915394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630893, 0.775572, 0.021481,
		-0.673393, -0.561107, 0.481354,
		0.385378, 0.289218, 0.876263,
		43.294266, 41.479034, 31.178272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454010, 41.386921, 31.115679>,  <43.024502, 41.276581, 30.564888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454010, 41.386921, 31.115679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.766327, 41.566425, 31.289566>,  <42.953716, 41.674129, 31.393898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.766327, 41.566425, 31.289566>,  <42.454010, 41.386921, 31.115679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766327, 41.566425, 31.289566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549785, 0.824027, 0.136804,
		-0.296828, -0.345817, 0.890114,
		0.780788, 0.448764, 0.434720,
		43.000565, 41.701054, 31.419981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176350, 41.677067, 31.820944>,  <42.454010, 41.386921, 31.115679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176350, 41.677067, 31.820944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.500359, 41.883450, 31.709488>,  <42.694763, 42.007278, 31.642614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.500359, 41.883450, 31.709488>,  <42.176350, 41.677067, 31.820944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500359, 41.883450, 31.709488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560945, 0.820269, -0.111804,
		0.170873, 0.246867, 0.953865,
		0.810027, 0.515962, -0.278641,
		42.743366, 42.038239, 31.625896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111439, 42.281536, 32.173843>,  <42.176350, 41.677067, 31.820944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111439, 42.281536, 32.173843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.352169, 42.387665, 31.872538>,  <42.496609, 42.451344, 31.691755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.352169, 42.387665, 31.872538>,  <42.111439, 42.281536, 32.173843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352169, 42.387665, 31.872538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479311, 0.874439, -0.074943,
		0.638798, 0.406151, 0.653436,
		0.601829, 0.265326, -0.753263,
		42.532719, 42.467262, 31.646559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.816952, 36.936050, 41.284904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440811, 37.032955, 41.189365>,  <38.215126, 37.091099, 41.132042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440811, 37.032955, 41.189365>,  <38.816952, 36.936050, 41.284904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440811, 37.032955, 41.189365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158779, -0.308385, -0.937917,
		-0.300863, -0.919899, 0.251528,
		-0.940356, 0.242247, -0.238842,
		38.158707, 37.105633, 41.117710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558994, 36.338314, 40.993328>,  <38.816952, 36.936050, 41.284904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558994, 36.338314, 40.993328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310059, 36.628185, 40.874985>,  <38.160698, 36.802109, 40.803978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310059, 36.628185, 40.874985>,  <38.558994, 36.338314, 40.993328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310059, 36.628185, 40.874985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139843, -0.268952, -0.952947,
		-0.770152, -0.634432, 0.066039,
		-0.622341, 0.724679, -0.295855,
		38.123356, 36.845589, 40.786228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961456, 36.098289, 40.623833>,  <38.558994, 36.338314, 40.993328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961456, 36.098289, 40.623833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005939, 36.470081, 40.483147>,  <38.032631, 36.693157, 40.398735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005939, 36.470081, 40.483147>,  <37.961456, 36.098289, 40.623833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005939, 36.470081, 40.483147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034756, -0.350056, -0.936084,
		-0.993189, 0.116324, -0.006623,
		0.111208, 0.929478, -0.351715,
		38.039303, 36.748924, 40.377632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576263, 36.074753, 39.973969>,  <37.961456, 36.098289, 40.623833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576263, 36.074753, 39.973969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793705, 36.409668, 39.950474>,  <37.924171, 36.610615, 39.936378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793705, 36.409668, 39.950474>,  <37.576263, 36.074753, 39.973969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793705, 36.409668, 39.950474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096650, -0.131952, -0.986533,
		-0.833758, 0.530607, -0.152653,
		0.543605, 0.837284, -0.058733,
		37.956787, 36.660854, 39.932854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306366, 36.446053, 39.350273>,  <37.576263, 36.074753, 39.973969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306366, 36.446053, 39.350273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669479, 36.600693, 39.415356>,  <37.887348, 36.693478, 39.454407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669479, 36.600693, 39.415356>,  <37.306366, 36.446053, 39.350273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669479, 36.600693, 39.415356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172500, 0.009494, -0.984964,
		-0.382329, 0.922200, -0.058069,
		0.907782, 0.386597, 0.162709,
		37.941814, 36.716671, 39.464169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381680, 37.105282, 38.894192>,  <37.306366, 36.446053, 39.350273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381680, 37.105282, 38.894192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751217, 36.969467, 38.964874>,  <37.972939, 36.887978, 39.007286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751217, 36.969467, 38.964874>,  <37.381680, 37.105282, 38.894192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751217, 36.969467, 38.964874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194136, 0.017771, -0.980814,
		0.329879, 0.940426, 0.082334,
		0.923846, -0.339534, 0.176708,
		38.028370, 36.867607, 39.017887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811909, 37.483002, 38.458469>,  <37.381680, 37.105282, 38.894192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811909, 37.483002, 38.458469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032654, 37.162601, 38.551285>,  <38.165100, 36.970360, 38.606976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032654, 37.162601, 38.551285>,  <37.811909, 37.483002, 38.458469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032654, 37.162601, 38.551285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342874, -0.035700, -0.938703,
		0.760185, 0.597599, 0.254941,
		0.551866, -0.801000, 0.232040,
		38.198215, 36.922302, 38.620895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430553, 37.655624, 38.199104>,  <37.811909, 37.483002, 38.458469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430553, 37.655624, 38.199104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468441, 37.257633, 38.212017>,  <38.491173, 37.018837, 38.219765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468441, 37.257633, 38.212017>,  <38.430553, 37.655624, 38.199104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468441, 37.257633, 38.212017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025795, -0.029966, -0.999218,
		0.995169, 0.095481, 0.022827,
		0.094723, -0.994980, 0.032284,
		38.496857, 36.959141, 38.221703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094360, 37.413399, 37.736408>,  <38.430553, 37.655624, 38.199104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094360, 37.413399, 37.736408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836151, 37.111279, 37.781700>,  <38.681225, 36.930008, 37.808876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836151, 37.111279, 37.781700>,  <39.094360, 37.413399, 37.736408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836151, 37.111279, 37.781700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028362, -0.124444, -0.991821,
		0.763214, -0.643454, 0.058910,
		-0.645523, -0.755301, 0.113227,
		38.642494, 36.884689, 37.815670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201126, 37.127163, 37.073044>,  <39.094360, 37.413399, 37.736408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201126, 37.127163, 37.073044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922108, 36.897125, 37.244019>,  <38.754696, 36.759102, 37.346603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922108, 36.897125, 37.244019>,  <39.201126, 37.127163, 37.073044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922108, 36.897125, 37.244019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169981, -0.446693, -0.878392,
		0.696088, -0.685373, 0.213834,
		-0.697545, -0.575090, 0.427438,
		38.712845, 36.724598, 37.372250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381229, 36.449043, 36.837795>,  <39.201126, 37.127163, 37.073044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381229, 36.449043, 36.837795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987000, 36.456112, 36.905113>,  <38.750462, 36.460354, 36.945503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987000, 36.456112, 36.905113>,  <39.381229, 36.449043, 36.837795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987000, 36.456112, 36.905113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165779, -0.300400, -0.939296,
		0.033956, -0.953649, 0.298998,
		-0.985578, 0.017673, 0.168295,
		38.691326, 36.461414, 36.955601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145058, 35.921490, 36.378864>,  <39.381229, 36.449043, 36.837795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145058, 35.921490, 36.378864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819538, 36.136017, 36.468384>,  <38.624226, 36.264732, 36.522095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819538, 36.136017, 36.468384>,  <39.145058, 35.921490, 36.378864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819538, 36.136017, 36.468384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252533, 0.020486, -0.967371,
		-0.523404, -0.843767, 0.118767,
		-0.813803, 0.536319, 0.223802,
		38.575397, 36.296913, 36.535522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791435, 35.721054, 36.019081>,  <39.145058, 35.921490, 36.378864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791435, 35.721054, 36.019081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770653, 35.952374, 35.693417>,  <39.758183, 36.091167, 35.498016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770653, 35.952374, 35.693417>,  <39.791435, 35.721054, 36.019081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770653, 35.952374, 35.693417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665391, -0.627987, -0.403594,
		-0.744685, 0.520767, 0.417428,
		-0.051960, 0.578303, -0.814166,
		39.755066, 36.125866, 35.449165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359459, 36.146938, 35.877991>,  <39.791435, 35.721054, 36.019081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359459, 36.146938, 35.877991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272800, 35.887531, 35.586105>,  <40.220806, 35.731888, 35.410973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272800, 35.887531, 35.586105>,  <40.359459, 36.146938, 35.877991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272800, 35.887531, 35.586105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508816, -0.712928, 0.482534,
		-0.833168, -0.266751, 0.484433,
		-0.216650, -0.648519, -0.729716,
		40.207806, 35.692974, 35.367191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083347, 35.751213, 35.743019>,  <40.359459, 36.146938, 35.877991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083347, 35.751213, 35.743019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392204, 35.502769, 35.796703>,  <41.577518, 35.353703, 35.828915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392204, 35.502769, 35.796703>,  <41.083347, 35.751213, 35.743019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392204, 35.502769, 35.796703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590164, -0.622645, 0.513828,
		-0.235577, -0.475958, -0.847330,
		0.772146, -0.621110, 0.134213,
		41.623848, 35.316437, 35.836967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663006, 35.125183, 35.785019>,  <41.083347, 35.751213, 35.743019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663006, 35.125183, 35.785019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021183, 35.061069, 35.951145>,  <41.236088, 35.022602, 36.050823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021183, 35.061069, 35.951145>,  <40.663006, 35.125183, 35.785019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021183, 35.061069, 35.951145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416297, -0.632022, 0.653639,
		0.157723, -0.758193, -0.632666,
		0.895444, -0.160283, 0.415318,
		41.289818, 35.012985, 36.075741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710812, 34.425171, 35.896812>,  <40.663006, 35.125183, 35.785019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710812, 34.425171, 35.896812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970535, 34.600700, 36.145275>,  <41.126369, 34.706017, 36.294353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970535, 34.600700, 36.145275>,  <40.710812, 34.425171, 35.896812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970535, 34.600700, 36.145275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360995, -0.541042, 0.759576,
		0.669390, -0.717433, -0.192890,
		0.649306, 0.438821, 0.621158,
		41.165329, 34.732346, 36.331623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901302, 33.836510, 36.406776>,  <40.710812, 34.425171, 35.896812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901302, 33.836510, 36.406776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047997, 34.167973, 36.575932>,  <41.136013, 34.366852, 36.677425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047997, 34.167973, 36.575932>,  <40.901302, 33.836510, 36.406776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047997, 34.167973, 36.575932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254918, -0.347653, 0.902305,
		0.894721, -0.438705, 0.083744,
		0.366731, 0.828659, 0.422886,
		41.158016, 34.416569, 36.702797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333149, 33.606182, 36.954102>,  <40.901302, 33.836510, 36.406776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333149, 33.606182, 36.954102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221649, 33.973694, 37.065922>,  <41.154747, 34.194199, 37.133015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221649, 33.973694, 37.065922>,  <41.333149, 33.606182, 36.954102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221649, 33.973694, 37.065922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067015, -0.308989, 0.948702,
		0.958022, 0.245718, 0.147703,
		-0.278752, 0.918776, 0.279551,
		41.138023, 34.249325, 37.149788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749619, 33.868549, 37.472530>,  <41.333149, 33.606182, 36.954102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749619, 33.868549, 37.472530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409416, 34.074203, 37.516891>,  <41.205296, 34.197598, 37.543510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409416, 34.074203, 37.516891>,  <41.749619, 33.868549, 37.472530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409416, 34.074203, 37.516891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051455, -0.291186, 0.955282,
		0.523439, 0.806768, 0.274111,
		-0.850508, 0.514136, 0.110906,
		41.154263, 34.228443, 37.550163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786777, 34.198448, 38.114948>,  <41.749619, 33.868549, 37.472530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786777, 34.198448, 38.114948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394318, 34.223736, 38.041897>,  <41.158844, 34.238911, 37.998066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394318, 34.223736, 38.041897>,  <41.786777, 34.198448, 38.114948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394318, 34.223736, 38.041897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192687, -0.246950, 0.949677,
		0.014939, 0.966964, 0.254476,
		-0.981146, 0.063222, -0.182632,
		41.099976, 34.242702, 37.987106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487473, 34.544342, 38.754608>,  <41.786777, 34.198448, 38.114948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487473, 34.544342, 38.754608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182835, 34.376289, 38.557236>,  <41.000053, 34.275459, 38.438812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182835, 34.376289, 38.557236>,  <41.487473, 34.544342, 38.754608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182835, 34.376289, 38.557236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446881, -0.210955, 0.869365,
		-0.469334, 0.882605, -0.027085,
		-0.761592, -0.420127, -0.493428,
		40.954357, 34.250252, 38.409206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948082, 34.856586, 39.005859>,  <41.487473, 34.544342, 38.754608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948082, 34.856586, 39.005859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781319, 34.543373, 38.821232>,  <40.681259, 34.355446, 38.710453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781319, 34.543373, 38.821232>,  <40.948082, 34.856586, 39.005859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781319, 34.543373, 38.821232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616390, -0.129652, 0.776694,
		-0.668020, 0.608319, -0.428600,
		-0.416909, -0.783032, -0.461572,
		40.656246, 34.308464, 38.682762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255188, 34.898991, 39.185215>,  <40.948082, 34.856586, 39.005859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255188, 34.898991, 39.185215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305016, 34.519341, 39.069534>,  <40.334911, 34.291550, 39.000126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305016, 34.519341, 39.069534>,  <40.255188, 34.898991, 39.185215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305016, 34.519341, 39.069534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349197, -0.314764, 0.882601,
		-0.928732, -0.008956, -0.370643,
		0.124570, -0.949128, -0.289204,
		40.342388, 34.234604, 38.982773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741386, 34.603901, 39.409912>,  <40.255188, 34.898991, 39.185215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741386, 34.603901, 39.409912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984650, 34.296104, 39.331902>,  <40.130608, 34.111427, 39.285095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984650, 34.296104, 39.331902>,  <39.741386, 34.603901, 39.409912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984650, 34.296104, 39.331902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208348, -0.391799, 0.896150,
		-0.765990, -0.504362, -0.398595,
		0.608153, -0.769489, -0.195031,
		40.167095, 34.065258, 39.273392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373688, 34.039639, 39.381607>,  <39.741386, 34.603901, 39.409912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373688, 34.039639, 39.381607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741966, 33.939430, 39.501312>,  <39.962933, 33.879303, 39.573135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741966, 33.939430, 39.501312>,  <39.373688, 34.039639, 39.381607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741966, 33.939430, 39.501312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375939, -0.363266, 0.852472,
		-0.104852, -0.897371, -0.428639,
		0.920693, -0.250525, 0.299268,
		40.018173, 33.864273, 39.591091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312641, 33.336700, 39.624496>,  <39.373688, 34.039639, 39.381607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312641, 33.336700, 39.624496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661278, 33.466957, 39.771076>,  <39.870461, 33.545109, 39.859024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661278, 33.466957, 39.771076>,  <39.312641, 33.336700, 39.624496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661278, 33.466957, 39.771076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291170, -0.257492, 0.921367,
		0.394389, -0.909757, -0.129612,
		0.871595, 0.325638, 0.366446,
		39.922756, 33.564648, 39.881012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452003, 32.864727, 40.146015>,  <39.312641, 33.336700, 39.624496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452003, 32.864727, 40.146015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683548, 33.176357, 40.242321>,  <39.822475, 33.363335, 40.300106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683548, 33.176357, 40.242321>,  <39.452003, 32.864727, 40.146015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683548, 33.176357, 40.242321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059208, -0.254325, 0.965305,
		0.813274, -0.573032, -0.101092,
		0.578860, 0.779072, 0.240764,
		39.857204, 33.410080, 40.314548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887985, 32.277531, 39.913548>,  <39.452003, 32.864727, 40.146015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887985, 32.277531, 39.913548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579460, 32.026974, 39.868439>,  <39.394344, 31.876640, 39.841373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579460, 32.026974, 39.868439>,  <39.887985, 32.277531, 39.913548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579460, 32.026974, 39.868439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109242, 0.304843, -0.946117,
		0.627016, -0.717429, -0.303557,
		-0.771309, -0.626391, -0.112768,
		39.348068, 31.839056, 39.834610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969482, 31.881454, 39.240971>,  <39.887985, 32.277531, 39.913548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969482, 31.881454, 39.240971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577030, 31.898191, 39.316483>,  <39.341560, 31.908234, 39.361790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577030, 31.898191, 39.316483>,  <39.969482, 31.881454, 39.240971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577030, 31.898191, 39.316483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184722, 0.085680, -0.979049,
		-0.057144, -0.995443, -0.076334,
		-0.981128, 0.041846, 0.188777,
		39.282692, 31.910744, 39.373116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688290, 31.819248, 38.602386>,  <39.969482, 31.881454, 39.240971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688290, 31.819248, 38.602386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361954, 31.921152, 38.810043>,  <39.166153, 31.982294, 38.934639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361954, 31.921152, 38.810043>,  <39.688290, 31.819248, 38.602386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361954, 31.921152, 38.810043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425616, 0.343217, -0.837289,
		-0.391485, -0.904046, -0.171579,
		-0.815837, 0.254759, 0.519141,
		39.117203, 31.997580, 38.965786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159256, 31.601152, 38.177444>,  <39.688290, 31.819248, 38.602386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159256, 31.601152, 38.177444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014534, 31.864687, 38.441273>,  <38.927700, 32.022808, 38.599571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014534, 31.864687, 38.441273>,  <39.159256, 31.601152, 38.177444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014534, 31.864687, 38.441273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540315, 0.428363, -0.724268,
		-0.759709, -0.618419, 0.200995,
		-0.361803, 0.658834, 0.659573,
		38.905994, 32.062336, 38.639145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497387, 31.638683, 37.962021>,  <39.159256, 31.601152, 38.177444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497387, 31.638683, 37.962021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584404, 31.973717, 38.162472>,  <38.636616, 32.174736, 38.282742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584404, 31.973717, 38.162472>,  <38.497387, 31.638683, 37.962021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584404, 31.973717, 38.162472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460457, 0.540768, -0.703953,
		-0.860612, -0.077605, 0.503313,
		0.217545, 0.837584, 0.501126,
		38.649666, 32.224991, 38.312809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876781, 31.977287, 37.956524>,  <38.497387, 31.638683, 37.962021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876781, 31.977287, 37.956524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134262, 32.274117, 38.031326>,  <38.288750, 32.452213, 38.076206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134262, 32.274117, 38.031326>,  <37.876781, 31.977287, 37.956524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134262, 32.274117, 38.031326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442066, 0.560035, -0.700670,
		-0.624679, 0.368355, 0.688543,
		0.643703, 0.742075, 0.187005,
		38.327374, 32.496738, 38.087429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436325, 32.616688, 37.917065>,  <37.876781, 31.977287, 37.956524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436325, 32.616688, 37.917065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811455, 32.724430, 37.829494>,  <38.036533, 32.789078, 37.776955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811455, 32.724430, 37.829494>,  <37.436325, 32.616688, 37.917065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811455, 32.724430, 37.829494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336628, 0.552012, -0.762866,
		-0.084638, 0.789131, 0.608366,
		0.937826, 0.269360, -0.218922,
		38.092804, 32.805237, 37.763817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489391, 33.288681, 37.991245>,  <37.436325, 32.616688, 37.917065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489391, 33.288681, 37.991245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788452, 33.201935, 37.740170>,  <37.967888, 33.149887, 37.589523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788452, 33.201935, 37.740170>,  <37.489391, 33.288681, 37.991245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788452, 33.201935, 37.740170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345643, 0.679990, -0.646641,
		0.567056, 0.700415, 0.433435,
		0.747649, -0.216867, -0.627686,
		38.012745, 33.136875, 37.551865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640102, 33.965481, 37.773861>,  <37.489391, 33.288681, 37.991245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640102, 33.965481, 37.773861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805515, 33.710026, 37.514282>,  <37.904762, 33.556751, 37.358536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805515, 33.710026, 37.514282>,  <37.640102, 33.965481, 37.773861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805515, 33.710026, 37.514282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299739, 0.577523, -0.759357,
		0.859735, 0.508536, 0.047402,
		0.413536, -0.638638, -0.648945,
		37.929577, 33.518433, 37.319599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795300, 34.362629, 37.304192>,  <37.640102, 33.965481, 37.773861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795300, 34.362629, 37.304192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809074, 34.009762, 37.116322>,  <37.817337, 33.798042, 37.003601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809074, 34.009762, 37.116322>,  <37.795300, 34.362629, 37.304192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809074, 34.009762, 37.116322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468896, 0.400756, -0.787102,
		0.882582, 0.247330, -0.399847,
		0.034433, -0.882169, -0.469672,
		37.819405, 33.745110, 36.975418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061943, 34.434532, 36.567001>,  <37.795300, 34.362629, 37.304192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061943, 34.434532, 36.567001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839325, 34.104317, 36.604385>,  <37.705753, 33.906185, 36.626816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839325, 34.104317, 36.604385>,  <38.061943, 34.434532, 36.567001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839325, 34.104317, 36.604385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552230, 0.283530, -0.783998,
		0.620725, -0.487944, -0.613687,
		-0.556546, -0.825543, 0.093463,
		37.672359, 33.856655, 36.632423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901424, 34.110619, 35.926311>,  <38.061943, 34.434532, 36.567001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901424, 34.110619, 35.926311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580414, 34.021095, 36.147533>,  <37.387810, 33.967381, 36.280266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580414, 34.021095, 36.147533>,  <37.901424, 34.110619, 35.926311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580414, 34.021095, 36.147533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592435, 0.189302, -0.783062,
		0.070560, -0.956073, -0.284510,
		-0.802522, -0.223806, 0.553054,
		37.339657, 33.953953, 36.313450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.834763, 30.323162, 43.200947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.438927, 30.331839, 43.144047>,  <39.201424, 30.337044, 43.109905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.438927, 30.331839, 43.144047>,  <39.834763, 30.323162, 43.200947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438927, 30.331839, 43.144047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133265, -0.234797, -0.962866,
		-0.054284, -0.971803, 0.229463,
		-0.989593, 0.021689, -0.142253,
		39.142048, 30.338346, 43.101372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715786, 29.844139, 42.747295>,  <39.834763, 30.323162, 43.200947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715786, 29.844139, 42.747295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354729, 30.014854, 42.725067>,  <39.138096, 30.117283, 42.711731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354729, 30.014854, 42.725067>,  <39.715786, 29.844139, 42.747295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354729, 30.014854, 42.725067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044152, -0.220268, -0.974440,
		-0.428122, -0.877116, 0.217667,
		-0.902642, 0.426789, -0.055575,
		39.083935, 30.142891, 42.708393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281422, 29.428688, 42.230694>,  <39.715786, 29.844139, 42.747295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281422, 29.428688, 42.230694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.148266, 29.805273, 42.251976>,  <39.068371, 30.031225, 42.264744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.148266, 29.805273, 42.251976>,  <39.281422, 29.428688, 42.230694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148266, 29.805273, 42.251976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021294, 0.063913, -0.997728,
		-0.942725, -0.331001, -0.041323,
		-0.332890, 0.941463, 0.053205,
		39.048397, 30.087711, 42.267937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924427, 29.482868, 41.612961>,  <39.281422, 29.428688, 42.230694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924427, 29.482868, 41.612961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.976139, 29.859268, 41.738060>,  <39.007168, 30.085108, 41.813118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.976139, 29.859268, 41.738060>,  <38.924427, 29.482868, 41.612961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976139, 29.859268, 41.738060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011761, 0.313914, -0.949378,
		-0.991538, 0.126417, 0.029516,
		0.129283, 0.940998, 0.312745,
		39.014923, 30.141567, 41.831882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525749, 29.884655, 41.070774>,  <38.924427, 29.482868, 41.612961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525749, 29.884655, 41.070774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.762230, 30.160614, 41.237877>,  <38.904118, 30.326189, 41.338139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.762230, 30.160614, 41.237877>,  <38.525749, 29.884655, 41.070774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762230, 30.160614, 41.237877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116764, 0.439300, -0.890720,
		-0.798025, 0.575376, 0.179161,
		0.591205, 0.689897, 0.417755,
		38.939590, 30.367582, 41.363205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214191, 30.584503, 41.069431>,  <38.525749, 29.884655, 41.070774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214191, 30.584503, 41.069431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607590, 30.653814, 41.090271>,  <38.843628, 30.695400, 41.102776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.607590, 30.653814, 41.090271>,  <38.214191, 30.584503, 41.069431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607590, 30.653814, 41.090271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077580, 0.663962, -0.743730,
		-0.163467, 0.727412, 0.666446,
		0.983494, 0.173278, 0.052103,
		38.902637, 30.705797, 41.105904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316383, 31.388479, 41.129097>,  <38.214191, 30.584503, 41.069431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316383, 31.388479, 41.129097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.643806, 31.209013, 40.985622>,  <38.840260, 31.101334, 40.899540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.643806, 31.209013, 40.985622>,  <38.316383, 31.388479, 41.129097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643806, 31.209013, 40.985622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022782, 0.649296, -0.760194,
		0.573966, 0.614095, 0.541711,
		0.818562, -0.448667, -0.358684,
		38.889374, 31.074413, 40.878017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711067, 31.919344, 40.955910>,  <38.316383, 31.388479, 41.129097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711067, 31.919344, 40.955910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886097, 31.634666, 40.736084>,  <38.991116, 31.463860, 40.604187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.886097, 31.634666, 40.736084>,  <38.711067, 31.919344, 40.955910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886097, 31.634666, 40.736084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335664, 0.696289, -0.634438,
		0.834179, 0.093147, 0.543570,
		0.437578, -0.711691, -0.549564,
		39.017372, 31.421160, 40.571217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309586, 32.211411, 40.723530>,  <38.711067, 31.919344, 40.955910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309586, 32.211411, 40.723530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.231098, 31.912109, 40.470039>,  <39.184006, 31.732529, 40.317944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.231098, 31.912109, 40.470039>,  <39.309586, 32.211411, 40.723530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231098, 31.912109, 40.470039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350175, 0.550203, -0.758059,
		0.915902, -0.370661, 0.154061,
		-0.196218, -0.748256, -0.633728,
		39.172234, 31.687634, 40.279922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883591, 32.601654, 40.764950>,  <39.309586, 32.211411, 40.723530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883591, 32.601654, 40.764950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891685, 33.001278, 40.780308>,  <39.896542, 33.241051, 40.789524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.891685, 33.001278, 40.780308>,  <39.883591, 32.601654, 40.764950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891685, 33.001278, 40.780308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171430, -0.034367, 0.984597,
		0.984989, -0.026506, 0.170573,
		0.020236, 0.999058, 0.038395,
		39.897755, 33.300995, 40.791824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352943, 32.763103, 41.283928>,  <39.883591, 32.601654, 40.764950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352943, 32.763103, 41.283928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127029, 33.092300, 41.259598>,  <39.991482, 33.289818, 41.244999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127029, 33.092300, 41.259598>,  <40.352943, 32.763103, 41.283928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127029, 33.092300, 41.259598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085160, 0.131439, 0.987660,
		0.820831, 0.552637, -0.144321,
		-0.564786, 0.822992, -0.060826,
		39.957592, 33.339199, 41.241348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573387, 33.182049, 41.829052>,  <40.352943, 32.763103, 41.283928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573387, 33.182049, 41.829052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.221142, 33.351562, 41.744274>,  <40.009792, 33.453270, 41.693409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.221142, 33.351562, 41.744274>,  <40.573387, 33.182049, 41.829052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221142, 33.351562, 41.744274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009188, 0.431942, 0.901855,
		0.473740, 0.796135, -0.376482,
		-0.880617, 0.423785, -0.211943,
		39.956955, 33.478699, 41.680691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579323, 33.976006, 42.066483>,  <40.573387, 33.182049, 41.829052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579323, 33.976006, 42.066483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.192913, 33.878349, 42.032551>,  <39.961067, 33.819756, 42.012192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.192913, 33.878349, 42.032551>,  <40.579323, 33.976006, 42.066483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192913, 33.878349, 42.032551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175417, 0.378291, 0.908914,
		-0.189811, 0.892913, -0.408263,
		-0.966023, -0.244138, -0.084828,
		39.903107, 33.805107, 42.007103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175247, 34.557972, 42.276806>,  <40.579323, 33.976006, 42.066483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175247, 34.557972, 42.276806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893505, 34.275902, 42.309341>,  <39.724461, 34.106659, 42.328861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893505, 34.275902, 42.309341>,  <40.175247, 34.557972, 42.276806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893505, 34.275902, 42.309341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251795, 0.355335, 0.900186,
		-0.663691, 0.613568, -0.427841,
		-0.704353, -0.705174, 0.081339,
		39.682198, 34.064350, 42.333744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489235, 34.823093, 42.633728>,  <40.175247, 34.557972, 42.276806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489235, 34.823093, 42.633728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.458374, 34.429615, 42.698708>,  <39.439857, 34.193527, 42.737694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.458374, 34.429615, 42.698708>,  <39.489235, 34.823093, 42.633728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458374, 34.429615, 42.698708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261468, 0.177193, 0.948808,
		-0.962124, 0.030727, -0.270876,
		-0.077152, -0.983696, 0.162448,
		39.435230, 34.134506, 42.747440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765087, 34.725700, 43.098557>,  <39.489235, 34.823093, 42.633728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765087, 34.725700, 43.098557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998886, 34.401142, 43.097828>,  <39.139164, 34.206409, 43.097389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998886, 34.401142, 43.097828>,  <38.765087, 34.725700, 43.098557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998886, 34.401142, 43.097828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080024, -0.059882, 0.994993,
		-0.807439, -0.581425, -0.099932,
		0.584498, -0.811393, -0.001823,
		39.174236, 34.157722, 43.097282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522110, 34.256725, 43.712532>,  <38.765087, 34.725700, 43.098557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522110, 34.256725, 43.712532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.902588, 34.164371, 43.630627>,  <39.130875, 34.108959, 43.581482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.902588, 34.164371, 43.630627>,  <38.522110, 34.256725, 43.712532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902588, 34.164371, 43.630627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166049, -0.176368, 0.970218,
		-0.260120, -0.956863, -0.129422,
		0.951192, -0.230883, -0.204763,
		39.187946, 34.095108, 43.569199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646744, 33.734211, 44.130478>,  <38.522110, 34.256725, 43.712532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646744, 33.734211, 44.130478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026760, 33.825409, 44.045204>,  <39.254768, 33.880127, 43.994041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026760, 33.825409, 44.045204>,  <38.646744, 33.734211, 44.130478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026760, 33.825409, 44.045204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226383, -0.033086, 0.973476,
		0.214898, -0.973099, -0.083048,
		0.950037, 0.227999, -0.213183,
		39.311771, 33.893810, 43.981251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093758, 33.286816, 44.575447>,  <38.646744, 33.734211, 44.130478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093758, 33.286816, 44.575447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352928, 33.572277, 44.468948>,  <39.508430, 33.743553, 44.405048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352928, 33.572277, 44.468948>,  <39.093758, 33.286816, 44.575447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352928, 33.572277, 44.468948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344739, 0.036938, 0.937971,
		0.679224, -0.699521, -0.222092,
		0.647927, 0.713656, -0.266242,
		39.547306, 33.786373, 44.389076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831917, 33.049656, 44.739098>,  <39.093758, 33.286816, 44.575447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831917, 33.049656, 44.739098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.814186, 33.448467, 44.713905>,  <39.803547, 33.687756, 44.698792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.814186, 33.448467, 44.713905>,  <39.831917, 33.049656, 44.739098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814186, 33.448467, 44.713905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537966, 0.076942, 0.839448,
		0.841800, 0.003335, -0.539779,
		-0.044331, 0.997030, -0.062976,
		39.800888, 33.747578, 44.695011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505409, 33.311672, 44.870609>,  <39.831917, 33.049656, 44.739098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505409, 33.311672, 44.870609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.251743, 33.612568, 44.942120>,  <40.099541, 33.793106, 44.985027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.251743, 33.612568, 44.942120>,  <40.505409, 33.311672, 44.870609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251743, 33.612568, 44.942120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430770, 0.151728, 0.889615,
		0.642079, 0.641180, -0.420264,
		-0.634170, 0.752241, 0.178780,
		40.061493, 33.838242, 44.995754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890083, 33.805859, 45.205074>,  <40.505409, 33.311672, 44.870609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890083, 33.805859, 45.205074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.511646, 33.906502, 45.286659>,  <40.284584, 33.966888, 45.335609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.511646, 33.906502, 45.286659>,  <40.890083, 33.805859, 45.205074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511646, 33.906502, 45.286659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255474, 0.192597, 0.947439,
		0.199103, 0.948472, -0.246494,
		-0.946093, 0.251611, 0.203963,
		40.227818, 33.981983, 45.347847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997143, 34.363796, 45.665501>,  <40.890083, 33.805859, 45.205074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997143, 34.363796, 45.665501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.619217, 34.246059, 45.723030>,  <40.392460, 34.175415, 45.757549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.619217, 34.246059, 45.723030>,  <40.997143, 34.363796, 45.665501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619217, 34.246059, 45.723030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107500, 0.136157, 0.984838,
		-0.309464, 0.945951, -0.097001,
		-0.944815, -0.294344, 0.143826,
		40.335773, 34.157757, 45.766178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.831656, 34.255207, 46.024391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.154911, 34.065277, 45.884991>,  <32.348866, 33.951321, 45.801350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.154911, 34.065277, 45.884991>,  <31.831656, 34.255207, 46.024391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154911, 34.065277, 45.884991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318675, 0.145113, -0.936690,
		0.495334, 0.868035, -0.034042,
		0.808140, -0.474823, -0.348500,
		32.397354, 33.922829, 45.780441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301403, 34.781445, 45.625309>,  <31.831656, 34.255207, 46.024391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301403, 34.781445, 45.625309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.340240, 34.402653, 45.502800>,  <32.363544, 34.175377, 45.429295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.340240, 34.402653, 45.502800>,  <32.301403, 34.781445, 45.625309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340240, 34.402653, 45.502800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216128, 0.280325, -0.935257,
		0.971525, 0.157003, -0.177451,
		0.097094, -0.946978, -0.306276,
		32.369370, 34.118561, 45.410915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860741, 34.802574, 45.159805>,  <32.301403, 34.781445, 45.625309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860741, 34.802574, 45.159805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.698254, 34.449406, 45.065620>,  <32.600761, 34.237507, 45.009109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.698254, 34.449406, 45.065620>,  <32.860741, 34.802574, 45.159805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698254, 34.449406, 45.065620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115526, 0.205995, -0.971710,
		0.906445, -0.421926, 0.018321,
		-0.406215, -0.882918, -0.235466,
		32.576389, 34.184528, 44.994980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299824, 34.458828, 44.642693>,  <32.860741, 34.802574, 45.159805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299824, 34.458828, 44.642693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.938606, 34.291153, 44.605183>,  <32.721874, 34.190548, 44.582676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.938606, 34.291153, 44.605183>,  <33.299824, 34.458828, 44.642693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938606, 34.291153, 44.605183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071188, 0.069235, -0.995057,
		0.423608, -0.905256, -0.032681,
		-0.903044, -0.419187, -0.093772,
		32.667694, 34.165398, 44.577053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436764, 33.989609, 44.102436>,  <33.299824, 34.458828, 44.642693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436764, 33.989609, 44.102436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038002, 34.014507, 44.121632>,  <32.798744, 34.029446, 44.133148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038002, 34.014507, 44.121632>,  <33.436764, 33.989609, 44.102436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038002, 34.014507, 44.121632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057523, -0.161738, -0.985156,
		-0.053556, -0.984869, 0.164818,
		-0.996907, 0.062242, 0.047990,
		32.738930, 34.033180, 44.136028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177685, 33.442524, 43.637661>,  <33.436764, 33.989609, 44.102436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177685, 33.442524, 43.637661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.875813, 33.697300, 43.700619>,  <32.694691, 33.850166, 43.738396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.875813, 33.697300, 43.700619>,  <33.177685, 33.442524, 43.637661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875813, 33.697300, 43.700619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147632, 0.068894, -0.986640,
		-0.639270, -0.767832, 0.042039,
		-0.754678, 0.636936, 0.157399,
		32.649410, 33.888382, 43.747837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684219, 33.303535, 43.220188>,  <33.177685, 33.442524, 43.637661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684219, 33.303535, 43.220188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.556011, 33.675442, 43.292633>,  <32.479084, 33.898586, 43.336102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.556011, 33.675442, 43.292633>,  <32.684219, 33.303535, 43.220188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556011, 33.675442, 43.292633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316595, 0.075057, -0.945587,
		-0.892767, -0.360423, 0.270301,
		-0.320523, 0.929764, 0.181117,
		32.459854, 33.954372, 43.346970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086952, 33.413471, 42.904228>,  <32.684219, 33.303535, 43.220188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086952, 33.413471, 42.904228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193745, 33.796219, 42.950058>,  <32.257820, 34.025867, 42.977554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193745, 33.796219, 42.950058>,  <32.086952, 33.413471, 42.904228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193745, 33.796219, 42.950058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168750, 0.163471, -0.972009,
		-0.948813, 0.240171, 0.205115,
		0.266979, 0.956867, 0.114574,
		32.273838, 34.083279, 42.984428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601309, 33.759731, 42.487236>,  <32.086952, 33.413471, 42.904228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601309, 33.759731, 42.487236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.907763, 34.010769, 42.542603>,  <32.091637, 34.161392, 42.575821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.907763, 34.010769, 42.542603>,  <31.601309, 33.759731, 42.487236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907763, 34.010769, 42.542603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163784, 0.398926, -0.902238,
		-0.621458, 0.668567, 0.408422,
		0.766136, 0.627596, 0.138415,
		32.137604, 34.199047, 42.584126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380447, 34.402245, 42.252949>,  <31.601309, 33.759731, 42.487236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380447, 34.402245, 42.252949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.778399, 34.442162, 42.246532>,  <32.017170, 34.466110, 42.242683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.778399, 34.442162, 42.246532>,  <31.380447, 34.402245, 42.252949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778399, 34.442162, 42.246532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063536, 0.494034, -0.867118,
		-0.078604, 0.863697, 0.497844,
		0.994879, 0.099790, -0.016043,
		32.076862, 34.472099, 42.241718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516081, 35.074825, 42.065086>,  <31.380447, 34.402245, 42.252949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516081, 35.074825, 42.065086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.861423, 34.889099, 41.986065>,  <32.068630, 34.777664, 41.938652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.861423, 34.889099, 41.986065>,  <31.516081, 35.074825, 42.065086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861423, 34.889099, 41.986065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089676, 0.526458, -0.845459,
		0.496561, 0.712217, 0.496159,
		0.863357, -0.464316, -0.197550,
		32.120430, 34.749805, 41.926800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039066, 35.580296, 42.054615>,  <31.516081, 35.074825, 42.065086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039066, 35.580296, 42.054615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.185505, 35.281090, 41.833183>,  <32.273369, 35.101566, 41.700325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.185505, 35.281090, 41.833183>,  <32.039066, 35.580296, 42.054615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185505, 35.281090, 41.833183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324438, 0.660147, -0.677455,
		0.872188, 0.068414, 0.484363,
		0.366098, -0.748014, -0.553577,
		32.295334, 35.056686, 41.667110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740021, 35.713318, 41.854610>,  <32.039066, 35.580296, 42.054615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740021, 35.713318, 41.854610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.593872, 35.461578, 41.580261>,  <32.506184, 35.310535, 41.415653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.593872, 35.461578, 41.580261>,  <32.740021, 35.713318, 41.854610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593872, 35.461578, 41.580261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275711, 0.630586, -0.725497,
		0.889092, -0.454181, -0.056882,
		-0.365376, -0.629350, -0.685871,
		32.484261, 35.272774, 41.374500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999821, 36.019714, 41.316010>,  <32.740021, 35.713318, 41.854610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999821, 36.019714, 41.316010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.776554, 35.739086, 41.138809>,  <32.642593, 35.570709, 41.032490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.776554, 35.739086, 41.138809>,  <32.999821, 36.019714, 41.316010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776554, 35.739086, 41.138809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062719, 0.568055, -0.820597,
		0.827354, -0.430246, -0.361072,
		-0.558167, -0.701571, -0.442998,
		32.609104, 35.528614, 41.005909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728088, 36.242451, 41.466797>,  <32.999821, 36.019714, 41.316010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728088, 36.242451, 41.466797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.917881, 36.591480, 41.420361>,  <34.031757, 36.800900, 41.392498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.917881, 36.591480, 41.420361>,  <33.728088, 36.242451, 41.466797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917881, 36.591480, 41.420361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085495, 0.085580, 0.992656,
		0.876103, -0.480923, -0.033994,
		0.474482, 0.872576, -0.116093,
		34.060226, 36.853252, 41.385532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298344, 36.224133, 41.913818>,  <33.728088, 36.242451, 41.466797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298344, 36.224133, 41.913818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.220200, 36.606804, 41.827465>,  <34.173313, 36.836407, 41.775654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.220200, 36.606804, 41.827465>,  <34.298344, 36.224133, 41.913818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220200, 36.606804, 41.827465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143801, 0.245691, 0.958622,
		0.970131, 0.156236, -0.185570,
		-0.195365, 0.956674, -0.215886,
		34.161591, 36.893806, 41.762699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883068, 36.552761, 42.164082>,  <34.298344, 36.224133, 41.913818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883068, 36.552761, 42.164082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568214, 36.799461, 42.166500>,  <34.379303, 36.947483, 42.167953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.568214, 36.799461, 42.166500>,  <34.883068, 36.552761, 42.164082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568214, 36.799461, 42.166500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177170, 0.216694, 0.960029,
		0.590791, 0.756742, -0.279837,
		-0.787132, 0.616755, 0.006051,
		34.332073, 36.984489, 42.168316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075432, 37.142612, 42.593399>,  <34.883068, 36.552761, 42.164082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075432, 37.142612, 42.593399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.679188, 37.195587, 42.579880>,  <34.441441, 37.227371, 42.571770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.679188, 37.195587, 42.579880>,  <35.075432, 37.142612, 42.593399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679188, 37.195587, 42.579880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017747, 0.369802, 0.928941,
		0.135529, 0.919623, -0.368681,
		-0.990614, 0.132441, -0.033799,
		34.382004, 37.235321, 42.569740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992981, 37.657070, 43.042328>,  <35.075432, 37.142612, 42.593399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992981, 37.657070, 43.042328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611214, 37.542145, 43.009975>,  <34.382153, 37.473190, 42.990562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611214, 37.542145, 43.009975>,  <34.992981, 37.657070, 43.042328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611214, 37.542145, 43.009975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135720, 0.176383, 0.974920,
		-0.265838, 0.941457, -0.207336,
		-0.954416, -0.287310, -0.080885,
		34.324890, 37.455952, 42.985710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529636, 38.156631, 43.420918>,  <34.992981, 37.657070, 43.042328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529636, 38.156631, 43.420918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.352505, 37.799686, 43.386055>,  <34.246227, 37.585518, 43.365135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.352505, 37.799686, 43.386055>,  <34.529636, 38.156631, 43.420918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352505, 37.799686, 43.386055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066352, -0.064329, 0.995720,
		-0.894149, 0.446714, -0.030724,
		-0.442826, -0.892361, -0.087160,
		34.219658, 37.531979, 43.359905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999649, 38.147461, 44.003586>,  <34.529636, 38.156631, 43.420918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999649, 38.147461, 44.003586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048393, 37.768684, 43.884624>,  <34.077641, 37.541416, 43.813248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.048393, 37.768684, 43.884624>,  <33.999649, 38.147461, 44.003586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048393, 37.768684, 43.884624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267284, -0.319876, 0.908977,
		-0.955882, -0.031276, -0.292082,
		0.121859, -0.946943, -0.297404,
		34.084949, 37.484600, 43.795403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491280, 37.833202, 44.354649>,  <33.999649, 38.147461, 44.003586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491280, 37.833202, 44.354649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731640, 37.524406, 44.271751>,  <33.875858, 37.339130, 44.222015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731640, 37.524406, 44.271751>,  <33.491280, 37.833202, 44.354649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731640, 37.524406, 44.271751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095311, -0.326619, 0.940338,
		-0.793619, -0.545300, -0.269845,
		0.600903, -0.771989, -0.207238,
		33.911911, 37.292809, 44.209579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130543, 37.223087, 44.680576>,  <33.491280, 37.833202, 44.354649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130543, 37.223087, 44.680576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525444, 37.174473, 44.639473>,  <33.762386, 37.145306, 44.614811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525444, 37.174473, 44.639473>,  <33.130543, 37.223087, 44.680576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525444, 37.174473, 44.639473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033699, -0.471392, 0.881280,
		-0.155548, -0.873509, -0.461288,
		0.987253, -0.121536, -0.102760,
		33.821621, 37.138012, 44.608646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185650, 36.476658, 44.782848>,  <33.130543, 37.223087, 44.680576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185650, 36.476658, 44.782848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550339, 36.623775, 44.856041>,  <33.769154, 36.712048, 44.899956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550339, 36.623775, 44.856041>,  <33.185650, 36.476658, 44.782848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550339, 36.623775, 44.856041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099324, -0.629577, 0.770563,
		0.398610, -0.684368, -0.610533,
		0.911727, 0.367794, 0.182982,
		33.823856, 36.734116, 44.910934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627213, 35.895332, 44.871857>,  <33.185650, 36.476658, 44.782848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627213, 35.895332, 44.871857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.779133, 36.212826, 45.061909>,  <33.870285, 36.403320, 45.175941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.779133, 36.212826, 45.061909>,  <33.627213, 35.895332, 44.871857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779133, 36.212826, 45.061909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126970, -0.553480, 0.823127,
		0.916315, -0.252294, -0.310990,
		0.379797, 0.793730, 0.475128,
		33.893070, 36.450943, 45.204449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351616, 35.686543, 45.103439>,  <33.627213, 35.895332, 44.871857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351616, 35.686543, 45.103439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.234299, 35.995251, 45.329128>,  <34.163910, 36.180477, 45.464542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.234299, 35.995251, 45.329128>,  <34.351616, 35.686543, 45.103439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234299, 35.995251, 45.329128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538078, -0.354563, 0.764694,
		0.790224, 0.527871, -0.311285,
		-0.293290, 0.771775, 0.564220,
		34.146313, 36.226784, 45.498394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034485, 36.052734, 45.364346>,  <34.351616, 35.686543, 45.103439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034485, 36.052734, 45.364346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.714458, 36.143032, 45.586674>,  <34.522442, 36.197212, 45.720070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.714458, 36.143032, 45.586674>,  <35.034485, 36.052734, 45.364346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714458, 36.143032, 45.586674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474666, -0.328380, 0.816614,
		0.366870, 0.917172, 0.155569,
		-0.800061, 0.225748, 0.555823,
		34.474442, 36.210758, 45.753422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309753, 36.143665, 45.990047>,  <35.034485, 36.052734, 45.364346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309753, 36.143665, 45.990047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934948, 36.089874, 46.118996>,  <34.710064, 36.057598, 46.196365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934948, 36.089874, 46.118996>,  <35.309753, 36.143665, 45.990047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934948, 36.089874, 46.118996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349286, -0.365833, 0.862650,
		0.001925, 0.920914, 0.389762,
		-0.937014, -0.134477, 0.322366,
		34.653843, 36.049530, 46.215706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827564, 36.514355, 46.430767>,  <35.309753, 36.143665, 45.990047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827564, 36.514355, 46.430767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112709, 36.242943, 46.359863>,  <36.283798, 36.080097, 46.317322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112709, 36.242943, 46.359863>,  <35.827564, 36.514355, 46.430767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112709, 36.242943, 46.359863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109475, 0.357332, -0.927539,
		0.692704, 0.641804, 0.329011,
		0.712865, -0.678529, -0.177264,
		36.326569, 36.039383, 46.306683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483757, 36.950211, 46.242508>,  <35.827564, 36.514355, 46.430767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483757, 36.950211, 46.242508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.543476, 36.571949, 46.126957>,  <36.579308, 36.344994, 46.057629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.543476, 36.571949, 46.126957>,  <36.483757, 36.950211, 46.242508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543476, 36.571949, 46.126957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290647, 0.321213, -0.901302,
		0.945110, 0.050604, 0.322809,
		0.149300, -0.945654, -0.288874,
		36.588264, 36.288254, 46.040295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149029, 36.910416, 46.128483>,  <36.483757, 36.950211, 46.242508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149029, 36.910416, 46.128483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.971035, 36.620907, 45.917526>,  <36.864239, 36.447201, 45.790951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.971035, 36.620907, 45.917526>,  <37.149029, 36.910416, 46.128483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971035, 36.620907, 45.917526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321582, 0.420491, -0.848394,
		0.835810, -0.547119, 0.045642,
		-0.444980, -0.723774, -0.527394,
		36.837540, 36.403774, 45.759308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637802, 36.540165, 45.770329>,  <37.149029, 36.910416, 46.128483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637802, 36.540165, 45.770329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.289261, 36.513966, 45.575825>,  <37.080135, 36.498245, 45.459122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.289261, 36.513966, 45.575825>,  <37.637802, 36.540165, 45.770329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289261, 36.513966, 45.575825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426607, 0.388440, -0.816775,
		0.242377, -0.919144, -0.310530,
		-0.871355, -0.065493, -0.486262,
		37.027855, 36.494316, 45.429947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787384, 36.266289, 45.093727>,  <37.637802, 36.540165, 45.770329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787384, 36.266289, 45.093727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.418877, 36.411472, 45.037838>,  <37.197773, 36.498581, 45.004303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.418877, 36.411472, 45.037838>,  <37.787384, 36.266289, 45.093727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418877, 36.411472, 45.037838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206590, 0.152313, -0.966500,
		-0.329515, -0.919274, -0.215305,
		-0.921271, 0.362956, -0.139723,
		37.142494, 36.520359, 44.995922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397144, 35.825260, 44.522549>,  <37.787384, 36.266289, 45.093727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397144, 35.825260, 44.522549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.182148, 36.161964, 44.542713>,  <37.053150, 36.363987, 44.554813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.182148, 36.161964, 44.542713>,  <37.397144, 35.825260, 44.522549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182148, 36.161964, 44.542713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021774, 0.045909, -0.998708,
		-0.842991, -0.537890, -0.006347,
		-0.537487, 0.841764, 0.050413,
		37.020901, 36.414494, 44.557838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849266, 35.751579, 43.999336>,  <37.397144, 35.825260, 44.522549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849266, 35.751579, 43.999336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903591, 36.140018, 44.077839>,  <36.936188, 36.373081, 44.124939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.903591, 36.140018, 44.077839>,  <36.849266, 35.751579, 43.999336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903591, 36.140018, 44.077839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031254, 0.193790, -0.980545,
		-0.990242, 0.139304, -0.004032,
		0.135812, 0.971103, 0.196253,
		36.944336, 36.431351, 44.136715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426472, 36.161423, 43.502174>,  <36.849266, 35.751579, 43.999336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426472, 36.161423, 43.502174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.690254, 36.441368, 43.611938>,  <36.848522, 36.609337, 43.677795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.690254, 36.441368, 43.611938>,  <36.426472, 36.161423, 43.502174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690254, 36.441368, 43.611938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046176, 0.402058, -0.914449,
		-0.750322, 0.590369, 0.297457,
		0.659457, 0.699867, 0.274412,
		36.888092, 36.651329, 43.694263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290230, 36.664158, 43.074905>,  <36.426472, 36.161423, 43.502174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290230, 36.664158, 43.074905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650951, 36.785320, 43.198193>,  <36.867386, 36.858017, 43.272163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650951, 36.785320, 43.198193>,  <36.290230, 36.664158, 43.074905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650951, 36.785320, 43.198193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196428, 0.347967, -0.916698,
		-0.384924, 0.887224, 0.254298,
		0.901804, 0.302907, 0.308216,
		36.921494, 36.876194, 43.290657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510006, 37.385132, 42.832047>,  <36.290230, 36.664158, 43.074905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510006, 37.385132, 42.832047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.880131, 37.279049, 42.940464>,  <37.102207, 37.215401, 43.005516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.880131, 37.279049, 42.940464>,  <36.510006, 37.385132, 42.832047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880131, 37.279049, 42.940464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344576, 0.289595, -0.892974,
		0.158326, 0.919675, 0.359348,
		0.925311, -0.265203, 0.271048,
		37.157722, 37.199490, 43.021778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047737, 37.971996, 42.766525>,  <36.510006, 37.385132, 42.832047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047737, 37.971996, 42.766525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235237, 37.620365, 42.731895>,  <37.347736, 37.409386, 42.711117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235237, 37.620365, 42.731895>,  <37.047737, 37.971996, 42.766525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235237, 37.620365, 42.731895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440650, 0.317660, -0.839595,
		0.765571, 0.355411, 0.536269,
		0.468753, -0.879076, -0.086579,
		37.375862, 37.356644, 42.705921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741028, 38.212826, 42.556168>,  <37.047737, 37.971996, 42.766525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741028, 38.212826, 42.556168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.688557, 37.837128, 42.429287>,  <37.657074, 37.611710, 42.353157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.688557, 37.837128, 42.429287>,  <37.741028, 38.212826, 42.556168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688557, 37.837128, 42.429287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374825, 0.249228, -0.892968,
		0.917769, -0.236030, 0.319360,
		-0.131174, -0.939242, -0.317203,
		37.649204, 37.555355, 42.334126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243900, 38.089478, 42.056503>,  <37.741028, 38.212826, 42.556168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243900, 38.089478, 42.056503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.028187, 37.761063, 41.981586>,  <37.898758, 37.564014, 41.936634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.028187, 37.761063, 41.981586>,  <38.243900, 38.089478, 42.056503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028187, 37.761063, 41.981586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348702, -0.015262, -0.937109,
		0.766540, -0.570676, 0.294526,
		-0.539280, -0.821034, -0.187297,
		37.866402, 37.514751, 41.925396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595810, 37.779720, 41.514603>,  <38.243900, 38.089478, 42.056503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595810, 37.779720, 41.514603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.253811, 37.575207, 41.479794>,  <38.048611, 37.452499, 41.458908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.253811, 37.575207, 41.479794>,  <38.595810, 37.779720, 41.514603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253811, 37.575207, 41.479794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222183, -0.209469, -0.952238,
		0.468637, -0.833492, 0.292694,
		-0.854993, -0.511286, -0.087023,
		37.997314, 37.421822, 41.453686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.491323, 28.048006, 39.911777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.124832, 27.978216, 39.767509>,  <26.904938, 27.936342, 39.680950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.124832, 27.978216, 39.767509>,  <27.491323, 28.048006, 39.911777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124832, 27.978216, 39.767509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042631, 0.937545, -0.345242,
		0.398382, -0.300945, -0.866444,
		-0.916229, -0.174475, -0.360671,
		26.849964, 27.925873, 39.659309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545536, 28.397367, 39.293121>,  <27.491323, 28.048006, 39.911777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545536, 28.397367, 39.293121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.159937, 28.340143, 39.382782>,  <26.928577, 28.305809, 39.436581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.159937, 28.340143, 39.382782>,  <27.545536, 28.397367, 39.293121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159937, 28.340143, 39.382782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234472, 0.854926, -0.462736,
		-0.125437, -0.498634, -0.857689,
		-0.963996, -0.143059, 0.224155,
		26.870739, 28.297226, 39.450027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234602, 28.481052, 38.678806>,  <27.545536, 28.397367, 39.293121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234602, 28.481052, 38.678806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.961365, 28.550367, 38.962597>,  <26.797422, 28.591955, 39.132870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.961365, 28.550367, 38.962597>,  <27.234602, 28.481052, 38.678806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961365, 28.550367, 38.962597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261144, 0.849265, -0.458862,
		-0.682046, -0.498720, -0.534875,
		-0.683094, 0.173285, 0.709475,
		26.756437, 28.602352, 39.175438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631409, 28.669733, 38.272606>,  <27.234602, 28.481052, 38.678806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631409, 28.669733, 38.272606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.572422, 28.799152, 38.646465>,  <26.537031, 28.876804, 38.870781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.572422, 28.799152, 38.646465>,  <26.631409, 28.669733, 38.272606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572422, 28.799152, 38.646465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331073, 0.874322, -0.354898,
		-0.932011, -0.361772, -0.021815,
		-0.147466, 0.323546, 0.934651,
		26.528183, 28.896215, 38.926861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966669, 28.917400, 38.247601>,  <26.631409, 28.669733, 38.272606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966669, 28.917400, 38.247601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.146286, 29.090277, 38.560413>,  <26.254055, 29.194002, 38.748100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.146286, 29.090277, 38.560413>,  <25.966669, 28.917400, 38.247601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146286, 29.090277, 38.560413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242932, 0.901317, -0.358625,
		-0.859852, -0.028943, 0.509722,
		0.449041, 0.432192, 0.782031,
		26.280998, 29.219934, 38.795021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425814, 29.443678, 38.510151>,  <25.966669, 28.917400, 38.247601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425814, 29.443678, 38.510151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.783369, 29.559481, 38.647057>,  <25.997902, 29.628962, 38.729202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.783369, 29.559481, 38.647057>,  <25.425814, 29.443678, 38.510151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783369, 29.559481, 38.647057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202476, 0.941924, -0.267922,
		-0.399956, 0.170192, 0.900594,
		0.893890, 0.289505, 0.342269,
		26.051537, 29.646332, 38.749737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.205402, 30.032768, 38.684513>,  <25.425814, 29.443678, 38.510151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.205402, 30.032768, 38.684513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.604298, 30.050522, 38.660702>,  <25.843636, 30.061174, 38.646416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.604298, 30.050522, 38.660702>,  <25.205402, 30.032768, 38.684513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604298, 30.050522, 38.660702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065749, 0.900339, -0.430193,
		0.034499, 0.432919, 0.900772,
		0.997240, 0.044383, -0.059524,
		25.903469, 30.063837, 38.642845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466599, 30.668438, 39.104233>,  <25.205402, 30.032768, 38.684513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466599, 30.668438, 39.104233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.732965, 30.570024, 38.822517>,  <25.892786, 30.510977, 38.653488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.732965, 30.570024, 38.822517>,  <25.466599, 30.668438, 39.104233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732965, 30.570024, 38.822517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069645, 0.919429, -0.387040,
		0.742767, 0.306787, 0.595129,
		0.665918, -0.246033, -0.704288,
		25.932741, 30.496214, 38.611233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684563, 31.251799, 38.978016>,  <25.466599, 30.668438, 39.104233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684563, 31.251799, 38.978016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.864090, 31.033060, 38.695309>,  <25.971806, 30.901817, 38.525684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.864090, 31.033060, 38.695309>,  <25.684563, 31.251799, 38.978016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864090, 31.033060, 38.695309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048140, 0.804550, -0.591930,
		0.892325, 0.231645, 0.387422,
		0.448818, -0.546845, -0.706769,
		25.998735, 30.869007, 38.483276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394903, 31.556356, 38.855728>,  <25.684563, 31.251799, 38.978016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394903, 31.556356, 38.855728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.298981, 31.344210, 38.530472>,  <26.241426, 31.216921, 38.335316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.298981, 31.344210, 38.530472>,  <26.394903, 31.556356, 38.855728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298981, 31.344210, 38.530472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216953, 0.787125, -0.577379,
		0.946269, -0.314873, -0.073692,
		-0.239806, -0.530368, -0.813144,
		26.227039, 31.185099, 38.286530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903725, 31.624905, 38.441223>,  <26.394903, 31.556356, 38.855728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903725, 31.624905, 38.441223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.639030, 31.500177, 38.168495>,  <26.480213, 31.425341, 38.004860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.639030, 31.500177, 38.168495>,  <26.903725, 31.624905, 38.441223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639030, 31.500177, 38.168495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136982, 0.843817, -0.518853,
		0.737117, -0.436741, -0.515670,
		-0.661736, -0.311818, -0.681817,
		26.440510, 31.406631, 37.963951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189520, 31.539709, 37.724365>,  <26.903725, 31.624905, 38.441223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189520, 31.539709, 37.724365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.796810, 31.586430, 37.664394>,  <26.561184, 31.614462, 37.628410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.796810, 31.586430, 37.664394>,  <27.189520, 31.539709, 37.724365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796810, 31.586430, 37.664394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169313, 0.895876, -0.410780,
		0.086335, -0.428677, -0.899323,
		-0.981774, 0.116803, -0.149926,
		26.502277, 31.621469, 37.619415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075518, 31.741543, 36.992245>,  <27.189520, 31.539709, 37.724365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075518, 31.741543, 36.992245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743456, 31.852497, 37.185699>,  <26.544220, 31.919069, 37.301773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.743456, 31.852497, 37.185699>,  <27.075518, 31.741543, 36.992245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743456, 31.852497, 37.185699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017575, 0.880041, -0.474572,
		-0.557260, -0.385467, -0.735443,
		-0.830152, 0.277385, 0.483637,
		26.494410, 31.935713, 37.330791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685513, 31.955532, 36.475739>,  <27.075518, 31.741543, 36.992245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685513, 31.955532, 36.475739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.547085, 32.140018, 36.802544>,  <26.464027, 32.250710, 36.998627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.547085, 32.140018, 36.802544>,  <26.685513, 31.955532, 36.475739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547085, 32.140018, 36.802544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130934, 0.838561, -0.528840,
		-0.929027, -0.289990, -0.229813,
		-0.346070, 0.461216, 0.817016,
		26.443264, 32.278385, 37.047649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128517, 32.282818, 36.216927>,  <26.685513, 31.955532, 36.475739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128517, 32.282818, 36.216927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.253168, 32.480522, 36.541542>,  <26.327959, 32.599144, 36.736313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.253168, 32.480522, 36.541542>,  <26.128517, 32.282818, 36.216927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253168, 32.480522, 36.541542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149241, 0.868926, -0.471906,
		-0.938412, 0.025943, 0.344543,
		0.311625, 0.494262, 0.811539,
		26.346655, 32.628799, 36.785004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719181, 32.934746, 36.205288>,  <26.128517, 32.282818, 36.216927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719181, 32.934746, 36.205288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.992533, 33.017353, 36.485386>,  <26.156544, 33.066917, 36.653442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.992533, 33.017353, 36.485386>,  <25.719181, 32.934746, 36.205288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992533, 33.017353, 36.485386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152616, 0.897554, -0.413649,
		-0.713931, 0.389548, 0.581854,
		0.683381, 0.206517, 0.700243,
		26.197548, 33.079308, 36.695457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568604, 33.573303, 36.422375>,  <25.719181, 32.934746, 36.205288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568604, 33.573303, 36.422375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.948715, 33.530777, 36.539452>,  <26.176783, 33.505260, 36.609699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.948715, 33.530777, 36.539452>,  <25.568604, 33.573303, 36.422375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948715, 33.530777, 36.539452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208980, 0.914554, -0.346293,
		-0.230870, 0.390241, 0.891297,
		0.950277, -0.106315, 0.292696,
		26.233799, 33.498882, 36.627262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789953, 34.316364, 36.734974>,  <25.568604, 33.573303, 36.422375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789953, 34.316364, 36.734974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.131128, 34.118759, 36.667503>,  <26.335833, 34.000198, 36.627022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.131128, 34.118759, 36.667503>,  <25.789953, 34.316364, 36.734974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.131128, 34.118759, 36.667503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387891, 0.816036, -0.428516,
		0.349340, 0.300068, 0.887649,
		0.852938, -0.494008, -0.168680,
		26.387009, 33.970558, 36.616898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297302, 34.756729, 36.941544>,  <25.789953, 34.316364, 36.734974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297302, 34.756729, 36.941544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459030, 34.493656, 36.687305>,  <26.556067, 34.335812, 36.534763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459030, 34.493656, 36.687305>,  <26.297302, 34.756729, 36.941544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459030, 34.493656, 36.687305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510105, 0.738959, -0.440150,
		0.759157, -0.146258, 0.634263,
		0.404319, -0.657684, -0.635593,
		26.580326, 34.296352, 36.496628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022705, 34.987514, 36.867249>,  <26.297302, 34.756729, 36.941544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022705, 34.987514, 36.867249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.921452, 34.778400, 36.541641>,  <26.860699, 34.652931, 36.346279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.921452, 34.778400, 36.541641>,  <27.022705, 34.987514, 36.867249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921452, 34.778400, 36.541641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454573, 0.678473, -0.577093,
		0.853983, -0.516111, 0.065899,
		-0.253133, -0.522784, -0.814015,
		26.845512, 34.621567, 36.297436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590605, 35.188938, 36.423481>,  <27.022705, 34.987514, 36.867249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590605, 35.188938, 36.423481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318291, 35.015781, 36.187130>,  <27.154903, 34.911888, 36.045319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318291, 35.015781, 36.187130>,  <27.590605, 35.188938, 36.423481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318291, 35.015781, 36.187130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091654, 0.749995, -0.655062,
		0.726726, -0.500113, -0.470910,
		-0.680785, -0.432890, -0.590878,
		27.114056, 34.885914, 36.009865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809816, 34.499809, 36.802444>,  <27.590605, 35.188938, 36.423481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809816, 34.499809, 36.802444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139221, 34.584034, 36.591736>,  <28.336864, 34.634567, 36.465309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139221, 34.584034, 36.591736>,  <27.809816, 34.499809, 36.802444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139221, 34.584034, 36.591736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006152, -0.931830, -0.362843,
		-0.567265, 0.295565, -0.768669,
		0.823513, 0.210557, -0.526776,
		28.386274, 34.647202, 36.433704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688215, 34.261314, 36.091576>,  <27.809816, 34.499809, 36.802444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688215, 34.261314, 36.091576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.085032, 34.287861, 36.134380>,  <28.323122, 34.303787, 36.160065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.085032, 34.287861, 36.134380>,  <27.688215, 34.261314, 36.091576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085032, 34.287861, 36.134380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099167, -0.935486, -0.339163,
		0.077603, 0.347075, -0.934621,
		0.992040, 0.066364, 0.107015,
		28.382643, 34.307770, 36.166485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869286, 33.940647, 35.546227>,  <27.688215, 34.261314, 36.091576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869286, 33.940647, 35.546227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.216156, 33.962204, 35.744259>,  <28.424278, 33.975140, 35.863079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.216156, 33.962204, 35.744259>,  <27.869286, 33.940647, 35.546227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216156, 33.962204, 35.744259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266401, -0.890129, -0.369731,
		0.420757, 0.452511, -0.786255,
		0.867176, 0.053892, 0.495077,
		28.476309, 33.978371, 35.892780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354206, 33.743492, 35.090530>,  <27.869286, 33.940647, 35.546227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354206, 33.743492, 35.090530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.518064, 33.667053, 35.447330>,  <28.616379, 33.621189, 35.661411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.518064, 33.667053, 35.447330>,  <28.354206, 33.743492, 35.090530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518064, 33.667053, 35.447330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140253, -0.952993, -0.268576,
		0.901399, 0.235127, -0.363586,
		0.409644, -0.191100, 0.892005,
		28.640957, 33.609722, 35.714931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902447, 33.394325, 34.865192>,  <28.354206, 33.743492, 35.090530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902447, 33.394325, 34.865192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.839758, 33.307846, 35.250668>,  <28.802145, 33.255959, 35.481953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.839758, 33.307846, 35.250668>,  <28.902447, 33.394325, 34.865192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839758, 33.307846, 35.250668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100323, -0.974185, -0.202237,
		0.982534, 0.064985, 0.174365,
		-0.156721, -0.216197, 0.963689,
		28.792742, 33.242989, 35.539776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326210, 32.735928, 34.940552>,  <28.902447, 33.394325, 34.865192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326210, 32.735928, 34.940552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095581, 32.749416, 35.267090>,  <28.957203, 32.757511, 35.463013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095581, 32.749416, 35.267090>,  <29.326210, 32.735928, 34.940552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095581, 32.749416, 35.267090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001497, -0.999102, 0.042331,
		0.817044, 0.025629, 0.576006,
		-0.576573, 0.033724, 0.816349,
		28.922609, 32.759533, 35.511993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637653, 32.300476, 35.493076>,  <29.326210, 32.735928, 34.940552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637653, 32.300476, 35.493076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.251316, 32.333153, 35.591438>,  <29.019514, 32.352760, 35.650455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.251316, 32.333153, 35.591438>,  <29.637653, 32.300476, 35.493076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251316, 32.333153, 35.591438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082746, -0.996552, 0.006073,
		0.245556, -0.014482, 0.969274,
		-0.965844, 0.081695, 0.245908,
		28.961563, 32.357662, 35.665211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492249, 31.939457, 36.137836>,  <29.637653, 32.300476, 35.493076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492249, 31.939457, 36.137836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.141912, 31.964521, 35.946430>,  <28.931711, 31.979561, 35.831589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.141912, 31.964521, 35.946430>,  <29.492249, 31.939457, 36.137836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141912, 31.964521, 35.946430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194001, -0.953607, 0.230210,
		-0.441887, 0.294460, 0.847366,
		-0.875842, 0.062663, -0.478512,
		28.879160, 31.983320, 35.802876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972240, 31.636576, 36.589745>,  <29.492249, 31.939457, 36.137836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972240, 31.636576, 36.589745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816563, 31.624357, 36.221485>,  <28.723156, 31.617025, 36.000530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816563, 31.624357, 36.221485>,  <28.972240, 31.636576, 36.589745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816563, 31.624357, 36.221485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259016, -0.955497, 0.141199,
		-0.883990, 0.293416, 0.363963,
		-0.389195, -0.030546, -0.920649,
		28.699804, 31.615192, 35.945290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420576, 31.261248, 36.733162>,  <28.972240, 31.636576, 36.589745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420576, 31.261248, 36.733162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.419264, 31.256996, 36.333187>,  <28.418476, 31.254446, 36.093201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.419264, 31.256996, 36.333187>,  <28.420576, 31.261248, 36.733162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419264, 31.256996, 36.333187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412727, -0.910788, 0.011035,
		-0.910849, 0.412738, -0.001400,
		-0.003280, -0.010629, -0.999938,
		28.418280, 31.253807, 36.033207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684280, 31.040718, 36.427032>,  <28.420576, 31.261248, 36.733162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684280, 31.040718, 36.427032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.952322, 30.956776, 36.142239>,  <28.113148, 30.906410, 35.971363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.952322, 30.956776, 36.142239>,  <27.684280, 31.040718, 36.427032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952322, 30.956776, 36.142239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378009, -0.921981, -0.084023,
		-0.638803, 0.325440, -0.697151,
		0.670105, -0.209855, -0.711984,
		28.153353, 30.893820, 35.928642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303217, 30.629461, 35.985817>,  <27.684280, 31.040718, 36.427032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303217, 30.629461, 35.985817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.679525, 30.530737, 35.892834>,  <27.905310, 30.471502, 35.837044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.679525, 30.530737, 35.892834>,  <27.303217, 30.629461, 35.985817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679525, 30.530737, 35.892834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296331, -0.931704, -0.210037,
		-0.164741, 0.266481, -0.949657,
		0.940770, -0.246811, -0.232456,
		27.961756, 30.456694, 35.823097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268568, 30.194967, 35.314083>,  <27.303217, 30.629461, 35.985817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268568, 30.194967, 35.314083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615952, 30.131947, 35.502106>,  <27.824381, 30.094135, 35.614922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615952, 30.131947, 35.502106>,  <27.268568, 30.194967, 35.314083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615952, 30.131947, 35.502106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105452, -0.985167, -0.135371,
		0.484416, 0.067996, -0.872191,
		0.868459, -0.157551, 0.470061,
		27.876490, 30.084681, 35.643124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584446, 29.680189, 34.902901>,  <27.268568, 30.194967, 35.314083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584446, 29.680189, 34.902901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.780668, 29.675577, 35.251434>,  <27.898401, 29.672810, 35.460556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.780668, 29.675577, 35.251434>,  <27.584446, 29.680189, 34.902901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780668, 29.675577, 35.251434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083754, -0.995907, 0.033972,
		0.867377, -0.089643, -0.489512,
		0.490554, -0.011532, 0.871335,
		27.927834, 29.672117, 35.512836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945150, 29.073635, 34.788094>,  <27.584446, 29.680189, 34.902901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945150, 29.073635, 34.788094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.960566, 29.147043, 35.180996>,  <27.969814, 29.191088, 35.416737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.960566, 29.147043, 35.180996>,  <27.945150, 29.073635, 34.788094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960566, 29.147043, 35.180996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141855, -0.972030, 0.187174,
		0.989137, -0.146552, -0.011429,
		0.038540, 0.183520, 0.982260,
		27.972128, 29.202099, 35.475674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218639, 28.547821, 35.017033>,  <27.945150, 29.073635, 34.788094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218639, 28.547821, 35.017033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062866, 28.677608, 35.361835>,  <27.969402, 28.755482, 35.568718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062866, 28.677608, 35.361835>,  <28.218639, 28.547821, 35.017033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062866, 28.677608, 35.361835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234142, -0.940025, 0.248054,
		0.890797, -0.105233, 0.442048,
		-0.389432, 0.324468, 0.862011,
		27.946037, 28.774948, 35.620438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429396, 27.965431, 35.629620>,  <28.218639, 28.547821, 35.017033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429396, 27.965431, 35.629620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100521, 28.160492, 35.747063>,  <27.903196, 28.277529, 35.817528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100521, 28.160492, 35.747063>,  <28.429396, 27.965431, 35.629620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100521, 28.160492, 35.747063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356403, -0.843213, 0.402454,
		0.443835, 0.226247, 0.867077,
		-0.822184, 0.487652, 0.293612,
		27.853867, 28.306787, 35.835148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423285, 27.784014, 36.301853>,  <28.429396, 27.965431, 35.629620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423285, 27.784014, 36.301853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.056240, 27.896254, 36.189247>,  <27.836014, 27.963598, 36.121681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.056240, 27.896254, 36.189247>,  <28.423285, 27.784014, 36.301853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056240, 27.896254, 36.189247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381949, -0.818523, 0.429110,
		-0.110020, 0.501281, 0.858262,
		-0.917611, 0.280601, -0.281517,
		27.780956, 27.980434, 36.104794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968899, 27.601816, 36.863152>,  <28.423285, 27.784014, 36.301853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968899, 27.601816, 36.863152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.718002, 27.666981, 36.558514>,  <27.567465, 27.706079, 36.375729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.718002, 27.666981, 36.558514>,  <27.968899, 27.601816, 36.863152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718002, 27.666981, 36.558514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562105, -0.771553, 0.297899,
		-0.539081, 0.614951, 0.575523,
		-0.627240, 0.162913, -0.761597,
		27.529831, 27.715855, 36.330036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343742, 27.708652, 37.182018>,  <27.968899, 27.601816, 36.863152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343742, 27.708652, 37.182018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.282150, 27.581755, 36.807713>,  <27.245195, 27.505617, 36.583130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.282150, 27.581755, 36.807713>,  <27.343742, 27.708652, 37.182018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282150, 27.581755, 36.807713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493343, -0.795873, 0.350997,
		-0.856098, 0.515697, -0.033962,
		-0.153978, -0.317243, -0.935760,
		27.235956, 27.486582, 36.526985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621750, 27.645948, 36.956364>,  <27.343742, 27.708652, 37.182018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621750, 27.645948, 36.956364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839848, 27.373850, 36.760414>,  <26.970705, 27.210590, 36.642845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839848, 27.373850, 36.760414>,  <26.621750, 27.645948, 36.956364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839848, 27.373850, 36.760414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588643, -0.726758, 0.354007,
		-0.596832, 0.095343, -0.796681,
		0.545243, -0.680244, -0.489876,
		27.003420, 27.169777, 36.613453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.535496, 34.885128, 46.458393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.322655, 34.558872, 46.367527>,  <40.194950, 34.363121, 46.313007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.322655, 34.558872, 46.367527>,  <40.535496, 34.885128, 46.458393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322655, 34.558872, 46.367527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348590, -0.033464, 0.936678,
		-0.771590, 0.577596, -0.266516,
		-0.532103, -0.815637, -0.227164,
		40.163025, 34.314182, 46.299377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908508, 35.035515, 46.748642>,  <40.535496, 34.885128, 46.458393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908508, 35.035515, 46.748642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.925354, 34.639481, 46.695053>,  <39.935463, 34.401859, 46.662899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.925354, 34.639481, 46.695053>,  <39.908508, 35.035515, 46.748642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925354, 34.639481, 46.695053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469164, -0.137981, 0.872265,
		-0.882106, 0.026120, -0.470326,
		0.042113, -0.990091, -0.133969,
		39.937988, 34.342453, 46.654861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299530, 34.727169, 47.117908>,  <39.908508, 35.035515, 46.748642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299530, 34.727169, 47.117908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.545334, 34.414333, 47.076519>,  <39.692818, 34.226631, 47.051685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.545334, 34.414333, 47.076519>,  <39.299530, 34.727169, 47.117908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545334, 34.414333, 47.076519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330913, -0.374601, 0.866124,
		-0.716149, -0.498004, -0.489001,
		0.614514, -0.782091, -0.103475,
		39.729687, 34.179707, 47.045475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887665, 34.073162, 47.250668>,  <39.299530, 34.727169, 47.117908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887665, 34.073162, 47.250668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.270454, 33.970989, 47.305744>,  <39.500130, 33.909687, 47.338791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.270454, 33.970989, 47.305744>,  <38.887665, 34.073162, 47.250668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270454, 33.970989, 47.305744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270467, -0.613259, 0.742132,
		-0.105121, -0.747442, -0.655958,
		0.956973, -0.255428, 0.137691,
		39.557545, 33.894360, 47.347050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895702, 33.338646, 47.368500>,  <38.887665, 34.073162, 47.250668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895702, 33.338646, 47.368500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.238422, 33.471455, 47.526310>,  <39.444054, 33.551140, 47.620998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.238422, 33.471455, 47.526310>,  <38.895702, 33.338646, 47.368500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238422, 33.471455, 47.526310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196141, -0.497748, 0.844852,
		0.476886, -0.801253, -0.361348,
		0.856801, 0.332023, 0.394528,
		39.495464, 33.571060, 47.644669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163551, 32.702850, 47.633530>,  <38.895702, 33.338646, 47.368500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163551, 32.702850, 47.633530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.326241, 33.012253, 47.827961>,  <39.423855, 33.197895, 47.944618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.326241, 33.012253, 47.827961>,  <39.163551, 32.702850, 47.633530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326241, 33.012253, 47.827961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110517, -0.486502, 0.866661,
		0.906842, -0.406211, -0.112386,
		0.406723, 0.773504, 0.486074,
		39.448257, 33.244305, 47.973782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685776, 32.390678, 48.057152>,  <39.163551, 32.702850, 47.633530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685776, 32.390678, 48.057152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.614792, 32.750000, 48.217926>,  <39.572201, 32.965595, 48.314392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.614792, 32.750000, 48.217926>,  <39.685776, 32.390678, 48.057152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614792, 32.750000, 48.217926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042595, -0.415045, 0.908803,
		0.983206, 0.144156, 0.111917,
		-0.177460, 0.898308, 0.401934,
		39.561554, 33.019493, 48.338505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979431, 32.281181, 48.731087>,  <39.685776, 32.390678, 48.057152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979431, 32.281181, 48.731087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.767788, 32.618431, 48.769428>,  <39.640804, 32.820782, 48.792435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.767788, 32.618431, 48.769428>,  <39.979431, 32.281181, 48.731087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767788, 32.618431, 48.769428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244756, -0.259801, 0.934129,
		0.812492, 0.470790, 0.343822,
		-0.529105, 0.843125, 0.095857,
		39.609058, 32.871368, 48.798187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235474, 32.709419, 49.326866>,  <39.979431, 32.281181, 48.731087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235474, 32.709419, 49.326866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850430, 32.789993, 49.254421>,  <39.619404, 32.838337, 49.210953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850430, 32.789993, 49.254421>,  <40.235474, 32.709419, 49.326866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850430, 32.789993, 49.254421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223447, -0.212513, 0.951267,
		0.153132, 0.956170, 0.249578,
		-0.962612, 0.201437, -0.181111,
		39.561646, 32.850426, 49.200089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962585, 33.050507, 49.929871>,  <40.235474, 32.709419, 49.326866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962585, 33.050507, 49.929871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.627121, 32.917191, 49.757565>,  <39.425842, 32.837200, 49.654182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.627121, 32.917191, 49.757565>,  <39.962585, 33.050507, 49.929871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627121, 32.917191, 49.757565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386441, -0.193205, 0.901851,
		-0.383802, 0.922817, 0.033238,
		-0.838665, -0.333288, -0.430766,
		39.375523, 32.817204, 49.628334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371319, 33.313259, 50.369152>,  <39.962585, 33.050507, 49.929871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371319, 33.313259, 50.369152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.243851, 32.990349, 50.170456>,  <39.167370, 32.796600, 50.051239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.243851, 32.990349, 50.170456>,  <39.371319, 33.313259, 50.369152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243851, 32.990349, 50.170456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461135, -0.325821, 0.825346,
		-0.828131, 0.492080, -0.268433,
		-0.318675, -0.807278, -0.496738,
		39.148247, 32.748165, 50.021435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654491, 33.230728, 50.571175>,  <39.371319, 33.313259, 50.369152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654491, 33.230728, 50.571175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.740662, 32.874355, 50.411263>,  <38.792362, 32.660530, 50.315315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.740662, 32.874355, 50.411263>,  <38.654491, 33.230728, 50.571175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740662, 32.874355, 50.411263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271111, -0.447866, 0.852006,
		-0.938132, -0.075158, -0.338024,
		0.215425, -0.890936, -0.399781,
		38.805290, 32.607075, 50.291328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126564, 32.859787, 50.664711>,  <38.654491, 33.230728, 50.571175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126564, 32.859787, 50.664711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434181, 32.605858, 50.634865>,  <38.618752, 32.453499, 50.616959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.434181, 32.605858, 50.634865>,  <38.126564, 32.859787, 50.664711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434181, 32.605858, 50.634865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199906, -0.349750, 0.915266,
		-0.607128, -0.688967, -0.395879,
		0.769047, -0.634822, -0.074614,
		38.664894, 32.415413, 50.612480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506405, 32.673172, 51.212975>,  <38.126564, 32.859787, 50.664711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506405, 32.673172, 51.212975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.185337, 32.849586, 51.373573>,  <36.992695, 32.955437, 51.469933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.185337, 32.849586, 51.373573>,  <37.506405, 32.673172, 51.212975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185337, 32.849586, 51.373573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173356, 0.471595, -0.864607,
		-0.570670, -0.763599, -0.302080,
		-0.802673, 0.441039, 0.401500,
		36.944534, 32.981899, 51.494022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829407, 32.481770, 50.849686>,  <37.506405, 32.673172, 51.212975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829407, 32.481770, 50.849686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.834618, 32.841187, 51.025162>,  <36.837746, 33.056839, 51.130447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.834618, 32.841187, 51.025162>,  <36.829407, 32.481770, 50.849686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834618, 32.841187, 51.025162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301341, 0.421855, -0.855121,
		-0.953427, -0.121056, 0.276264,
		0.013026, 0.898546, 0.438687,
		36.838524, 33.110752, 51.156769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297279, 32.720924, 50.622196>,  <36.829407, 32.481770, 50.849686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297279, 32.720924, 50.622196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.544434, 33.027496, 50.692402>,  <36.692726, 33.211441, 50.734524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.544434, 33.027496, 50.692402>,  <36.297279, 32.720924, 50.622196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544434, 33.027496, 50.692402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144110, 0.329828, -0.932977,
		-0.772951, 0.551178, 0.314245,
		0.617883, 0.766431, 0.175511,
		36.729797, 33.257427, 50.745056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957531, 33.396290, 50.375969>,  <36.297279, 32.720924, 50.622196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957531, 33.396290, 50.375969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.338650, 33.516163, 50.395477>,  <36.567322, 33.588085, 50.407181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.338650, 33.516163, 50.395477>,  <35.957531, 33.396290, 50.375969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338650, 33.516163, 50.395477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107471, 0.483094, -0.868948,
		-0.283964, 0.822686, 0.492496,
		0.952793, 0.299678, 0.048766,
		36.624489, 33.606068, 50.410107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874828, 34.081493, 50.173031>,  <35.957531, 33.396290, 50.375969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874828, 34.081493, 50.173031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263424, 33.999065, 50.126125>,  <36.496582, 33.949608, 50.097980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263424, 33.999065, 50.126125>,  <35.874828, 34.081493, 50.173031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263424, 33.999065, 50.126125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045226, 0.646551, -0.761529,
		0.232750, 0.734510, 0.637434,
		0.971485, -0.206075, -0.117266,
		36.554871, 33.937244, 50.090946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268349, 34.706676, 50.221863>,  <35.874828, 34.081493, 50.173031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268349, 34.706676, 50.221863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.448318, 34.435131, 49.989754>,  <36.556301, 34.272205, 49.850491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.448318, 34.435131, 49.989754>,  <36.268349, 34.706676, 50.221863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448318, 34.435131, 49.989754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077905, 0.677110, -0.731746,
		0.889660, 0.284028, 0.357538,
		0.449929, -0.678859, -0.580271,
		36.583298, 34.231472, 49.815674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936966, 35.051319, 49.962181>,  <36.268349, 34.706676, 50.221863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936966, 35.051319, 49.962181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869068, 34.740555, 49.719662>,  <36.828331, 34.554096, 49.574150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869068, 34.740555, 49.719662>,  <36.936966, 35.051319, 49.962181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869068, 34.740555, 49.719662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261133, 0.557773, -0.787844,
		0.950261, -0.292057, 0.108198,
		-0.169745, -0.776912, -0.606296,
		36.818146, 34.507481, 49.537773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411846, 35.171391, 49.501534>,  <36.936966, 35.051319, 49.962181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411846, 35.171391, 49.501534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.186295, 34.892052, 49.325191>,  <37.050964, 34.724449, 49.219387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.186295, 34.892052, 49.325191>,  <37.411846, 35.171391, 49.501534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186295, 34.892052, 49.325191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170969, 0.423542, -0.889596,
		0.807965, -0.576999, -0.119433,
		-0.563881, -0.698344, -0.440856,
		37.017132, 34.682549, 49.192936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775467, 35.052486, 48.898617>,  <37.411846, 35.171391, 49.501534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775467, 35.052486, 48.898617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410385, 34.896614, 48.849422>,  <37.191338, 34.803089, 48.819904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410385, 34.896614, 48.849422>,  <37.775467, 35.052486, 48.898617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410385, 34.896614, 48.849422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027596, 0.359072, -0.932902,
		0.407696, -0.848066, -0.338479,
		-0.912701, -0.389681, -0.122989,
		37.136574, 34.779709, 48.812527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747375, 34.666939, 48.203407>,  <37.775467, 35.052486, 48.898617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747375, 34.666939, 48.203407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.380173, 34.785252, 48.309071>,  <37.159851, 34.856239, 48.372467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.380173, 34.785252, 48.309071>,  <37.747375, 34.666939, 48.203407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380173, 34.785252, 48.309071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163343, 0.324956, -0.931516,
		-0.361363, -0.898286, -0.249998,
		-0.918006, 0.295780, 0.264156,
		37.104771, 34.873985, 48.388317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369698, 34.407742, 47.710846>,  <37.747375, 34.666939, 48.203407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369698, 34.407742, 47.710846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.148773, 34.706284, 47.859386>,  <37.016216, 34.885410, 47.948509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.148773, 34.706284, 47.859386>,  <37.369698, 34.407742, 47.710846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148773, 34.706284, 47.859386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269797, 0.261450, -0.926744,
		-0.788770, -0.612043, 0.056962,
		-0.552314, 0.746356, 0.371351,
		36.983078, 34.930191, 47.970791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777344, 34.361977, 47.322330>,  <37.369698, 34.407742, 47.710846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777344, 34.361977, 47.322330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.708385, 34.728271, 47.467499>,  <36.667011, 34.948048, 47.554600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.708385, 34.728271, 47.467499>,  <36.777344, 34.361977, 47.322330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708385, 34.728271, 47.467499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234434, 0.319706, -0.918057,
		-0.956724, -0.243349, 0.159563,
		-0.172395, 0.915734, 0.362920,
		36.656666, 35.002991, 47.576374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130234, 34.533386, 47.080547>,  <36.777344, 34.361977, 47.322330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130234, 34.533386, 47.080547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302792, 34.877869, 47.188049>,  <36.406326, 35.084557, 47.252552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302792, 34.877869, 47.188049>,  <36.130234, 34.533386, 47.080547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302792, 34.877869, 47.188049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151971, 0.363012, -0.919308,
		-0.889273, 0.355740, 0.287478,
		0.431392, 0.861204, 0.268754,
		36.432209, 35.136230, 47.268677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766720, 35.052380, 46.717861>,  <36.130234, 34.533386, 47.080547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766720, 35.052380, 46.717861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107941, 35.228527, 46.829849>,  <36.312672, 35.334217, 46.897041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107941, 35.228527, 46.829849>,  <35.766720, 35.052380, 46.717861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107941, 35.228527, 46.829849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017464, 0.512120, -0.858737,
		-0.521538, 0.737434, 0.429173,
		0.853049, 0.440369, 0.279968,
		36.363857, 35.360638, 46.913841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542698, 35.750935, 46.751713>,  <35.766720, 35.052380, 46.717861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542698, 35.750935, 46.751713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935425, 35.689411, 46.707226>,  <36.171062, 35.652496, 46.680534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.935425, 35.689411, 46.707226>,  <35.542698, 35.750935, 46.751713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935425, 35.689411, 46.707226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001858, 0.593718, -0.804671,
		0.189800, 0.789836, 0.583210,
		0.981821, -0.153810, -0.111220,
		36.229973, 35.643269, 46.673859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105366, 36.315460, 46.947502>,  <35.542698, 35.750935, 46.751713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105366, 36.315460, 46.947502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814339, 36.074516, 46.816162>,  <34.639725, 35.929951, 46.737358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814339, 36.074516, 46.816162>,  <35.105366, 36.315460, 46.947502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814339, 36.074516, 46.816162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066032, -0.414904, 0.907466,
		-0.682853, 0.681922, 0.262095,
		-0.727566, -0.602359, -0.328347,
		34.596069, 35.893810, 46.717659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678501, 36.443035, 47.393070>,  <35.105366, 36.315460, 46.947502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678501, 36.443035, 47.393070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554768, 36.094513, 47.240677>,  <34.480526, 35.885399, 47.149242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554768, 36.094513, 47.240677>,  <34.678501, 36.443035, 47.393070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554768, 36.094513, 47.240677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336734, -0.274310, 0.900758,
		-0.889339, 0.406923, -0.208544,
		-0.309333, -0.871303, -0.380979,
		34.461967, 35.833122, 47.126385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070244, 36.377354, 47.730915>,  <34.678501, 36.443035, 47.393070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070244, 36.377354, 47.730915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147743, 36.016903, 47.575768>,  <34.194244, 35.800632, 47.482681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147743, 36.016903, 47.575768>,  <34.070244, 36.377354, 47.730915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147743, 36.016903, 47.575768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314226, -0.431530, 0.845603,
		-0.929366, -0.041960, -0.366766,
		0.193752, -0.901122, -0.387864,
		34.205868, 35.746567, 47.459408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478951, 35.975601, 47.834179>,  <34.070244, 36.377354, 47.730915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478951, 35.975601, 47.834179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.789093, 35.726402, 47.792805>,  <33.975178, 35.576881, 47.767982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.789093, 35.726402, 47.792805>,  <33.478951, 35.975601, 47.834179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789093, 35.726402, 47.792805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243324, -0.445843, 0.861404,
		-0.582769, -0.642725, -0.497277,
		0.775354, -0.622999, -0.103433,
		34.021698, 35.539501, 47.761776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216320, 35.345261, 47.882828>,  <33.478951, 35.975601, 47.834179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216320, 35.345261, 47.882828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.606255, 35.280445, 47.944057>,  <33.840218, 35.241558, 47.980797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.606255, 35.280445, 47.944057>,  <33.216320, 35.345261, 47.882828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606255, 35.280445, 47.944057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222364, -0.659016, 0.718507,
		-0.015546, -0.734468, -0.678466,
		0.974840, -0.162036, 0.153074,
		33.898708, 35.231834, 47.989979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314056, 34.606544, 48.151985>,  <33.216320, 35.345261, 47.882828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314056, 34.606544, 48.151985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642921, 34.806786, 48.260387>,  <33.840240, 34.926929, 48.325428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642921, 34.806786, 48.260387>,  <33.314056, 34.606544, 48.151985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642921, 34.806786, 48.260387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076011, -0.375267, 0.923795,
		0.564152, -0.780111, -0.270480,
		0.822165, 0.500601, 0.271004,
		33.889572, 34.956966, 48.341690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698277, 34.130527, 48.493141>,  <33.314056, 34.606544, 48.151985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698277, 34.130527, 48.493141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832256, 34.488636, 48.610649>,  <33.912643, 34.703499, 48.681152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832256, 34.488636, 48.610649>,  <33.698277, 34.130527, 48.493141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832256, 34.488636, 48.610649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121766, -0.350294, 0.928691,
		0.934335, -0.275294, -0.226344,
		0.334950, 0.895269, 0.293771,
		33.932743, 34.757217, 48.698780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048786, 33.433136, 48.397022>,  <33.698277, 34.130527, 48.493141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048786, 33.433136, 48.397022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904774, 33.060654, 48.374294>,  <33.818367, 32.837162, 48.360657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904774, 33.060654, 48.374294>,  <34.048786, 33.433136, 48.397022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904774, 33.060654, 48.374294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346847, 0.190138, -0.918447,
		0.866069, -0.310963, -0.391443,
		-0.360031, -0.931209, -0.056816,
		33.796764, 32.781292, 48.357250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280491, 33.109089, 47.652088>,  <34.048786, 33.433136, 48.397022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280491, 33.109089, 47.652088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.931389, 32.936565, 47.743534>,  <33.721928, 32.833050, 47.798401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.931389, 32.936565, 47.743534>,  <34.280491, 33.109089, 47.652088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931389, 32.936565, 47.743534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287499, 0.075680, -0.954786,
		0.394507, -0.899024, -0.190051,
		-0.872759, -0.431309, 0.228612,
		33.669559, 32.807171, 47.812119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181538, 32.630074, 47.119122>,  <34.280491, 33.109089, 47.652088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181538, 32.630074, 47.119122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832935, 32.692947, 47.304924>,  <33.623775, 32.730671, 47.416405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832935, 32.692947, 47.304924>,  <34.181538, 32.630074, 47.119122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832935, 32.692947, 47.304924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461972, 0.054562, -0.885214,
		-0.164492, -0.986060, 0.025067,
		-0.871506, 0.157191, 0.464507,
		33.571484, 32.740105, 47.444275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844833, 32.281895, 46.689114>,  <34.181538, 32.630074, 47.119122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844833, 32.281895, 46.689114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571220, 32.523052, 46.853371>,  <33.407051, 32.667747, 46.951923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571220, 32.523052, 46.853371>,  <33.844833, 32.281895, 46.689114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571220, 32.523052, 46.853371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453494, 0.089457, -0.886759,
		-0.571352, -0.792794, 0.212215,
		-0.684032, 0.602890, 0.410639,
		33.366013, 32.703918, 46.976562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140308, 32.059322, 46.449959>,  <33.844833, 32.281895, 46.689114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140308, 32.059322, 46.449959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130325, 32.445820, 46.552521>,  <33.124336, 32.677719, 46.614059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130325, 32.445820, 46.552521>,  <33.140308, 32.059322, 46.449959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130325, 32.445820, 46.552521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399141, 0.225523, -0.888721,
		-0.916550, -0.124526, 0.380039,
		-0.024962, 0.966246, 0.256406,
		33.122837, 32.735695, 46.629444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450851, 32.281078, 46.385021>,  <33.140308, 32.059322, 46.449959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450851, 32.281078, 46.385021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659889, 32.622108, 46.383778>,  <32.785313, 32.826725, 46.383034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659889, 32.622108, 46.383778>,  <32.450851, 32.281078, 46.385021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659889, 32.622108, 46.383778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541265, 0.328957, -0.773834,
		-0.658729, 0.406085, 0.633381,
		0.522597, 0.852574, -0.003106,
		32.816669, 32.877880, 46.382847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944450, 32.803783, 46.330990>,  <32.450851, 32.281078, 46.385021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944450, 32.803783, 46.330990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.289761, 32.956863, 46.199356>,  <32.496948, 33.048710, 46.120377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.289761, 32.956863, 46.199356>,  <31.944450, 32.803783, 46.330990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289761, 32.956863, 46.199356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405942, 0.138971, -0.903271,
		-0.299947, 0.913361, 0.275323,
		0.863275, 0.382698, -0.329087,
		32.548744, 33.071674, 46.100632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.031101, 29.545483, 50.175896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.156826, 29.915234, 50.089428>,  <39.232262, 30.137085, 50.037548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.156826, 29.915234, 50.089428>,  <39.031101, 29.545483, 50.175896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156826, 29.915234, 50.089428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470860, -0.045921, -0.881012,
		-0.824315, 0.378702, 0.420820,
		0.314316, 0.924379, -0.216169,
		39.251122, 30.192547, 50.024578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498112, 29.908501, 49.868610>,  <39.031101, 29.545483, 50.175896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498112, 29.908501, 49.868610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.825264, 30.112534, 49.762115>,  <39.021557, 30.234953, 49.698219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.825264, 30.112534, 49.762115>,  <38.498112, 29.908501, 49.868610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825264, 30.112534, 49.762115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311025, 0.002646, -0.950398,
		-0.484078, 0.860121, 0.160812,
		0.817883, 0.510083, -0.266238,
		39.070629, 30.265558, 49.682243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292629, 30.428812, 49.341320>,  <38.498112, 29.908501, 49.868610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292629, 30.428812, 49.341320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.685371, 30.385540, 49.279018>,  <38.921017, 30.359577, 49.241638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.685371, 30.385540, 49.279018>,  <38.292629, 30.428812, 49.341320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685371, 30.385540, 49.279018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139749, 0.142430, -0.979890,
		0.128190, 0.983875, 0.124728,
		0.981854, -0.108181, -0.155753,
		38.979927, 30.353086, 49.232292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517006, 31.038534, 48.819530>,  <38.292629, 30.428812, 49.341320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517006, 31.038534, 48.819530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.786201, 30.742777, 48.811764>,  <38.947720, 30.565323, 48.807106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.786201, 30.742777, 48.811764>,  <38.517006, 31.038534, 48.819530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786201, 30.742777, 48.811764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083479, 0.102010, -0.991274,
		0.734923, 0.665500, 0.130376,
		0.672993, -0.739394, -0.019414,
		38.988098, 30.520958, 48.805939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138474, 31.304296, 48.526001>,  <38.517006, 31.038534, 48.819530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138474, 31.304296, 48.526001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.151546, 30.908237, 48.471539>,  <39.159389, 30.670603, 48.438862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.151546, 30.908237, 48.471539>,  <39.138474, 31.304296, 48.526001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151546, 30.908237, 48.471539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052698, 0.134332, -0.989534,
		0.998075, 0.039515, -0.047788,
		0.032682, -0.990148, -0.136156,
		39.161350, 30.611193, 48.430691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708347, 31.158775, 48.066792>,  <39.138474, 31.304296, 48.526001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708347, 31.158775, 48.066792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.443981, 30.862480, 48.018635>,  <39.285362, 30.684704, 47.989742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.443981, 30.862480, 48.018635>,  <39.708347, 31.158775, 48.066792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443981, 30.862480, 48.018635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088512, 0.082361, -0.992664,
		0.745218, -0.666728, 0.011130,
		-0.660920, -0.740737, -0.120390,
		39.245705, 30.640259, 47.982517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854328, 30.987709, 47.449753>,  <39.708347, 31.158775, 48.066792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854328, 30.987709, 47.449753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.515926, 30.779591, 47.496349>,  <39.312885, 30.654720, 47.524307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.515926, 30.779591, 47.496349>,  <39.854328, 30.987709, 47.449753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515926, 30.779591, 47.496349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079238, -0.093374, -0.992473,
		0.527256, -0.848867, 0.037768,
		-0.846004, -0.520294, 0.116494,
		39.262127, 30.623503, 47.531296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803741, 30.462694, 46.921104>,  <39.854328, 30.987709, 47.449753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803741, 30.462694, 46.921104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.410946, 30.440388, 46.993305>,  <39.175266, 30.427004, 47.036625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.410946, 30.440388, 46.993305>,  <39.803741, 30.462694, 46.921104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410946, 30.440388, 46.993305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164784, -0.214402, -0.962745,
		0.092391, -0.975152, 0.201352,
		-0.981993, -0.055769, 0.180498,
		39.116348, 30.423656, 47.047455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602493, 29.897499, 46.534298>,  <39.803741, 30.462694, 46.921104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602493, 29.897499, 46.534298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.285011, 30.128960, 46.609337>,  <39.094521, 30.267836, 46.654362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.285011, 30.128960, 46.609337>,  <39.602493, 29.897499, 46.534298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285011, 30.128960, 46.609337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267439, -0.054953, -0.962006,
		-0.546359, -0.813721, 0.198371,
		-0.793706, 0.578653, 0.187597,
		39.046898, 30.302555, 46.665615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972157, 29.483450, 46.380199>,  <39.602493, 29.897499, 46.534298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972157, 29.483450, 46.380199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.897583, 29.876345, 46.371704>,  <38.852840, 30.112082, 46.366608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.897583, 29.876345, 46.371704>,  <38.972157, 29.483450, 46.380199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897583, 29.876345, 46.371704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405364, -0.096599, -0.909037,
		-0.894943, -0.160863, 0.416174,
		-0.186432, 0.982238, -0.021243,
		38.841652, 30.171017, 46.365330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228737, 29.507889, 46.072666>,  <38.972157, 29.483450, 46.380199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228737, 29.507889, 46.072666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.426849, 29.850605, 46.015240>,  <38.545715, 30.056234, 45.980785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.426849, 29.850605, 46.015240>,  <38.228737, 29.507889, 46.072666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426849, 29.850605, 46.015240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423487, 0.093823, -0.901030,
		-0.758522, 0.507062, 0.409307,
		0.495280, 0.856788, -0.143567,
		38.575432, 30.107641, 45.972168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754940, 29.991570, 45.689476>,  <38.228737, 29.507889, 46.072666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754940, 29.991570, 45.689476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.126667, 30.130964, 45.640594>,  <38.349701, 30.214602, 45.611267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.126667, 30.130964, 45.640594>,  <37.754940, 29.991570, 45.689476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126667, 30.130964, 45.640594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117838, -0.033785, -0.992458,
		-0.349987, 0.936705, 0.009669,
		0.929313, 0.348487, -0.122203,
		38.405460, 30.235510, 45.603935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264191, 30.300652, 46.061726>,  <37.754940, 29.991570, 45.689476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264191, 30.300652, 46.061726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.959480, 30.553976, 46.007141>,  <36.776653, 30.705971, 45.974392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.959480, 30.553976, 46.007141>,  <37.264191, 30.300652, 46.061726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959480, 30.553976, 46.007141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406472, -0.303212, 0.861883,
		0.504464, 0.712025, 0.488402,
		-0.761772, 0.633310, -0.136459,
		36.730949, 30.743969, 45.966202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151310, 30.783026, 46.754169>,  <37.264191, 30.300652, 46.061726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151310, 30.783026, 46.754169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.811935, 30.770161, 46.542843>,  <36.608311, 30.762442, 46.416046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.811935, 30.770161, 46.542843>,  <37.151310, 30.783026, 46.754169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811935, 30.770161, 46.542843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521884, -0.115638, 0.845142,
		-0.088276, 0.992771, 0.081326,
		-0.848437, -0.032163, -0.528319,
		36.557404, 30.760511, 46.384346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728035, 31.240328, 47.108101>,  <37.151310, 30.783026, 46.754169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728035, 31.240328, 47.108101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.479424, 31.032757, 46.873352>,  <36.330257, 30.908215, 46.732502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.479424, 31.032757, 46.873352>,  <36.728035, 31.240328, 47.108101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479424, 31.032757, 46.873352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629058, -0.115885, 0.768672,
		-0.466894, 0.846928, -0.254409,
		-0.621528, -0.518926, -0.586872,
		36.292965, 30.877079, 46.697292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974190, 31.590654, 47.177910>,  <36.728035, 31.240328, 47.108101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974190, 31.590654, 47.177910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.936703, 31.219316, 47.034027>,  <35.914211, 30.996513, 46.947697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.936703, 31.219316, 47.034027>,  <35.974190, 31.590654, 47.177910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936703, 31.219316, 47.034027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645982, -0.218224, 0.731495,
		-0.757578, 0.300920, -0.579243,
		-0.093717, -0.928346, -0.359711,
		35.908588, 30.940813, 46.926113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309788, 31.420050, 47.352383>,  <35.974190, 31.590654, 47.177910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309788, 31.420050, 47.352383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.469574, 31.064510, 47.262604>,  <35.565445, 30.851187, 47.208736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.469574, 31.064510, 47.262604>,  <35.309788, 31.420050, 47.352383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469574, 31.064510, 47.262604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453265, -0.404306, 0.794410,
		-0.796856, -0.215604, -0.564390,
		0.399464, -0.888849, -0.224448,
		35.589413, 30.797855, 47.195271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741970, 31.044542, 47.442692>,  <35.309788, 31.420050, 47.352383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741970, 31.044542, 47.442692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.057938, 30.800718, 47.469421>,  <35.247517, 30.654425, 47.485458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.057938, 30.800718, 47.469421>,  <34.741970, 31.044542, 47.442692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057938, 30.800718, 47.469421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428701, -0.471030, 0.770938,
		-0.438449, -0.637632, -0.633394,
		0.789922, -0.609554, 0.066830,
		35.294914, 30.617851, 47.489468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550240, 30.334862, 47.577888>,  <34.741970, 31.044542, 47.442692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550240, 30.334862, 47.577888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.930477, 30.334108, 47.702057>,  <35.158619, 30.333656, 47.776558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.930477, 30.334108, 47.702057>,  <34.550240, 30.334862, 47.577888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930477, 30.334108, 47.702057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284761, -0.403423, 0.869575,
		0.123592, -0.915012, -0.384029,
		0.950598, -0.001884, 0.310419,
		35.215656, 30.333544, 47.795181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649727, 29.739311, 47.919979>,  <34.550240, 30.334862, 47.577888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649727, 29.739311, 47.919979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.933987, 29.965536, 48.087368>,  <35.104542, 30.101271, 48.187801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.933987, 29.965536, 48.087368>,  <34.649727, 29.739311, 47.919979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933987, 29.965536, 48.087368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114032, -0.494340, 0.861757,
		0.694244, -0.660125, -0.286810,
		0.710649, 0.565564, 0.418468,
		35.147182, 30.135204, 48.212910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959911, 29.302507, 48.306316>,  <34.649727, 29.739311, 47.919979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959911, 29.302507, 48.306316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.079163, 29.647121, 48.470695>,  <35.150715, 29.853889, 48.569321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.079163, 29.647121, 48.470695>,  <34.959911, 29.302507, 48.306316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079163, 29.647121, 48.470695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061773, -0.412206, 0.908994,
		0.952525, -0.296381, -0.069670,
		0.298127, 0.861536, 0.410945,
		35.168602, 29.905582, 48.593979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384666, 29.084066, 48.908424>,  <34.959911, 29.302507, 48.306316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384666, 29.084066, 48.908424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.285809, 29.465006, 48.979923>,  <35.226494, 29.693569, 49.022823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.285809, 29.465006, 48.979923>,  <35.384666, 29.084066, 48.908424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285809, 29.465006, 48.979923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236522, -0.238181, 0.941980,
		0.939669, 0.190525, 0.284116,
		-0.247142, 0.952349, 0.178748,
		35.211666, 29.750711, 49.033546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520882, 29.171230, 49.609299>,  <35.384666, 29.084066, 48.908424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520882, 29.171230, 49.609299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.288708, 29.489843, 49.541618>,  <35.149403, 29.681011, 49.501011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.288708, 29.489843, 49.541618>,  <35.520882, 29.171230, 49.609299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288708, 29.489843, 49.541618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284582, -0.003742, 0.958644,
		0.762958, 0.604585, 0.228851,
		-0.580438, 0.796532, -0.169199,
		35.114574, 29.728804, 49.490860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666149, 29.683033, 50.155689>,  <35.520882, 29.171230, 49.609299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666149, 29.683033, 50.155689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292496, 29.744295, 50.026737>,  <35.068302, 29.781054, 49.949364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292496, 29.744295, 50.026737>,  <35.666149, 29.683033, 50.155689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292496, 29.744295, 50.026737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334956, -0.064271, 0.940039,
		0.123253, 0.986110, 0.111339,
		-0.934138, 0.153157, -0.322382,
		35.012253, 29.790241, 49.930023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291439, 30.032282, 50.780746>,  <35.666149, 29.683033, 50.155689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291439, 30.032282, 50.780746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.039867, 29.877831, 50.510826>,  <34.888924, 29.785160, 50.348873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.039867, 29.877831, 50.510826>,  <35.291439, 30.032282, 50.780746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039867, 29.877831, 50.510826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584426, -0.337604, 0.737882,
		-0.512731, 0.858445, -0.013334,
		-0.628930, -0.386128, -0.674798,
		34.851189, 29.761992, 50.308388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599461, 30.373518, 50.915070>,  <35.291439, 30.032282, 50.780746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599461, 30.373518, 50.915070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566422, 30.018312, 50.734135>,  <34.546600, 29.805189, 50.625572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566422, 30.018312, 50.734135>,  <34.599461, 30.373518, 50.915070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566422, 30.018312, 50.734135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553605, -0.336531, 0.761753,
		-0.828674, 0.313332, -0.463814,
		-0.082594, -0.888015, -0.452336,
		34.541645, 29.751907, 50.598434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075497, 30.772451, 50.460098>,  <34.599461, 30.373518, 50.915070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075497, 30.772451, 50.460098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974598, 31.135092, 50.595413>,  <34.914059, 31.352676, 50.676601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974598, 31.135092, 50.595413>,  <35.075497, 30.772451, 50.460098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974598, 31.135092, 50.595413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769932, 0.023723, -0.637685,
		-0.586153, -0.421318, 0.692038,
		-0.252251, 0.906603, 0.338291,
		34.898922, 31.407072, 50.696899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297897, 30.805582, 50.357952>,  <35.075497, 30.772451, 50.460098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297897, 30.805582, 50.357952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.423172, 31.184162, 50.389305>,  <34.498337, 31.411310, 50.408115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.423172, 31.184162, 50.389305>,  <34.297897, 30.805582, 50.357952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423172, 31.184162, 50.389305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625406, 0.267653, -0.732959,
		-0.714688, 0.180537, 0.675742,
		0.313190, 0.946450, 0.078380,
		34.517128, 31.468098, 50.412819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806133, 31.115726, 50.035259>,  <34.297897, 30.805582, 50.357952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806133, 31.115726, 50.035259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.055588, 31.426561, 50.069218>,  <34.205261, 31.613062, 50.089592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.055588, 31.426561, 50.069218>,  <33.806133, 31.115726, 50.035259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055588, 31.426561, 50.069218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477025, 0.464348, -0.746209,
		-0.619292, 0.424868, 0.660276,
		0.623639, 0.777089, 0.084894,
		34.242680, 31.659689, 50.094685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440693, 31.654432, 50.090473>,  <33.806133, 31.115726, 50.035259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440693, 31.654432, 50.090473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.788681, 31.795401, 49.952518>,  <33.997475, 31.879982, 49.869747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.788681, 31.795401, 49.952518>,  <33.440693, 31.654432, 50.090473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788681, 31.795401, 49.952518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483132, 0.469286, -0.739158,
		-0.098647, 0.809672, 0.578532,
		0.869973, 0.352423, -0.344884,
		34.049671, 31.901127, 49.849052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301781, 32.416061, 49.895653>,  <33.440693, 31.654432, 50.090473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301781, 32.416061, 49.895653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.626091, 32.309544, 49.687141>,  <33.820679, 32.245632, 49.562035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.626091, 32.309544, 49.687141>,  <33.301781, 32.416061, 49.895653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626091, 32.309544, 49.687141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334015, 0.520847, -0.785590,
		0.480702, 0.811053, 0.333345,
		0.810777, -0.266293, -0.521276,
		33.869324, 32.229656, 49.530758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619118, 33.005455, 49.617405>,  <33.301781, 32.416061, 49.895653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619118, 33.005455, 49.617405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.730938, 32.701042, 49.383247>,  <33.798031, 32.518394, 49.242752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.730938, 32.701042, 49.383247>,  <33.619118, 33.005455, 49.617405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730938, 32.701042, 49.383247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410483, 0.456439, -0.789409,
		0.867960, 0.460975, -0.184791,
		0.279552, -0.761029, -0.585393,
		33.814804, 32.472733, 49.207630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008671, 33.229633, 49.093079>,  <33.619118, 33.005455, 49.617405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008671, 33.229633, 49.093079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.893711, 32.877991, 48.940987>,  <33.824734, 32.667007, 48.849731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.893711, 32.877991, 48.940987>,  <34.008671, 33.229633, 49.093079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893711, 32.877991, 48.940987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464367, 0.475092, -0.747429,
		0.837713, -0.038247, -0.544770,
		-0.287403, -0.879105, -0.380230,
		33.807491, 32.614258, 48.826916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240196, 33.922390, 48.964817>,  <34.008671, 33.229633, 49.093079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240196, 33.922390, 48.964817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.144356, 34.301022, 49.051147>,  <34.086853, 34.528202, 49.102943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.144356, 34.301022, 49.051147>,  <34.240196, 33.922390, 48.964817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144356, 34.301022, 49.051147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203002, -0.168538, 0.964565,
		0.949412, 0.274920, -0.151776,
		-0.239598, 0.946580, 0.215821,
		34.072475, 34.584995, 49.115894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840641, 34.191586, 49.330517>,  <34.240196, 33.922390, 48.964817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840641, 34.191586, 49.330517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.558578, 34.454388, 49.437176>,  <34.389339, 34.612068, 49.501171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.558578, 34.454388, 49.437176>,  <34.840641, 34.191586, 49.330517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558578, 34.454388, 49.437176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197902, -0.178748, 0.963786,
		0.680875, 0.732389, -0.003977,
		-0.705155, 0.657005, 0.266646,
		34.347031, 34.651489, 49.517170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126629, 34.427761, 49.879311>,  <34.840641, 34.191586, 49.330517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126629, 34.427761, 49.879311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.738777, 34.518642, 49.915539>,  <34.506065, 34.573170, 49.937275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.738777, 34.518642, 49.915539>,  <35.126629, 34.427761, 49.879311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738777, 34.518642, 49.915539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040040, -0.217858, 0.975159,
		0.241287, 0.949167, 0.202144,
		-0.969627, 0.227199, 0.090571,
		34.447887, 34.586803, 49.942711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037254, 34.974968, 50.459545>,  <35.126629, 34.427761, 49.879311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037254, 34.974968, 50.459545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.672661, 34.821182, 50.401058>,  <34.453903, 34.728909, 50.365967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.672661, 34.821182, 50.401058>,  <35.037254, 34.974968, 50.459545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672661, 34.821182, 50.401058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086549, -0.168246, 0.981938,
		-0.402124, 0.907677, 0.120078,
		-0.911485, -0.384469, -0.146214,
		34.399216, 34.705841, 50.357193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666805, 35.330730, 51.031754>,  <35.037254, 34.974968, 50.459545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666805, 35.330730, 51.031754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.479137, 34.995617, 50.920040>,  <34.366535, 34.794548, 50.853012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.479137, 34.995617, 50.920040>,  <34.666805, 35.330730, 51.031754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479137, 34.995617, 50.920040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017356, -0.307447, 0.951407,
		-0.882938, 0.451218, 0.129704,
		-0.469169, -0.837782, -0.279288,
		34.338387, 34.744282, 50.836254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058086, 35.281532, 51.530399>,  <34.666805, 35.330730, 51.031754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058086, 35.281532, 51.530399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.115715, 34.918621, 51.372368>,  <34.150291, 34.700874, 51.277550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.115715, 34.918621, 51.372368>,  <34.058086, 35.281532, 51.530399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115715, 34.918621, 51.372368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028074, -0.395338, 0.918107,
		-0.989168, -0.143369, -0.031488,
		0.144076, -0.907278, -0.395081,
		34.158939, 34.646439, 51.253845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694653, 34.803982, 51.889690>,  <34.058086, 35.281532, 51.530399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694653, 34.803982, 51.889690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.961494, 34.562984, 51.714432>,  <34.121597, 34.418385, 51.609276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.961494, 34.562984, 51.714432>,  <33.694653, 34.803982, 51.889690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961494, 34.562984, 51.714432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005802, -0.583928, 0.811785,
		-0.744946, -0.544083, -0.386043,
		0.667100, -0.602496, -0.438151,
		34.161625, 34.382236, 51.582985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441303, 34.101418, 52.141174>,  <33.694653, 34.803982, 51.889690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441303, 34.101418, 52.141174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.785069, 33.997986, 51.964745>,  <33.991329, 33.935925, 51.858887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.785069, 33.997986, 51.964745>,  <33.441303, 34.101418, 52.141174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785069, 33.997986, 51.964745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267122, -0.508490, 0.818586,
		-0.435954, -0.821323, -0.367929,
		0.859412, -0.258584, -0.441072,
		34.042892, 33.920410, 51.832424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044361, 34.347721, 52.488365>,  <33.441303, 34.101418, 52.141174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044361, 34.347721, 52.488365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.163830, 34.552151, 52.165974>,  <34.235512, 34.674809, 51.972538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.163830, 34.552151, 52.165974>,  <34.044361, 34.347721, 52.488365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163830, 34.552151, 52.165974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788339, 0.608101, 0.093460,
		0.537882, 0.607471, 0.584519,
		0.298673, 0.511070, -0.805979,
		34.253433, 34.705471, 51.924179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.709061, 37.369308, 36.841530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975254, 37.072632, 36.808022>,  <35.134972, 36.894627, 36.787914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975254, 37.072632, 36.808022>,  <34.709061, 37.369308, 36.841530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975254, 37.072632, 36.808022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083436, -0.037613, 0.995803,
		-0.741733, -0.669682, 0.036853,
		0.665485, -0.741695, -0.083774,
		35.174900, 36.850124, 36.782890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530666, 36.731510, 37.216591>,  <34.709061, 37.369308, 36.841530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530666, 36.731510, 37.216591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917645, 36.830116, 37.193699>,  <35.149834, 36.889278, 37.179962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917645, 36.830116, 37.193699>,  <34.530666, 36.731510, 37.216591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917645, 36.830116, 37.193699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039829, 0.075014, 0.996387,
		0.249916, -0.966232, 0.062754,
		0.967448, 0.246514, -0.057232,
		35.207878, 36.904072, 37.176529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966793, 36.286613, 37.605145>,  <34.530666, 36.731510, 37.216591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966793, 36.286613, 37.605145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180252, 36.624794, 37.596855>,  <35.308327, 36.827702, 37.591881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180252, 36.624794, 37.596855>,  <34.966793, 36.286613, 37.605145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180252, 36.624794, 37.596855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055594, -0.010618, 0.998397,
		0.843875, -0.533948, -0.052668,
		0.533651, 0.845451, -0.020724,
		35.340347, 36.878429, 37.590637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478737, 36.154541, 38.016216>,  <34.966793, 36.286613, 37.605145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478737, 36.154541, 38.016216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453331, 36.553707, 38.020645>,  <35.438087, 36.793209, 38.023304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453331, 36.553707, 38.020645>,  <35.478737, 36.154541, 38.016216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453331, 36.553707, 38.020645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012789, -0.011911, 0.999848,
		0.997899, 0.063366, 0.013519,
		-0.063518, 0.997919, 0.011076,
		35.434277, 36.853085, 38.023968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874187, 36.329494, 38.630260>,  <35.478737, 36.154541, 38.016216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874187, 36.329494, 38.630260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678894, 36.664154, 38.530945>,  <35.561718, 36.864948, 38.471355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678894, 36.664154, 38.530945>,  <35.874187, 36.329494, 38.630260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678894, 36.664154, 38.530945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173300, 0.185889, 0.967167,
		0.855334, 0.515230, 0.054235,
		-0.488232, 0.836650, -0.248287,
		35.532425, 36.915150, 38.456459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134289, 36.794098, 39.120090>,  <35.874187, 36.329494, 38.630260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134289, 36.794098, 39.120090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776096, 36.923626, 38.997936>,  <35.561180, 37.001343, 38.924644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776096, 36.923626, 38.997936>,  <36.134289, 36.794098, 39.120090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776096, 36.923626, 38.997936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254850, 0.189500, 0.948231,
		0.364929, 0.926946, -0.087166,
		-0.895477, 0.323823, -0.305386,
		35.507454, 37.020771, 38.906319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902050, 37.523003, 39.407127>,  <36.134289, 36.794098, 39.120090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902050, 37.523003, 39.407127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564610, 37.338921, 39.296459>,  <35.362144, 37.228470, 39.230061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564610, 37.338921, 39.296459>,  <35.902050, 37.523003, 39.407127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564610, 37.338921, 39.296459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369785, 0.124300, 0.920765,
		-0.389354, 0.879066, -0.275038,
		-0.843601, -0.460209, -0.276669,
		35.311531, 37.200859, 39.213459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362896, 37.974781, 39.722824>,  <35.902050, 37.523003, 39.407127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362896, 37.974781, 39.722824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142948, 37.653313, 39.631832>,  <35.010979, 37.460430, 39.577236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142948, 37.653313, 39.631832>,  <35.362896, 37.974781, 39.722824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142948, 37.653313, 39.631832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552609, 0.145831, 0.820583,
		-0.626308, 0.576923, -0.524307,
		-0.549874, -0.803674, -0.227478,
		34.977985, 37.412209, 39.563587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593433, 38.082096, 39.890015>,  <35.362896, 37.974781, 39.722824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593433, 38.082096, 39.890015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631119, 37.683895, 39.886127>,  <34.653728, 37.444973, 39.883793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631119, 37.683895, 39.886127>,  <34.593433, 38.082096, 39.890015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631119, 37.683895, 39.886127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582495, -0.063042, 0.810386,
		-0.807356, -0.070687, -0.585816,
		0.094215, -0.995505, -0.009723,
		34.659382, 37.385242, 39.883209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886360, 37.865223, 40.006054>,  <34.593433, 38.082096, 39.890015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886360, 37.865223, 40.006054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126179, 37.564037, 40.114563>,  <34.270069, 37.383327, 40.179668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126179, 37.564037, 40.114563>,  <33.886360, 37.865223, 40.006054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126179, 37.564037, 40.114563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522134, -0.111102, 0.845596,
		-0.606561, -0.648620, -0.459757,
		0.599550, -0.752960, 0.271276,
		34.306046, 37.338150, 40.195946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410751, 37.324512, 40.321968>,  <33.886360, 37.865223, 40.006054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410751, 37.324512, 40.321968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790752, 37.252026, 40.423683>,  <34.018753, 37.208534, 40.484711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790752, 37.252026, 40.423683>,  <33.410751, 37.324512, 40.321968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790752, 37.252026, 40.423683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289381, -0.205047, 0.934994,
		-0.117291, -0.961831, -0.247234,
		0.950001, -0.181212, 0.254285,
		34.075752, 37.197659, 40.499969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368916, 36.642357, 40.800400>,  <33.410751, 37.324512, 40.321968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368916, 36.642357, 40.800400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703606, 36.854267, 40.855869>,  <33.904419, 36.981415, 40.889149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703606, 36.854267, 40.855869>,  <33.368916, 36.642357, 40.800400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703606, 36.854267, 40.855869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157560, -0.009623, 0.987463,
		0.524469, -0.848083, 0.075420,
		0.836724, 0.529777, 0.138671,
		33.954624, 37.013199, 40.897472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331207, 35.993187, 40.668682>,  <33.368916, 36.642357, 40.800400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331207, 35.993187, 40.668682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963463, 35.839615, 40.634365>,  <32.742817, 35.747471, 40.613773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963463, 35.839615, 40.634365>,  <33.331207, 35.993187, 40.668682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963463, 35.839615, 40.634365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145813, 0.535110, -0.832103,
		0.365382, -0.752497, -0.547945,
		-0.919366, -0.383933, -0.085796,
		32.687653, 35.724434, 40.608627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291546, 35.779224, 39.986694>,  <33.331207, 35.993187, 40.668682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291546, 35.779224, 39.986694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910397, 35.809826, 40.104118>,  <32.681705, 35.828186, 40.174572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910397, 35.809826, 40.104118>,  <33.291546, 35.779224, 39.986694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910397, 35.809826, 40.104118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274265, 0.196320, -0.941401,
		-0.129655, -0.977551, -0.166086,
		-0.952873, 0.076506, 0.293562,
		32.624535, 35.832779, 40.192188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826157, 35.425163, 39.439468>,  <33.291546, 35.779224, 39.986694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826157, 35.425163, 39.439468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582256, 35.672390, 39.637943>,  <32.435917, 35.820724, 39.757027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582256, 35.672390, 39.637943>,  <32.826157, 35.425163, 39.439468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582256, 35.672390, 39.637943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572640, 0.089292, -0.814930,
		-0.547983, -0.781042, 0.299481,
		-0.609753, 0.618062, 0.496186,
		32.399330, 35.857807, 39.786800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163643, 35.136356, 39.332001>,  <32.826157, 35.425163, 39.439468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163643, 35.136356, 39.332001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137760, 35.528225, 39.407955>,  <32.122231, 35.763348, 39.453529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137760, 35.528225, 39.407955>,  <32.163643, 35.136356, 39.332001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137760, 35.528225, 39.407955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513387, 0.130494, -0.848178,
		-0.855715, -0.152368, 0.494506,
		-0.064705, 0.979671, 0.189889,
		32.118347, 35.822124, 39.464924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531925, 35.310295, 39.220985>,  <32.163643, 35.136356, 39.332001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531925, 35.310295, 39.220985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723097, 35.661392, 39.207451>,  <31.837799, 35.872051, 39.199329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723097, 35.661392, 39.207451>,  <31.531925, 35.310295, 39.220985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723097, 35.661392, 39.207451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500159, 0.240267, -0.831933,
		-0.722098, 0.414526, 0.553844,
		0.477929, 0.877747, -0.033832,
		31.866476, 35.924717, 39.197300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973711, 35.925068, 39.079357>,  <31.531925, 35.310295, 39.220985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973711, 35.925068, 39.079357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344456, 36.039474, 38.982098>,  <31.566902, 36.108120, 38.923740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344456, 36.039474, 38.982098>,  <30.973711, 35.925068, 39.079357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344456, 36.039474, 38.982098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322482, 0.275026, -0.905740,
		-0.192184, 0.917908, 0.347146,
		0.926860, 0.286018, -0.243153,
		31.622515, 36.125278, 38.909153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933071, 36.586292, 38.795444>,  <30.973711, 35.925068, 39.079357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933071, 36.586292, 38.795444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281441, 36.448669, 38.655090>,  <31.490463, 36.366096, 38.570877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281441, 36.448669, 38.655090>,  <30.933071, 36.586292, 38.795444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281441, 36.448669, 38.655090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267458, 0.267144, -0.925797,
		0.412260, 0.900145, 0.140642,
		0.870924, -0.344053, -0.350884,
		31.542717, 36.345455, 38.549824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958292, 37.000366, 38.252991>,  <30.933071, 36.586292, 38.795444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958292, 37.000366, 38.252991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252951, 36.738789, 38.184048>,  <31.429747, 36.581841, 38.142681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252951, 36.738789, 38.184048>,  <30.958292, 37.000366, 38.252991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252951, 36.738789, 38.184048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095429, 0.151797, -0.983794,
		0.669511, 0.741156, 0.049416,
		0.736646, -0.653946, -0.172358,
		31.473944, 36.542606, 38.132339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513704, 37.245094, 37.694481>,  <30.958292, 37.000366, 38.252991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513704, 37.245094, 37.694481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530287, 36.845650, 37.707462>,  <31.540236, 36.605984, 37.715252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530287, 36.845650, 37.707462>,  <31.513704, 37.245094, 37.694481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530287, 36.845650, 37.707462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042011, -0.030710, -0.998645,
		0.998257, 0.042763, 0.040680,
		0.041456, -0.998613, 0.032453,
		31.542723, 36.546066, 37.717197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953033, 37.127644, 37.275692>,  <31.513704, 37.245094, 37.694481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953033, 37.127644, 37.275692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789822, 36.762657, 37.287796>,  <31.691895, 36.543667, 37.295059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789822, 36.762657, 37.287796>,  <31.953033, 37.127644, 37.275692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789822, 36.762657, 37.287796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089642, -0.073023, -0.993293,
		0.908556, -0.402583, 0.111591,
		-0.408031, -0.912466, 0.030257,
		31.667412, 36.488918, 37.296871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213482, 36.811867, 36.674763>,  <31.953033, 37.127644, 37.275692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213482, 36.811867, 36.674763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907080, 36.575397, 36.775761>,  <31.723240, 36.433517, 36.836361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907080, 36.575397, 36.775761>,  <32.213482, 36.811867, 36.674763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907080, 36.575397, 36.775761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220079, -0.127875, -0.967064,
		0.603991, -0.796342, -0.032153,
		-0.766002, -0.591175, 0.252494,
		31.677279, 36.398045, 36.851509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238693, 36.263550, 36.288063>,  <32.213482, 36.811867, 36.674763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238693, 36.263550, 36.288063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852917, 36.282555, 36.392056>,  <31.621450, 36.293957, 36.454449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852917, 36.282555, 36.392056>,  <32.238693, 36.263550, 36.288063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852917, 36.282555, 36.392056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264246, -0.189931, -0.945569,
		0.004455, -0.980647, 0.195732,
		-0.964445, 0.047509, 0.259978,
		31.563583, 36.296806, 36.470051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891478, 35.566269, 35.997105>,  <32.238693, 36.263550, 36.288063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891478, 35.566269, 35.997105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599724, 35.829865, 36.070564>,  <31.424671, 35.988022, 36.114639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599724, 35.829865, 36.070564>,  <31.891478, 35.566269, 35.997105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599724, 35.829865, 36.070564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372302, -0.157166, -0.914708,
		-0.573922, -0.735546, 0.359978,
		-0.729386, 0.658992, 0.183644,
		31.380907, 36.027561, 36.125656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349258, 35.277702, 36.444279>,  <31.891478, 35.566269, 35.997105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349258, 35.277702, 36.444279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598446, 34.980347, 36.346886>,  <32.747959, 34.801933, 36.288452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598446, 34.980347, 36.346886>,  <32.349258, 35.277702, 36.444279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598446, 34.980347, 36.346886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173947, -0.171817, 0.969650,
		-0.762663, -0.646412, 0.022274,
		0.622967, -0.743391, -0.243481,
		32.785336, 34.757328, 36.273842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217060, 34.598118, 36.706158>,  <32.349258, 35.277702, 36.444279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217060, 34.598118, 36.706158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607635, 34.571201, 36.624138>,  <32.841980, 34.555054, 36.574928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607635, 34.571201, 36.624138>,  <32.217060, 34.598118, 36.706158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607635, 34.571201, 36.624138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194187, -0.140545, 0.970844,
		-0.094140, -0.987785, -0.124168,
		0.976437, -0.067284, -0.205046,
		32.900566, 34.551014, 36.562626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544891, 34.017616, 36.956402>,  <32.217060, 34.598118, 36.706158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544891, 34.017616, 36.956402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810047, 34.316822, 36.943439>,  <32.969139, 34.496346, 36.935661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810047, 34.316822, 36.943439>,  <32.544891, 34.017616, 36.956402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810047, 34.316822, 36.943439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113226, -0.057369, 0.991912,
		0.740110, -0.661193, -0.122725,
		0.662886, 0.748019, -0.032405,
		33.008911, 34.541229, 36.933720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696392, 34.615585, 37.465527>,  <32.544891, 34.017616, 36.956402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696392, 34.615585, 37.465527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587830, 34.964024, 37.301807>,  <32.522690, 35.173088, 37.203575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587830, 34.964024, 37.301807>,  <32.696392, 34.615585, 37.465527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587830, 34.964024, 37.301807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816701, 0.016566, 0.576824,
		0.509251, 0.490828, 0.706931,
		-0.271410, 0.871099, -0.409296,
		32.506405, 35.225353, 37.179020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208477, 34.182583, 37.208839>,  <32.696392, 34.615585, 37.465527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208477, 34.182583, 37.208839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606834, 34.180019, 37.172722>,  <33.845848, 34.178482, 37.151051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606834, 34.180019, 37.172722>,  <33.208477, 34.182583, 37.208839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606834, 34.180019, 37.172722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075778, -0.486574, 0.870347,
		-0.049512, -0.873616, -0.484091,
		0.995895, -0.006409, -0.090292,
		33.905602, 34.178097, 37.145634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359077, 33.471085, 37.343678>,  <33.208477, 34.182583, 37.208839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359077, 33.471085, 37.343678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693924, 33.675468, 37.421814>,  <33.894833, 33.798100, 37.468697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693924, 33.675468, 37.421814>,  <33.359077, 33.471085, 37.343678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693924, 33.675468, 37.421814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200587, -0.618941, 0.759393,
		0.508922, -0.596517, -0.620617,
		0.837116, 0.510959, 0.195339,
		33.945057, 33.828754, 37.480415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964096, 33.016479, 37.438793>,  <33.359077, 33.471085, 37.343678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964096, 33.016479, 37.438793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060078, 33.354015, 37.630772>,  <34.117668, 33.556538, 37.745960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060078, 33.354015, 37.630772>,  <33.964096, 33.016479, 37.438793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060078, 33.354015, 37.630772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127429, -0.517492, 0.846147,
		0.962384, -0.141880, -0.231706,
		0.239957, 0.843844, 0.479946,
		34.132065, 33.607170, 37.774757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532257, 32.801346, 37.822079>,  <33.964096, 33.016479, 37.438793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532257, 32.801346, 37.822079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401005, 33.137142, 37.995323>,  <34.322254, 33.338619, 38.099270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401005, 33.137142, 37.995323>,  <34.532257, 32.801346, 37.822079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401005, 33.137142, 37.995323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159187, -0.402802, 0.901338,
		0.931122, 0.364704, -0.001464,
		-0.328132, 0.839489, 0.433114,
		34.302567, 33.388988, 38.125256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165810, 32.874020, 38.243023>,  <34.532257, 32.801346, 37.822079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165810, 32.874020, 38.243023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874149, 33.105324, 38.389420>,  <34.699154, 33.244106, 38.477257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874149, 33.105324, 38.389420>,  <35.165810, 32.874020, 38.243023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874149, 33.105324, 38.389420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328984, -0.172774, 0.928396,
		0.600089, 0.797348, -0.064260,
		-0.729152, 0.578260, 0.365994,
		34.655403, 33.278801, 38.499218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460133, 33.325432, 38.662144>,  <35.165810, 32.874020, 38.243023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460133, 33.325432, 38.662144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088642, 33.352203, 38.808010>,  <34.865746, 33.368267, 38.895531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088642, 33.352203, 38.808010>,  <35.460133, 33.325432, 38.662144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088642, 33.352203, 38.808010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366194, 0.011694, 0.930465,
		0.058009, 0.997689, -0.035369,
		-0.928729, 0.066927, 0.364670,
		34.810024, 33.372280, 38.917412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582478, 33.756882, 39.221817>,  <35.460133, 33.325432, 38.662144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582478, 33.756882, 39.221817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230656, 33.598866, 39.327900>,  <35.019562, 33.504055, 39.391548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230656, 33.598866, 39.327900>,  <35.582478, 33.756882, 39.221817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230656, 33.598866, 39.327900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251543, 0.087056, 0.963923,
		-0.403873, 0.914531, 0.022799,
		-0.879553, -0.395037, 0.265204,
		34.966789, 33.480354, 39.407459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249432, 34.181408, 39.742161>,  <35.582478, 33.756882, 39.221817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249432, 34.181408, 39.742161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060001, 33.831173, 39.780247>,  <34.946342, 33.621033, 39.803097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060001, 33.831173, 39.780247>,  <35.249432, 34.181408, 39.742161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060001, 33.831173, 39.780247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150540, 0.026040, 0.988261,
		-0.867791, 0.482351, 0.119480,
		-0.473578, -0.875591, 0.095210,
		34.917927, 33.568497, 39.808811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916328, 34.274479, 40.396088>,  <35.249432, 34.181408, 39.742161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916328, 34.274479, 40.396088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901440, 33.877113, 40.352737>,  <34.892506, 33.638695, 40.326725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901440, 33.877113, 40.352737>,  <34.916328, 34.274479, 40.396088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901440, 33.877113, 40.352737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026515, -0.109398, 0.993644,
		-0.998955, 0.034116, 0.030412,
		-0.037227, -0.993412, -0.108379,
		34.890270, 33.579090, 40.320225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511005, 34.018467, 40.937088>,  <34.916328, 34.274479, 40.396088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511005, 34.018467, 40.937088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755638, 33.733875, 40.798664>,  <34.902420, 33.563118, 40.715611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755638, 33.733875, 40.798664>,  <34.511005, 34.018467, 40.937088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755638, 33.733875, 40.798664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178161, -0.302319, 0.936409,
		-0.770858, -0.634348, -0.058135,
		0.611585, -0.711481, -0.346062,
		34.939114, 33.520432, 40.694847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227985, 33.425415, 41.221214>,  <34.511005, 34.018467, 40.937088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227985, 33.425415, 41.221214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617188, 33.378414, 41.141762>,  <34.850708, 33.350216, 41.094090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617188, 33.378414, 41.141762>,  <34.227985, 33.425415, 41.221214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617188, 33.378414, 41.141762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121597, -0.470505, 0.873979,
		-0.196148, -0.874540, -0.443516,
		0.973006, -0.117499, -0.198630,
		34.909088, 33.343163, 41.082172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388058, 32.735493, 41.418221>,  <34.227985, 33.425415, 41.221214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388058, 32.735493, 41.418221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741417, 32.913864, 41.360600>,  <34.953434, 33.020889, 41.326027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741417, 32.913864, 41.360600>,  <34.388058, 32.735493, 41.418221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741417, 32.913864, 41.360600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328165, -0.369220, 0.869474,
		0.334539, -0.815365, -0.472508,
		0.883398, 0.445933, -0.144055,
		35.006435, 33.047646, 41.317383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929768, 32.245224, 41.493378>,  <34.388058, 32.735493, 41.418221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929768, 32.245224, 41.493378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106522, 32.599796, 41.548481>,  <35.212574, 32.812542, 41.581543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106522, 32.599796, 41.548481>,  <34.929768, 32.245224, 41.493378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106522, 32.599796, 41.548481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452549, -0.352865, 0.818954,
		0.774558, -0.299538, -0.557079,
		0.441882, 0.886433, 0.137759,
		35.239086, 32.865726, 41.589809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603359, 32.084072, 41.645367>,  <34.929768, 32.245224, 41.493378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603359, 32.084072, 41.645367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558037, 32.457314, 41.781887>,  <35.530846, 32.681259, 41.863800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558037, 32.457314, 41.781887>,  <35.603359, 32.084072, 41.645367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558037, 32.457314, 41.781887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581582, -0.216228, 0.784225,
		0.805559, 0.287349, -0.518175,
		-0.113303, 0.933100, 0.341301,
		35.524048, 32.737244, 41.884277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321487, 32.346825, 41.757336>,  <35.603359, 32.084072, 41.645367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321487, 32.346825, 41.757336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065338, 32.549232, 41.988461>,  <35.911648, 32.670677, 42.127136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065338, 32.549232, 41.988461>,  <36.321487, 32.346825, 41.757336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065338, 32.549232, 41.988461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625944, -0.092132, 0.774407,
		0.445099, 0.857588, -0.257740,
		-0.640375, 0.506019, 0.577810,
		35.873226, 32.701038, 42.161804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787708, 32.735054, 42.075874>,  <36.321487, 32.346825, 41.757336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787708, 32.735054, 42.075874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444550, 32.712090, 42.280117>,  <36.238655, 32.698311, 42.402664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444550, 32.712090, 42.280117>,  <36.787708, 32.735054, 42.075874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444550, 32.712090, 42.280117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513569, -0.127217, 0.848565,
		0.016239, 0.990212, 0.138624,
		-0.857895, -0.057413, 0.510608,
		36.187180, 32.694866, 42.433300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044811, 33.003437, 42.746452>,  <36.787708, 32.735054, 42.075874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044811, 33.003437, 42.746452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713600, 32.783901, 42.792313>,  <36.514874, 32.652180, 42.819828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713600, 32.783901, 42.792313>,  <37.044811, 33.003437, 42.746452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713600, 32.783901, 42.792313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342729, -0.333614, 0.878202,
		-0.443740, 0.766472, 0.464344,
		-0.828029, -0.548837, 0.114654,
		36.465191, 32.619251, 42.826710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829346, 33.179874, 43.433983>,  <37.044811, 33.003437, 42.746452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829346, 33.179874, 43.433983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644772, 32.839249, 43.334457>,  <36.534027, 32.634872, 43.274742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644772, 32.839249, 43.334457>,  <36.829346, 33.179874, 43.433983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644772, 32.839249, 43.334457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173877, -0.361823, 0.915888,
		-0.869968, 0.379360, 0.315027,
		-0.461435, -0.851569, -0.248813,
		36.506340, 32.583778, 43.259815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468597, 33.013435, 43.951588>,  <36.829346, 33.179874, 43.433983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468597, 33.013435, 43.951588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488140, 32.650761, 43.783997>,  <36.499866, 32.433155, 43.683441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488140, 32.650761, 43.783997>,  <36.468597, 33.013435, 43.951588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488140, 32.650761, 43.783997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301936, -0.386443, 0.871491,
		-0.952075, -0.169084, 0.254878,
		0.048859, -0.906682, -0.418975,
		36.502796, 32.378757, 43.658302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154480, 32.671387, 44.351307>,  <36.468597, 33.013435, 43.951588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154480, 32.671387, 44.351307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333179, 32.365707, 44.165226>,  <36.440399, 32.182301, 44.053577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333179, 32.365707, 44.165226>,  <36.154480, 32.671387, 44.351307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333179, 32.365707, 44.165226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148251, -0.449553, 0.880865,
		-0.882290, -0.462493, -0.087544,
		0.446750, -0.764201, -0.465201,
		36.467205, 32.136448, 44.025665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796509, 32.038765, 44.594944>,  <36.154480, 32.671387, 44.351307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796509, 32.038765, 44.594944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140903, 31.909985, 44.437439>,  <36.347542, 31.832716, 44.342937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140903, 31.909985, 44.437439>,  <35.796509, 32.038765, 44.594944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140903, 31.909985, 44.437439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164871, -0.555705, 0.814868,
		-0.481164, -0.766510, -0.425374,
		0.860987, -0.321953, -0.393760,
		36.399200, 31.813398, 44.319309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774593, 31.340309, 44.529217>,  <35.796509, 32.038765, 44.594944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774593, 31.340309, 44.529217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171696, 31.388117, 44.534027>,  <36.409958, 31.416801, 44.536915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171696, 31.388117, 44.534027>,  <35.774593, 31.340309, 44.529217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171696, 31.388117, 44.534027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063432, -0.606627, 0.792452,
		0.102007, -0.785951, -0.609816,
		0.992759, 0.119517, 0.012026,
		36.469524, 31.423971, 44.537636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024548, 30.735786, 44.600201>,  <35.774593, 31.340309, 44.529217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024548, 30.735786, 44.600201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305172, 30.986372, 44.736057>,  <36.473545, 31.136723, 44.817570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305172, 30.986372, 44.736057>,  <36.024548, 30.735786, 44.600201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305172, 30.986372, 44.736057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010614, -0.485750, 0.874034,
		0.712530, -0.609584, -0.347433,
		0.701562, 0.626463, 0.339641,
		36.515640, 31.174311, 44.837948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471725, 30.331884, 44.838825>,  <36.024548, 30.735786, 44.600201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471725, 30.331884, 44.838825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567924, 30.683733, 45.002983>,  <36.625645, 30.894842, 45.101479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567924, 30.683733, 45.002983>,  <36.471725, 30.331884, 44.838825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567924, 30.683733, 45.002983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023733, -0.428008, 0.903463,
		0.970360, -0.207538, -0.123810,
		0.240494, 0.879623, 0.410397,
		36.640072, 30.947620, 45.126102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042107, 30.188908, 45.304516>,  <36.471725, 30.331884, 44.838825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042107, 30.188908, 45.304516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857658, 30.521667, 45.428005>,  <36.746990, 30.721323, 45.502098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857658, 30.521667, 45.428005>,  <37.042107, 30.188908, 45.304516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857658, 30.521667, 45.428005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217493, -0.443273, 0.869601,
		0.860272, 0.333841, 0.385333,
		-0.461116, 0.831901, 0.308727,
		36.719322, 30.771238, 45.520622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708755, 30.421156, 45.073727>,  <37.042107, 30.188908, 45.304516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708755, 30.421156, 45.073727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105488, 30.392609, 45.116016>,  <38.343529, 30.375481, 45.141392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105488, 30.392609, 45.116016>,  <37.708755, 30.421156, 45.073727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105488, 30.392609, 45.116016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105879, -0.001644, -0.994378,
		0.071139, 0.997449, 0.005925,
		0.991831, -0.071367, 0.105726,
		38.403038, 30.371199, 45.147736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951805, 31.005938, 44.867943>,  <37.708755, 30.421156, 45.073727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951805, 31.005938, 44.867943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246769, 30.739826, 44.821243>,  <38.423748, 30.580160, 44.793224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246769, 30.739826, 44.821243>,  <37.951805, 31.005938, 44.867943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246769, 30.739826, 44.821243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080343, 0.258011, -0.962796,
		0.670649, 0.700596, 0.243710,
		0.737411, -0.665278, -0.116747,
		38.467991, 30.540243, 44.786221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503498, 31.325809, 44.411217>,  <37.951805, 31.005938, 44.867943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503498, 31.325809, 44.411217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588284, 30.935167, 44.396702>,  <38.639153, 30.700783, 44.387993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588284, 30.935167, 44.396702>,  <38.503498, 31.325809, 44.411217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588284, 30.935167, 44.396702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256114, 0.091342, -0.962321,
		0.943121, 0.194681, 0.269483,
		0.211961, -0.976604, -0.036286,
		38.651871, 30.642185, 44.385815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104042, 31.309784, 43.927231>,  <38.503498, 31.325809, 44.411217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104042, 31.309784, 43.927231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000359, 30.923468, 43.930405>,  <38.938148, 30.691679, 43.932308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000359, 30.923468, 43.930405>,  <39.104042, 31.309784, 43.927231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000359, 30.923468, 43.930405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344590, -0.100152, -0.933395,
		0.902259, -0.239206, 0.358762,
		-0.259204, -0.965790, 0.007935,
		38.922596, 30.633730, 43.932785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676510, 30.934710, 43.680626>,  <39.104042, 31.309784, 43.927231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676510, 30.934710, 43.680626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358112, 30.704912, 43.604362>,  <39.167072, 30.567034, 43.558605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358112, 30.704912, 43.604362>,  <39.676510, 30.934710, 43.680626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358112, 30.704912, 43.604362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373776, -0.218749, -0.901354,
		0.476115, -0.788737, 0.388855,
		-0.795994, -0.574493, -0.190662,
		39.119312, 30.532564, 43.547165>
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
