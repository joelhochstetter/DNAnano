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
	<23.819365, 34.893661, 35.000660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211252, 34.973507, 35.007618>,  <24.446384, 35.021416, 35.011791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.211252, 34.973507, 35.007618>,  <23.819365, 34.893661, 35.000660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.211252, 34.973507, 35.007618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194169, 0.967251, -0.163475,
		-0.049457, 0.156782, 0.986394,
		0.979721, 0.199612, 0.017396,
		24.505169, 35.033390, 35.012836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.049730, 35.362740, 35.671116>,  <23.819365, 34.893661, 35.000660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.049730, 35.362740, 35.671116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272400, 35.410038, 35.342209>,  <24.406002, 35.438419, 35.144863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272400, 35.410038, 35.342209>,  <24.049730, 35.362740, 35.671116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272400, 35.410038, 35.342209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267789, 0.962523, -0.042875,
		0.786385, 0.244062, 0.567479,
		0.556676, 0.118248, -0.822271,
		24.439404, 35.445511, 35.095528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.506271, 35.804398, 35.876945>,  <24.049730, 35.362740, 35.671116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.506271, 35.804398, 35.876945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460300, 35.854015, 35.482708>,  <24.432718, 35.883785, 35.246162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.460300, 35.854015, 35.482708>,  <24.506271, 35.804398, 35.876945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.460300, 35.854015, 35.482708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076102, 0.990357, 0.115770,
		0.990455, -0.061700, -0.123259,
		-0.114927, 0.124045, -0.985599,
		24.425823, 35.891228, 35.187027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.018108, 36.308758, 35.700634>,  <24.506271, 35.804398, 35.876945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.018108, 36.308758, 35.700634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.713856, 36.372944, 35.449020>,  <24.531303, 36.411457, 35.298050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.713856, 36.372944, 35.449020>,  <25.018108, 36.308758, 35.700634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.713856, 36.372944, 35.449020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019080, 0.963024, 0.268741,
		0.648901, 0.216415, -0.729446,
		-0.760633, 0.160468, -0.629036,
		24.485666, 36.421085, 35.260311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.171181, 36.972557, 35.826385>,  <25.018108, 36.308758, 35.700634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.171181, 36.972557, 35.826385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561291, 36.938889, 35.908119>,  <25.795357, 36.918690, 35.957161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561291, 36.938889, 35.908119>,  <25.171181, 36.972557, 35.826385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561291, 36.938889, 35.908119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056480, 0.988855, 0.137749,
		-0.213655, -0.122802, 0.969160,
		0.975275, -0.084169, 0.204338,
		25.853874, 36.913639, 35.969421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.213490, 37.127369, 36.514240>,  <25.171181, 36.972557, 35.826385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.213490, 37.127369, 36.514240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555676, 37.197296, 36.319256>,  <25.760986, 37.239250, 36.202263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555676, 37.197296, 36.319256>,  <25.213490, 37.127369, 36.514240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555676, 37.197296, 36.319256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057674, 0.967605, 0.245792,
		0.514640, -0.182152, 0.837834,
		0.855464, 0.174816, -0.487463,
		25.812315, 37.249741, 36.173016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600395, 37.588604, 36.917488>,  <25.213490, 37.127369, 36.514240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600395, 37.588604, 36.917488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712849, 37.622894, 36.535156>,  <25.780321, 37.643467, 36.305756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712849, 37.622894, 36.535156>,  <25.600395, 37.588604, 36.917488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712849, 37.622894, 36.535156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055372, 0.992894, 0.105333,
		0.958069, -0.082539, 0.274391,
		0.281135, 0.085722, -0.955832,
		25.797190, 37.648609, 36.248405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985710, 38.109882, 36.993458>,  <25.600395, 37.588604, 36.917488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985710, 38.109882, 36.993458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969728, 38.098957, 36.593925>,  <25.960138, 38.092400, 36.354206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969728, 38.098957, 36.593925>,  <25.985710, 38.109882, 36.993458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969728, 38.098957, 36.593925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168797, 0.985075, -0.033692,
		0.984841, -0.169944, -0.034732,
		-0.039940, -0.027319, -0.998829,
		25.957743, 38.090763, 36.294277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590340, 38.434330, 36.741779>,  <25.985710, 38.109882, 36.993458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590340, 38.434330, 36.741779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295668, 38.440418, 36.471352>,  <26.118864, 38.444073, 36.309093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295668, 38.440418, 36.471352>,  <26.590340, 38.434330, 36.741779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295668, 38.440418, 36.471352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029473, 0.999519, -0.009607,
		0.675600, -0.027004, -0.736773,
		-0.736679, 0.015224, -0.676072,
		26.074663, 38.444984, 36.268532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757980, 38.880642, 36.129330>,  <26.590340, 38.434330, 36.741779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757980, 38.880642, 36.129330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358633, 38.872379, 36.108047>,  <26.119024, 38.867420, 36.095276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358633, 38.872379, 36.108047>,  <26.757980, 38.880642, 36.129330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358633, 38.872379, 36.108047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017113, 0.997657, -0.066244,
		0.054453, -0.065225, -0.996383,
		-0.998370, -0.020658, -0.053209,
		26.059122, 38.866180, 36.092083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577133, 39.289627, 35.601543>,  <26.757980, 38.880642, 36.129330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577133, 39.289627, 35.601543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255585, 39.259510, 35.837551>,  <26.062654, 39.241440, 35.979156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255585, 39.259510, 35.837551>,  <26.577133, 39.289627, 35.601543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255585, 39.259510, 35.837551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129046, 0.990405, -0.049440,
		-0.580633, -0.115883, -0.805876,
		-0.803873, -0.075289, 0.590017,
		26.014423, 39.236923, 36.014557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142601, 39.787479, 35.309715>,  <26.577133, 39.289627, 35.601543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142601, 39.787479, 35.309715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994036, 39.726383, 35.676041>,  <25.904896, 39.689724, 35.895836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994036, 39.726383, 35.676041>,  <26.142601, 39.787479, 35.309715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994036, 39.726383, 35.676041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277284, 0.959609, 0.047591,
		-0.886095, -0.236266, -0.398766,
		-0.371415, -0.152741, 0.915817,
		25.882610, 39.680561, 35.950787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550978, 40.193199, 35.271790>,  <26.142601, 39.787479, 35.309715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550978, 40.193199, 35.271790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619196, 40.120670, 35.659199>,  <25.660128, 40.077152, 35.891644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619196, 40.120670, 35.659199>,  <25.550978, 40.193199, 35.271790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619196, 40.120670, 35.659199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211776, 0.953207, 0.215747,
		-0.962323, -0.241904, 0.124166,
		0.170546, -0.181323, 0.968522,
		25.670361, 40.066273, 35.949757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892157, 40.407074, 35.637878>,  <25.550978, 40.193199, 35.271790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892157, 40.407074, 35.637878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224621, 40.413116, 35.860210>,  <25.424099, 40.416740, 35.993610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224621, 40.413116, 35.860210>,  <24.892157, 40.407074, 35.637878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.224621, 40.413116, 35.860210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138618, 0.973698, 0.180825,
		-0.538475, -0.227342, 0.811394,
		0.831161, 0.015104, 0.555826,
		25.473969, 40.417648, 36.026958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.727495, 40.883144, 36.096836>,  <24.892157, 40.407074, 35.637878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.727495, 40.883144, 36.096836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120413, 40.862221, 36.168797>,  <25.356163, 40.849667, 36.211975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120413, 40.862221, 36.168797>,  <24.727495, 40.883144, 36.096836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.120413, 40.862221, 36.168797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000900, 0.958906, 0.283723,
		-0.187353, -0.278861, 0.941879,
		0.982292, -0.052309, 0.179905,
		25.415100, 40.846527, 36.222767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.818220, 41.271687, 36.753208>,  <24.727495, 40.883144, 36.096836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.818220, 41.271687, 36.753208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178749, 41.267467, 36.579998>,  <25.395067, 41.264935, 36.476074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178749, 41.267467, 36.579998>,  <24.818220, 41.271687, 36.753208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178749, 41.267467, 36.579998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104140, 0.975658, 0.192995,
		0.420444, -0.219046, 0.880481,
		0.901322, -0.010550, -0.433021,
		25.449146, 41.264301, 36.450092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103912, 41.808907, 37.019772>,  <24.818220, 41.271687, 36.753208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103912, 41.808907, 37.019772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348633, 41.720295, 36.716030>,  <25.495464, 41.667130, 36.533783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.348633, 41.720295, 36.716030>,  <25.103912, 41.808907, 37.019772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.348633, 41.720295, 36.716030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379696, 0.924401, 0.036239,
		0.693923, -0.310496, 0.649664,
		0.611802, -0.221528, -0.759358,
		25.532173, 41.653835, 36.488224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727011, 42.139214, 37.237717>,  <25.103912, 41.808907, 37.019772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727011, 42.139214, 37.237717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755116, 42.093796, 36.841297>,  <25.771978, 42.066544, 36.603447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755116, 42.093796, 36.841297>,  <25.727011, 42.139214, 37.237717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755116, 42.093796, 36.841297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335370, 0.938358, -0.083733,
		0.939463, -0.326484, 0.104012,
		0.070263, -0.113546, -0.991045,
		25.776194, 42.059731, 36.543983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398529, 42.386021, 37.032230>,  <25.727011, 42.139214, 37.237717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398529, 42.386021, 37.032230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161964, 42.391041, 36.709721>,  <26.020027, 42.394054, 36.516216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161964, 42.391041, 36.709721>,  <26.398529, 42.386021, 37.032230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161964, 42.391041, 36.709721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237636, 0.958188, -0.159389,
		0.770561, -0.285864, -0.569665,
		-0.591409, 0.012554, -0.806274,
		25.984541, 42.394806, 36.467838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855890, 42.785759, 36.472389>,  <26.398529, 42.386021, 37.032230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855890, 42.785759, 36.472389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466274, 42.797806, 36.382641>,  <26.232506, 42.805035, 36.328793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466274, 42.797806, 36.382641>,  <26.855890, 42.785759, 36.472389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466274, 42.797806, 36.382641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104959, 0.938230, -0.329709,
		0.200584, -0.344699, -0.917033,
		-0.974038, 0.030116, -0.224373,
		26.174063, 42.806839, 36.315331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730486, 43.227489, 35.926609>,  <26.855890, 42.785759, 36.472389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730486, 43.227489, 35.926609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352898, 43.235512, 36.058376>,  <26.126345, 43.240326, 36.137436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.352898, 43.235512, 36.058376>,  <26.730486, 43.227489, 35.926609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352898, 43.235512, 36.058376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087844, 0.946877, -0.309367,
		-0.318122, -0.320971, -0.892063,
		-0.943971, 0.020054, 0.329417,
		26.069706, 43.241528, 36.157200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350710, 43.307571, 35.338173>,  <26.730486, 43.227489, 35.926609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350710, 43.307571, 35.338173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140463, 43.464684, 35.640018>,  <26.014315, 43.558952, 35.821129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140463, 43.464684, 35.640018>,  <26.350710, 43.307571, 35.338173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140463, 43.464684, 35.640018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050892, 0.899962, -0.432987,
		-0.849198, -0.189180, -0.493024,
		-0.525616, 0.392783, 0.754619,
		25.982779, 43.582520, 35.866405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905994, 43.761723, 35.003582>,  <26.350710, 43.307571, 35.338173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905994, 43.761723, 35.003582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890657, 43.877731, 35.386082>,  <25.881456, 43.947334, 35.615582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890657, 43.877731, 35.386082>,  <25.905994, 43.761723, 35.003582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890657, 43.877731, 35.386082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075227, 0.953403, -0.292172,
		-0.996429, -0.083138, -0.014737,
		-0.038341, 0.290020, 0.956252,
		25.879154, 43.964737, 35.672958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448900, 44.299831, 35.008297>,  <25.905994, 43.761723, 35.003582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448900, 44.299831, 35.008297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651655, 44.353722, 35.348866>,  <25.773308, 44.386055, 35.553207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651655, 44.353722, 35.348866>,  <25.448900, 44.299831, 35.008297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651655, 44.353722, 35.348866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089160, 0.974219, -0.207238,
		-0.857390, 0.180959, 0.481806,
		0.506886, 0.134726, 0.851420,
		25.803720, 44.394138, 35.604290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108423, 44.817463, 35.341297>,  <25.448900, 44.299831, 35.008297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108423, 44.817463, 35.341297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481716, 44.833557, 35.484100>,  <25.705692, 44.843216, 35.569782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481716, 44.833557, 35.484100>,  <25.108423, 44.817463, 35.341297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.481716, 44.833557, 35.484100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079905, 0.945574, -0.315444,
		-0.350275, 0.322910, 0.879225,
		0.933233, 0.040238, 0.357013,
		25.761686, 44.845627, 35.591206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109974, 45.435951, 35.800144>,  <25.108423, 44.817463, 35.341297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109974, 45.435951, 35.800144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480267, 45.343712, 35.680248>,  <25.702442, 45.288368, 35.608311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480267, 45.343712, 35.680248>,  <25.109974, 45.435951, 35.800144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480267, 45.343712, 35.680248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125865, 0.935267, -0.330808,
		0.356622, 0.268512, 0.894831,
		0.925731, -0.230602, -0.299741,
		25.757986, 45.274532, 35.590324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.606060, 45.931030, 36.038078>,  <25.109974, 45.435951, 35.800144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.606060, 45.931030, 36.038078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721539, 45.760197, 35.695324>,  <25.790825, 45.657696, 35.489670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721539, 45.760197, 35.695324>,  <25.606060, 45.931030, 36.038078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721539, 45.760197, 35.695324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048114, 0.900337, -0.432525,
		0.956211, 0.083640, 0.280472,
		0.288696, -0.427080, -0.856888,
		25.808147, 45.632072, 35.438259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258318, 46.216747, 35.289921>,  <25.606060, 45.931030, 36.038078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258318, 46.216747, 35.289921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.498268, 46.457764, 35.500481>,  <25.642239, 46.602371, 35.626816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.498268, 46.457764, 35.500481>,  <25.258318, 46.216747, 35.289921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.498268, 46.457764, 35.500481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085674, -0.605770, 0.791013,
		0.795495, -0.519607, -0.311764,
		0.599873, 0.602537, 0.526404,
		25.678230, 46.638523, 35.658401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502722, 45.832806, 34.821316>,  <25.258318, 46.216747, 35.289921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502722, 45.832806, 34.821316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860130, 46.010643, 34.846470>,  <26.074575, 46.117348, 34.861561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860130, 46.010643, 34.846470>,  <25.502722, 45.832806, 34.821316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860130, 46.010643, 34.846470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367386, -0.804386, 0.466896,
		0.258164, -0.394078, -0.882074,
		0.893521, 0.444597, 0.062884,
		26.128187, 46.144020, 34.865334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100143, 45.454975, 34.493732>,  <25.502722, 45.832806, 34.821316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100143, 45.454975, 34.493732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236303, 45.676243, 34.797871>,  <26.317999, 45.809006, 34.980354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236303, 45.676243, 34.797871>,  <26.100143, 45.454975, 34.493732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236303, 45.676243, 34.797871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264970, -0.832301, 0.486895,
		0.902175, 0.035731, -0.429889,
		0.340400, 0.553172, 0.760348,
		26.338423, 45.842194, 35.025974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788277, 45.156685, 34.671909>,  <26.100143, 45.454975, 34.493732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788277, 45.156685, 34.671909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586365, 45.331165, 34.969883>,  <26.465218, 45.435852, 35.148666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586365, 45.331165, 34.969883>,  <26.788277, 45.156685, 34.671909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586365, 45.331165, 34.969883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130351, -0.891563, 0.433732,
		0.853349, 0.121837, 0.506904,
		-0.504782, 0.436200, 0.744933,
		26.434931, 45.462025, 35.193363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995312, 44.999645, 35.289371>,  <26.788277, 45.156685, 34.671909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995312, 44.999645, 35.289371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620199, 45.088013, 35.396526>,  <26.395132, 45.141033, 35.460819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620199, 45.088013, 35.396526>,  <26.995312, 44.999645, 35.289371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620199, 45.088013, 35.396526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049937, -0.849288, 0.525563,
		0.343622, 0.479485, 0.807476,
		-0.937779, 0.220918, 0.267890,
		26.338865, 45.154289, 35.476894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581964, 44.951618, 34.798725>,  <26.995312, 44.999645, 35.289371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581964, 44.951618, 34.798725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536413, 45.280853, 34.576172>,  <27.509083, 45.478394, 34.442642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536413, 45.280853, 34.576172>,  <27.581964, 44.951618, 34.798725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536413, 45.280853, 34.576172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284028, 0.509676, 0.812132,
		0.952029, 0.250512, 0.175739,
		-0.113879, 0.823088, -0.556379,
		27.502249, 45.527779, 34.409260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986391, 45.478161, 35.095501>,  <27.581964, 44.951618, 34.798725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986391, 45.478161, 35.095501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655867, 45.620094, 34.920547>,  <27.457552, 45.705254, 34.815575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655867, 45.620094, 34.920547>,  <27.986391, 45.478161, 35.095501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655867, 45.620094, 34.920547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252097, 0.461424, 0.850608,
		0.503643, 0.813130, -0.291828,
		-0.826312, 0.354833, -0.437381,
		27.407972, 45.726543, 34.789333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929504, 46.230221, 35.171314>,  <27.986391, 45.478161, 35.095501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929504, 46.230221, 35.171314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554296, 46.099789, 35.124344>,  <27.329172, 46.021530, 35.096161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554296, 46.099789, 35.124344>,  <27.929504, 46.230221, 35.171314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554296, 46.099789, 35.124344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267035, 0.464009, 0.844623,
		-0.220925, 0.823632, -0.522324,
		-0.938021, -0.326078, -0.117427,
		27.272890, 46.001965, 35.089115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653679, 46.041836, 35.266041>,  <27.929504, 46.230221, 35.171314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653679, 46.041836, 35.266041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756716, 46.095001, 35.648869>,  <28.818539, 46.126900, 35.878567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756716, 46.095001, 35.648869>,  <28.653679, 46.041836, 35.266041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756716, 46.095001, 35.648869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124579, -0.986796, 0.103507,
		0.958189, 0.092568, -0.270751,
		0.257594, 0.132909, 0.957069,
		28.833994, 46.134872, 35.935989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380394, 45.887680, 35.524830>,  <28.653679, 46.041836, 35.266041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380394, 45.887680, 35.524830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152031, 45.848881, 35.850933>,  <29.015013, 45.825600, 36.046597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152031, 45.848881, 35.850933>,  <29.380394, 45.887680, 35.524830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152031, 45.848881, 35.850933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105263, -0.993449, -0.044489,
		0.814237, 0.060418, 0.577380,
		-0.570910, -0.097001, 0.815262,
		28.980759, 45.819782, 36.095512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750835, 45.576824, 36.002373>,  <29.380394, 45.887680, 35.524830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750835, 45.576824, 36.002373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358929, 45.502827, 36.032921>,  <29.123785, 45.458427, 36.051250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358929, 45.502827, 36.032921>,  <29.750835, 45.576824, 36.002373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358929, 45.502827, 36.032921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184333, -0.982738, -0.015733,
		0.077961, -0.001337, 0.996956,
		-0.979767, -0.184998, 0.076369,
		29.064999, 45.447327, 36.055832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726376, 44.910564, 36.351109>,  <29.750835, 45.576824, 36.002373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726376, 44.910564, 36.351109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348625, 44.946468, 36.224556>,  <29.121975, 44.968010, 36.148624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348625, 44.946468, 36.224556>,  <29.726376, 44.910564, 36.351109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348625, 44.946468, 36.224556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074552, -0.995418, -0.059869,
		-0.320308, -0.032952, 0.946740,
		-0.944375, 0.089758, -0.316384,
		29.065313, 44.973396, 36.129642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390278, 44.438076, 36.780071>,  <29.726376, 44.910564, 36.351109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390278, 44.438076, 36.780071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132807, 44.482033, 36.477123>,  <28.978325, 44.508408, 36.295357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132807, 44.482033, 36.477123>,  <29.390278, 44.438076, 36.780071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132807, 44.482033, 36.477123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168991, -0.985618, 0.000611,
		-0.746405, 0.128381, 0.652991,
		-0.643678, 0.109894, -0.757365,
		28.939703, 44.514999, 36.249912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794949, 43.994427, 36.940723>,  <29.390278, 44.438076, 36.780071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794949, 43.994427, 36.940723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774181, 44.081188, 36.550800>,  <28.761721, 44.133247, 36.316845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774181, 44.081188, 36.550800>,  <28.794949, 43.994427, 36.940723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774181, 44.081188, 36.550800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193405, -0.959831, -0.203273,
		-0.979744, 0.177979, 0.091785,
		-0.051919, 0.216908, -0.974810,
		28.758606, 44.146259, 36.258358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092131, 43.933369, 36.760651>,  <28.794949, 43.994427, 36.940723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092131, 43.933369, 36.760651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326359, 43.894230, 36.438774>,  <28.466896, 43.870747, 36.245647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326359, 43.894230, 36.438774>,  <28.092131, 43.933369, 36.760651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326359, 43.894230, 36.438774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341881, -0.929893, -0.135711,
		-0.734999, 0.354577, -0.577973,
		0.585572, -0.097850, -0.804693,
		28.502031, 43.864876, 36.197365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729649, 43.421974, 36.340401>,  <28.092131, 43.933369, 36.760651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729649, 43.421974, 36.340401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094744, 43.439209, 36.177895>,  <28.313801, 43.449551, 36.080391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094744, 43.439209, 36.177895>,  <27.729649, 43.421974, 36.340401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094744, 43.439209, 36.177895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152222, -0.886951, -0.436058,
		-0.379123, 0.459850, -0.802997,
		0.912740, 0.043086, -0.406262,
		28.368567, 43.452133, 36.056015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672535, 43.132614, 35.682690>,  <27.729649, 43.421974, 36.340401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672535, 43.132614, 35.682690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062107, 43.102859, 35.768414>,  <28.295851, 43.085007, 35.819847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062107, 43.102859, 35.768414>,  <27.672535, 43.132614, 35.682690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062107, 43.102859, 35.768414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033164, -0.887867, -0.458904,
		0.224417, 0.454047, -0.862252,
		0.973929, -0.074390, 0.214311,
		28.354286, 43.080544, 35.832706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031279, 42.929562, 35.022243>,  <27.672535, 43.132614, 35.682690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031279, 42.929562, 35.022243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276571, 42.829853, 35.322060>,  <28.423746, 42.770027, 35.501949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276571, 42.829853, 35.322060>,  <28.031279, 42.929562, 35.022243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276571, 42.829853, 35.322060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035132, -0.939353, -0.341147,
		0.789121, 0.235535, -0.567284,
		0.613232, -0.249276, 0.749538,
		28.460541, 42.755070, 35.546921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699104, 42.502243, 34.755371>,  <28.031279, 42.929562, 35.022243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699104, 42.502243, 34.755371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685356, 42.387012, 35.138168>,  <28.677107, 42.317875, 35.367847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685356, 42.387012, 35.138168>,  <28.699104, 42.502243, 34.755371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685356, 42.387012, 35.138168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163205, -0.946321, -0.278998,
		0.985993, 0.146596, 0.079541,
		-0.034371, -0.288072, 0.956992,
		28.675045, 42.300591, 35.425266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243582, 42.003944, 34.748074>,  <28.699104, 42.502243, 34.755371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243582, 42.003944, 34.748074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023647, 41.944008, 35.076763>,  <28.891687, 41.908047, 35.273975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023647, 41.944008, 35.076763>,  <29.243582, 42.003944, 34.748074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023647, 41.944008, 35.076763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115907, -0.987948, -0.102591,
		0.827193, 0.038836, 0.560575,
		-0.549835, -0.149837, 0.821724,
		28.858696, 41.899055, 35.323280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620031, 41.440891, 35.169819>,  <29.243582, 42.003944, 34.748074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620031, 41.440891, 35.169819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242476, 41.428940, 35.301384>,  <29.015942, 41.421768, 35.380322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242476, 41.428940, 35.301384>,  <29.620031, 41.440891, 35.169819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242476, 41.428940, 35.301384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087960, -0.982670, 0.163165,
		0.318337, 0.182941, 0.930158,
		-0.943888, -0.029875, 0.328912,
		28.959309, 41.419979, 35.400059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569748, 41.026539, 35.670017>,  <29.620031, 41.440891, 35.169819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569748, 41.026539, 35.670017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176817, 41.024338, 35.595177>,  <28.941059, 41.023018, 35.550274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176817, 41.024338, 35.595177>,  <29.569748, 41.026539, 35.670017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176817, 41.024338, 35.595177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000981, -0.999706, 0.024230,
		-0.187176, 0.023618, 0.982042,
		-0.982326, -0.005498, -0.187098,
		28.882118, 41.022690, 35.539047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302828, 40.523209, 36.105667>,  <29.569748, 41.026539, 35.670017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302828, 40.523209, 36.105667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029837, 40.541939, 35.813908>,  <28.866041, 40.553177, 35.638851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029837, 40.541939, 35.813908>,  <29.302828, 40.523209, 36.105667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029837, 40.541939, 35.813908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014068, -0.998603, -0.050941,
		-0.730769, -0.024505, 0.682185,
		-0.682480, 0.046823, -0.729403,
		28.825092, 40.555984, 35.595085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825834, 39.915924, 36.193890>,  <29.302828, 40.523209, 36.105667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825834, 39.915924, 36.193890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728790, 40.033722, 35.824150>,  <28.670565, 40.104401, 35.602306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728790, 40.033722, 35.824150>,  <28.825834, 39.915924, 36.193890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728790, 40.033722, 35.824150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309950, -0.926403, -0.213794,
		-0.919277, 0.234632, 0.316034,
		-0.242613, 0.294490, -0.924345,
		28.656008, 40.122070, 35.546844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113358, 39.767017, 36.111145>,  <28.825834, 39.915924, 36.193890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113358, 39.767017, 36.111145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274572, 39.785290, 35.745529>,  <28.371302, 39.796253, 35.526157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274572, 39.785290, 35.745529>,  <28.113358, 39.767017, 36.111145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274572, 39.785290, 35.745529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398591, -0.890289, -0.220251,
		-0.823824, 0.453098, -0.340612,
		0.403038, 0.045683, -0.914042,
		28.395483, 39.798996, 35.471317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618185, 39.537815, 35.653103>,  <28.113358, 39.767017, 36.111145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618185, 39.537815, 35.653103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936497, 39.498901, 35.414013>,  <28.127483, 39.475552, 35.270561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936497, 39.498901, 35.414013>,  <27.618185, 39.537815, 35.653103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936497, 39.498901, 35.414013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301395, -0.919714, -0.251568,
		-0.525257, 0.380343, -0.761212,
		0.795780, -0.097288, -0.597720,
		28.175230, 39.469715, 35.234695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332571, 39.292519, 35.004074>,  <27.618185, 39.537815, 35.653103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332571, 39.292519, 35.004074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717272, 39.183075, 35.009346>,  <27.948092, 39.117409, 35.012508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717272, 39.183075, 35.009346>,  <27.332571, 39.292519, 35.004074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717272, 39.183075, 35.009346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258052, -0.921109, -0.291492,
		0.091898, 0.276941, -0.956482,
		0.961750, -0.273610, 0.013183,
		28.005796, 39.100990, 35.013302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445250, 39.043175, 34.429684>,  <27.332571, 39.292519, 35.004074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445250, 39.043175, 34.429684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745378, 38.879940, 34.637714>,  <27.925457, 38.781998, 34.762531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745378, 38.879940, 34.637714>,  <27.445250, 39.043175, 34.429684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745378, 38.879940, 34.637714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125030, -0.860119, -0.494533,
		0.649139, 0.306036, -0.696391,
		0.750324, -0.408090, 0.520073,
		27.970476, 38.757511, 34.793736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009579, 38.796894, 33.906914>,  <27.445250, 39.043175, 34.429684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009579, 38.796894, 33.906914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022245, 38.608284, 34.259426>,  <28.029844, 38.495117, 34.470936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022245, 38.608284, 34.259426>,  <28.009579, 38.796894, 33.906914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022245, 38.608284, 34.259426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114198, -0.877661, -0.465479,
		0.992953, -0.085902, -0.081638,
		0.031665, -0.471522, 0.881286,
		28.031744, 38.466827, 34.523811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604378, 38.420158, 33.932766>,  <28.009579, 38.796894, 33.906914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604378, 38.420158, 33.932766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830832, 38.748726, 33.905170>,  <28.966703, 38.945866, 33.888611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830832, 38.748726, 33.905170>,  <28.604378, 38.420158, 33.932766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830832, 38.748726, 33.905170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815070, -0.570323, -0.101942,
		-0.123084, 0.001481, -0.992395,
		0.566137, 0.821419, -0.068991,
		29.000673, 38.995152, 33.884472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967703, 38.468441, 33.360249>,  <28.604378, 38.420158, 33.932766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967703, 38.468441, 33.360249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189453, 38.665028, 33.628914>,  <29.322504, 38.782978, 33.790112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189453, 38.665028, 33.628914>,  <28.967703, 38.468441, 33.360249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189453, 38.665028, 33.628914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713424, -0.696219, -0.079411,
		0.428597, 0.523204, -0.736588,
		0.554375, 0.491464, 0.671663,
		29.355766, 38.812466, 33.830414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763853, 38.580830, 33.213215>,  <28.967703, 38.468441, 33.360249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763853, 38.580830, 33.213215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651752, 38.545456, 33.595554>,  <29.584492, 38.524231, 33.824959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651752, 38.545456, 33.595554>,  <29.763853, 38.580830, 33.213215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651752, 38.545456, 33.595554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604627, -0.789661, 0.104217,
		0.745577, 0.607137, 0.274771,
		-0.280251, -0.088432, 0.955845,
		29.567677, 38.518925, 33.882309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408770, 38.453358, 33.618599>,  <29.763853, 38.580830, 33.213215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408770, 38.453358, 33.618599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146036, 38.316319, 33.887283>,  <29.988396, 38.234097, 34.048492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146036, 38.316319, 33.887283>,  <30.408770, 38.453358, 33.618599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146036, 38.316319, 33.887283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597615, -0.779747, 0.186684,
		0.459809, 0.524046, 0.716904,
		-0.656835, -0.342594, 0.671712,
		29.948986, 38.213539, 34.088799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668459, 38.374256, 34.371487>,  <30.408770, 38.453358, 33.618599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668459, 38.374256, 34.371487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368034, 38.121090, 34.296310>,  <30.187780, 37.969189, 34.251205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368034, 38.121090, 34.296310>,  <30.668459, 38.374256, 34.371487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368034, 38.121090, 34.296310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576682, -0.767480, 0.280024,
		-0.321475, 0.101932, 0.941416,
		-0.751061, -0.632918, -0.187943,
		30.142715, 37.931213, 34.239929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540623, 38.024040, 34.968838>,  <30.668459, 38.374256, 34.371487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540623, 38.024040, 34.968838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478300, 37.790253, 34.650311>,  <30.440907, 37.649979, 34.459194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478300, 37.790253, 34.650311>,  <30.540623, 38.024040, 34.968838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478300, 37.790253, 34.650311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729150, -0.611903, 0.306455,
		-0.666382, -0.532884, 0.521507,
		-0.155807, -0.584473, -0.796314,
		30.431559, 37.614910, 34.411415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532991, 37.454060, 35.208965>,  <30.540623, 38.024040, 34.968838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532991, 37.454060, 35.208965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661320, 37.400986, 34.833847>,  <30.738316, 37.369141, 34.608776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661320, 37.400986, 34.833847>,  <30.532991, 37.454060, 35.208965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661320, 37.400986, 34.833847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803709, -0.485736, 0.343674,
		-0.501125, -0.863976, -0.049189,
		0.320819, -0.132690, -0.937800,
		30.757566, 37.361179, 34.552505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082016, 37.002468, 35.220436>,  <30.532991, 37.454060, 35.208965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082016, 37.002468, 35.220436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104631, 37.117626, 34.838039>,  <31.118200, 37.186722, 34.608601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104631, 37.117626, 34.838039>,  <31.082016, 37.002468, 35.220436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104631, 37.117626, 34.838039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927371, -0.369845, -0.056536,
		-0.369845, -0.883362, -0.287900,
		0.056536, 0.287900, -0.955990,
		31.121592, 37.203995, 34.551243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221882, 36.437023, 34.744473>,  <31.082016, 37.002468, 35.220436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221882, 36.437023, 34.744473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375996, 36.770424, 34.586067>,  <31.468464, 36.970463, 34.491024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375996, 36.770424, 34.586067>,  <31.221882, 36.437023, 34.744473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375996, 36.770424, 34.586067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910105, -0.414149, 0.013777,
		-0.152526, -0.365724, -0.918140,
		0.385286, 0.833503, -0.396016,
		31.491581, 37.020473, 34.467262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726250, 36.204300, 34.279819>,  <31.221882, 36.437023, 34.744473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726250, 36.204300, 34.279819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802610, 36.588886, 34.358963>,  <31.848427, 36.819637, 34.406448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802610, 36.588886, 34.358963>,  <31.726250, 36.204300, 34.279819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802610, 36.588886, 34.358963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947994, -0.128280, -0.291292,
		-0.254685, 0.243179, -0.935949,
		0.190900, 0.961462, 0.197861,
		31.859880, 36.877323, 34.418320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966713, 35.754246, 34.802895>,  <31.726250, 36.204300, 34.279819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966713, 35.754246, 34.802895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362453, 35.767891, 34.859497>,  <32.599895, 35.776077, 34.893459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362453, 35.767891, 34.859497>,  <31.966713, 35.754246, 34.802895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362453, 35.767891, 34.859497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118207, -0.378958, 0.917833,
		0.084939, -0.924785, -0.370889,
		0.989350, 0.034118, 0.141505,
		32.659260, 35.778126, 34.901947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233440, 35.031868, 35.054276>,  <31.966713, 35.754246, 34.802895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233440, 35.031868, 35.054276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504494, 35.308029, 35.155586>,  <32.667126, 35.473728, 35.216373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504494, 35.308029, 35.155586>,  <32.233440, 35.031868, 35.054276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504494, 35.308029, 35.155586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060285, -0.395405, 0.916526,
		0.732924, -0.605801, -0.309561,
		0.677634, 0.690406, 0.253281,
		32.707783, 35.515152, 35.231571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741257, 34.721878, 35.470287>,  <32.233440, 35.031868, 35.054276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741257, 34.721878, 35.470287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848076, 35.096622, 35.560600>,  <32.912167, 35.321468, 35.614788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848076, 35.096622, 35.560600>,  <32.741257, 34.721878, 35.470287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848076, 35.096622, 35.560600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034245, -0.243373, 0.969328,
		0.963075, -0.251125, -0.097075,
		0.267048, 0.936859, 0.225787,
		32.928188, 35.377682, 35.628338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406715, 34.608768, 35.895576>,  <32.741257, 34.721878, 35.470287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406715, 34.608768, 35.895576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213547, 34.952568, 35.962566>,  <33.097645, 35.158848, 36.002762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213547, 34.952568, 35.962566>,  <33.406715, 34.608768, 35.895576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213547, 34.952568, 35.962566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261404, -0.324033, 0.909215,
		0.835737, 0.395300, 0.381159,
		-0.482920, 0.859501, 0.167473,
		33.068672, 35.210419, 36.012810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711964, 34.862736, 36.487244>,  <33.406715, 34.608768, 35.895576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711964, 34.862736, 36.487244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355114, 35.039673, 36.450474>,  <33.141003, 35.145836, 36.428413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355114, 35.039673, 36.450474>,  <33.711964, 34.862736, 36.487244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355114, 35.039673, 36.450474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190973, -0.184823, 0.964038,
		0.409443, 0.877597, 0.249360,
		-0.892124, 0.442340, -0.091923,
		33.087475, 35.172375, 36.422897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664017, 35.170231, 37.175251>,  <33.711964, 34.862736, 36.487244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664017, 35.170231, 37.175251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294033, 35.148247, 37.024822>,  <33.072044, 35.135056, 36.934563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294033, 35.148247, 37.024822>,  <33.664017, 35.170231, 37.175251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294033, 35.148247, 37.024822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348645, -0.271269, 0.897140,
		-0.151328, 0.960933, 0.231750,
		-0.924958, -0.054964, -0.376075,
		33.016544, 35.131756, 36.911999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382915, 35.488655, 37.677071>,  <33.664017, 35.170231, 37.175251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382915, 35.488655, 37.677071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104752, 35.293186, 37.466316>,  <32.937855, 35.175907, 37.339863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104752, 35.293186, 37.466316>,  <33.382915, 35.488655, 37.677071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104752, 35.293186, 37.466316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338974, -0.423436, 0.840118,
		-0.633641, 0.762828, 0.128816,
		-0.695411, -0.488668, -0.526885,
		32.896130, 35.146587, 37.308250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783981, 35.635876, 37.970608>,  <33.382915, 35.488655, 37.677071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783981, 35.635876, 37.970608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765781, 35.284492, 37.780350>,  <32.754864, 35.073662, 37.666195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765781, 35.284492, 37.780350>,  <32.783981, 35.635876, 37.970608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765781, 35.284492, 37.780350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231284, -0.453940, 0.860492,
		-0.971822, 0.149158, -0.182522,
		-0.045496, -0.878459, -0.475647,
		32.752132, 35.020954, 37.637657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282948, 35.263062, 38.324623>,  <32.783981, 35.635876, 37.970608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282948, 35.263062, 38.324623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430431, 34.955753, 38.115318>,  <32.518921, 34.771366, 37.989735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430431, 34.955753, 38.115318>,  <32.282948, 35.263062, 38.324623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430431, 34.955753, 38.115318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265749, -0.626554, 0.732671,
		-0.890747, -0.131086, -0.435185,
		0.368710, -0.768275, -0.523265,
		32.541046, 34.725269, 37.958340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728508, 34.761669, 38.317612>,  <32.282948, 35.263062, 38.324623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728508, 34.761669, 38.317612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056835, 34.543358, 38.250214>,  <32.253830, 34.412373, 38.209774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056835, 34.543358, 38.250214>,  <31.728508, 34.761669, 38.317612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056835, 34.543358, 38.250214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327587, -0.691456, 0.643875,
		-0.467917, -0.473307, -0.746347,
		0.820817, -0.545774, -0.168495,
		32.303082, 34.379627, 38.199665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519081, 34.060406, 38.101322>,  <31.728508, 34.761669, 38.317612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519081, 34.060406, 38.101322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893885, 34.057930, 38.241024>,  <32.118767, 34.056446, 38.324844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893885, 34.057930, 38.241024>,  <31.519081, 34.060406, 38.101322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893885, 34.057930, 38.241024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274614, -0.630980, 0.725570,
		0.215884, -0.775774, -0.592932,
		0.937006, -0.006189, 0.349257,
		32.174988, 34.056072, 38.345802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665703, 33.367523, 38.222210>,  <31.519081, 34.060406, 38.101322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665703, 33.367523, 38.222210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873133, 33.614471, 38.458832>,  <31.997591, 33.762642, 38.600803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873133, 33.614471, 38.458832>,  <31.665703, 33.367523, 38.222210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873133, 33.614471, 38.458832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327222, -0.495885, 0.804378,
		0.789942, -0.610698, -0.055135,
		0.518573, 0.617370, 0.591554,
		32.028706, 33.799683, 38.636299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040833, 32.853611, 38.718224>,  <31.665703, 33.367523, 38.222210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040833, 32.853611, 38.718224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039326, 33.219280, 38.880348>,  <32.038422, 33.438683, 38.977623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039326, 33.219280, 38.880348>,  <32.040833, 32.853611, 38.718224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039326, 33.219280, 38.880348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330557, -0.383671, 0.862281,
		0.943778, -0.130730, 0.303631,
		-0.003768, 0.914170, 0.405314,
		32.038197, 33.493530, 39.001942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431919, 32.784153, 39.316711>,  <32.040833, 32.853611, 38.718224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431919, 32.784153, 39.316711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177269, 33.092224, 39.332363>,  <32.024479, 33.277069, 39.341755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177269, 33.092224, 39.332363>,  <32.431919, 32.784153, 39.316711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177269, 33.092224, 39.332363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466472, -0.424991, 0.775749,
		0.614097, 0.475608, 0.629827,
		-0.636623, 0.770182, 0.039127,
		31.986282, 33.323280, 39.344101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267532, 32.901825, 40.069775>,  <32.431919, 32.784153, 39.316711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267532, 32.901825, 40.069775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953806, 33.064022, 39.881977>,  <31.765570, 33.161339, 39.769299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953806, 33.064022, 39.881977>,  <32.267532, 32.901825, 40.069775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953806, 33.064022, 39.881977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616722, -0.427766, 0.660810,
		0.067119, 0.807832, 0.585580,
		-0.784314, 0.405493, -0.469497,
		31.718512, 33.185669, 39.741127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850979, 33.145229, 40.574837>,  <32.267532, 32.901825, 40.069775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850979, 33.145229, 40.574837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578377, 33.124184, 40.282871>,  <31.414816, 33.111557, 40.107693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578377, 33.124184, 40.282871>,  <31.850979, 33.145229, 40.574837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578377, 33.124184, 40.282871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635049, -0.453147, 0.625596,
		-0.363676, 0.889881, 0.275409,
		-0.681507, -0.052616, -0.729918,
		31.373924, 33.108398, 40.063896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232468, 33.207512, 40.883797>,  <31.850979, 33.145229, 40.574837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232468, 33.207512, 40.883797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084219, 33.101791, 40.527641>,  <30.995270, 33.038357, 40.313950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084219, 33.101791, 40.527641>,  <31.232468, 33.207512, 40.883797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084219, 33.101791, 40.527641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794379, -0.406524, 0.451332,
		-0.481252, 0.874575, -0.059292,
		-0.370620, -0.264305, -0.890384,
		30.973034, 33.022499, 40.260525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628002, 33.474327, 40.899071>,  <31.232468, 33.207512, 40.883797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628002, 33.474327, 40.899071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615400, 33.200844, 40.607441>,  <30.607840, 33.036755, 40.432461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615400, 33.200844, 40.607441>,  <30.628002, 33.474327, 40.899071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615400, 33.200844, 40.607441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816017, -0.403625, 0.413767,
		-0.577169, 0.607977, -0.545197,
		-0.031505, -0.683704, -0.729079,
		30.605949, 32.995731, 40.388718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917162, 33.378101, 40.739502>,  <30.628002, 33.474327, 40.899071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917162, 33.378101, 40.739502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086561, 33.049133, 40.587566>,  <30.188202, 32.851753, 40.496407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.086561, 33.049133, 40.587566>,  <29.917162, 33.378101, 40.739502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086561, 33.049133, 40.587566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768545, -0.548149, 0.329957,
		-0.479569, 0.152184, -0.864207,
		0.423500, -0.822419, -0.379835,
		30.213612, 32.802406, 40.473614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398027, 32.936062, 40.480961>,  <29.917162, 33.378101, 40.739502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398027, 32.936062, 40.480961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712307, 32.699413, 40.553249>,  <29.900875, 32.557423, 40.596622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712307, 32.699413, 40.553249>,  <29.398027, 32.936062, 40.480961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712307, 32.699413, 40.553249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618112, -0.739111, 0.267679,
		-0.024794, -0.322019, -0.946408,
		0.785699, -0.591624, 0.180719,
		29.948017, 32.521927, 40.607464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142414, 32.248390, 40.328865>,  <29.398027, 32.936062, 40.480961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142414, 32.248390, 40.328865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465298, 32.224453, 40.563755>,  <29.659027, 32.210091, 40.704689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465298, 32.224453, 40.563755>,  <29.142414, 32.248390, 40.328865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465298, 32.224453, 40.563755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434659, -0.733349, 0.522752,
		0.399355, -0.677213, -0.617979,
		0.807209, -0.059847, 0.587223,
		29.707460, 32.206497, 40.739922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102850, 31.598083, 40.444405>,  <29.142414, 32.248390, 40.328865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102850, 31.598083, 40.444405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351927, 31.697069, 40.741325>,  <29.501373, 31.756460, 40.919479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351927, 31.697069, 40.741325>,  <29.102850, 31.598083, 40.444405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351927, 31.697069, 40.741325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349263, -0.761017, 0.546688,
		0.700192, -0.599678, -0.387450,
		0.622693, 0.247465, 0.742303,
		29.538734, 31.771309, 40.964016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529364, 30.942507, 40.698627>,  <29.102850, 31.598083, 40.444405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529364, 30.942507, 40.698627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543510, 31.208868, 40.996708>,  <29.551998, 31.368685, 41.175556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543510, 31.208868, 40.996708>,  <29.529364, 30.942507, 40.698627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543510, 31.208868, 40.996708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364708, -0.685638, 0.629991,
		0.930450, -0.294061, 0.218611,
		0.035368, 0.665904, 0.745199,
		29.554121, 31.408640, 41.220268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723982, 30.539549, 41.368320>,  <29.529364, 30.942507, 40.698627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723982, 30.539549, 41.368320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591619, 30.893707, 41.498905>,  <29.512201, 31.106201, 41.577255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591619, 30.893707, 41.498905>,  <29.723982, 30.539549, 41.368320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591619, 30.893707, 41.498905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124876, -0.383995, 0.914852,
		0.935365, 0.261963, 0.237630,
		-0.330906, 0.885395, 0.326462,
		29.492348, 31.159327, 41.596844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083725, 30.702238, 41.992615>,  <29.723982, 30.539549, 41.368320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083725, 30.702238, 41.992615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749031, 30.919867, 42.017483>,  <29.548216, 31.050444, 42.032402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749031, 30.919867, 42.017483>,  <30.083725, 30.702238, 41.992615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749031, 30.919867, 42.017483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181515, -0.382664, 0.905881,
		0.516652, 0.746697, 0.418944,
		-0.836733, 0.544070, 0.062167,
		29.498011, 31.083088, 42.036133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035423, 30.918432, 42.669270>,  <30.083725, 30.702238, 41.992615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035423, 30.918432, 42.669270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678274, 30.917948, 42.489143>,  <29.463985, 30.917658, 42.381069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678274, 30.917948, 42.489143>,  <30.035423, 30.918432, 42.669270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678274, 30.917948, 42.489143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432036, -0.279706, 0.857385,
		-0.126993, 0.960085, 0.249218,
		-0.892871, -0.001211, -0.450312,
		29.410414, 30.917583, 42.354050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623312, 31.236816, 43.195103>,  <30.035423, 30.918432, 42.669270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623312, 31.236816, 43.195103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369131, 31.037191, 42.959427>,  <29.216623, 30.917418, 42.818024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369131, 31.037191, 42.959427>,  <29.623312, 31.236816, 43.195103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369131, 31.037191, 42.959427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447809, -0.383423, 0.807746,
		-0.629022, 0.777127, 0.020163,
		-0.635452, -0.499060, -0.589185,
		29.178495, 30.887474, 42.782673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071798, 31.227236, 43.609261>,  <29.623312, 31.236816, 43.195103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071798, 31.227236, 43.609261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942085, 30.959084, 43.342297>,  <28.864258, 30.798193, 43.182117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942085, 30.959084, 43.342297>,  <29.071798, 31.227236, 43.609261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942085, 30.959084, 43.342297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423875, -0.527763, 0.736068,
		-0.845678, 0.521590, -0.113014,
		-0.324281, -0.670381, -0.667406,
		28.844801, 30.757969, 43.142075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369627, 31.136438, 43.710262>,  <29.071798, 31.227236, 43.609261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369627, 31.136438, 43.710262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485880, 30.803303, 43.521835>,  <28.555632, 30.603420, 43.408779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485880, 30.803303, 43.521835>,  <28.369627, 31.136438, 43.710262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485880, 30.803303, 43.521835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350163, -0.550748, 0.757669,
		-0.890459, -0.055252, -0.451696,
		0.290633, -0.832841, -0.471071,
		28.573071, 30.553450, 43.380512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884354, 30.697182, 43.930691>,  <28.369627, 31.136438, 43.710262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884354, 30.697182, 43.930691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144794, 30.445610, 43.760742>,  <28.301060, 30.294666, 43.658772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144794, 30.445610, 43.760742>,  <27.884354, 30.697182, 43.930691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144794, 30.445610, 43.760742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324904, -0.736859, 0.592855,
		-0.685929, -0.247971, -0.684114,
		0.651106, -0.628927, -0.424866,
		28.340124, 30.256931, 43.633282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485096, 30.094801, 43.654152>,  <27.884354, 30.697182, 43.930691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485096, 30.094801, 43.654152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858198, 29.980093, 43.741539>,  <28.082060, 29.911268, 43.793972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858198, 29.980093, 43.741539>,  <27.485096, 30.094801, 43.654152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858198, 29.980093, 43.741539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355185, -0.834773, 0.420712,
		0.061726, -0.470019, -0.880495,
		0.932756, -0.286770, 0.218470,
		28.138025, 29.894062, 43.807079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700851, 29.471729, 43.447670>,  <27.485096, 30.094801, 43.654152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700851, 29.471729, 43.447670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955742, 29.502260, 43.754425>,  <28.108677, 29.520578, 43.938477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955742, 29.502260, 43.754425>,  <27.700851, 29.471729, 43.447670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955742, 29.502260, 43.754425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491086, -0.726681, 0.480384,
		0.593948, -0.682721, -0.425579,
		0.637228, 0.076327, 0.766886,
		28.146910, 29.525158, 43.984489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828880, 28.761034, 43.628075>,  <27.700851, 29.471729, 43.447670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828880, 28.761034, 43.628075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941845, 28.978645, 43.944118>,  <28.009623, 29.109213, 44.133747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941845, 28.978645, 43.944118>,  <27.828880, 28.761034, 43.628075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941845, 28.978645, 43.944118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309737, -0.727812, 0.611844,
		0.907914, -0.417517, -0.037036,
		0.282411, 0.544030, 0.790111,
		28.026567, 29.141853, 44.181152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293545, 28.348322, 43.958199>,  <27.828880, 28.761034, 43.628075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293545, 28.348322, 43.958199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136040, 28.603136, 44.223270>,  <28.041536, 28.756023, 44.382313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136040, 28.603136, 44.223270>,  <28.293545, 28.348322, 43.958199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136040, 28.603136, 44.223270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344188, -0.770651, 0.536313,
		0.852342, -0.016906, 0.522712,
		-0.393762, 0.637033, 0.662677,
		28.017912, 28.794247, 44.422073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608433, 28.196522, 44.667820>,  <28.293545, 28.348322, 43.958199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608433, 28.196522, 44.667820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231359, 28.329874, 44.673542>,  <28.005116, 28.409885, 44.676975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231359, 28.329874, 44.673542>,  <28.608433, 28.196522, 44.667820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231359, 28.329874, 44.673542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307222, -0.883857, 0.352721,
		0.130233, 0.328110, 0.935619,
		-0.942685, 0.333379, 0.014304,
		27.948555, 28.429888, 44.677834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232580, 27.672626, 44.970074>,  <28.608433, 28.196522, 44.667820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232580, 27.672626, 44.970074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926903, 27.930515, 44.962662>,  <27.743496, 28.085249, 44.958214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926903, 27.930515, 44.962662>,  <28.232580, 27.672626, 44.970074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926903, 27.930515, 44.962662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605486, -0.707192, 0.365057,
		0.222253, 0.290196, 0.930801,
		-0.764193, 0.644722, -0.018534,
		27.697645, 28.123932, 44.957100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934183, 27.773499, 45.713795>,  <28.232580, 27.672626, 44.970074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934183, 27.773499, 45.713795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650938, 27.856977, 45.443974>,  <27.480991, 27.907064, 45.282082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650938, 27.856977, 45.443974>,  <27.934183, 27.773499, 45.713795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650938, 27.856977, 45.443974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565425, -0.739804, 0.364670,
		-0.422929, 0.639636, 0.641869,
		-0.708114, 0.208699, -0.674551,
		27.438503, 27.919588, 45.241608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305147, 27.699890, 46.110153>,  <27.934183, 27.773499, 45.713795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305147, 27.699890, 46.110153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184807, 27.633387, 45.734528>,  <27.112602, 27.593485, 45.509151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184807, 27.633387, 45.734528>,  <27.305147, 27.699890, 46.110153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184807, 27.633387, 45.734528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631062, -0.703563, 0.326741,
		-0.715016, 0.690910, 0.106748,
		-0.300853, -0.166260, -0.939066,
		27.094551, 27.583509, 45.452808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486902, 27.784544, 46.038860>,  <27.305147, 27.699890, 46.110153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486902, 27.784544, 46.038860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618143, 27.562132, 45.733395>,  <26.696888, 27.428684, 45.550117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618143, 27.562132, 45.733395>,  <26.486902, 27.784544, 46.038860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618143, 27.562132, 45.733395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735798, -0.657406, 0.162535,
		-0.592411, 0.508574, -0.624822,
		0.328101, -0.556031, -0.763663,
		26.716574, 27.395323, 45.504295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942551, 27.583876, 45.603596>,  <26.486902, 27.784544, 46.038860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942551, 27.583876, 45.603596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234379, 27.311901, 45.633034>,  <26.409475, 27.148716, 45.650696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234379, 27.311901, 45.633034>,  <25.942551, 27.583876, 45.603596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234379, 27.311901, 45.633034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678469, -0.706021, 0.203012,
		-0.086075, -0.198044, -0.976407,
		0.729569, -0.679936, 0.073596,
		26.453249, 27.107920, 45.655113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701826, 26.986645, 45.195999>,  <25.942551, 27.583876, 45.603596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701826, 26.986645, 45.195999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950094, 26.893082, 45.495346>,  <26.099056, 26.836943, 45.674953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950094, 26.893082, 45.495346>,  <25.701826, 26.986645, 45.195999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950094, 26.893082, 45.495346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644100, -0.696376, 0.316537,
		0.447105, -0.678489, -0.582881,
		0.620671, -0.233909, 0.748368,
		26.136295, 26.822908, 45.719856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106564, 26.268896, 45.178989>,  <25.701826, 26.986645, 45.195999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106564, 26.268896, 45.178989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035355, 26.406946, 45.547596>,  <25.992630, 26.489777, 45.768761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035355, 26.406946, 45.547596>,  <26.106564, 26.268896, 45.178989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035355, 26.406946, 45.547596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282017, -0.915088, 0.288236,
		0.942749, -0.208572, 0.260236,
		-0.178021, 0.345125, 0.921519,
		25.981949, 26.510485, 45.824051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378836, 25.850508, 45.720409>,  <26.106564, 26.268896, 45.178989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378836, 25.850508, 45.720409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043581, 26.049118, 45.810734>,  <25.842428, 26.168283, 45.864929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043581, 26.049118, 45.810734>,  <26.378836, 25.850508, 45.720409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043581, 26.049118, 45.810734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438277, -0.859469, 0.263108,
		0.324721, 0.121550, 0.937967,
		-0.838134, 0.496526, 0.225815,
		25.792141, 26.198076, 45.878479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139921, 25.794373, 46.499718>,  <26.378836, 25.850508, 45.720409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.139921, 25.794373, 46.499718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845133, 25.800638, 46.229420>,  <25.668259, 25.804398, 46.067242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845133, 25.800638, 46.229420>,  <26.139921, 25.794373, 46.499718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845133, 25.800638, 46.229420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365094, -0.850574, 0.378458,
		-0.568840, 0.525622, 0.632568,
		-0.736972, 0.015665, -0.675742,
		25.624041, 25.805338, 46.026699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350986, 25.164154, 46.888306>,  <26.139921, 25.794373, 46.499718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350986, 25.164154, 46.888306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104856, 25.475840, 46.935974>,  <25.957178, 25.662851, 46.964577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104856, 25.475840, 46.935974>,  <26.350986, 25.164154, 46.888306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104856, 25.475840, 46.935974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714152, -0.487060, -0.502752,
		-0.333707, -0.394464, 0.856176,
		-0.615327, 0.779212, 0.119172,
		25.920259, 25.709602, 46.971725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001705, 25.608955, 46.747341>,  <26.350986, 25.164154, 46.888306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001705, 25.608955, 46.747341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376925, 25.505596, 46.839680>,  <27.602057, 25.443581, 46.895084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376925, 25.505596, 46.839680>,  <27.001705, 25.608955, 46.747341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376925, 25.505596, 46.839680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047744, -0.563493, -0.824740,
		0.343194, 0.784669, -0.516248,
		0.938050, -0.258398, 0.230851,
		27.658340, 25.428078, 46.908936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442282, 25.703939, 46.120758>,  <27.001705, 25.608955, 46.747341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442282, 25.703939, 46.120758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572878, 25.417511, 46.367542>,  <27.651236, 25.245653, 46.515614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572878, 25.417511, 46.367542>,  <27.442282, 25.703939, 46.120758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572878, 25.417511, 46.367542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040657, -0.641490, -0.766053,
		0.944326, 0.275192, -0.180326,
		0.326489, -0.716072, 0.616964,
		27.670824, 25.202690, 46.552631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456221, 25.236221, 45.539677>,  <27.442282, 25.703939, 46.120758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456221, 25.236221, 45.539677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204206, 25.348904, 45.250210>,  <27.052998, 25.416513, 45.076530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204206, 25.348904, 45.250210>,  <27.456221, 25.236221, 45.539677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204206, 25.348904, 45.250210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763697, 0.393713, -0.511622,
		0.140789, -0.875004, -0.463192,
		-0.630036, 0.281708, -0.723668,
		27.015196, 25.433416, 45.033108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612043, 24.763868, 45.027935>,  <27.456221, 25.236221, 45.539677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612043, 24.763868, 45.027935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479435, 25.121349, 44.907017>,  <27.399870, 25.335838, 44.834465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479435, 25.121349, 44.907017>,  <27.612043, 24.763868, 45.027935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479435, 25.121349, 44.907017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865132, 0.160154, -0.475287,
		-0.376352, -0.419097, -0.826267,
		-0.331521, 0.893705, -0.302300,
		27.379978, 25.389462, 44.816326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851778, 24.924524, 44.318695>,  <27.612043, 24.763868, 45.027935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851778, 24.924524, 44.318695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750805, 25.285990, 44.457069>,  <27.690220, 25.502869, 44.540092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750805, 25.285990, 44.457069>,  <27.851778, 24.924524, 44.318695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750805, 25.285990, 44.457069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804255, 0.394731, -0.444253,
		-0.538006, 0.166075, -0.826419,
		-0.252434, 0.903663, 0.345934,
		27.675076, 25.557089, 44.560848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820688, 25.372927, 43.764400>,  <27.851778, 24.924524, 44.318695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820688, 25.372927, 43.764400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874456, 25.618917, 44.075203>,  <27.906717, 25.766512, 44.261684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874456, 25.618917, 44.075203>,  <27.820688, 25.372927, 43.764400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874456, 25.618917, 44.075203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670186, 0.521165, -0.528430,
		-0.729919, 0.591769, -0.342093,
		0.134422, 0.614977, 0.777004,
		27.914783, 25.803410, 44.308304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731472, 26.093235, 43.492500>,  <27.820688, 25.372927, 43.764400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731472, 26.093235, 43.492500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949711, 26.145123, 43.823681>,  <28.080654, 26.176254, 44.022388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.949711, 26.145123, 43.823681>,  <27.731472, 26.093235, 43.492500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949711, 26.145123, 43.823681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596328, 0.634058, -0.492304,
		-0.588828, 0.762328, 0.268584,
		0.545595, 0.129718, 0.827949,
		28.113390, 26.184038, 44.072067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816984, 26.776073, 43.550106>,  <27.731472, 26.093235, 43.492500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816984, 26.776073, 43.550106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099981, 26.620451, 43.786102>,  <28.269779, 26.527077, 43.927700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099981, 26.620451, 43.786102>,  <27.816984, 26.776073, 43.550106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099981, 26.620451, 43.786102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688005, 0.570026, -0.449132,
		-0.161573, 0.723674, 0.670962,
		0.707491, -0.389057, 0.589992,
		28.312229, 26.503735, 43.963100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289438, 27.329716, 43.777081>,  <27.816984, 26.776073, 43.550106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289438, 27.329716, 43.777081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469074, 26.972511, 43.788723>,  <28.576857, 26.758188, 43.795708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469074, 26.972511, 43.788723>,  <28.289438, 27.329716, 43.777081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469074, 26.972511, 43.788723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770922, 0.370815, -0.517858,
		0.451662, 0.255000, 0.854972,
		0.449090, -0.893013, 0.029102,
		28.603802, 26.704607, 43.797455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957897, 27.483908, 44.136734>,  <28.289438, 27.329716, 43.777081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957897, 27.483908, 44.136734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993971, 27.130575, 43.952736>,  <29.015615, 26.918575, 43.842339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993971, 27.130575, 43.952736>,  <28.957897, 27.483908, 44.136734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993971, 27.130575, 43.952736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797696, 0.340602, -0.497667,
		0.596279, -0.322051, 0.735347,
		0.090186, -0.883331, -0.459992,
		29.021027, 26.865576, 43.814739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596483, 27.385601, 44.124416>,  <28.957897, 27.483908, 44.136734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596483, 27.385601, 44.124416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513033, 27.127470, 43.830471>,  <29.462963, 26.972591, 43.654102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513033, 27.127470, 43.830471>,  <29.596483, 27.385601, 44.124416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513033, 27.127470, 43.830471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830536, 0.279862, -0.481547,
		0.516416, -0.710796, 0.477581,
		-0.208625, -0.645327, -0.734867,
		29.450445, 26.933872, 43.610012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159763, 26.944180, 44.181900>,  <29.596483, 27.385601, 44.124416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159763, 26.944180, 44.181900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981739, 26.941813, 43.823708>,  <29.874924, 26.940393, 43.608791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981739, 26.941813, 43.823708>,  <30.159763, 26.944180, 44.181900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981739, 26.941813, 43.823708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840457, 0.342421, -0.419976,
		0.309115, -0.939528, -0.147427,
		-0.445061, -0.005915, -0.895481,
		29.848221, 26.940037, 43.555065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682198, 26.612284, 43.800846>,  <30.159763, 26.944180, 44.181900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682198, 26.612284, 43.800846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460457, 26.798721, 43.525036>,  <30.327412, 26.910583, 43.359550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460457, 26.798721, 43.525036>,  <30.682198, 26.612284, 43.800846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460457, 26.798721, 43.525036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816715, 0.464131, -0.342870,
		0.160220, -0.753218, -0.637960,
		-0.554352, 0.466097, -0.689527,
		30.294151, 26.938551, 43.318176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128054, 26.658474, 43.210743>,  <30.682198, 26.612284, 43.800846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128054, 26.658474, 43.210743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828762, 26.910887, 43.128815>,  <30.649187, 27.062334, 43.079659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828762, 26.910887, 43.128815>,  <31.128054, 26.658474, 43.210743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828762, 26.910887, 43.128815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622083, 0.560017, -0.547169,
		-0.230576, -0.536826, -0.811575,
		-0.748230, 0.631031, -0.204824,
		30.604294, 27.100197, 43.067368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129080, 26.721125, 42.511406>,  <31.128054, 26.658474, 43.210743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129080, 26.721125, 42.511406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915051, 27.030699, 42.646889>,  <30.786633, 27.216442, 42.728180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915051, 27.030699, 42.646889>,  <31.129080, 26.721125, 42.511406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915051, 27.030699, 42.646889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519758, 0.617651, -0.590219,
		-0.665995, -0.139762, -0.732746,
		-0.535072, 0.773934, 0.338710,
		30.754528, 27.262878, 42.748501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795712, 27.137600, 41.854156>,  <31.129080, 26.721125, 42.511406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795712, 27.137600, 41.854156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831957, 27.365690, 42.180748>,  <30.853704, 27.502544, 42.376701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831957, 27.365690, 42.180748>,  <30.795712, 27.137600, 41.854156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831957, 27.365690, 42.180748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457865, 0.704210, -0.542631,
		-0.884392, 0.423005, -0.197276,
		0.090612, 0.570224, 0.816477,
		30.859140, 27.536757, 42.425690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604956, 27.748264, 41.645863>,  <30.795712, 27.137600, 41.854156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604956, 27.748264, 41.645863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828167, 27.803123, 41.973228>,  <30.962093, 27.836039, 42.169647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828167, 27.803123, 41.973228>,  <30.604956, 27.748264, 41.645863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828167, 27.803123, 41.973228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613606, 0.595765, -0.518220,
		-0.558654, 0.791362, 0.248297,
		0.558027, 0.137149, 0.818411,
		30.995575, 27.844269, 42.218750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878366, 28.279087, 41.392323>,  <30.604956, 27.748264, 41.645863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878366, 28.279087, 41.392323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103039, 28.233952, 41.720173>,  <31.237843, 28.206871, 41.916882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103039, 28.233952, 41.720173>,  <30.878366, 28.279087, 41.392323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103039, 28.233952, 41.720173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596467, 0.741756, -0.306635,
		-0.573360, 0.661109, 0.483935,
		0.561681, -0.112839, 0.819623,
		31.271544, 28.200100, 41.966061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907156, 28.857668, 41.722095>,  <30.878366, 28.279087, 41.392323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907156, 28.857668, 41.722095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251442, 28.671942, 41.805595>,  <31.458014, 28.560507, 41.855698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251442, 28.671942, 41.805595>,  <30.907156, 28.857668, 41.722095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251442, 28.671942, 41.805595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508831, 0.771682, -0.381574,
		0.016079, 0.434647, 0.900457,
		0.860716, -0.464316, 0.208754,
		31.509657, 28.532646, 41.868221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273792, 29.389824, 41.945221>,  <30.907156, 28.857668, 41.722095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273792, 29.389824, 41.945221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534323, 29.104908, 41.840599>,  <31.690641, 28.933958, 41.777824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534323, 29.104908, 41.840599>,  <31.273792, 29.389824, 41.945221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534323, 29.104908, 41.840599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575892, 0.688484, -0.440839,
		0.494085, 0.136501, 0.858632,
		0.651329, -0.712291, -0.261559,
		31.729721, 28.891220, 41.762131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872339, 29.699223, 42.009846>,  <31.273792, 29.389824, 41.945221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872339, 29.699223, 42.009846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975981, 29.369902, 41.807838>,  <32.038166, 29.172310, 41.686634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975981, 29.369902, 41.807838>,  <31.872339, 29.699223, 42.009846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975981, 29.369902, 41.807838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687282, 0.524532, -0.502503,
		0.678608, -0.216887, 0.701748,
		0.259103, -0.823302, -0.505015,
		32.053711, 29.122911, 41.656334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591335, 29.743311, 41.981415>,  <31.872339, 29.699223, 42.009846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591335, 29.743311, 41.981415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490444, 29.518444, 41.666367>,  <32.429909, 29.383524, 41.477337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490444, 29.518444, 41.666367>,  <32.591335, 29.743311, 41.981415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490444, 29.518444, 41.666367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669403, 0.486396, -0.561532,
		0.698773, -0.668869, 0.253637,
		-0.252223, -0.562169, -0.787623,
		32.414776, 29.349794, 41.430080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226727, 29.687469, 41.648243>,  <32.591335, 29.743311, 41.981415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226727, 29.687469, 41.648243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937626, 29.594084, 41.388054>,  <32.764164, 29.538052, 41.231941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937626, 29.594084, 41.388054>,  <33.226727, 29.687469, 41.648243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937626, 29.594084, 41.388054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477132, 0.512341, -0.714039,
		0.499957, -0.826442, -0.258914,
		-0.722764, -0.233452, -0.650471,
		32.720798, 29.524044, 41.192913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517460, 29.748236, 41.041904>,  <33.226727, 29.687469, 41.648243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517460, 29.748236, 41.041904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136433, 29.772961, 40.922707>,  <32.907818, 29.787796, 40.851189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136433, 29.772961, 40.922707>,  <33.517460, 29.748236, 41.041904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136433, 29.772961, 40.922707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263151, 0.659144, -0.704472,
		0.152873, -0.749472, -0.644144,
		-0.952566, 0.061813, -0.297990,
		32.850662, 29.791504, 40.833309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538815, 29.496775, 40.441200>,  <33.517460, 29.748236, 41.041904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538815, 29.496775, 40.441200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220482, 29.735289, 40.483345>,  <33.029484, 29.878397, 40.508633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220482, 29.735289, 40.483345>,  <33.538815, 29.496775, 40.441200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220482, 29.735289, 40.483345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353817, 0.599128, -0.718234,
		-0.491395, -0.534314, -0.687779,
		-0.795830, 0.596284, 0.105359,
		32.981731, 29.914173, 40.514954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267239, 29.560760, 39.785927>,  <33.538815, 29.496775, 40.441200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267239, 29.560760, 39.785927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147167, 29.878445, 39.997253>,  <33.075123, 30.069056, 40.124050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147167, 29.878445, 39.997253>,  <33.267239, 29.560760, 39.785927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147167, 29.878445, 39.997253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241692, 0.599115, -0.763312,
		-0.922755, -0.101440, -0.371796,
		-0.300179, 0.794211, 0.528320,
		33.057114, 30.116709, 40.155750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888611, 29.912918, 39.351864>,  <33.267239, 29.560760, 39.785927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888611, 29.912918, 39.351864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971634, 30.195166, 39.622868>,  <33.021446, 30.364513, 39.785469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971634, 30.195166, 39.622868>,  <32.888611, 29.912918, 39.351864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971634, 30.195166, 39.622868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252960, 0.630322, -0.733966,
		-0.944950, 0.323723, -0.047665,
		0.207558, 0.705619, 0.677512,
		33.033901, 30.406851, 39.826122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630219, 30.601254, 39.120857>,  <32.888611, 29.912918, 39.351864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630219, 30.601254, 39.120857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855545, 30.721220, 39.428810>,  <32.990742, 30.793200, 39.613583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855545, 30.721220, 39.428810>,  <32.630219, 30.601254, 39.120857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855545, 30.721220, 39.428810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329910, 0.772645, -0.542383,
		-0.757517, 0.559527, 0.336299,
		0.563318, 0.299916, 0.769885,
		33.024540, 30.811195, 39.659775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352371, 31.306822, 39.369076>,  <32.630219, 30.601254, 39.120857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352371, 31.306822, 39.369076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740673, 31.246969, 39.444164>,  <32.973656, 31.211058, 39.489216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740673, 31.246969, 39.444164>,  <32.352371, 31.306822, 39.369076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740673, 31.246969, 39.444164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239989, 0.623703, -0.743909,
		-0.005768, 0.767206, 0.641375,
		0.970758, -0.149632, 0.187719,
		33.031902, 31.202080, 39.500481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597057, 31.944790, 39.385956>,  <32.352371, 31.306822, 39.369076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597057, 31.944790, 39.385956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920918, 31.712461, 39.352230>,  <33.115234, 31.573065, 39.331993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920918, 31.712461, 39.352230>,  <32.597057, 31.944790, 39.385956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920918, 31.712461, 39.352230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320240, 0.557588, -0.765860,
		0.491842, 0.593079, 0.637455,
		0.809653, -0.580821, -0.084318,
		33.163815, 31.538216, 39.326935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213531, 32.421345, 39.398331>,  <32.597057, 31.944790, 39.385956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213531, 32.421345, 39.398331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335415, 32.074406, 39.240921>,  <33.408543, 31.866243, 39.146473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335415, 32.074406, 39.240921>,  <33.213531, 32.421345, 39.398331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335415, 32.074406, 39.240921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475971, 0.496551, -0.725871,
		0.824989, 0.033869, 0.564133,
		0.304705, -0.867346, -0.393529,
		33.426826, 31.814201, 39.122864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905857, 32.442944, 39.252163>,  <33.213531, 32.421345, 39.398331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905857, 32.442944, 39.252163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760017, 32.156162, 39.014496>,  <33.672512, 31.984093, 38.871895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760017, 32.156162, 39.014496>,  <33.905857, 32.442944, 39.252163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760017, 32.156162, 39.014496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390421, 0.461596, -0.796556,
		0.845362, -0.522403, 0.111616,
		-0.364601, -0.716955, -0.594172,
		33.650639, 31.941076, 38.836243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411121, 32.234032, 38.865643>,  <33.905857, 32.442944, 39.252163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411121, 32.234032, 38.865643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083691, 32.116829, 38.668026>,  <33.887230, 32.046505, 38.549458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083691, 32.116829, 38.668026>,  <34.411121, 32.234032, 38.865643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083691, 32.116829, 38.668026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462382, 0.174142, -0.869412,
		0.340778, -0.940117, -0.007068,
		-0.818580, -0.293008, -0.494038,
		33.838116, 32.028927, 38.519814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730095, 31.955606, 38.334923>,  <34.411121, 32.234032, 38.865643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730095, 31.955606, 38.334923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350037, 31.957020, 38.210213>,  <34.122002, 31.957869, 38.135387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350037, 31.957020, 38.210213>,  <34.730095, 31.955606, 38.334923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350037, 31.957020, 38.210213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307778, 0.170675, -0.936025,
		0.049902, -0.985321, -0.163255,
		-0.950149, 0.003537, -0.311777,
		34.064991, 31.958080, 38.116680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784405, 31.616817, 37.756771>,  <34.730095, 31.955606, 38.334923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784405, 31.616817, 37.756771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444523, 31.813776, 37.681355>,  <34.240593, 31.931952, 37.636105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444523, 31.813776, 37.681355>,  <34.784405, 31.616817, 37.756771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444523, 31.813776, 37.681355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366179, 0.293825, -0.882938,
		-0.379358, -0.819276, -0.429970,
		-0.849706, 0.492396, -0.188537,
		34.189610, 31.961494, 37.624794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619381, 31.477060, 37.102062>,  <34.784405, 31.616817, 37.756771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619381, 31.477060, 37.102062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425770, 31.817888, 37.181755>,  <34.309601, 32.022385, 37.229572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425770, 31.817888, 37.181755>,  <34.619381, 31.477060, 37.102062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425770, 31.817888, 37.181755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311165, 0.380400, -0.870903,
		-0.817858, -0.359548, -0.449259,
		-0.484030, 0.852069, 0.199235,
		34.280560, 32.073509, 37.241524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305996, 31.697563, 36.502365>,  <34.619381, 31.477060, 37.102062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305996, 31.697563, 36.502365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334011, 32.028652, 36.725063>,  <34.350819, 32.227306, 36.858685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334011, 32.028652, 36.725063>,  <34.305996, 31.697563, 36.502365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334011, 32.028652, 36.725063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496080, 0.455313, -0.739320,
		-0.865448, 0.327970, -0.378729,
		0.070034, 0.827723, 0.556749,
		34.355022, 32.276970, 36.892090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100861, 32.260372, 36.116688>,  <34.305996, 31.697563, 36.502365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100861, 32.260372, 36.116688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330181, 32.431152, 36.396412>,  <34.467773, 32.533623, 36.564247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330181, 32.431152, 36.396412>,  <34.100861, 32.260372, 36.116688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330181, 32.431152, 36.396412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578902, 0.392918, -0.714485,
		-0.579823, 0.814448, -0.021903,
		0.573304, 0.426954, 0.699308,
		34.502171, 32.559238, 36.606205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296673, 32.879887, 35.882408>,  <34.100861, 32.260372, 36.116688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296673, 32.879887, 35.882408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577072, 32.852573, 36.166363>,  <34.745312, 32.836185, 36.336735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577072, 32.852573, 36.166363>,  <34.296673, 32.879887, 35.882408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577072, 32.852573, 36.166363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704384, 0.222017, -0.674204,
		-0.111570, 0.972649, 0.203732,
		0.700996, -0.068284, 0.709889,
		34.787373, 32.832088, 36.379330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657143, 33.561474, 35.864395>,  <34.296673, 32.879887, 35.882408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657143, 33.561474, 35.864395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887962, 33.290386, 36.046696>,  <35.026455, 33.127735, 36.156075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887962, 33.290386, 36.046696>,  <34.657143, 33.561474, 35.864395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887962, 33.290386, 36.046696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750138, 0.219143, -0.623915,
		0.322965, 0.701906, 0.634840,
		0.577050, -0.677720, 0.455751,
		35.061077, 33.087070, 36.183422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357086, 33.910145, 36.029926>,  <34.657143, 33.561474, 35.864395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357086, 33.910145, 36.029926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390984, 33.511669, 36.021667>,  <35.411324, 33.272583, 36.016712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390984, 33.511669, 36.021667>,  <35.357086, 33.910145, 36.029926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390984, 33.511669, 36.021667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669927, 0.072305, -0.738897,
		0.737574, 0.048782, 0.673502,
		0.084743, -0.996189, -0.020650,
		35.416405, 33.212814, 36.015472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161610, 33.698345, 35.917847>,  <35.357086, 33.910145, 36.029926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161610, 33.698345, 35.917847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958775, 33.371586, 35.807907>,  <35.837074, 33.175529, 35.741943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958775, 33.371586, 35.807907>,  <36.161610, 33.698345, 35.917847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958775, 33.371586, 35.807907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647271, -0.150363, -0.747283,
		0.569125, -0.556842, 0.605000,
		-0.507088, -0.816896, -0.274852,
		35.806648, 33.126518, 35.725452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702778, 33.175529, 35.839691>,  <36.161610, 33.698345, 35.917847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702778, 33.175529, 35.839691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383415, 33.064034, 35.626202>,  <36.191799, 32.997135, 35.498108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383415, 33.064034, 35.626202>,  <36.702778, 33.175529, 35.839691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383415, 33.064034, 35.626202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589044, -0.177826, -0.788292,
		0.124821, -0.943759, 0.306168,
		-0.798403, -0.278742, -0.533719,
		36.143894, 32.980412, 35.466087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945499, 32.571003, 35.494366>,  <36.702778, 33.175529, 35.839691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945499, 32.571003, 35.494366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625378, 32.721558, 35.307671>,  <36.433304, 32.811890, 35.195656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625378, 32.721558, 35.307671>,  <36.945499, 32.571003, 35.494366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625378, 32.721558, 35.307671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449621, -0.138257, -0.882454,
		-0.396674, -0.916088, -0.058583,
		-0.800306, 0.376387, -0.466736,
		36.385284, 32.834473, 35.167648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533890, 32.428066, 35.949581>,  <36.945499, 32.571003, 35.494366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533890, 32.428066, 35.949581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817207, 32.217266, 35.761711>,  <37.987198, 32.090786, 35.648991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817207, 32.217266, 35.761711>,  <37.533890, 32.428066, 35.949581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817207, 32.217266, 35.761711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132314, -0.554434, 0.821642,
		-0.693404, -0.644110, -0.322974,
		0.708296, -0.526996, -0.469671,
		38.029697, 32.059166, 35.620811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339081, 31.681246, 35.664593>,  <37.533890, 32.428066, 35.949581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339081, 31.681246, 35.664593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719051, 31.730104, 35.779633>,  <37.947033, 31.759420, 35.848656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719051, 31.730104, 35.779633>,  <37.339081, 31.681246, 35.664593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719051, 31.730104, 35.779633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098669, -0.756065, 0.647016,
		0.296476, -0.642997, -0.706156,
		0.949929, 0.122149, 0.287599,
		38.004032, 31.766748, 35.865913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738697, 31.008179, 35.715748>,  <37.339081, 31.681246, 35.664593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738697, 31.008179, 35.715748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908722, 31.260778, 35.975143>,  <38.010735, 31.412338, 36.130779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908722, 31.260778, 35.975143>,  <37.738697, 31.008179, 35.715748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908722, 31.260778, 35.975143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197994, -0.634215, 0.747376,
		0.883247, -0.446074, -0.144545,
		0.425057, 0.631498, 0.648488,
		38.036240, 31.450228, 36.169689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198631, 30.591406, 36.163078>,  <37.738697, 31.008179, 35.715748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198631, 30.591406, 36.163078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143810, 30.938780, 36.353672>,  <38.110916, 31.147203, 36.468029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143810, 30.938780, 36.353672>,  <38.198631, 30.591406, 36.163078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143810, 30.938780, 36.353672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274385, -0.495488, 0.824139,
		0.951803, -0.017792, 0.306193,
		-0.137052, 0.868433, 0.476489,
		38.102695, 31.199310, 36.496620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782467, 30.768217, 36.707504>,  <38.198631, 30.591406, 36.163078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782467, 30.768217, 36.707504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437778, 30.939411, 36.816513>,  <38.230965, 31.042128, 36.881920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437778, 30.939411, 36.816513>,  <38.782467, 30.768217, 36.707504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437778, 30.939411, 36.816513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035186, -0.586222, 0.809386,
		0.506165, 0.687874, 0.520217,
		-0.861718, 0.427987, 0.272522,
		38.179264, 31.067808, 36.898270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784615, 30.688545, 37.402531>,  <38.782467, 30.768217, 36.707504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784615, 30.688545, 37.402531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403156, 30.807081, 37.381592>,  <38.174282, 30.878202, 37.369030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403156, 30.807081, 37.381592>,  <38.784615, 30.688545, 37.402531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403156, 30.807081, 37.381592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200750, -0.496901, 0.844268,
		0.224179, 0.815643, 0.533358,
		-0.953647, 0.296338, -0.052345,
		38.117062, 30.895983, 37.365887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675095, 30.883818, 38.022312>,  <38.784615, 30.688545, 37.402531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675095, 30.883818, 38.022312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306816, 30.825661, 37.877441>,  <38.085850, 30.790768, 37.790520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306816, 30.825661, 37.877441>,  <38.675095, 30.883818, 38.022312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306816, 30.825661, 37.877441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222176, -0.567697, 0.792690,
		-0.320857, 0.810297, 0.490377,
		-0.920700, -0.145390, -0.362178,
		38.030605, 30.782043, 37.768787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194736, 31.001047, 38.556984>,  <38.675095, 30.883818, 38.022312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194736, 31.001047, 38.556984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973701, 30.780935, 38.306595>,  <37.841080, 30.648869, 38.156361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973701, 30.780935, 38.306595>,  <38.194736, 31.001047, 38.556984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973701, 30.780935, 38.306595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375278, -0.506339, 0.776394,
		-0.744186, 0.663939, 0.073290,
		-0.552588, -0.550277, -0.625972,
		37.807926, 30.615852, 38.118805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541912, 30.847460, 38.946434>,  <38.194736, 31.001047, 38.556984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541912, 30.847460, 38.946434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537674, 30.575054, 38.653557>,  <37.535130, 30.411612, 38.477829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537674, 30.575054, 38.653557>,  <37.541912, 30.847460, 38.946434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537674, 30.575054, 38.653557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334875, -0.687538, 0.644321,
		-0.942203, 0.252020, -0.220770,
		-0.010594, -0.681012, -0.732196,
		37.534496, 30.370750, 38.433899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885700, 30.584002, 38.833717>,  <37.541912, 30.847460, 38.946434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885700, 30.584002, 38.833717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114613, 30.287245, 38.693947>,  <37.251961, 30.109192, 38.610085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114613, 30.287245, 38.693947>,  <36.885700, 30.584002, 38.833717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114613, 30.287245, 38.693947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493058, -0.651756, 0.576288,
		-0.655293, -0.157496, -0.738773,
		0.572263, -0.741896, -0.349437,
		37.286297, 30.064678, 38.589119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428600, 30.076984, 38.543964>,  <36.885700, 30.584002, 38.833717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428600, 30.076984, 38.543964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771194, 29.886625, 38.623913>,  <36.976753, 29.772409, 38.671883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771194, 29.886625, 38.623913>,  <36.428600, 30.076984, 38.543964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771194, 29.886625, 38.623913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473669, -0.570786, 0.670702,
		-0.205098, -0.669123, -0.714289,
		0.856488, -0.475896, 0.199875,
		37.028141, 29.743856, 38.683876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214703, 29.468786, 38.741520>,  <36.428600, 30.076984, 38.543964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214703, 29.468786, 38.741520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593727, 29.455400, 38.868641>,  <36.821144, 29.447369, 38.944912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593727, 29.455400, 38.868641>,  <36.214703, 29.468786, 38.741520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593727, 29.455400, 38.868641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292554, -0.490971, 0.820585,
		0.128574, -0.870533, -0.475017,
		0.947566, -0.033463, 0.317804,
		36.877998, 29.445362, 38.963982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418961, 28.826336, 38.744553>,  <36.214703, 29.468786, 38.741520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418961, 28.826336, 38.744553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635338, 29.042908, 39.001999>,  <36.765163, 29.172852, 39.156467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635338, 29.042908, 39.001999>,  <36.418961, 28.826336, 38.744553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635338, 29.042908, 39.001999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434943, -0.474890, 0.765052,
		0.719868, -0.693781, -0.021396,
		0.540939, 0.541430, 0.643613,
		36.797619, 29.205338, 39.195084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693298, 28.289494, 39.099815>,  <36.418961, 28.826336, 38.744553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693298, 28.289494, 39.099815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706066, 28.621843, 39.322033>,  <36.713726, 28.821253, 39.455364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706066, 28.621843, 39.322033>,  <36.693298, 28.289494, 39.099815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706066, 28.621843, 39.322033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463922, -0.480008, 0.744559,
		0.885300, -0.281496, 0.370139,
		0.031920, 0.830874, 0.555543,
		36.715641, 28.871105, 39.488697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885674, 27.967436, 39.679783>,  <36.693298, 28.289494, 39.099815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885674, 27.967436, 39.679783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725471, 28.326168, 39.754925>,  <36.629349, 28.541407, 39.800011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725471, 28.326168, 39.754925>,  <36.885674, 27.967436, 39.679783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725471, 28.326168, 39.754925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381314, -0.349550, 0.855812,
		0.833182, 0.271130, 0.481972,
		-0.400509, 0.896830, 0.187853,
		36.605320, 28.595217, 39.811279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993671, 27.965776, 40.367538>,  <36.885674, 27.967436, 39.679783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993671, 27.965776, 40.367538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708416, 28.241835, 40.318329>,  <36.537262, 28.407469, 40.288803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708416, 28.241835, 40.318329>,  <36.993671, 27.965776, 40.367538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708416, 28.241835, 40.318329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525188, -0.409727, 0.745856,
		0.464340, 0.596511, 0.654647,
		-0.713138, 0.690144, -0.123028,
		36.494476, 28.448877, 40.281422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761948, 28.191578, 41.093224>,  <36.993671, 27.965776, 40.367538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761948, 28.191578, 41.093224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474701, 28.299923, 40.836803>,  <36.302353, 28.364929, 40.682953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474701, 28.299923, 40.836803>,  <36.761948, 28.191578, 41.093224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474701, 28.299923, 40.836803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695919, -0.275986, 0.662970,
		0.002652, 0.922207, 0.386687,
		-0.718116, 0.270861, -0.641049,
		36.259266, 28.381182, 40.644489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261208, 28.475187, 41.512665>,  <36.761948, 28.191578, 41.093224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261208, 28.475187, 41.512665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059135, 28.361712, 41.186642>,  <35.937893, 28.293625, 40.991028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059135, 28.361712, 41.186642>,  <36.261208, 28.475187, 41.512665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059135, 28.361712, 41.186642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728267, -0.366605, 0.578988,
		-0.463057, 0.886070, -0.021402,
		-0.505178, -0.283691, -0.815055,
		35.907581, 28.276604, 40.942123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608540, 28.680218, 41.596710>,  <36.261208, 28.475187, 41.512665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608540, 28.680218, 41.596710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559513, 28.389540, 41.326336>,  <35.530098, 28.215132, 41.164112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559513, 28.389540, 41.326336>,  <35.608540, 28.680218, 41.596710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559513, 28.389540, 41.326336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762551, -0.366957, 0.532785,
		-0.635212, 0.580737, -0.509166,
		-0.122566, -0.726696, -0.675937,
		35.522743, 28.171532, 41.123554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966835, 28.728498, 41.379036>,  <35.608540, 28.680218, 41.596710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966835, 28.728498, 41.379036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064140, 28.348579, 41.300339>,  <35.122524, 28.120628, 41.253120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064140, 28.348579, 41.300339>,  <34.966835, 28.728498, 41.379036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064140, 28.348579, 41.300339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790201, -0.311691, 0.527665,
		-0.562498, 0.027105, -0.826354,
		0.243265, -0.949797, -0.196744,
		35.137119, 28.063641, 41.241314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348347, 28.477600, 41.318539>,  <34.966835, 28.728498, 41.379036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348347, 28.477600, 41.318539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574169, 28.152519, 41.376217>,  <34.709663, 27.957470, 41.410824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574169, 28.152519, 41.376217>,  <34.348347, 28.477600, 41.318539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574169, 28.152519, 41.376217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666841, -0.346141, 0.659931,
		-0.486419, -0.468718, -0.737360,
		0.564552, -0.812705, 0.144191,
		34.743534, 27.908709, 41.419476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880203, 27.795839, 41.269035>,  <34.348347, 28.477600, 41.318539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880203, 27.795839, 41.269035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195000, 27.744284, 41.510376>,  <34.383877, 27.713350, 41.655178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195000, 27.744284, 41.510376>,  <33.880203, 27.795839, 41.269035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195000, 27.744284, 41.510376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593938, -0.422931, 0.684374,
		0.166967, -0.896949, -0.409396,
		0.786994, -0.128888, 0.603347,
		34.431099, 27.705618, 41.691380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761932, 27.111231, 41.527790>,  <33.880203, 27.795839, 41.269035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761932, 27.111231, 41.527790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027756, 27.273745, 41.778645>,  <34.187248, 27.371252, 41.929157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027756, 27.273745, 41.778645>,  <33.761932, 27.111231, 41.527790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027756, 27.273745, 41.778645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418955, -0.492366, 0.762923,
		0.618744, -0.769746, -0.156990,
		0.664554, 0.406283, 0.627138,
		34.227123, 27.395630, 41.966785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837090, 26.627153, 42.085529>,  <33.761932, 27.111231, 41.527790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837090, 26.627153, 42.085529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004204, 26.949337, 42.253670>,  <34.104473, 27.142647, 42.354553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004204, 26.949337, 42.253670>,  <33.837090, 26.627153, 42.085529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004204, 26.949337, 42.253670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310194, -0.308408, 0.899258,
		0.853953, -0.506087, 0.121000,
		0.417785, 0.805457, 0.420350,
		34.129539, 27.190973, 42.379776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106827, 26.383152, 42.745594>,  <33.837090, 26.627153, 42.085529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106827, 26.383152, 42.745594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060425, 26.776083, 42.804348>,  <34.032585, 27.011841, 42.839600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060425, 26.776083, 42.804348>,  <34.106827, 26.383152, 42.745594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060425, 26.776083, 42.804348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469480, -0.184548, 0.863441,
		0.875289, 0.031207, 0.482592,
		-0.116006, 0.982328, 0.146882,
		34.025623, 27.070782, 42.848412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238541, 26.465546, 43.426682>,  <34.106827, 26.383152, 42.745594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238541, 26.465546, 43.426682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024605, 26.783895, 43.313175>,  <33.896244, 26.974905, 43.245071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024605, 26.783895, 43.313175>,  <34.238541, 26.465546, 43.426682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024605, 26.783895, 43.313175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621376, -0.142899, 0.770371,
		0.572570, 0.588354, 0.570967,
		-0.534841, 0.795877, -0.283769,
		33.864151, 27.022659, 43.228043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207973, 26.817738, 44.013538>,  <34.238541, 26.465546, 43.426682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207973, 26.817738, 44.013538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912815, 26.932657, 43.769253>,  <33.735722, 27.001610, 43.622681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912815, 26.932657, 43.769253>,  <34.207973, 26.817738, 44.013538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912815, 26.932657, 43.769253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639982, -0.010502, 0.768319,
		0.214325, 0.957783, 0.191617,
		-0.737895, 0.287301, -0.610713,
		33.691448, 27.018848, 43.586040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849270, 27.262526, 44.370903>,  <34.207973, 26.817738, 44.013538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849270, 27.262526, 44.370903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572624, 27.163116, 44.099636>,  <33.406639, 27.103472, 43.936874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572624, 27.163116, 44.099636>,  <33.849270, 27.262526, 44.370903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572624, 27.163116, 44.099636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660969, -0.160773, 0.732988,
		-0.291196, 0.955190, -0.053074,
		-0.691610, -0.248523, -0.678168,
		33.365143, 27.088560, 43.896187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247692, 27.566664, 44.529984>,  <33.849270, 27.262526, 44.370903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247692, 27.566664, 44.529984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143284, 27.256912, 44.299435>,  <33.080639, 27.071062, 44.161106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143284, 27.256912, 44.299435>,  <33.247692, 27.566664, 44.529984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143284, 27.256912, 44.299435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715210, -0.245873, 0.654233,
		-0.648338, 0.582998, -0.489665,
		-0.261021, -0.774377, -0.576375,
		33.064976, 27.024599, 44.126522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477039, 27.593815, 44.455647>,  <33.247692, 27.566664, 44.529984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477039, 27.593815, 44.455647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566338, 27.215212, 44.362450>,  <32.619915, 26.988050, 44.306534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566338, 27.215212, 44.362450>,  <32.477039, 27.593815, 44.455647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566338, 27.215212, 44.362450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795667, -0.315022, 0.517372,
		-0.563094, 0.069880, -0.823433,
		0.223246, -0.946508, -0.232988,
		32.633312, 26.931259, 44.292553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867575, 27.368681, 44.257366>,  <32.477039, 27.593815, 44.455647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867575, 27.368681, 44.257366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098705, 27.060736, 44.365753>,  <32.237385, 26.875969, 44.430786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098705, 27.060736, 44.365753>,  <31.867575, 27.368681, 44.257366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098705, 27.060736, 44.365753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711159, -0.312030, 0.629992,
		-0.400459, -0.556728, -0.727796,
		0.577828, -0.769865, 0.270967,
		32.272053, 26.829777, 44.447044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387377, 26.891909, 44.415276>,  <31.867575, 27.368681, 44.257366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387377, 26.891909, 44.415276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719063, 26.775303, 44.606033>,  <31.918074, 26.705339, 44.720486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719063, 26.775303, 44.606033>,  <31.387377, 26.891909, 44.415276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719063, 26.775303, 44.606033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554711, -0.324559, 0.766131,
		-0.068559, -0.899823, -0.430835,
		0.829213, -0.291514, 0.476890,
		31.967827, 26.687849, 44.749100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301247, 26.226717, 44.702480>,  <31.387377, 26.891909, 44.415276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301247, 26.226717, 44.702480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597589, 26.379261, 44.923641>,  <31.775394, 26.470787, 45.056339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597589, 26.379261, 44.923641>,  <31.301247, 26.226717, 44.702480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597589, 26.379261, 44.923641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451132, -0.327329, 0.830262,
		0.497608, -0.864535, -0.070461,
		0.740855, 0.381358, 0.552902,
		31.819845, 26.493668, 45.089512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398569, 25.769585, 45.127914>,  <31.301247, 26.226717, 44.702480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398569, 25.769585, 45.127914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573483, 26.076216, 45.316017>,  <31.678431, 26.260195, 45.428879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573483, 26.076216, 45.316017>,  <31.398569, 25.769585, 45.127914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573483, 26.076216, 45.316017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256818, -0.394682, 0.882196,
		0.861875, -0.506539, 0.024283,
		0.437283, 0.766579, 0.470255,
		31.704668, 26.306190, 45.457092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741663, 25.505644, 45.741871>,  <31.398569, 25.769585, 45.127914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741663, 25.505644, 45.741871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713737, 25.899090, 45.808361>,  <31.696981, 26.135157, 45.848255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713737, 25.899090, 45.808361>,  <31.741663, 25.505644, 45.741871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713737, 25.899090, 45.808361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407498, -0.180217, 0.895247,
		0.910534, -0.005234, 0.413402,
		-0.069816, 0.983613, 0.166227,
		31.692793, 26.194174, 45.858231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839670, 25.514099, 46.491283>,  <31.741663, 25.505644, 45.741871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839670, 25.514099, 46.491283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718096, 25.888584, 46.420712>,  <31.645151, 26.113276, 46.378368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718096, 25.888584, 46.420712>,  <31.839670, 25.514099, 46.491283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718096, 25.888584, 46.420712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322948, 0.072979, 0.943599,
		0.896285, 0.343772, 0.280167,
		-0.303937, 0.936213, -0.176431,
		31.626915, 26.169449, 46.367783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012791, 25.942642, 47.102890>,  <31.839670, 25.514099, 46.491283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012791, 25.942642, 47.102890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707418, 26.106157, 46.902866>,  <31.524195, 26.204266, 46.782852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707418, 26.106157, 46.902866>,  <32.012791, 25.942642, 47.102890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707418, 26.106157, 46.902866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502427, 0.110660, 0.857509,
		0.405874, 0.905897, 0.120904,
		-0.763435, 0.408786, -0.500061,
		31.478388, 26.228792, 46.752850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668724, 26.477104, 47.505825>,  <32.012791, 25.942642, 47.102890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668724, 26.477104, 47.505825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434761, 26.296043, 47.236607>,  <31.294384, 26.187407, 47.075077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434761, 26.296043, 47.236607>,  <31.668724, 26.477104, 47.505825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434761, 26.296043, 47.236607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667217, -0.203315, 0.716579,
		-0.461202, 0.868198, -0.183098,
		-0.584906, -0.452654, -0.673045,
		31.259289, 26.160248, 47.034695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825470, 27.148813, 48.023865>,  <31.668724, 26.477104, 47.505825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825470, 27.148813, 48.023865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804201, 27.496986, 48.219627>,  <31.791439, 27.705891, 48.337086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804201, 27.496986, 48.219627>,  <31.825470, 27.148813, 48.023865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804201, 27.496986, 48.219627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467542, 0.454767, -0.758018,
		-0.882370, 0.188514, -0.431145,
		-0.053174, 0.870431, 0.489410,
		31.788248, 27.758116, 48.366451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564602, 27.581404, 47.595219>,  <31.825470, 27.148813, 48.023865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564602, 27.581404, 47.595219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718267, 27.841927, 47.856972>,  <31.810467, 27.998240, 48.014023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718267, 27.841927, 47.856972>,  <31.564602, 27.581404, 47.595219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718267, 27.841927, 47.856972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256931, 0.605358, -0.753345,
		-0.886794, 0.457540, 0.065217,
		0.384165, 0.651305, 0.654384,
		31.833517, 28.037317, 48.053288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424683, 28.320372, 47.318707>,  <31.564602, 27.581404, 47.595219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424683, 28.320372, 47.318707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736626, 28.314980, 47.569031>,  <31.923792, 28.311745, 47.719227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736626, 28.314980, 47.569031>,  <31.424683, 28.320372, 47.318707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736626, 28.314980, 47.569031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514390, 0.583497, -0.628438,
		-0.356690, 0.812003, 0.461977,
		0.779856, -0.013479, 0.625814,
		31.970583, 28.310936, 47.756775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719175, 29.012714, 47.310852>,  <31.424683, 28.320372, 47.318707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719175, 29.012714, 47.310852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012447, 28.793770, 47.472267>,  <32.188412, 28.662403, 47.569118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012447, 28.793770, 47.472267>,  <31.719175, 29.012714, 47.310852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012447, 28.793770, 47.472267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611358, 0.270669, -0.743626,
		0.297805, 0.791919, 0.533082,
		0.733180, -0.547359, 0.403540,
		32.232403, 28.629562, 47.593330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258545, 29.421080, 47.348869>,  <31.719175, 29.012714, 47.310852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258545, 29.421080, 47.348869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424168, 29.057138, 47.359615>,  <32.523540, 28.838774, 47.366062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424168, 29.057138, 47.359615>,  <32.258545, 29.421080, 47.348869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424168, 29.057138, 47.359615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657118, 0.278357, -0.700510,
		0.629884, 0.307704, 0.713137,
		0.414056, -0.909855, 0.026865,
		32.548386, 28.784182, 47.367676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944424, 29.550211, 47.234150>,  <32.258545, 29.421080, 47.348869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944424, 29.550211, 47.234150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916027, 29.160875, 47.146908>,  <32.898987, 28.927275, 47.094563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916027, 29.160875, 47.146908>,  <32.944424, 29.550211, 47.234150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916027, 29.160875, 47.146908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705533, 0.105568, -0.700769,
		0.705112, -0.203630, 0.679229,
		-0.070993, -0.973340, -0.218105,
		32.894730, 28.868874, 47.081478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574696, 29.328949, 47.313961>,  <32.944424, 29.550211, 47.234150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574696, 29.328949, 47.313961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373993, 29.086668, 47.066940>,  <33.253571, 28.941299, 46.918728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373993, 29.086668, 47.066940>,  <33.574696, 29.328949, 47.313961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373993, 29.086668, 47.066940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740334, 0.068539, -0.668736,
		0.447380, -0.792735, 0.414031,
		-0.501753, -0.605700, -0.617552,
		33.223469, 28.904959, 46.881676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144787, 28.880981, 47.096695>,  <33.574696, 29.328949, 47.313961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144787, 28.880981, 47.096695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840958, 28.852879, 46.838047>,  <33.658661, 28.836018, 46.682858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840958, 28.852879, 46.838047>,  <34.144787, 28.880981, 47.096695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840958, 28.852879, 46.838047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647696, 0.009206, -0.761843,
		0.059479, -0.997486, 0.038515,
		-0.759573, -0.070260, -0.646616,
		33.613087, 28.831800, 46.644062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282772, 28.292637, 46.705757>,  <34.144787, 28.880981, 47.096695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282772, 28.292637, 46.705757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040520, 28.499710, 46.464024>,  <33.895168, 28.623953, 46.318985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040520, 28.499710, 46.464024>,  <34.282772, 28.292637, 46.705757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040520, 28.499710, 46.464024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696841, -0.021660, -0.716898,
		-0.384215, -0.855299, -0.347624,
		-0.605633, 0.517681, -0.604330,
		33.858829, 28.655014, 46.282726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255005, 27.924517, 46.047451>,  <34.282772, 28.292637, 46.705757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255005, 27.924517, 46.047451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120724, 28.289429, 45.953602>,  <34.040154, 28.508375, 45.897293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120724, 28.289429, 45.953602>,  <34.255005, 27.924517, 46.047451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120724, 28.289429, 45.953602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706315, 0.078988, -0.703476,
		-0.623234, -0.401880, -0.670873,
		-0.335704, 0.912279, -0.234626,
		34.020012, 28.563112, 45.883213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137932, 27.898602, 45.294907>,  <34.255005, 27.924517, 46.047451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137932, 27.898602, 45.294907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147831, 28.290211, 45.375797>,  <34.153770, 28.525177, 45.424332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147831, 28.290211, 45.375797>,  <34.137932, 27.898602, 45.294907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147831, 28.290211, 45.375797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637835, 0.140302, -0.757285,
		-0.769775, 0.147732, -0.620984,
		0.024750, 0.979025, 0.202230,
		34.155254, 28.583918, 45.436466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825993, 28.366308, 44.795460>,  <34.137932, 27.898602, 45.294907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825993, 28.366308, 44.795460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114834, 28.570215, 44.982525>,  <34.288139, 28.692560, 45.094765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114834, 28.570215, 44.982525>,  <33.825993, 28.366308, 44.795460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114834, 28.570215, 44.982525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537239, 0.012655, -0.843335,
		-0.435824, 0.860219, -0.264729,
		0.722102, 0.509768, 0.467659,
		34.331463, 28.723146, 45.122822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051235, 28.848890, 44.208561>,  <33.825993, 28.366308, 44.795460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051235, 28.848890, 44.208561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327106, 28.914534, 44.490669>,  <34.492630, 28.953920, 44.659935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327106, 28.914534, 44.490669>,  <34.051235, 28.848890, 44.208561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327106, 28.914534, 44.490669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677079, 0.199151, -0.708451,
		-0.256719, 0.966130, 0.026236,
		0.689681, 0.164109, 0.705272,
		34.534012, 28.963766, 44.702251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387680, 29.437189, 44.018345>,  <34.051235, 28.848890, 44.208561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387680, 29.437189, 44.018345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653496, 29.270496, 44.266445>,  <34.812984, 29.170481, 44.415306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653496, 29.270496, 44.266445>,  <34.387680, 29.437189, 44.018345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653496, 29.270496, 44.266445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746139, 0.324823, -0.581177,
		0.040723, 0.849014, 0.526799,
		0.664544, -0.416732, 0.620254,
		34.852859, 29.145477, 44.452522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903721, 30.027805, 44.138660>,  <34.387680, 29.437189, 44.018345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903721, 30.027805, 44.138660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037018, 29.655487, 44.198753>,  <35.116997, 29.432096, 44.234810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037018, 29.655487, 44.198753>,  <34.903721, 30.027805, 44.138660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037018, 29.655487, 44.198753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843316, 0.223002, -0.488966,
		0.421624, 0.289640, 0.859268,
		0.333243, -0.930795, 0.150235,
		35.136990, 29.376249, 44.243824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514957, 30.072130, 44.362274>,  <34.903721, 30.027805, 44.138660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514957, 30.072130, 44.362274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507576, 29.714441, 44.183376>,  <35.503147, 29.499828, 44.076038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507576, 29.714441, 44.183376>,  <35.514957, 30.072130, 44.362274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507576, 29.714441, 44.183376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775966, 0.269277, -0.570409,
		0.630505, -0.357571, 0.688917,
		-0.018453, -0.894222, -0.447243,
		35.502041, 29.446175, 44.049202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215603, 29.940311, 44.417431>,  <35.514957, 30.072130, 44.362274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215603, 29.940311, 44.417431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075932, 29.685299, 44.142731>,  <35.992126, 29.532291, 43.977909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075932, 29.685299, 44.142731>,  <36.215603, 29.940311, 44.417431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075932, 29.685299, 44.142731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797366, 0.182821, -0.575139,
		0.492220, -0.748420, 0.444507,
		-0.349180, -0.637530, -0.686752,
		35.971176, 29.494040, 43.936707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835747, 29.425123, 44.204227>,  <36.215603, 29.940311, 44.417431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835747, 29.425123, 44.204227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590603, 29.413063, 43.888382>,  <36.443516, 29.405827, 43.698875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590603, 29.413063, 43.888382>,  <36.835747, 29.425123, 44.204227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590603, 29.413063, 43.888382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760456, 0.249034, -0.599740,
		0.214722, -0.968026, -0.129697,
		-0.612863, -0.030148, -0.789614,
		36.406746, 29.404018, 43.651497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185608, 29.122210, 43.586227>,  <36.835747, 29.425123, 44.204227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185608, 29.122210, 43.586227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879051, 29.288469, 43.390320>,  <36.695118, 29.388226, 43.272774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879051, 29.288469, 43.390320>,  <37.185608, 29.122210, 43.586227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879051, 29.288469, 43.390320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607544, 0.221372, -0.762814,
		-0.208642, -0.882173, -0.422183,
		-0.766394, 0.415650, -0.489772,
		36.649132, 29.413164, 43.243389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269352, 28.931255, 42.770580>,  <37.185608, 29.122210, 43.586227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269352, 28.931255, 42.770580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017326, 29.241285, 42.751507>,  <36.866112, 29.427303, 42.740063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017326, 29.241285, 42.751507>,  <37.269352, 28.931255, 42.770580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017326, 29.241285, 42.751507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253980, 0.147660, -0.955872,
		-0.733834, -0.614371, -0.289890,
		-0.630065, 0.775077, -0.047680,
		36.828308, 29.473808, 42.737202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770397, 28.874342, 42.208344>,  <37.269352, 28.931255, 42.770580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770397, 28.874342, 42.208344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791439, 29.267910, 42.276619>,  <36.804066, 29.504051, 42.317585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791439, 29.267910, 42.276619>,  <36.770397, 28.874342, 42.208344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791439, 29.267910, 42.276619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344255, 0.142578, -0.927987,
		-0.937401, 0.107578, -0.331219,
		0.052607, 0.983920, 0.170687,
		36.807220, 29.563086, 42.327824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358517, 29.281733, 41.616165>,  <36.770397, 28.874342, 42.208344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358517, 29.281733, 41.616165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623047, 29.529713, 41.785076>,  <36.781765, 29.678501, 41.886421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623047, 29.529713, 41.785076>,  <36.358517, 29.281733, 41.616165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623047, 29.529713, 41.785076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335159, 0.259421, -0.905743,
		-0.671061, 0.740517, -0.036221,
		0.661321, 0.619948, 0.422278,
		36.821442, 29.715696, 41.911758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389359, 29.935614, 41.115555>,  <36.358517, 29.281733, 41.616165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389359, 29.935614, 41.115555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714970, 29.960197, 41.346577>,  <36.910336, 29.974947, 41.485191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714970, 29.960197, 41.346577>,  <36.389359, 29.935614, 41.115555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714970, 29.960197, 41.346577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514364, 0.385590, -0.765996,
		-0.269779, 0.920621, 0.282270,
		0.814032, 0.061460, 0.577559,
		36.959179, 29.978636, 41.519844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695812, 30.525822, 40.945145>,  <36.389359, 29.935614, 41.115555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695812, 30.525822, 40.945145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011086, 30.382240, 41.145111>,  <37.200249, 30.296091, 41.265091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011086, 30.382240, 41.145111>,  <36.695812, 30.525822, 40.945145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011086, 30.382240, 41.145111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615434, 0.456532, -0.642511,
		0.002404, 0.814083, 0.580743,
		0.788185, -0.358954, 0.499917,
		37.247540, 30.274553, 41.295086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122337, 31.149590, 41.071213>,  <36.695812, 30.525822, 40.945145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122337, 31.149590, 41.071213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363213, 30.831041, 41.093712>,  <37.507736, 30.639912, 41.107212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363213, 30.831041, 41.093712>,  <37.122337, 31.149590, 41.071213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363213, 30.831041, 41.093712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698858, 0.491762, -0.519392,
		0.385967, 0.352083, 0.852683,
		0.602186, -0.796372, 0.056252,
		37.543869, 30.592131, 41.110588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702843, 31.355097, 41.409454>,  <37.122337, 31.149590, 41.071213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702843, 31.355097, 41.409454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815460, 31.044729, 41.183647>,  <37.883030, 30.858509, 41.048164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815460, 31.044729, 41.183647>,  <37.702843, 31.355097, 41.409454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815460, 31.044729, 41.183647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720726, 0.559396, -0.409426,
		0.633471, -0.291589, 0.716722,
		0.281547, -0.775920, -0.564517,
		37.899925, 30.811953, 41.014294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306530, 31.356483, 41.533077>,  <37.702843, 31.355097, 41.409454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306530, 31.356483, 41.533077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256268, 31.148952, 41.194839>,  <38.226112, 31.024433, 40.991898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256268, 31.148952, 41.194839>,  <38.306530, 31.356483, 41.533077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256268, 31.148952, 41.194839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767388, 0.489366, -0.414290,
		0.628750, -0.700954, 0.336654,
		-0.125652, -0.518829, -0.845593,
		38.218571, 30.993303, 40.941162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981007, 31.201162, 41.262421>,  <38.306530, 31.356483, 41.533077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981007, 31.201162, 41.262421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771091, 31.114422, 40.933163>,  <38.645142, 31.062378, 40.735607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771091, 31.114422, 40.933163>,  <38.981007, 31.201162, 41.262421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771091, 31.114422, 40.933163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622372, 0.561973, -0.544830,
		0.580736, -0.798224, -0.159952,
		-0.524785, -0.216853, -0.823150,
		38.613655, 31.049366, 40.686218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457932, 31.001747, 40.648907>,  <38.981007, 31.201162, 41.262421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457932, 31.001747, 40.648907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115852, 31.128969, 40.485210>,  <38.910606, 31.205301, 40.386993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115852, 31.128969, 40.485210>,  <39.457932, 31.001747, 40.648907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115852, 31.128969, 40.485210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501917, 0.705159, -0.500830,
		0.129288, -0.633714, -0.762687,
		-0.855198, 0.318054, -0.409240,
		38.859291, 31.224386, 40.362438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738605, 31.234186, 40.105030>,  <39.457932, 31.001747, 40.648907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738605, 31.234186, 40.105030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371910, 31.393572, 40.093563>,  <39.151894, 31.489204, 40.086681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371910, 31.393572, 40.093563>,  <39.738605, 31.234186, 40.105030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371910, 31.393572, 40.093563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348927, 0.763683, -0.543175,
		-0.194542, -0.507951, -0.839130,
		-0.916735, 0.398465, -0.028669,
		39.096889, 31.513111, 40.084961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452579, 31.363039, 39.367126>,  <39.738605, 31.234186, 40.105030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452579, 31.363039, 39.367126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260292, 31.626509, 39.598660>,  <39.144920, 31.784592, 39.737579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260292, 31.626509, 39.598660>,  <39.452579, 31.363039, 39.367126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260292, 31.626509, 39.598660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302277, 0.744132, -0.595731,
		-0.823125, -0.111413, -0.556824,
		-0.480723, 0.658676, 0.578836,
		39.116074, 31.824112, 39.772312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154415, 31.833168, 38.924885>,  <39.452579, 31.363039, 39.367126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154415, 31.833168, 38.924885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121750, 32.026615, 39.273468>,  <39.102150, 32.142685, 39.482620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121750, 32.026615, 39.273468>,  <39.154415, 31.833168, 38.924885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121750, 32.026615, 39.273468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319399, 0.840964, -0.436765,
		-0.944095, 0.242678, -0.223140,
		-0.081659, 0.483618, 0.871462,
		39.097252, 32.171700, 39.534908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838314, 32.455395, 38.742706>,  <39.154415, 31.833168, 38.924885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838314, 32.455395, 38.742706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036739, 32.503883, 39.086620>,  <39.155796, 32.532978, 39.292969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036739, 32.503883, 39.086620>,  <38.838314, 32.455395, 38.742706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036739, 32.503883, 39.086620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378407, 0.861040, -0.339732,
		-0.781489, 0.493877, 0.381261,
		0.496067, 0.121225, 0.859780,
		39.185558, 32.540253, 39.344555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860584, 33.108173, 38.724117>,  <38.838314, 32.455395, 38.742706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860584, 33.108173, 38.724117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127956, 33.024345, 39.009571>,  <39.288380, 32.974049, 39.180843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127956, 33.024345, 39.009571>,  <38.860584, 33.108173, 38.724117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127956, 33.024345, 39.009571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560437, 0.772719, -0.298020,
		-0.488987, 0.599155, 0.633960,
		0.668433, -0.209567, 0.713638,
		39.328487, 32.961475, 39.223663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988041, 33.752781, 39.016853>,  <38.860584, 33.108173, 38.724117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988041, 33.752781, 39.016853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300579, 33.521423, 39.110626>,  <39.488102, 33.382607, 39.166889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300579, 33.521423, 39.110626>,  <38.988041, 33.752781, 39.016853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300579, 33.521423, 39.110626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616976, 0.772454, -0.150516,
		-0.094029, 0.262243, 0.960410,
		0.781344, -0.578397, 0.234431,
		39.534981, 33.347904, 39.180954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394913, 34.256653, 39.345253>,  <38.988041, 33.752781, 39.016853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394913, 34.256653, 39.345253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642540, 33.960171, 39.241428>,  <39.791115, 33.782280, 39.179134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642540, 33.960171, 39.241428>,  <39.394913, 34.256653, 39.345253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642540, 33.960171, 39.241428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662196, 0.670340, -0.334873,
		0.422203, 0.035430, 0.905809,
		0.619065, -0.741207, -0.259558,
		39.828259, 33.737808, 39.163563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137798, 34.354706, 39.670963>,  <39.394913, 34.256653, 39.345253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137798, 34.354706, 39.670963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186203, 34.134563, 39.340519>,  <40.215248, 34.002476, 39.142254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186203, 34.134563, 39.340519>,  <40.137798, 34.354706, 39.670963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186203, 34.134563, 39.340519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730054, 0.613237, -0.301598,
		0.672590, -0.566609, 0.476002,
		0.121014, -0.550359, -0.826112,
		40.222507, 33.969456, 39.092686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836948, 34.241879, 39.630703>,  <40.137798, 34.354706, 39.670963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836948, 34.241879, 39.630703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702457, 34.143665, 39.267017>,  <40.621761, 34.084736, 39.048805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702457, 34.143665, 39.267017>,  <40.836948, 34.241879, 39.630703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702457, 34.143665, 39.267017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693055, 0.589166, -0.415400,
		0.637673, -0.769801, -0.027922,
		-0.336227, -0.245538, -0.909210,
		40.601589, 34.070004, 38.994255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453335, 34.196053, 39.194969>,  <40.836948, 34.241879, 39.630703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453335, 34.196053, 39.194969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159103, 34.253483, 38.930149>,  <40.982567, 34.287941, 38.771255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159103, 34.253483, 38.930149>,  <41.453335, 34.196053, 39.194969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159103, 34.253483, 38.930149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551613, 0.694251, -0.462318,
		0.393256, -0.705267, -0.589871,
		-0.735577, 0.143571, -0.662053,
		40.938431, 34.296555, 38.731533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865532, 34.286716, 38.670685>,  <41.453335, 34.196053, 39.194969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865532, 34.286716, 38.670685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504772, 34.429020, 38.572685>,  <41.288319, 34.514400, 38.513885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504772, 34.429020, 38.572685>,  <41.865532, 34.286716, 38.670685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504772, 34.429020, 38.572685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430669, 0.696839, -0.573532,
		-0.033314, -0.622778, -0.781689,
		-0.901895, 0.355756, -0.244997,
		41.234203, 34.535748, 38.499187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787636, 34.273872, 37.932693>,  <41.865532, 34.286716, 38.670685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787636, 34.273872, 37.932693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593159, 34.580254, 38.100945>,  <41.476471, 34.764084, 38.201897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593159, 34.580254, 38.100945>,  <41.787636, 34.273872, 37.932693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593159, 34.580254, 38.100945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435677, 0.629729, -0.643139,
		-0.757498, -0.129431, -0.639879,
		-0.486192, 0.765957, 0.420628,
		41.447300, 34.810040, 38.227135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202454, 34.682510, 37.480560>,  <41.787636, 34.273872, 37.932693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202454, 34.682510, 37.480560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413540, 34.901669, 37.740200>,  <41.540192, 35.033161, 37.895985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413540, 34.901669, 37.740200>,  <41.202454, 34.682510, 37.480560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413540, 34.901669, 37.740200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370394, 0.539259, -0.756312,
		-0.764410, 0.639541, 0.081640,
		0.527718, 0.547893, 0.649097,
		41.571854, 35.066036, 37.934929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194229, 35.391273, 37.339386>,  <41.202454, 34.682510, 37.480560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194229, 35.391273, 37.339386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532532, 35.330097, 37.543861>,  <41.735512, 35.293392, 37.666546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532532, 35.330097, 37.543861>,  <41.194229, 35.391273, 37.339386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532532, 35.330097, 37.543861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512617, 0.498767, -0.698896,
		-0.148074, 0.853136, 0.500233,
		0.845753, -0.152940, 0.511186,
		41.786259, 35.284214, 37.697216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598343, 36.025417, 37.649239>,  <41.194229, 35.391273, 37.339386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598343, 36.025417, 37.649239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823261, 35.719936, 37.522377>,  <41.958210, 35.536648, 37.446259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823261, 35.719936, 37.522377>,  <41.598343, 36.025417, 37.649239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823261, 35.719936, 37.522377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304947, 0.547998, -0.778913,
		0.768656, 0.341263, 0.541024,
		0.562294, -0.763700, -0.317155,
		41.991951, 35.490826, 37.427231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500278, 36.109962, 37.717613>,  <41.598343, 36.025417, 37.649239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500278, 36.109962, 37.717613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339783, 35.886223, 37.427471>,  <42.243484, 35.751980, 37.253387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339783, 35.886223, 37.427471>,  <42.500278, 36.109962, 37.717613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339783, 35.886223, 37.427471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461942, 0.560244, -0.687558,
		0.790961, -0.610943, 0.033599,
		-0.401236, -0.559352, -0.725352,
		42.219414, 35.718418, 37.209866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842407, 36.739712, 37.807270>,  <42.500278, 36.109962, 37.717613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842407, 36.739712, 37.807270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976627, 36.407314, 37.984741>,  <43.057159, 36.207874, 38.091225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976627, 36.407314, 37.984741>,  <42.842407, 36.739712, 37.807270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976627, 36.407314, 37.984741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145751, -0.511113, -0.847066,
		0.930680, 0.219564, -0.292621,
		0.335548, -0.830996, 0.443681,
		43.077293, 36.158016, 38.117847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441719, 36.453548, 37.486378>,  <42.842407, 36.739712, 37.807270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441719, 36.453548, 37.486378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239742, 36.145653, 37.642601>,  <43.118557, 35.960915, 37.736336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239742, 36.145653, 37.642601>,  <43.441719, 36.453548, 37.486378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239742, 36.145653, 37.642601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093446, -0.498569, -0.861798,
		0.858081, -0.398660, 0.323676,
		-0.504940, -0.769739, 0.390560,
		43.088261, 35.914730, 37.759769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626358, 35.785736, 37.554916>,  <43.441719, 36.453548, 37.486378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626358, 35.785736, 37.554916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928772, 35.524082, 37.563950>,  <44.110222, 35.367088, 37.569370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928772, 35.524082, 37.563950>,  <43.626358, 35.785736, 37.554916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928772, 35.524082, 37.563950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261402, -0.333398, -0.905823,
		0.600063, 0.678933, -0.423055,
		0.756038, -0.654138, 0.022586,
		44.155582, 35.327843, 37.570724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892838, 35.895733, 36.949348>,  <43.626358, 35.785736, 37.554916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892838, 35.895733, 36.949348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000492, 35.532585, 37.077934>,  <44.065086, 35.314697, 37.155087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000492, 35.532585, 37.077934>,  <43.892838, 35.895733, 36.949348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000492, 35.532585, 37.077934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497147, -0.416835, -0.760982,
		0.824869, 0.044995, -0.563531,
		0.269140, -0.907868, 0.321465,
		44.081234, 35.260223, 37.174374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183319, 35.467499, 36.390663>,  <43.892838, 35.895733, 36.949348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183319, 35.467499, 36.390663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022118, 35.225487, 36.665333>,  <43.925396, 35.080280, 36.830135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022118, 35.225487, 36.665333>,  <44.183319, 35.467499, 36.390663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022118, 35.225487, 36.665333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551619, -0.438120, -0.709766,
		0.730277, -0.664823, -0.157183,
		-0.403003, -0.605030, 0.686678,
		43.901218, 35.043976, 36.871338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885529, 35.013073, 35.921715>,  <44.183319, 35.467499, 36.390663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885529, 35.013073, 35.921715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727238, 34.904652, 36.272697>,  <43.632263, 34.839600, 36.483288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727238, 34.904652, 36.272697>,  <43.885529, 35.013073, 35.921715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727238, 34.904652, 36.272697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761941, -0.436488, -0.478461,
		0.512688, -0.857909, -0.033798,
		-0.395724, -0.271053, 0.877458,
		43.608521, 34.823338, 36.535934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642166, 34.313400, 35.827190>,  <43.885529, 35.013073, 35.921715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642166, 34.313400, 35.827190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419048, 34.451340, 36.129169>,  <43.285179, 34.534103, 36.310356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419048, 34.451340, 36.129169>,  <43.642166, 34.313400, 35.827190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419048, 34.451340, 36.129169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808615, -0.430849, -0.400638,
		0.187110, -0.833935, 0.519174,
		-0.557792, 0.344848, 0.754949,
		43.251709, 34.554794, 36.355656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267361, 33.697365, 36.116371>,  <43.642166, 34.313400, 35.827190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267361, 33.697365, 36.116371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055813, 34.020836, 36.219402>,  <42.928886, 34.214916, 36.281219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055813, 34.020836, 36.219402>,  <43.267361, 33.697365, 36.116371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055813, 34.020836, 36.219402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845405, -0.475220, -0.243837,
		-0.074779, -0.346715, 0.934985,
		-0.528865, 0.808674, 0.257578,
		42.897152, 34.263439, 36.296677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666557, 33.435440, 36.437721>,  <43.267361, 33.697365, 36.116371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666557, 33.435440, 36.437721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599155, 33.806026, 36.303104>,  <42.558716, 34.028378, 36.222336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599155, 33.806026, 36.303104>,  <42.666557, 33.435440, 36.437721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599155, 33.806026, 36.303104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808142, -0.325332, -0.490984,
		-0.564370, 0.189241, 0.803539,
		-0.168502, 0.926470, -0.336542,
		42.548603, 34.083969, 36.202141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957848, 33.531300, 36.430912>,  <42.666557, 33.435440, 36.437721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957848, 33.531300, 36.430912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048412, 33.823437, 36.173126>,  <42.102753, 33.998718, 36.018456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048412, 33.823437, 36.173126>,  <41.957848, 33.531300, 36.430912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048412, 33.823437, 36.173126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910033, -0.077266, -0.407271,
		-0.347242, 0.678699, 0.647141,
		0.226412, 0.730341, -0.644469,
		42.116337, 34.042538, 35.979786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281467, 33.718235, 36.245071>,  <41.957848, 33.531300, 36.430912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281467, 33.718235, 36.245071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499783, 33.908489, 35.969131>,  <41.630772, 34.022640, 35.803566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499783, 33.908489, 35.969131>,  <41.281467, 33.718235, 36.245071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499783, 33.908489, 35.969131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799903, 0.050557, -0.597995,
		-0.249549, 0.878190, 0.408053,
		0.545784, 0.475632, -0.689851,
		41.663517, 34.051178, 35.762177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865009, 34.408829, 36.043934>,  <41.281467, 33.718235, 36.245071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865009, 34.408829, 36.043934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117825, 34.299129, 35.754021>,  <41.269512, 34.233311, 35.580070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117825, 34.299129, 35.754021>,  <40.865009, 34.408829, 36.043934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117825, 34.299129, 35.754021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645049, 0.332137, -0.688184,
		0.429464, 0.902480, 0.033018,
		0.632039, -0.274252, -0.724785,
		41.307438, 34.216854, 35.536587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858231, 34.987778, 35.533939>,  <40.865009, 34.408829, 36.043934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858231, 34.987778, 35.533939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008068, 34.674274, 35.335789>,  <41.097973, 34.486172, 35.216900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008068, 34.674274, 35.335789>,  <40.858231, 34.987778, 35.533939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008068, 34.674274, 35.335789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622529, 0.183336, -0.760818,
		0.687120, 0.593386, -0.419237,
		0.374598, -0.783761, -0.495374,
		41.120449, 34.439148, 35.187176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775757, 35.250519, 34.805283>,  <40.858231, 34.987778, 35.533939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775757, 35.250519, 34.805283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839775, 34.858967, 34.754391>,  <40.878185, 34.624035, 34.723854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839775, 34.858967, 34.754391>,  <40.775757, 35.250519, 34.805283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839775, 34.858967, 34.754391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607663, 0.003873, -0.794186,
		0.777902, 0.204419, -0.594207,
		0.160045, -0.978876, -0.127230,
		40.887787, 34.565304, 34.716221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011044, 35.169571, 34.126778>,  <40.775757, 35.250519, 34.805283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011044, 35.169571, 34.126778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836349, 34.829308, 34.243835>,  <40.731533, 34.625149, 34.314072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836349, 34.829308, 34.243835>,  <41.011044, 35.169571, 34.126778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836349, 34.829308, 34.243835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641397, 0.066354, -0.764335,
		0.630769, -0.521516, -0.574588,
		-0.436738, -0.850657, 0.292645,
		40.705326, 34.574112, 34.331631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974712, 34.860050, 33.526718>,  <41.011044, 35.169571, 34.126778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974712, 34.860050, 33.526718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710190, 34.686382, 33.771397>,  <40.551476, 34.582180, 33.918205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710190, 34.686382, 33.771397>,  <40.974712, 34.860050, 33.526718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710190, 34.686382, 33.771397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624475, -0.133132, -0.769615,
		0.415582, -0.890938, -0.183090,
		-0.661304, -0.434173, 0.611695,
		40.511799, 34.556129, 33.954906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770084, 34.181438, 33.286724>,  <40.974712, 34.860050, 33.526718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770084, 34.181438, 33.286724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446526, 34.286156, 33.497303>,  <40.252392, 34.348988, 33.623650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446526, 34.286156, 33.497303>,  <40.770084, 34.181438, 33.286724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446526, 34.286156, 33.497303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587883, -0.346481, -0.730988,
		-0.008962, -0.900786, 0.434171,
		-0.808896, 0.261794, 0.526452,
		40.203857, 34.364693, 33.655239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267040, 33.665081, 33.120544>,  <40.770084, 34.181438, 33.286724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267040, 33.665081, 33.120544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022518, 33.931389, 33.291687>,  <39.875805, 34.091175, 33.394371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022518, 33.931389, 33.291687>,  <40.267040, 33.665081, 33.120544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022518, 33.931389, 33.291687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715813, -0.234583, -0.657710,
		-0.337518, -0.708322, 0.619969,
		-0.611304, 0.665771, 0.427850,
		39.839127, 34.131119, 33.420044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546078, 33.340347, 33.188541>,  <40.267040, 33.665081, 33.120544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546078, 33.340347, 33.188541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488243, 33.735512, 33.210876>,  <39.453541, 33.972610, 33.224277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488243, 33.735512, 33.210876>,  <39.546078, 33.340347, 33.188541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488243, 33.735512, 33.210876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600395, -0.042741, -0.798561,
		-0.786524, -0.148985, 0.599319,
		-0.144589, 0.987915, 0.055833,
		39.444866, 34.031887, 33.227627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796295, 33.476620, 33.244179>,  <39.546078, 33.340347, 33.188541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796295, 33.476620, 33.244179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956482, 33.806709, 33.084866>,  <39.052593, 34.004765, 32.989277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956482, 33.806709, 33.084866>,  <38.796295, 33.476620, 33.244179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956482, 33.806709, 33.084866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632784, -0.065311, -0.771569,
		-0.662733, 0.561011, 0.496036,
		0.400462, 0.825228, -0.398282,
		39.076622, 34.054279, 32.965382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203346, 33.896912, 33.026997>,  <38.796295, 33.476620, 33.244179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203346, 33.896912, 33.026997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498245, 34.065369, 32.815674>,  <38.675182, 34.166443, 32.688881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498245, 34.065369, 32.815674>,  <38.203346, 33.896912, 33.026997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498245, 34.065369, 32.815674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575216, -0.018923, -0.817783,
		-0.354397, 0.906799, 0.228295,
		0.737244, 0.421139, -0.528312,
		38.719418, 34.191711, 32.657181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875347, 34.149963, 32.449005>,  <38.203346, 33.896912, 33.026997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875347, 34.149963, 32.449005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260582, 34.156631, 32.341541>,  <38.491722, 34.160633, 32.277061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260582, 34.156631, 32.341541>,  <37.875347, 34.149963, 32.449005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260582, 34.156631, 32.341541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262111, -0.169081, -0.950110,
		-0.061268, 0.985461, -0.158470,
		0.963091, 0.016674, -0.268659,
		38.549511, 34.161633, 32.260944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863251, 34.522354, 31.856991>,  <37.875347, 34.149963, 32.449005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863251, 34.522354, 31.856991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189453, 34.291046, 31.866360>,  <38.385174, 34.152260, 31.871981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189453, 34.291046, 31.866360>,  <37.863251, 34.522354, 31.856991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189453, 34.291046, 31.866360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142298, -0.239579, -0.960392,
		0.560978, 0.779876, -0.277666,
		0.815509, -0.578270, 0.023424,
		38.434105, 34.117565, 31.873386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161518, 34.659161, 31.251358>,  <37.863251, 34.522354, 31.856991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161518, 34.659161, 31.251358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272133, 34.309139, 31.410259>,  <38.338501, 34.099125, 31.505600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272133, 34.309139, 31.410259>,  <38.161518, 34.659161, 31.251358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272133, 34.309139, 31.410259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280495, -0.468868, -0.837547,
		0.919158, 0.120184, -0.375107,
		0.276535, -0.875053, 0.397253,
		38.355095, 34.046623, 31.529434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473324, 34.242554, 30.665972>,  <38.161518, 34.659161, 31.251358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473324, 34.242554, 30.665972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349102, 33.996964, 30.956236>,  <38.274567, 33.849609, 31.130394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349102, 33.996964, 30.956236>,  <38.473324, 34.242554, 30.665972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349102, 33.996964, 30.956236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443719, -0.581492, -0.681894,
		0.840635, -0.533756, -0.091849,
		-0.310556, -0.613980, 0.725661,
		38.255936, 33.812771, 31.173935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072201, 33.728588, 30.243244>,  <38.473324, 34.242554, 30.665972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072201, 33.728588, 30.243244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017624, 33.601227, 30.618477>,  <37.984879, 33.524811, 30.843616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017624, 33.601227, 30.618477>,  <38.072201, 33.728588, 30.243244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017624, 33.601227, 30.618477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722930, -0.615428, -0.314040,
		0.677315, -0.721018, -0.146214,
		-0.136444, -0.318406, 0.938083,
		37.976692, 33.505707, 30.899902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976498, 33.102081, 30.229668>,  <38.072201, 33.728588, 30.243244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976498, 33.102081, 30.229668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857590, 33.156841, 30.607639>,  <37.786243, 33.189697, 30.834421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857590, 33.156841, 30.607639>,  <37.976498, 33.102081, 30.229668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857590, 33.156841, 30.607639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726439, -0.674671, -0.130792,
		0.619610, -0.725313, 0.300007,
		-0.297271, 0.136897, 0.944928,
		37.768410, 33.197910, 30.891117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316612, 32.484711, 30.368353>,  <37.976498, 33.102081, 30.229668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316612, 32.484711, 30.368353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522247, 32.237873, 30.130054>,  <38.645626, 32.089771, 29.987076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522247, 32.237873, 30.130054>,  <38.316612, 32.484711, 30.368353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522247, 32.237873, 30.130054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616977, -0.216465, 0.756626,
		-0.595867, -0.756531, 0.269451,
		0.514084, -0.617093, -0.595746,
		38.676472, 32.052746, 29.951330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409180, 31.890551, 30.780844>,  <38.316612, 32.484711, 30.368353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409180, 31.890551, 30.780844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687473, 31.941004, 30.497990>,  <38.854450, 31.971275, 30.328278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687473, 31.941004, 30.497990>,  <38.409180, 31.890551, 30.780844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687473, 31.941004, 30.497990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713612, -0.009109, 0.700482,
		0.081911, -0.991972, -0.096346,
		0.695736, 0.126131, -0.707137,
		38.896194, 31.978844, 30.285849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011341, 31.474463, 30.933575>,  <38.409180, 31.890551, 30.780844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011341, 31.474463, 30.933575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117458, 31.793278, 30.716558>,  <39.181129, 31.984568, 30.586349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117458, 31.793278, 30.716558>,  <39.011341, 31.474463, 30.933575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117458, 31.793278, 30.716558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798478, 0.133778, 0.586972,
		0.540420, -0.588925, -0.600928,
		0.265291, 0.797039, -0.542540,
		39.197044, 32.032391, 30.553797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648884, 31.453121, 30.394897>,  <39.011341, 31.474463, 30.933575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648884, 31.453121, 30.394897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575787, 31.812738, 30.554060>,  <39.531929, 32.028507, 30.649557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575787, 31.812738, 30.554060>,  <39.648884, 31.453121, 30.394897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575787, 31.812738, 30.554060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777917, -0.115268, 0.617704,
		0.601208, 0.422416, -0.678317,
		-0.182740, 0.899043, 0.397905,
		39.520966, 32.082451, 30.673431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280640, 31.724031, 30.428152>,  <39.648884, 31.453121, 30.394897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280640, 31.724031, 30.428152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009010, 31.857307, 30.689793>,  <39.846035, 31.937273, 30.846777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009010, 31.857307, 30.689793>,  <40.280640, 31.724031, 30.428152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009010, 31.857307, 30.689793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715145, 0.099238, 0.691896,
		0.165621, 0.937623, -0.305668,
		-0.679071, 0.333189, 0.654101,
		39.805290, 31.957264, 30.886023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374016, 32.310822, 30.571392>,  <40.280640, 31.724031, 30.428152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374016, 32.310822, 30.571392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222145, 32.143948, 30.901678>,  <40.131023, 32.043823, 31.099850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222145, 32.143948, 30.901678>,  <40.374016, 32.310822, 30.571392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222145, 32.143948, 30.901678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783015, 0.330419, 0.526982,
		-0.492681, 0.846628, 0.201212,
		-0.379673, -0.417186, 0.825714,
		40.108242, 32.018791, 31.149393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620651, 32.712025, 31.001698>,  <40.374016, 32.310822, 30.571392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620651, 32.712025, 31.001698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505695, 32.408707, 31.235756>,  <40.436722, 32.226715, 31.376190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505695, 32.408707, 31.235756>,  <40.620651, 32.712025, 31.001698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505695, 32.408707, 31.235756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678110, 0.270367, 0.683425,
		-0.676441, 0.593204, 0.436505,
		-0.287394, -0.758295, 0.585144,
		40.419476, 32.181217, 31.411299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702755, 32.960003, 31.666578>,  <40.620651, 32.712025, 31.001698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702755, 32.960003, 31.666578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686516, 32.565243, 31.729036>,  <40.676773, 32.328388, 31.766512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686516, 32.565243, 31.729036>,  <40.702755, 32.960003, 31.666578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686516, 32.565243, 31.729036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753907, 0.072302, 0.652990,
		-0.655725, 0.144230, 0.741095,
		-0.040598, -0.986899, 0.156146,
		40.674335, 32.269173, 31.775881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670578, 32.817844, 32.354206>,  <40.702755, 32.960003, 31.666578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670578, 32.817844, 32.354206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819458, 32.481773, 32.196434>,  <40.908787, 32.280132, 32.101772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819458, 32.481773, 32.196434>,  <40.670578, 32.817844, 32.354206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819458, 32.481773, 32.196434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740029, 0.012144, 0.672465,
		-0.560197, -0.542182, 0.626273,
		0.372204, -0.840173, -0.394428,
		40.931118, 32.229721, 32.078106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804508, 32.436680, 32.893818>,  <40.670578, 32.817844, 32.354206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804508, 32.436680, 32.893818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036480, 32.284096, 32.605881>,  <41.175663, 32.192543, 32.433121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036480, 32.284096, 32.605881>,  <40.804508, 32.436680, 32.893818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036480, 32.284096, 32.605881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748137, -0.100369, 0.655910,
		-0.322456, -0.918918, 0.227181,
		0.579926, -0.381464, -0.719841,
		41.210457, 32.169655, 32.389927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189610, 31.962984, 33.229389>,  <40.804508, 32.436680, 32.893818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189610, 31.962984, 33.229389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380466, 32.042446, 32.886959>,  <41.494980, 32.090122, 32.681499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380466, 32.042446, 32.886959>,  <41.189610, 31.962984, 33.229389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380466, 32.042446, 32.886959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878407, -0.077778, 0.471541,
		0.027089, -0.976979, -0.211610,
		0.477144, 0.198653, -0.856078,
		41.523609, 32.102043, 32.630135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690441, 31.451166, 33.212074>,  <41.189610, 31.962984, 33.229389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690441, 31.451166, 33.212074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853191, 31.721771, 32.966545>,  <41.950840, 31.884134, 32.819229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853191, 31.721771, 32.966545>,  <41.690441, 31.451166, 33.212074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853191, 31.721771, 32.966545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867768, -0.076337, 0.491072,
		0.285360, -0.732461, -0.618118,
		0.406877, 0.676515, -0.613823,
		41.975254, 31.924726, 32.782398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410538, 31.231842, 33.146385>,  <41.690441, 31.451166, 33.212074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410538, 31.231842, 33.146385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389301, 31.611771, 33.023083>,  <42.376560, 31.839727, 32.949100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389301, 31.611771, 33.023083>,  <42.410538, 31.231842, 33.146385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389301, 31.611771, 33.023083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873977, 0.193523, 0.445773,
		0.483059, -0.245742, -0.840395,
		-0.053091, 0.949821, -0.308256,
		42.373375, 31.896717, 32.930607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129810, 31.493034, 32.969303>,  <42.410538, 31.231842, 33.146385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129810, 31.493034, 32.969303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934521, 31.839355, 33.013161>,  <42.817345, 32.047146, 33.039474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934521, 31.839355, 33.013161>,  <43.129810, 31.493034, 32.969303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934521, 31.839355, 33.013161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829083, 0.420914, 0.368038,
		0.272495, 0.270593, -0.923323,
		-0.488229, 0.865800, 0.109647,
		42.788052, 32.099094, 33.046055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643288, 32.034523, 32.789799>,  <43.129810, 31.493034, 32.969303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643288, 32.034523, 32.789799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362087, 32.234200, 32.992424>,  <43.193367, 32.354004, 33.113998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362087, 32.234200, 32.992424>,  <43.643288, 32.034523, 32.789799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362087, 32.234200, 32.992424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706475, 0.572076, 0.416680,
		-0.081789, 0.650798, -0.754833,
		-0.702996, 0.499191, 0.506562,
		43.151188, 32.383957, 33.144394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896591, 32.682026, 32.753067>,  <43.643288, 32.034523, 32.789799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896591, 32.682026, 32.753067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644638, 32.675526, 33.063675>,  <43.493465, 32.671627, 33.250038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644638, 32.675526, 33.063675>,  <43.896591, 32.682026, 32.753067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644638, 32.675526, 33.063675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655425, 0.525315, 0.542645,
		-0.416734, 0.850753, -0.320238,
		-0.629882, -0.016246, 0.776521,
		43.455673, 32.670650, 33.296631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942074, 33.408775, 32.942318>,  <43.896591, 32.682026, 32.753067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942074, 33.408775, 32.942318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802223, 33.192970, 33.248699>,  <43.718311, 33.063488, 33.432529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802223, 33.192970, 33.248699>,  <43.942074, 33.408775, 32.942318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802223, 33.192970, 33.248699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512035, 0.574619, 0.638462,
		-0.784590, 0.615420, 0.075345,
		-0.349628, -0.539510, 0.765956,
		43.697334, 33.031116, 33.478485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759018, 33.934128, 33.454075>,  <43.942074, 33.408775, 32.942318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759018, 33.934128, 33.454075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774029, 33.584980, 33.648678>,  <43.783035, 33.375492, 33.765438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774029, 33.584980, 33.648678>,  <43.759018, 33.934128, 33.454075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774029, 33.584980, 33.648678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511183, 0.435097, 0.741204,
		-0.858652, 0.220878, 0.462524,
		0.037527, -0.872871, 0.486507,
		43.785286, 33.323120, 33.794628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552929, 34.044991, 34.230988>,  <43.759018, 33.934128, 33.454075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552929, 34.044991, 34.230988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747501, 33.695503, 34.230019>,  <43.864246, 33.485813, 34.229439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747501, 33.695503, 34.230019>,  <43.552929, 34.044991, 34.230988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747501, 33.695503, 34.230019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450879, 0.248645, 0.857253,
		-0.748393, -0.418087, 0.514889,
		0.486431, -0.873715, -0.002423,
		43.893433, 33.433388, 34.229290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360626, 33.752811, 34.926964>,  <43.552929, 34.044991, 34.230988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360626, 33.752811, 34.926964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690777, 33.578030, 34.783955>,  <43.888866, 33.473160, 34.698151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690777, 33.578030, 34.783955>,  <43.360626, 33.752811, 34.926964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690777, 33.578030, 34.783955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462678, 0.160604, 0.871857,
		-0.323541, -0.885030, 0.334728,
		0.825378, -0.436952, -0.357522,
		43.938389, 33.446945, 34.676697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515972, 33.395767, 35.489437>,  <43.360626, 33.752811, 34.926964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515972, 33.395767, 35.489437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845024, 33.426857, 35.264141>,  <44.042454, 33.445511, 35.128963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845024, 33.426857, 35.264141>,  <43.515972, 33.395767, 35.489437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845024, 33.426857, 35.264141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556748, 0.090948, 0.825688,
		0.115399, -0.992818, 0.031545,
		0.822627, 0.077721, -0.563244,
		44.091812, 33.450176, 35.095169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985405, 33.069958, 35.855629>,  <43.515972, 33.395767, 35.489437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985405, 33.069958, 35.855629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229366, 33.275993, 35.614731>,  <44.375744, 33.399616, 35.470192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229366, 33.275993, 35.614731>,  <43.985405, 33.069958, 35.855629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229366, 33.275993, 35.614731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610821, 0.178619, 0.771358,
		0.504891, -0.838318, -0.205688,
		0.609904, 0.515090, -0.602246,
		44.412338, 33.430519, 35.434055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717903, 32.852859, 35.921680>,  <43.985405, 33.069958, 35.855629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717903, 32.852859, 35.921680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729729, 33.221237, 35.766254>,  <44.736824, 33.442265, 35.673000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729729, 33.221237, 35.766254>,  <44.717903, 32.852859, 35.921680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729729, 33.221237, 35.766254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573900, 0.302636, 0.760953,
		0.818391, -0.245498, -0.519583,
		0.029568, 0.920946, -0.388566,
		44.738598, 33.497520, 35.649685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.399910, 32.929146, 35.904545>,  <44.717903, 32.852859, 35.921680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.399910, 32.929146, 35.904545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246647, 33.298485, 35.894569>,  <45.154690, 33.520088, 35.888584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246647, 33.298485, 35.894569>,  <45.399910, 32.929146, 35.904545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246647, 33.298485, 35.894569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590058, 0.265453, 0.762474,
		0.710647, 0.277433, -0.646538,
		-0.383161, 0.923345, -0.024942,
		45.131699, 33.575489, 35.887085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931133, 33.325840, 36.079163>,  <45.399910, 32.929146, 35.904545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.931133, 33.325840, 36.079163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630814, 33.586716, 36.121025>,  <45.450623, 33.743240, 36.146145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630814, 33.586716, 36.121025>,  <45.931133, 33.325840, 36.079163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630814, 33.586716, 36.121025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481718, 0.432224, 0.762319,
		0.451938, 0.622764, -0.638683,
		-0.750799, 0.652186, 0.104658,
		45.405575, 33.782372, 36.152424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186226, 34.046490, 36.040024>,  <45.931133, 33.325840, 36.079163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186226, 34.046490, 36.040024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840763, 34.037655, 36.241467>,  <45.633488, 34.032356, 36.362331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840763, 34.037655, 36.241467>,  <46.186226, 34.046490, 36.040024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840763, 34.037655, 36.241467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442777, 0.444285, 0.778820,
		-0.240942, 0.895613, -0.373930,
		-0.863653, -0.022082, 0.503603,
		45.581669, 34.031029, 36.392548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000820, 34.757046, 36.309551>,  <46.186226, 34.046490, 36.040024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.000820, 34.757046, 36.309551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859478, 34.450535, 36.524197>,  <45.774673, 34.266628, 36.652985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859478, 34.450535, 36.524197>,  <46.000820, 34.757046, 36.309551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.859478, 34.450535, 36.524197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612220, 0.244300, 0.752001,
		-0.707338, 0.594250, 0.382807,
		-0.353356, -0.766280, 0.536614,
		45.753471, 34.220650, 36.685181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463444, 35.303272, 36.060593>,  <46.000820, 34.757046, 36.309551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463444, 35.303272, 36.060593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840542, 35.435528, 36.078083>,  <47.066799, 35.514881, 36.088577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.840542, 35.435528, 36.078083>,  <46.463444, 35.303272, 36.060593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840542, 35.435528, 36.078083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204723, -0.470186, -0.858495,
		-0.263289, 0.818294, -0.510954,
		0.942745, 0.330637, 0.043728,
		47.123363, 35.534718, 36.091202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699627, 35.652615, 35.559769>,  <46.463444, 35.303272, 36.060593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.699627, 35.652615, 35.559769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.062458, 35.514320, 35.655834>,  <47.280155, 35.431343, 35.713474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.062458, 35.514320, 35.655834>,  <46.699627, 35.652615, 35.559769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.062458, 35.514320, 35.655834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072226, -0.434233, -0.897901,
		0.414719, 0.831812, -0.368912,
		0.907079, -0.345732, 0.240163,
		47.334583, 35.410603, 35.727882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.962227, 35.378189, 34.888039>,  <46.699627, 35.652615, 35.559769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.962227, 35.378189, 34.888039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203884, 35.253784, 35.181511>,  <47.348877, 35.179142, 35.357594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203884, 35.253784, 35.181511>,  <46.962227, 35.378189, 34.888039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.203884, 35.253784, 35.181511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366716, -0.708899, -0.602480,
		0.707484, 0.633034, -0.314220,
		0.604140, -0.311016, 0.733678,
		47.385128, 35.160480, 35.401615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.741089, 35.552361, 34.787529>,  <46.962227, 35.378189, 34.888039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.741089, 35.552361, 34.787529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592930, 35.220417, 34.954449>,  <47.504036, 35.021252, 35.054600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592930, 35.220417, 34.954449>,  <47.741089, 35.552361, 34.787529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.592930, 35.220417, 34.954449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262726, -0.524501, -0.809860,
		0.890945, -0.190333, 0.412299,
		-0.370395, -0.829862, 0.417296,
		47.481812, 34.971458, 35.079639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.435966, 33.339165, 43.762745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.142906, 33.297356, 43.493732>,  <31.967070, 33.272270, 43.332325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.142906, 33.297356, 43.493732>,  <32.435966, 33.339165, 43.762745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142906, 33.297356, 43.493732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641941, 0.222169, -0.733862,
		0.226119, -0.969390, -0.095676,
		-0.732654, -0.104522, -0.672527,
		31.923109, 33.265999, 43.291973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774094, 32.906258, 43.181564>,  <32.435966, 33.339165, 43.762745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774094, 32.906258, 43.181564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.440716, 33.072021, 43.035343>,  <32.240688, 33.171478, 42.947609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.440716, 33.072021, 43.035343>,  <32.774094, 32.906258, 43.181564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440716, 33.072021, 43.035343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522554, 0.375895, -0.765271,
		-0.179725, -0.828836, -0.529840,
		-0.833448, 0.414408, -0.365554,
		32.190681, 33.196342, 42.925678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841896, 32.786953, 42.525852>,  <32.774094, 32.906258, 43.181564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841896, 32.786953, 42.525852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.593819, 33.099922, 42.548382>,  <32.444973, 33.287704, 42.561901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.593819, 33.099922, 42.548382>,  <32.841896, 32.786953, 42.525852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593819, 33.099922, 42.548382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486616, 0.440047, -0.754694,
		-0.615278, -0.440646, -0.653654,
		-0.620192, 0.782425, 0.056325,
		32.407761, 33.334648, 42.565281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676666, 32.872730, 41.851303>,  <32.841896, 32.786953, 42.525852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676666, 32.872730, 41.851303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.570461, 33.222733, 42.013226>,  <32.506741, 33.432735, 42.110378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.570461, 33.222733, 42.013226>,  <32.676666, 32.872730, 41.851303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570461, 33.222733, 42.013226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352787, 0.478935, -0.803842,
		-0.897243, -0.070617, -0.435853,
		-0.265511, 0.875005, 0.404808,
		32.490807, 33.485233, 42.134666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350716, 33.418415, 41.303192>,  <32.676666, 32.872730, 41.851303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350716, 33.418415, 41.303192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.455925, 33.665859, 41.599339>,  <32.519051, 33.814327, 41.777027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.455925, 33.665859, 41.599339>,  <32.350716, 33.418415, 41.303192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455925, 33.665859, 41.599339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201644, 0.715189, -0.669211,
		-0.943483, 0.325306, 0.063370,
		0.263020, 0.618612, 0.740365,
		32.534832, 33.851444, 41.821449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896265, 33.996273, 41.149532>,  <32.350716, 33.418415, 41.303192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896265, 33.996273, 41.149532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.230312, 34.064217, 41.358810>,  <32.430740, 34.104984, 41.484375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.230312, 34.064217, 41.358810>,  <31.896265, 33.996273, 41.149532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230312, 34.064217, 41.358810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253153, 0.725740, -0.639699,
		-0.488359, 0.666670, 0.563077,
		0.835116, 0.169858, 0.523191,
		32.480846, 34.115173, 41.515766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098305, 34.708542, 40.973724>,  <31.896265, 33.996273, 41.149532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098305, 34.708542, 40.973724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.418930, 34.562134, 41.162838>,  <32.611305, 34.474289, 41.276306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.418930, 34.562134, 41.162838>,  <32.098305, 34.708542, 40.973724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418930, 34.562134, 41.162838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597573, 0.516997, -0.612878,
		-0.020104, 0.773785, 0.633129,
		0.801562, -0.366020, 0.472787,
		32.659397, 34.452328, 41.304676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455360, 35.334717, 41.032856>,  <32.098305, 34.708542, 40.973724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455360, 35.334717, 41.032856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.699070, 35.018097, 41.051746>,  <32.845295, 34.828125, 41.063080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.699070, 35.018097, 41.051746>,  <32.455360, 35.334717, 41.032856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699070, 35.018097, 41.051746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654912, 0.468737, -0.592770,
		0.447070, 0.392090, 0.803986,
		0.609277, -0.791550, 0.047226,
		32.881851, 34.780632, 41.065914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095993, 35.581104, 41.041828>,  <32.455360, 35.334717, 41.032856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095993, 35.581104, 41.041828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.173576, 35.210403, 40.913132>,  <33.220127, 34.987984, 40.835915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.173576, 35.210403, 40.913132>,  <33.095993, 35.581104, 41.041828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173576, 35.210403, 40.913132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617669, 0.370166, -0.693874,
		0.762145, -0.064151, 0.644220,
		0.193956, -0.926748, -0.321745,
		33.231762, 34.932381, 40.816608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843922, 35.617771, 40.888779>,  <33.095993, 35.581104, 41.041828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843922, 35.617771, 40.888779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.694115, 35.297161, 40.702320>,  <33.604229, 35.104797, 40.590443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.694115, 35.297161, 40.702320>,  <33.843922, 35.617771, 40.888779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694115, 35.297161, 40.702320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701283, 0.084026, -0.707914,
		0.606577, -0.592032, 0.530625,
		-0.374521, -0.801522, -0.466150,
		33.581757, 35.056705, 40.562473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289639, 35.084270, 40.994419>,  <33.843922, 35.617771, 40.888779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289639, 35.084270, 40.994419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090534, 35.004932, 40.656689>,  <33.971069, 34.957329, 40.454048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090534, 35.004932, 40.656689>,  <34.289639, 35.084270, 40.994419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090534, 35.004932, 40.656689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821944, 0.202858, -0.532219,
		0.276841, -0.958910, 0.062051,
		-0.497763, -0.198342, -0.844329,
		33.941204, 34.945431, 40.403389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772907, 34.652378, 40.582150>,  <34.289639, 35.084270, 40.994419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772907, 34.652378, 40.582150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515915, 34.817303, 40.323780>,  <34.361721, 34.916256, 40.168758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515915, 34.817303, 40.323780>,  <34.772907, 34.652378, 40.582150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515915, 34.817303, 40.323780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760547, 0.239992, -0.603301,
		-0.093729, -0.878866, -0.467770,
		-0.642482, 0.412308, -0.645925,
		34.323170, 34.940994, 40.130001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900978, 34.311455, 39.964432>,  <34.772907, 34.652378, 40.582150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900978, 34.311455, 39.964432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722618, 34.642578, 39.828251>,  <34.615604, 34.841251, 39.746544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.722618, 34.642578, 39.828251>,  <34.900978, 34.311455, 39.964432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722618, 34.642578, 39.828251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792783, 0.188672, -0.579566,
		-0.415536, -0.528333, -0.740401,
		-0.445897, 0.827809, -0.340453,
		34.588848, 34.890923, 39.726116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173687, 34.418888, 39.228401>,  <34.900978, 34.311455, 39.964432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173687, 34.418888, 39.228401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.002739, 34.771553, 39.308430>,  <34.900169, 34.983150, 39.356449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.002739, 34.771553, 39.308430>,  <35.173687, 34.418888, 39.228401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002739, 34.771553, 39.308430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707943, 0.463995, -0.532471,
		-0.562293, -0.085919, -0.822463,
		-0.427368, 0.881661, 0.200076,
		34.874527, 35.036053, 39.368454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930969, 34.695427, 38.596912>,  <35.173687, 34.418888, 39.228401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930969, 34.695427, 38.596912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.983742, 35.006088, 38.843292>,  <35.015408, 35.192486, 38.991119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.983742, 35.006088, 38.843292>,  <34.930969, 34.695427, 38.596912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983742, 35.006088, 38.843292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549815, 0.459702, -0.697408,
		-0.824801, 0.430672, -0.366367,
		0.131934, 0.776657, 0.615952,
		35.023323, 35.239086, 39.028076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943558, 35.282749, 38.105377>,  <34.930969, 34.695427, 38.596912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943558, 35.282749, 38.105377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.103397, 35.410519, 38.449070>,  <35.199303, 35.487183, 38.655285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.103397, 35.410519, 38.449070>,  <34.943558, 35.282749, 38.105377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103397, 35.410519, 38.449070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642551, 0.570910, -0.511067,
		-0.653795, 0.756325, 0.022888,
		0.399600, 0.319426, 0.859236,
		35.223278, 35.506348, 38.706841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275284, 35.869511, 37.880489>,  <34.943558, 35.282749, 38.105377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275284, 35.869511, 37.880489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432449, 35.817371, 38.244606>,  <35.526749, 35.786087, 38.463074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432449, 35.817371, 38.244606>,  <35.275284, 35.869511, 37.880489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432449, 35.817371, 38.244606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855321, 0.415337, -0.309712,
		-0.337705, 0.900280, 0.274685,
		0.392914, -0.130352, 0.910289,
		35.550323, 35.778267, 38.517693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484310, 36.504482, 38.198383>,  <35.275284, 35.869511, 37.880489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484310, 36.504482, 38.198383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726807, 36.244537, 38.381752>,  <35.872303, 36.088570, 38.491776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726807, 36.244537, 38.381752>,  <35.484310, 36.504482, 38.198383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726807, 36.244537, 38.381752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788551, 0.566028, -0.240414,
		-0.103244, 0.507239, 0.855599,
		0.606240, -0.649862, 0.458423,
		35.908680, 36.049580, 38.519279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836617, 36.858356, 38.694065>,  <35.484310, 36.504482, 38.198383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836617, 36.858356, 38.694065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068794, 36.537338, 38.638935>,  <36.208103, 36.344727, 38.605858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068794, 36.537338, 38.638935>,  <35.836617, 36.858356, 38.694065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068794, 36.537338, 38.638935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749874, 0.592795, -0.293740,
		0.317445, 0.067146, 0.945896,
		0.580446, -0.802550, -0.137829,
		36.242928, 36.296574, 38.597588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437744, 37.069714, 38.893238>,  <35.836617, 36.858356, 38.694065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437744, 37.069714, 38.893238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516861, 36.747139, 38.670338>,  <36.564331, 36.553593, 38.536598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516861, 36.747139, 38.670338>,  <36.437744, 37.069714, 38.893238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516861, 36.747139, 38.670338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804745, 0.458183, -0.377429,
		0.559698, -0.373794, 0.739606,
		0.197794, -0.806441, -0.557253,
		36.576199, 36.505207, 38.503162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087521, 36.948544, 38.987846>,  <36.437744, 37.069714, 38.893238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087521, 36.948544, 38.987846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015614, 36.760426, 38.642246>,  <36.972469, 36.647552, 38.434887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015614, 36.760426, 38.642246>,  <37.087521, 36.948544, 38.987846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015614, 36.760426, 38.642246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875082, 0.324751, -0.358843,
		0.449350, -0.820582, 0.353170,
		-0.179768, -0.470299, -0.864004,
		36.961681, 36.619335, 38.383045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746159, 36.483543, 38.837662>,  <37.087521, 36.948544, 38.987846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746159, 36.483543, 38.837662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532001, 36.603966, 38.522011>,  <37.403507, 36.676220, 38.332619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532001, 36.603966, 38.522011>,  <37.746159, 36.483543, 38.837662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532001, 36.603966, 38.522011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839515, 0.292121, -0.458127,
		0.092601, -0.907762, -0.409136,
		-0.535388, 0.301053, -0.789131,
		37.371384, 36.694283, 38.285271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664597, 35.813362, 38.302391>,  <37.746159, 36.483543, 38.837662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664597, 35.813362, 38.302391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.017529, 35.785934, 38.488636>,  <38.229286, 35.769478, 38.600384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.017529, 35.785934, 38.488636>,  <37.664597, 35.813362, 38.302391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017529, 35.785934, 38.488636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372945, -0.705310, 0.602868,
		0.287063, -0.705575, -0.647888,
		0.882331, -0.068565, 0.465609,
		38.282227, 35.765366, 38.628319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760117, 35.125675, 38.434017>,  <37.664597, 35.813362, 38.302391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760117, 35.125675, 38.434017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015148, 35.282047, 38.699547>,  <38.168167, 35.375870, 38.858864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015148, 35.282047, 38.699547>,  <37.760117, 35.125675, 38.434017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015148, 35.282047, 38.699547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349839, -0.620793, 0.701590,
		0.686371, -0.679552, -0.259044,
		0.637580, 0.390927, 0.663828,
		38.206421, 35.399326, 38.898697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093800, 34.528996, 38.822208>,  <37.760117, 35.125675, 38.434017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093800, 34.528996, 38.822208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097023, 34.860523, 39.045994>,  <38.098957, 35.059441, 39.180264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097023, 34.860523, 39.045994>,  <38.093800, 34.528996, 38.822208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097023, 34.860523, 39.045994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466716, -0.491684, 0.735134,
		0.884371, -0.267037, 0.382858,
		0.008063, 0.828817, 0.559462,
		38.099442, 35.109169, 39.213833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382851, 34.270576, 39.473415>,  <38.093800, 34.528996, 38.822208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382851, 34.270576, 39.473415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207714, 34.616043, 39.573318>,  <38.102634, 34.823322, 39.633259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.207714, 34.616043, 39.573318>,  <38.382851, 34.270576, 39.473415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207714, 34.616043, 39.573318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291342, -0.399109, 0.869386,
		0.850539, 0.307886, 0.426368,
		-0.437839, 0.863666, 0.249758,
		38.076363, 34.875141, 39.648247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589386, 34.442692, 40.225445>,  <38.382851, 34.270576, 39.473415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589386, 34.442692, 40.225445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248611, 34.638111, 40.150047>,  <38.044147, 34.755363, 40.104809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248611, 34.638111, 40.150047>,  <38.589386, 34.442692, 40.225445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248611, 34.638111, 40.150047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364972, -0.295865, 0.882757,
		0.375498, 0.820846, 0.430363,
		-0.851937, 0.488544, -0.188489,
		37.993031, 34.784676, 40.093502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557961, 34.693939, 40.903297>,  <38.589386, 34.442692, 40.225445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557961, 34.693939, 40.903297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.199986, 34.748131, 40.733250>,  <37.985199, 34.780647, 40.631222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.199986, 34.748131, 40.733250>,  <38.557961, 34.693939, 40.903297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199986, 34.748131, 40.733250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440877, -0.121921, 0.889248,
		0.068645, 0.983250, 0.168842,
		-0.894939, 0.135481, -0.425123,
		37.931503, 34.788776, 40.605713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157753, 35.252514, 41.350048>,  <38.557961, 34.693939, 40.903297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157753, 35.252514, 41.350048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.911060, 35.029915, 41.127354>,  <37.763042, 34.896355, 40.993736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.911060, 35.029915, 41.127354>,  <38.157753, 35.252514, 41.350048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911060, 35.029915, 41.127354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598289, -0.128237, 0.790952,
		-0.511553, 0.820896, -0.253856,
		-0.616736, -0.556493, -0.556733,
		37.726040, 34.862968, 40.960335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549931, 35.446045, 41.585991>,  <38.157753, 35.252514, 41.350048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549931, 35.446045, 41.585991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.480705, 35.093380, 41.410393>,  <37.439171, 34.881779, 41.305035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.480705, 35.093380, 41.410393>,  <37.549931, 35.446045, 41.585991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480705, 35.093380, 41.410393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677180, -0.217130, 0.703052,
		-0.715175, 0.418951, -0.559469,
		-0.173067, -0.881666, -0.438991,
		37.428783, 34.828880, 41.278694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868282, 35.456936, 41.545105>,  <37.549931, 35.446045, 41.585991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868282, 35.456936, 41.545105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.993351, 35.078587, 41.510323>,  <37.068394, 34.851578, 41.489452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.993351, 35.078587, 41.510323>,  <36.868282, 35.456936, 41.545105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993351, 35.078587, 41.510323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771173, -0.306238, 0.558132,
		-0.554551, -0.107453, -0.825183,
		0.312675, -0.945871, -0.086960,
		37.087154, 34.794827, 41.484234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275291, 35.137955, 41.466549>,  <36.868282, 35.456936, 41.545105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275291, 35.137955, 41.466549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.523586, 34.833824, 41.543060>,  <36.672562, 34.651344, 41.588966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.523586, 34.833824, 41.543060>,  <36.275291, 35.137955, 41.466549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523586, 34.833824, 41.543060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720910, -0.457621, 0.520453,
		-0.308182, -0.460958, -0.832191,
		0.620735, -0.760330, 0.191279,
		36.709808, 34.605724, 41.600445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002602, 34.517059, 41.176811>,  <36.275291, 35.137955, 41.466549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002602, 34.517059, 41.176811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.241600, 34.385601, 41.469383>,  <36.384998, 34.306725, 41.644928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.241600, 34.385601, 41.469383>,  <36.002602, 34.517059, 41.176811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241600, 34.385601, 41.469383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795633, -0.356538, 0.489744,
		0.099831, -0.874571, -0.474510,
		0.597497, -0.328644, 0.731431,
		36.420849, 34.287006, 41.688812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742573, 33.843636, 41.318687>,  <36.002602, 34.517059, 41.176811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742573, 33.843636, 41.318687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948425, 33.913376, 41.654484>,  <36.071938, 33.955219, 41.855961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.948425, 33.913376, 41.654484>,  <35.742573, 33.843636, 41.318687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948425, 33.913376, 41.654484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720019, -0.443729, 0.533551,
		0.465536, -0.879036, -0.102820,
		0.514635, 0.174355, 0.839495,
		36.102818, 33.965683, 41.906334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801006, 33.246201, 41.683926>,  <35.742573, 33.843636, 41.318687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801006, 33.246201, 41.683926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.848362, 33.526688, 41.965145>,  <35.876778, 33.694981, 42.133877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.848362, 33.526688, 41.965145>,  <35.801006, 33.246201, 41.683926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848362, 33.526688, 41.965145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521627, -0.558545, 0.644929,
		0.844919, -0.443084, 0.299647,
		0.118391, 0.701217, 0.703050,
		35.883881, 33.737053, 42.176060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807301, 32.820408, 42.225414>,  <35.801006, 33.246201, 41.683926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807301, 32.820408, 42.225414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.765671, 33.168507, 42.418011>,  <35.740692, 33.377365, 42.533569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.765671, 33.168507, 42.418011>,  <35.807301, 32.820408, 42.225414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765671, 33.168507, 42.418011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496044, -0.465032, 0.733271,
		0.862037, -0.162524, 0.480081,
		-0.104078, 0.870248, 0.481494,
		35.734447, 33.429581, 42.562458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137882, 32.745174, 42.925522>,  <35.807301, 32.820408, 42.225414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137882, 32.745174, 42.925522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861874, 33.033077, 42.956036>,  <35.696270, 33.205818, 42.974346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861874, 33.033077, 42.956036>,  <36.137882, 32.745174, 42.925522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861874, 33.033077, 42.956036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437899, -0.499060, 0.747785,
		0.576298, 0.482580, 0.659543,
		-0.690018, 0.719761, 0.076286,
		35.654869, 33.249004, 42.978920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004333, 32.709908, 43.581989>,  <36.137882, 32.745174, 42.925522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004333, 32.709908, 43.581989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.702732, 32.937450, 43.450607>,  <35.521770, 33.073975, 43.371780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.702732, 32.937450, 43.450607>,  <36.004333, 32.709908, 43.581989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702732, 32.937450, 43.450607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492108, -0.157990, 0.856077,
		0.435092, 0.807121, 0.399063,
		-0.754005, 0.568855, -0.328451,
		35.476532, 33.108109, 43.352074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724125, 33.192425, 44.102081>,  <36.004333, 32.709908, 43.581989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724125, 33.192425, 44.102081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.409424, 33.170807, 43.856125>,  <35.220604, 33.157837, 43.708549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.409424, 33.170807, 43.856125>,  <35.724125, 33.192425, 44.102081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409424, 33.170807, 43.856125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571429, -0.312935, 0.758644,
		-0.233422, 0.948236, 0.215321,
		-0.786755, -0.054043, -0.614896,
		35.173397, 33.154594, 43.671658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193707, 33.491020, 44.465858>,  <35.724125, 33.192425, 44.102081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193707, 33.491020, 44.465858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.004353, 33.277538, 44.185555>,  <34.890739, 33.149448, 44.017372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.004353, 33.277538, 44.185555>,  <35.193707, 33.491020, 44.465858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004353, 33.277538, 44.185555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706262, -0.245449, 0.664040,
		-0.526403, 0.809266, -0.260745,
		-0.473386, -0.533707, -0.700759,
		34.862335, 33.117428, 43.975327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.534592, 33.804642, 44.251179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515621, 33.421890, 44.136539>,  <34.504238, 33.192242, 44.067757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.515621, 33.421890, 44.136539>,  <34.534592, 33.804642, 44.251179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515621, 33.421890, 44.136539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761220, -0.151157, 0.630631,
		-0.646757, 0.248077, -0.721223,
		-0.047427, -0.956875, -0.286603,
		34.501392, 33.134827, 44.050560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799606, 33.695210, 44.089745>,  <34.534592, 33.804642, 44.251179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799606, 33.695210, 44.089745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.971981, 33.338875, 44.147293>,  <34.075405, 33.125072, 44.181824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.971981, 33.338875, 44.147293>,  <33.799606, 33.695210, 44.089745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971981, 33.338875, 44.147293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693957, -0.225249, 0.683876,
		-0.576816, -0.394549, -0.715272,
		0.430937, -0.890839, 0.143872,
		34.101261, 33.071625, 44.190456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252033, 33.304794, 44.065876>,  <33.799606, 33.695210, 44.089745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252033, 33.304794, 44.065876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544968, 33.099598, 44.244999>,  <33.720726, 32.976482, 44.352474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544968, 33.099598, 44.244999>,  <33.252033, 33.304794, 44.065876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544968, 33.099598, 44.244999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643768, -0.307259, 0.700824,
		-0.221920, -0.801522, -0.555261,
		0.732335, -0.512986, 0.447807,
		33.764668, 32.945702, 44.379341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045849, 32.555931, 44.085693>,  <33.252033, 33.304794, 44.065876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045849, 32.555931, 44.085693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308922, 32.622219, 44.379627>,  <33.466766, 32.661991, 44.555988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308922, 32.622219, 44.379627>,  <33.045849, 32.555931, 44.085693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308922, 32.622219, 44.379627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678336, -0.293924, 0.673401,
		0.327580, -0.941354, -0.080898,
		0.657687, 0.165717, 0.734838,
		33.506229, 32.671932, 44.600079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061222, 32.007256, 44.416061>,  <33.045849, 32.555931, 44.085693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061222, 32.007256, 44.416061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.237602, 32.233093, 44.695145>,  <33.343430, 32.368595, 44.862595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.237602, 32.233093, 44.695145>,  <33.061222, 32.007256, 44.416061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237602, 32.233093, 44.695145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635174, -0.352929, 0.687019,
		0.634127, -0.746108, 0.202989,
		0.440950, 0.564591, 0.697710,
		33.369888, 32.402470, 44.904457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215752, 31.525288, 44.968861>,  <33.061222, 32.007256, 44.416061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215752, 31.525288, 44.968861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.219776, 31.900482, 45.107471>,  <33.222191, 32.125599, 45.190639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.219776, 31.900482, 45.107471>,  <33.215752, 31.525288, 44.968861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219776, 31.900482, 45.107471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586137, -0.275238, 0.762028,
		0.810150, -0.210778, 0.547019,
		0.010058, 0.937985, 0.346529,
		33.222794, 32.181877, 45.211430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385021, 31.499746, 45.709133>,  <33.215752, 31.525288, 44.968861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385021, 31.499746, 45.709133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.216911, 31.859121, 45.658253>,  <33.116043, 32.074745, 45.627724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.216911, 31.859121, 45.658253>,  <33.385021, 31.499746, 45.709133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216911, 31.859121, 45.658253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615940, -0.179530, 0.767064,
		0.666322, 0.400726, 0.628835,
		-0.420277, 0.898436, -0.127198,
		33.090828, 32.128651, 45.620094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249397, 31.746033, 46.369743>,  <33.385021, 31.499746, 45.709133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249397, 31.746033, 46.369743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.011932, 31.974134, 46.142632>,  <32.869453, 32.110996, 46.006363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.011932, 31.974134, 46.142632>,  <33.249397, 31.746033, 46.369743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011932, 31.974134, 46.142632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708924, -0.036757, 0.704327,
		0.380774, 0.820647, 0.426087,
		-0.593665, 0.570252, -0.567780,
		32.833832, 32.145210, 45.972298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983402, 32.233704, 46.768681>,  <33.249397, 31.746033, 46.369743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983402, 32.233704, 46.768681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716908, 32.197876, 46.472542>,  <32.557011, 32.176380, 46.294861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.716908, 32.197876, 46.472542>,  <32.983402, 32.233704, 46.768681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716908, 32.197876, 46.472542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743119, -0.003462, 0.669150,
		-0.062500, 0.995974, -0.064256,
		-0.666234, -0.089572, -0.740344,
		32.517036, 32.171005, 46.250439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467033, 32.627338, 47.064163>,  <32.983402, 32.233704, 46.768681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467033, 32.627338, 47.064163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326839, 32.399063, 46.767117>,  <32.242722, 32.262096, 46.588890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.326839, 32.399063, 46.767117>,  <32.467033, 32.627338, 47.064163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326839, 32.399063, 46.767117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737015, -0.321195, 0.594678,
		-0.577900, 0.755742, -0.308034,
		-0.350484, -0.570691, -0.742612,
		32.221695, 32.227856, 46.544334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709068, 32.682392, 47.080959>,  <32.467033, 32.627338, 47.064163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709068, 32.682392, 47.080959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.771046, 32.335354, 46.891956>,  <31.808231, 32.127129, 46.778553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.771046, 32.335354, 46.891956>,  <31.709068, 32.682392, 47.080959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771046, 32.335354, 46.891956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764004, -0.408455, 0.499462,
		-0.626331, 0.283610, -0.726137,
		0.154942, -0.867600, -0.472508,
		31.817528, 32.075073, 46.750206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077480, 32.373070, 47.007084>,  <31.709068, 32.682392, 47.080959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077480, 32.373070, 47.007084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.323715, 32.066872, 46.932186>,  <31.471457, 31.883152, 46.887249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.323715, 32.066872, 46.932186>,  <31.077480, 32.373070, 47.007084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323715, 32.066872, 46.932186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643174, -0.625318, 0.441933,
		-0.455387, -0.151617, -0.877288,
		0.615589, -0.765499, -0.187245,
		31.508392, 31.837221, 46.876011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647627, 31.827583, 46.869225>,  <31.077480, 32.373070, 47.007084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647627, 31.827583, 46.869225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.993563, 31.639246, 46.938927>,  <31.201124, 31.526243, 46.980747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.993563, 31.639246, 46.938927>,  <30.647627, 31.827583, 46.869225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993563, 31.639246, 46.938927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491293, -0.722227, 0.486845,
		-0.103378, -0.506651, -0.855931,
		0.864837, -0.470842, 0.174252,
		31.253014, 31.497993, 46.991203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470253, 31.133757, 46.746727>,  <30.647627, 31.827583, 46.869225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470253, 31.133757, 46.746727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.782717, 31.142441, 46.996307>,  <30.970196, 31.147652, 47.146057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.782717, 31.142441, 46.996307>,  <30.470253, 31.133757, 46.746727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782717, 31.142441, 46.996307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467037, -0.642912, 0.607076,
		0.414328, -0.765632, -0.492077,
		0.781159, 0.021710, 0.623955,
		31.017065, 31.148954, 47.183495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670254, 30.415287, 46.889206>,  <30.470253, 31.133757, 46.746727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670254, 30.415287, 46.889206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.856092, 30.627420, 47.172867>,  <30.967596, 30.754700, 47.343063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.856092, 30.627420, 47.172867>,  <30.670254, 30.415287, 46.889206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856092, 30.627420, 47.172867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339495, -0.632966, 0.695771,
		0.817860, -0.564006, -0.114028,
		0.464595, 0.530331, 0.709155,
		30.995470, 30.786520, 47.385612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038006, 29.873478, 47.259552>,  <30.670254, 30.415287, 46.889206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038006, 29.873478, 47.259552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997377, 30.176624, 47.517334>,  <30.973000, 30.358513, 47.672005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997377, 30.176624, 47.517334>,  <31.038006, 29.873478, 47.259552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997377, 30.176624, 47.517334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422974, -0.619234, 0.661545,
		0.900431, -0.205394, 0.383454,
		-0.101571, 0.757867, 0.644454,
		30.966906, 30.403984, 47.710670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956179, 29.543251, 47.811501>,  <31.038006, 29.873478, 47.259552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956179, 29.543251, 47.811501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.863823, 29.906118, 47.952206>,  <30.808409, 30.123838, 48.036629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.863823, 29.906118, 47.952206>,  <30.956179, 29.543251, 47.811501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863823, 29.906118, 47.952206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521197, -0.420605, 0.742594,
		0.821610, -0.011880, 0.569926,
		-0.230891, 0.907166, 0.351765,
		30.794556, 30.178268, 48.057735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050331, 29.501350, 48.499016>,  <30.956179, 29.543251, 47.811501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050331, 29.501350, 48.499016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816320, 29.820168, 48.439060>,  <30.675913, 30.011457, 48.403088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816320, 29.820168, 48.439060>,  <31.050331, 29.501350, 48.499016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816320, 29.820168, 48.439060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685419, -0.387117, 0.616718,
		0.433524, 0.463537, 0.772781,
		-0.585028, 0.797041, -0.149893,
		30.640812, 30.059280, 48.394093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880943, 29.799549, 49.115273>,  <31.050331, 29.501350, 48.499016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880943, 29.799549, 49.115273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.589495, 29.912184, 48.865532>,  <30.414625, 29.979765, 48.715687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.589495, 29.912184, 48.865532>,  <30.880943, 29.799549, 49.115273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589495, 29.912184, 48.865532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683869, -0.349520, 0.640437,
		-0.037885, 0.893613, 0.447237,
		-0.728620, 0.281589, -0.624356,
		30.370909, 29.996660, 48.678226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400726, 30.173079, 49.566639>,  <30.880943, 29.799549, 49.115273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400726, 30.173079, 49.566639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.224787, 30.037571, 49.233948>,  <30.119223, 29.956266, 49.034332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.224787, 30.037571, 49.233948>,  <30.400726, 30.173079, 49.566639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224787, 30.037571, 49.233948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625450, -0.549052, 0.554395,
		-0.644474, 0.764052, 0.029614,
		-0.439847, -0.338771, -0.831726,
		30.092833, 29.935940, 48.984428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642073, 30.266718, 49.711590>,  <30.400726, 30.173079, 49.566639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642073, 30.266718, 49.711590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.672470, 30.002268, 49.413021>,  <29.690708, 29.843597, 49.233879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.672470, 30.002268, 49.413021>,  <29.642073, 30.266718, 49.711590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672470, 30.002268, 49.413021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867251, -0.413224, 0.277708,
		-0.492037, 0.626227, -0.604764,
		0.075995, -0.661124, -0.746417,
		29.695269, 29.803930, 49.189095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998474, 30.235222, 49.318714>,  <29.642073, 30.266718, 49.711590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998474, 30.235222, 49.318714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.168667, 29.881075, 49.243786>,  <29.270782, 29.668587, 49.198830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.168667, 29.881075, 49.243786>,  <28.998474, 30.235222, 49.318714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168667, 29.881075, 49.243786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864058, -0.458980, 0.206741,
		-0.269019, 0.073891, -0.960296,
		0.425480, -0.885368, -0.187321,
		29.296310, 29.615465, 49.187592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519424, 29.842598, 48.822754>,  <28.998474, 30.235222, 49.318714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519424, 29.842598, 48.822754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.754890, 29.621199, 49.058418>,  <28.896170, 29.488359, 49.199818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.754890, 29.621199, 49.058418>,  <28.519424, 29.842598, 48.822754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754890, 29.621199, 49.058418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796442, -0.521887, 0.305474,
		0.138396, -0.649055, -0.748047,
		0.588665, -0.553500, 0.589162,
		28.931490, 29.455149, 49.235168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919823, 29.783806, 48.992851>,  <28.519424, 29.842598, 48.822754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919823, 29.783806, 48.992851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.212046, 29.571115, 49.164223>,  <28.387381, 29.443502, 49.267048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.212046, 29.571115, 49.164223>,  <27.919823, 29.783806, 48.992851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212046, 29.571115, 49.164223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670294, -0.678177, 0.301299,
		0.130345, -0.507292, -0.851860,
		0.730559, -0.531724, 0.428432,
		28.431213, 29.411598, 49.292751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320324, 29.518364, 48.713707>,  <27.919823, 29.783806, 48.992851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320324, 29.518364, 48.713707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.042360, 29.527397, 48.426208>,  <26.875582, 29.532818, 48.253712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.042360, 29.527397, 48.426208>,  <27.320324, 29.518364, 48.713707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042360, 29.527397, 48.426208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623028, 0.518007, -0.586093,
		0.359077, -0.855078, -0.374039,
		-0.694910, 0.022584, -0.718742,
		26.833887, 29.534172, 48.210587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600761, 29.420328, 48.076775>,  <27.320324, 29.518364, 48.713707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600761, 29.420328, 48.076775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.263401, 29.557640, 47.911449>,  <27.060984, 29.640028, 47.812252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.263401, 29.557640, 47.911449>,  <27.600761, 29.420328, 48.076775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263401, 29.557640, 47.911449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524211, 0.357115, -0.773092,
		-0.117787, -0.868693, -0.481143,
		-0.843403, 0.343281, -0.413315,
		27.010380, 29.660624, 47.787457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573683, 29.172476, 47.399624>,  <27.600761, 29.420328, 48.076775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573683, 29.172476, 47.399624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.319597, 29.481277, 47.390545>,  <27.167147, 29.666557, 47.385098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.319597, 29.481277, 47.390545>,  <27.573683, 29.172476, 47.399624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319597, 29.481277, 47.390545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548962, 0.430627, -0.716381,
		-0.543273, -0.467516, -0.697340,
		-0.635213, 0.772003, -0.022701,
		27.129034, 29.712879, 47.383736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314543, 29.300611, 46.735046>,  <27.573683, 29.172476, 47.399624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314543, 29.300611, 46.735046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.291231, 29.656898, 46.915371>,  <27.277245, 29.870670, 47.023567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.291231, 29.656898, 46.915371>,  <27.314543, 29.300611, 46.735046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291231, 29.656898, 46.915371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490714, 0.418815, -0.764063,
		-0.869369, 0.176691, -0.461495,
		-0.058278, 0.890715, 0.450810,
		27.273748, 29.924112, 47.050613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055052, 29.812206, 46.240002>,  <27.314543, 29.300611, 46.735046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055052, 29.812206, 46.240002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.226839, 30.043787, 46.517239>,  <27.329910, 30.182735, 46.683578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.226839, 30.043787, 46.517239>,  <27.055052, 29.812206, 46.240002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226839, 30.043787, 46.517239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422978, 0.549129, -0.720796,
		-0.797902, 0.602720, -0.009051,
		0.429467, 0.578953, 0.693089,
		27.355679, 30.217472, 46.725166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065737, 30.478174, 45.936028>,  <27.055052, 29.812206, 46.240002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065737, 30.478174, 45.936028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.355244, 30.478115, 46.212044>,  <27.528948, 30.478079, 46.377655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.355244, 30.478115, 46.212044>,  <27.065737, 30.478174, 45.936028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355244, 30.478115, 46.212044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627314, 0.416737, -0.657881,
		-0.287469, 0.909027, 0.301713,
		0.723767, -0.000148, 0.690045,
		27.572374, 30.478071, 46.419056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352308, 31.085571, 45.893436>,  <27.065737, 30.478174, 45.936028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352308, 31.085571, 45.893436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.643185, 30.882738, 46.078503>,  <27.817711, 30.761038, 46.189545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.643185, 30.882738, 46.078503>,  <27.352308, 31.085571, 45.893436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643185, 30.882738, 46.078503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686364, 0.527286, -0.500874,
		0.010028, 0.681788, 0.731481,
		0.727189, -0.507085, 0.462667,
		27.861341, 30.730612, 46.217304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749786, 31.560423, 46.139572>,  <27.352308, 31.085571, 45.893436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749786, 31.560423, 46.139572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.997526, 31.247795, 46.169384>,  <28.146170, 31.060219, 46.187271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.997526, 31.247795, 46.169384>,  <27.749786, 31.560423, 46.139572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997526, 31.247795, 46.169384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705035, 0.511900, -0.490800,
		0.345442, 0.356523, 0.868079,
		0.619352, -0.781568, 0.074530,
		28.183332, 31.013325, 46.191742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365072, 31.873161, 46.462650>,  <27.749786, 31.560423, 46.139572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365072, 31.873161, 46.462650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.459717, 31.530100, 46.280025>,  <28.516502, 31.324263, 46.170452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.459717, 31.530100, 46.280025>,  <28.365072, 31.873161, 46.462650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459717, 31.530100, 46.280025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852135, 0.408928, -0.326562,
		0.466777, -0.311781, 0.827594,
		0.236611, -0.857654, -0.456558,
		28.530701, 31.272804, 46.143059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969139, 31.745932, 46.653889>,  <28.365072, 31.873161, 46.462650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969139, 31.745932, 46.653889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.954470, 31.509043, 46.331913>,  <28.945667, 31.366909, 46.138729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.954470, 31.509043, 46.331913>,  <28.969139, 31.745932, 46.653889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954470, 31.509043, 46.331913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872008, 0.374468, -0.315240,
		0.488116, -0.713475, 0.502689,
		-0.036675, -0.592222, -0.804940,
		28.943466, 31.331375, 46.090431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612831, 31.486927, 46.373459>,  <28.969139, 31.745932, 46.653889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612831, 31.486927, 46.373459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.426765, 31.453018, 46.020996>,  <29.315126, 31.432673, 45.809521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.426765, 31.453018, 46.020996>,  <29.612831, 31.486927, 46.373459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426765, 31.453018, 46.020996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762312, 0.467650, -0.447419,
		0.450000, -0.879839, -0.152913,
		-0.465166, -0.084771, -0.881155,
		29.287216, 31.427588, 45.756649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194427, 31.379900, 45.978046>,  <29.612831, 31.486927, 46.373459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194427, 31.379900, 45.978046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.899355, 31.433331, 45.713326>,  <29.722311, 31.465389, 45.554493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.899355, 31.433331, 45.713326>,  <30.194427, 31.379900, 45.978046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899355, 31.433331, 45.713326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672445, 0.232987, -0.702520,
		0.060350, -0.963262, -0.261694,
		-0.737682, 0.133578, -0.661802,
		29.678051, 31.473404, 45.514786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381102, 31.036291, 45.300713>,  <30.194427, 31.379900, 45.978046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381102, 31.036291, 45.300713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125189, 31.338501, 45.244335>,  <29.971642, 31.519827, 45.210510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125189, 31.338501, 45.244335>,  <30.381102, 31.036291, 45.300713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125189, 31.338501, 45.244335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575508, 0.349413, -0.739392,
		-0.509381, -0.554163, -0.658358,
		-0.639783, 0.755522, -0.140940,
		29.933254, 31.565157, 45.202053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345436, 31.088072, 44.629410>,  <30.381102, 31.036291, 45.300713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345436, 31.088072, 44.629410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222151, 31.447451, 44.754498>,  <30.148180, 31.663078, 44.829552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222151, 31.447451, 44.754498>,  <30.345436, 31.088072, 44.629410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222151, 31.447451, 44.754498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651075, 0.438894, -0.619252,
		-0.693618, 0.012746, -0.720230,
		-0.308212, 0.898448, 0.312723,
		30.129686, 31.716986, 44.848316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153452, 31.470066, 43.978855>,  <30.345436, 31.088072, 44.629410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153452, 31.470066, 43.978855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.224083, 31.750938, 44.254757>,  <30.266462, 31.919462, 44.420300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.224083, 31.750938, 44.254757>,  <30.153452, 31.470066, 43.978855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224083, 31.750938, 44.254757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563490, 0.502452, -0.655759,
		-0.807031, 0.504464, -0.306949,
		0.176580, 0.702181, 0.689755,
		30.277058, 31.961594, 44.461685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035099, 32.057987, 43.716522>,  <30.153452, 31.470066, 43.978855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035099, 32.057987, 43.716522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.271994, 32.174007, 44.017223>,  <30.414129, 32.243622, 44.197643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.271994, 32.174007, 44.017223>,  <30.035099, 32.057987, 43.716522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271994, 32.174007, 44.017223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447295, 0.657667, -0.606136,
		-0.670212, 0.695229, 0.259755,
		0.592235, 0.290053, 0.751749,
		30.449665, 32.261024, 44.242748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067444, 32.755283, 43.616100>,  <30.035099, 32.057987, 43.716522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067444, 32.755283, 43.616100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378651, 32.681862, 43.856430>,  <30.565374, 32.637810, 44.000629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378651, 32.681862, 43.856430>,  <30.067444, 32.755283, 43.616100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378651, 32.681862, 43.856430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527325, 0.710650, -0.465732,
		-0.341490, 0.679179, 0.649693,
		0.778019, -0.183556, 0.600827,
		30.612057, 32.626797, 44.036678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280560, 33.394104, 43.896179>,  <30.067444, 32.755283, 43.616100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280560, 33.394104, 43.896179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.587437, 33.137550, 43.893497>,  <30.771563, 32.983620, 43.891888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.587437, 33.137550, 43.893497>,  <30.280560, 33.394104, 43.896179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587437, 33.137550, 43.893497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546503, 0.659101, -0.516643,
		0.335787, 0.392698, 0.856175,
		0.767191, -0.641384, -0.006708,
		30.817595, 32.945133, 43.891483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875042, 33.817898, 43.871895>,  <30.280560, 33.394104, 43.896179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875042, 33.817898, 43.871895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.012787, 33.454674, 43.776527>,  <31.095434, 33.236740, 43.719307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.012787, 33.454674, 43.776527>,  <30.875042, 33.817898, 43.871895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012787, 33.454674, 43.776527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715403, 0.418255, -0.559697,
		0.607959, 0.022171, 0.793659,
		0.344362, -0.908059, -0.238421,
		31.116095, 33.182255, 43.705002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626932, 33.766930, 44.129581>,  <30.875042, 33.817898, 43.871895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626932, 33.766930, 44.129581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.559179, 33.492043, 43.847012>,  <31.518528, 33.327110, 43.677467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.559179, 33.492043, 43.847012>,  <31.626932, 33.766930, 44.129581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559179, 33.492043, 43.847012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626190, 0.478465, -0.615595,
		0.761049, -0.546628, 0.349287,
		-0.169380, -0.687218, -0.706429,
		31.508366, 33.285877, 43.635082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.550060, 33.450352, 31.895498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.222099, 33.678051, 31.871151>,  <39.025322, 33.814671, 31.856543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.222099, 33.678051, 31.871151>,  <39.550060, 33.450352, 31.895498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222099, 33.678051, 31.871151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345472, 0.576747, 0.740278,
		0.456512, 0.585930, -0.669539,
		-0.819906, 0.569253, -0.060870,
		38.976128, 33.848827, 31.852890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750618, 34.089638, 31.823925>,  <39.550060, 33.450352, 31.895498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750618, 34.089638, 31.823925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.374107, 34.125881, 31.954029>,  <39.148201, 34.147625, 32.032093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.374107, 34.125881, 31.954029>,  <39.750618, 34.089638, 31.823925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374107, 34.125881, 31.954029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298325, 0.674336, 0.675480,
		-0.158133, 0.732845, -0.661765,
		-0.941274, 0.090605, 0.325261,
		39.091724, 34.153065, 32.051609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648697, 34.820984, 32.004173>,  <39.750618, 34.089638, 31.823925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648697, 34.820984, 32.004173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.376076, 34.621883, 32.218731>,  <39.212502, 34.502422, 32.347466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.376076, 34.621883, 32.218731>,  <39.648697, 34.820984, 32.004173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376076, 34.621883, 32.218731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550207, 0.134693, 0.824093,
		-0.482443, 0.856797, 0.182066,
		-0.681557, -0.497752, 0.536397,
		39.171608, 34.472557, 32.379650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527512, 35.243317, 32.597038>,  <39.648697, 34.820984, 32.004173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527512, 35.243317, 32.597038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.400692, 34.878803, 32.702137>,  <39.324600, 34.660095, 32.765198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.400692, 34.878803, 32.702137>,  <39.527512, 35.243317, 32.597038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400692, 34.878803, 32.702137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478512, 0.085488, 0.873910,
		-0.818843, 0.402804, 0.408957,
		-0.317053, -0.911286, 0.262748,
		39.305576, 34.605419, 32.780960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460186, 35.271896, 33.372391>,  <39.527512, 35.243317, 32.597038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460186, 35.271896, 33.372391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.395748, 34.879673, 33.327560>,  <39.357086, 34.644341, 33.300663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.395748, 34.879673, 33.327560>,  <39.460186, 35.271896, 33.372391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395748, 34.879673, 33.327560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347339, -0.162627, 0.923530,
		-0.923798, 0.109850, 0.366784,
		-0.161099, -0.980554, -0.112079,
		39.347420, 34.585506, 33.293938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236626, 35.093941, 34.023933>,  <39.460186, 35.271896, 33.372391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236626, 35.093941, 34.023933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402161, 34.786949, 33.828094>,  <39.501480, 34.602753, 33.710590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402161, 34.786949, 33.828094>,  <39.236626, 35.093941, 34.023933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402161, 34.786949, 33.828094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562145, -0.207585, 0.800563,
		-0.716052, -0.606529, 0.345531,
		0.413838, -0.767483, -0.489600,
		39.526314, 34.556705, 33.681213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314941, 34.600674, 34.553795>,  <39.236626, 35.093941, 34.023933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314941, 34.600674, 34.553795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.568901, 34.524597, 34.254265>,  <39.721275, 34.478951, 34.074547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.568901, 34.524597, 34.254265>,  <39.314941, 34.600674, 34.553795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568901, 34.524597, 34.254265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767450, 0.043561, 0.639627,
		-0.089030, -0.980781, 0.173617,
		0.634897, -0.190188, -0.748822,
		39.759369, 34.467541, 34.029617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659565, 33.990299, 34.697247>,  <39.314941, 34.600674, 34.553795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659565, 33.990299, 34.697247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927719, 34.192722, 34.480179>,  <40.088612, 34.314175, 34.349937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927719, 34.192722, 34.480179>,  <39.659565, 33.990299, 34.697247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927719, 34.192722, 34.480179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717251, -0.254570, 0.648649,
		0.190106, -0.824074, -0.533630,
		0.670381, 0.506059, -0.542672,
		40.128834, 34.344540, 34.317375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201218, 33.488258, 34.868645>,  <39.659565, 33.990299, 34.697247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201218, 33.488258, 34.868645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.359039, 33.817535, 34.705338>,  <40.453732, 34.015102, 34.607353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.359039, 33.817535, 34.705338>,  <40.201218, 33.488258, 34.868645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359039, 33.817535, 34.705338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832707, -0.132468, 0.537635,
		0.388493, -0.552097, -0.737742,
		0.394553, 0.823190, -0.408272,
		40.477406, 34.064491, 34.582855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010418, 33.285755, 34.598934>,  <40.201218, 33.488258, 34.868645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010418, 33.285755, 34.598934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.974045, 33.682644, 34.632950>,  <40.952221, 33.920776, 34.653358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.974045, 33.682644, 34.632950>,  <41.010418, 33.285755, 34.598934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974045, 33.682644, 34.632950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773198, 0.016523, 0.633949,
		0.627611, 0.123401, -0.768685,
		-0.090931, 0.992219, 0.085044,
		40.946766, 33.980309, 34.658463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698174, 33.558956, 34.447063>,  <41.010418, 33.285755, 34.598934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698174, 33.558956, 34.447063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503994, 33.815685, 34.684517>,  <41.387486, 33.969723, 34.826988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503994, 33.815685, 34.684517>,  <41.698174, 33.558956, 34.447063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503994, 33.815685, 34.684517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760675, -0.024617, 0.648666,
		0.430943, 0.766456, -0.476270,
		-0.485449, 0.641825, 0.593633,
		41.358360, 34.008232, 34.862606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160641, 34.034241, 34.514542>,  <41.698174, 33.558956, 34.447063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160641, 34.034241, 34.514542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.908276, 34.079521, 34.821560>,  <41.756855, 34.106689, 35.005772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.908276, 34.079521, 34.821560>,  <42.160641, 34.034241, 34.514542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908276, 34.079521, 34.821560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764259, 0.261063, 0.589707,
		-0.133626, 0.958662, -0.251220,
		-0.630914, 0.113197, 0.767550,
		41.719002, 34.113480, 35.051826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456520, 34.590683, 34.834454>,  <42.160641, 34.034241, 34.514542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456520, 34.590683, 34.834454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.209412, 34.447048, 35.114288>,  <42.061146, 34.360867, 35.282188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.209412, 34.447048, 35.114288>,  <42.456520, 34.590683, 34.834454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209412, 34.447048, 35.114288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659264, 0.248441, 0.709681,
		-0.428642, 0.899630, 0.083253,
		-0.617767, -0.359085, 0.699587,
		42.024082, 34.339321, 35.324165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488148, 35.084984, 35.340355>,  <42.456520, 34.590683, 34.834454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488148, 35.084984, 35.340355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.344688, 34.772175, 35.544239>,  <42.258614, 34.584488, 35.666569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.344688, 34.772175, 35.544239>,  <42.488148, 35.084984, 35.340355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344688, 34.772175, 35.544239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523919, 0.283285, 0.803280,
		-0.772579, 0.555144, 0.308117,
		-0.358652, -0.782026, 0.509710,
		42.237095, 34.537567, 35.697151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160000, 35.339260, 35.992180>,  <42.488148, 35.084984, 35.340355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160000, 35.339260, 35.992180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.290501, 34.963543, 36.034664>,  <42.368801, 34.738113, 36.060154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.290501, 34.963543, 36.034664>,  <42.160000, 35.339260, 35.992180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290501, 34.963543, 36.034664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709578, 0.317592, 0.628995,
		-0.624545, -0.129844, 0.770119,
		0.326255, -0.939296, 0.106215,
		42.388378, 34.681755, 36.066528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374458, 35.367706, 36.658775>,  <42.160000, 35.339260, 35.992180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374458, 35.367706, 36.658775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.528908, 35.016541, 36.545513>,  <42.621578, 34.805843, 36.477554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.528908, 35.016541, 36.545513>,  <42.374458, 35.367706, 36.658775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528908, 35.016541, 36.545513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759382, 0.128255, 0.637879,
		-0.523683, -0.461329, 0.716192,
		0.386128, -0.877910, -0.283160,
		42.644745, 34.753166, 36.460564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531609, 35.010891, 37.293530>,  <42.374458, 35.367706, 36.658775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531609, 35.010891, 37.293530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763481, 34.860085, 37.004578>,  <42.902603, 34.769600, 36.831207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763481, 34.860085, 37.004578>,  <42.531609, 35.010891, 37.293530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763481, 34.860085, 37.004578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808953, 0.159836, 0.565727,
		-0.097824, -0.912312, 0.397639,
		0.579677, -0.377013, -0.722382,
		42.937386, 34.746979, 36.787865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929150, 34.555954, 37.645348>,  <42.531609, 35.010891, 37.293530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929150, 34.555954, 37.645348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.136181, 34.641197, 37.313877>,  <43.260399, 34.692345, 37.114994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.136181, 34.641197, 37.313877>,  <42.929150, 34.555954, 37.645348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136181, 34.641197, 37.313877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772882, 0.299080, 0.559647,
		0.367104, -0.930127, -0.009910,
		0.517579, 0.213108, -0.828672,
		43.291454, 34.705128, 37.065277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500317, 34.206635, 37.721825>,  <42.929150, 34.555954, 37.645348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500317, 34.206635, 37.721825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.615761, 34.473785, 37.447411>,  <43.685028, 34.634075, 37.282764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.615761, 34.473785, 37.447411>,  <43.500317, 34.206635, 37.721825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615761, 34.473785, 37.447411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734724, 0.304935, 0.605966,
		0.613907, -0.678935, -0.402697,
		0.288615, 0.667878, -0.686032,
		43.702347, 34.674149, 37.241600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205364, 34.205761, 37.869160>,  <43.500317, 34.206635, 37.721825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205364, 34.205761, 37.869160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.187550, 34.520050, 37.622372>,  <44.176861, 34.708626, 37.474300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.187550, 34.520050, 37.622372>,  <44.205364, 34.205761, 37.869160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187550, 34.520050, 37.622372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755465, 0.430587, 0.493830,
		0.653674, -0.444108, -0.612763,
		-0.044535, 0.785725, -0.616971,
		44.174191, 34.755768, 37.437279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941189, 34.334286, 37.620754>,  <44.205364, 34.205761, 37.869160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941189, 34.334286, 37.620754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705124, 34.656124, 37.594414>,  <44.563484, 34.849228, 37.578609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705124, 34.656124, 37.594414>,  <44.941189, 34.334286, 37.620754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705124, 34.656124, 37.594414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731249, 0.567351, 0.378666,
		0.342037, 0.175316, -0.923187,
		-0.590158, 0.804597, -0.065856,
		44.528076, 34.897503, 37.574657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984467, 33.605068, 37.198414>,  <44.941189, 34.334286, 37.620754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984467, 33.605068, 37.198414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.113594, 33.965454, 37.082443>,  <45.191071, 34.181686, 37.012859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.113594, 33.965454, 37.082443>,  <44.984467, 33.605068, 37.198414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113594, 33.965454, 37.082443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139017, -0.257872, -0.956126,
		-0.936196, 0.348959, 0.042003,
		0.322817, 0.900961, -0.289929,
		45.210438, 34.235741, 36.995464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449215, 34.129204, 36.984486>,  <44.984467, 33.605068, 37.198414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449215, 34.129204, 36.984486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806923, 34.138859, 36.805737>,  <45.021549, 34.144653, 36.698486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806923, 34.138859, 36.805737>,  <44.449215, 34.129204, 36.984486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806923, 34.138859, 36.805737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417947, -0.311953, -0.853233,
		-0.160003, 0.949791, -0.268881,
		0.894271, 0.024142, -0.446875,
		45.075203, 34.146103, 36.671673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443436, 34.666710, 36.416698>,  <44.449215, 34.129204, 36.984486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443436, 34.666710, 36.416698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.719151, 34.387012, 36.340870>,  <44.884579, 34.219193, 36.295372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.719151, 34.387012, 36.340870>,  <44.443436, 34.666710, 36.416698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719151, 34.387012, 36.340870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322781, -0.062136, -0.944432,
		0.648611, 0.712175, -0.268533,
		0.689287, -0.699246, -0.189574,
		44.925938, 34.177238, 36.283997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717155, 34.829399, 35.774139>,  <44.443436, 34.666710, 36.416698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717155, 34.829399, 35.774139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834297, 34.447834, 35.800339>,  <44.904583, 34.218895, 35.816059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834297, 34.447834, 35.800339>,  <44.717155, 34.829399, 35.774139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834297, 34.447834, 35.800339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312924, -0.160345, -0.936145,
		0.903503, 0.253655, -0.345459,
		0.292851, -0.953912, 0.065498,
		44.922153, 34.161659, 35.819988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885719, 34.694057, 35.135216>,  <44.717155, 34.829399, 35.774139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885719, 34.694057, 35.135216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831379, 34.324238, 35.277626>,  <44.798775, 34.102345, 35.363071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831379, 34.324238, 35.277626>,  <44.885719, 34.694057, 35.135216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831379, 34.324238, 35.277626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325105, -0.297854, -0.897546,
		0.935869, -0.237678, -0.260111,
		-0.135852, -0.924549, 0.356023,
		44.790623, 34.046871, 35.384434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065399, 34.236599, 34.653828>,  <44.885719, 34.694057, 35.135216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065399, 34.236599, 34.653828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.863838, 33.987022, 34.892754>,  <44.742901, 33.837276, 35.036110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.863838, 33.987022, 34.892754>,  <45.065399, 34.236599, 34.653828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863838, 33.987022, 34.892754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384673, -0.457058, -0.801950,
		0.773376, -0.633874, -0.009701,
		-0.503902, -0.623940, 0.597312,
		44.712669, 33.799839, 35.071949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212223, 33.518936, 34.398403>,  <45.065399, 34.236599, 34.653828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212223, 33.518936, 34.398403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.876240, 33.481613, 34.612228>,  <44.674648, 33.459221, 34.740524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.876240, 33.481613, 34.612228>,  <45.212223, 33.518936, 34.398403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876240, 33.481613, 34.612228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396055, -0.568012, -0.721459,
		0.370954, -0.817715, 0.440154,
		-0.839960, -0.093304, 0.534566,
		44.624252, 33.453621, 34.772598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007668, 32.812004, 34.299629>,  <45.212223, 33.518936, 34.398403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007668, 32.812004, 34.299629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.685390, 33.011406, 34.427601>,  <44.492023, 33.131046, 34.504383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.685390, 33.011406, 34.427601>,  <45.007668, 32.812004, 34.299629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685390, 33.011406, 34.427601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569769, -0.504546, -0.648688,
		-0.161955, -0.704928, 0.690541,
		-0.805688, 0.498508, 0.319932,
		44.443684, 33.160957, 34.523579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534599, 32.360573, 34.227585>,  <45.007668, 32.812004, 34.299629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534599, 32.360573, 34.227585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.340374, 32.709953, 34.242035>,  <44.223839, 32.919582, 34.250706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.340374, 32.709953, 34.242035>,  <44.534599, 32.360573, 34.227585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340374, 32.709953, 34.242035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745271, -0.391994, -0.539362,
		-0.456947, -0.288819, 0.841299,
		-0.485562, 0.873455, 0.036128,
		44.194706, 32.971989, 34.252872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875210, 32.153515, 34.261509>,  <44.534599, 32.360573, 34.227585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875210, 32.153515, 34.261509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.816227, 32.532215, 34.147015>,  <43.780838, 32.759434, 34.078320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.816227, 32.532215, 34.147015>,  <43.875210, 32.153515, 34.261509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816227, 32.532215, 34.147015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765448, -0.292506, -0.573175,
		-0.626376, 0.134579, 0.767816,
		-0.147453, 0.946746, -0.286232,
		43.771992, 32.816238, 34.061146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234806, 32.442463, 34.497173>,  <43.875210, 32.153515, 34.261509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234806, 32.442463, 34.497173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.359440, 32.615318, 34.158665>,  <43.434219, 32.719032, 33.955559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.359440, 32.615318, 34.158665>,  <43.234806, 32.442463, 34.497173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359440, 32.615318, 34.158665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824024, -0.320612, -0.467110,
		-0.473179, 0.842892, 0.256193,
		0.311585, 0.432137, -0.846270,
		43.452915, 32.744961, 33.904785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654713, 32.647709, 34.319363>,  <43.234806, 32.442463, 34.497173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654713, 32.647709, 34.319363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.894733, 32.655376, 33.999470>,  <43.038746, 32.659977, 33.807533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.894733, 32.655376, 33.999470>,  <42.654713, 32.647709, 34.319363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894733, 32.655376, 33.999470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779579, -0.210222, -0.589969,
		-0.179429, 0.977466, -0.111203,
		0.600052, 0.019166, -0.799731,
		43.074749, 32.661125, 33.759552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286491, 32.991623, 33.859882>,  <42.654713, 32.647709, 34.319363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286491, 32.991623, 33.859882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541733, 32.795227, 33.622650>,  <42.694878, 32.677387, 33.480312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541733, 32.795227, 33.622650>,  <42.286491, 32.991623, 33.859882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541733, 32.795227, 33.622650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745278, -0.200458, -0.635907,
		0.193338, 0.847787, -0.493840,
		0.638108, -0.490993, -0.593080,
		42.733166, 32.647930, 33.444725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049297, 33.117325, 33.221859>,  <42.286491, 32.991623, 33.859882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049297, 33.117325, 33.221859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.270443, 32.788845, 33.165321>,  <42.403130, 32.591759, 33.131397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.270443, 32.788845, 33.165321>,  <42.049297, 33.117325, 33.221859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270443, 32.788845, 33.165321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598349, -0.273185, -0.753225,
		0.579935, 0.501001, -0.642396,
		0.552860, -0.821199, -0.141344,
		42.436302, 32.542484, 33.122917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326591, 33.159321, 32.542767>,  <42.049297, 33.117325, 33.221859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326591, 33.159321, 32.542767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347652, 32.779114, 32.665241>,  <42.360291, 32.550991, 32.738728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347652, 32.779114, 32.665241>,  <42.326591, 33.159321, 32.542767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347652, 32.779114, 32.665241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508987, -0.289342, -0.810687,
		0.859162, -0.113160, -0.499035,
		0.052655, -0.950513, 0.306188,
		42.363449, 32.493961, 32.757099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582428, 32.734524, 31.956133>,  <42.326591, 33.159321, 32.542767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582428, 32.734524, 31.956133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368492, 32.503345, 32.202682>,  <42.240131, 32.364639, 32.350613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368492, 32.503345, 32.202682>,  <42.582428, 32.734524, 31.956133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368492, 32.503345, 32.202682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635364, -0.205796, -0.744285,
		0.557006, -0.789698, -0.257140,
		-0.534842, -0.577949, 0.616376,
		42.208038, 32.329960, 32.387596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111305, 32.416962, 31.506575>,  <42.582428, 32.734524, 31.956133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111305, 32.416962, 31.506575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.947033, 32.291985, 31.849203>,  <41.848469, 32.216999, 32.054779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.947033, 32.291985, 31.849203>,  <42.111305, 32.416962, 31.506575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947033, 32.291985, 31.849203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779195, -0.367597, -0.507670,
		0.473491, -0.875930, -0.092486,
		-0.410685, -0.312441, 0.856573,
		41.823826, 32.198254, 32.106174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894238, 31.575254, 31.485573>,  <42.111305, 32.416962, 31.506575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894238, 31.575254, 31.485573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.672890, 31.774572, 31.752552>,  <41.540081, 31.894163, 31.912739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.672890, 31.774572, 31.752552>,  <41.894238, 31.575254, 31.485573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672890, 31.774572, 31.752552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828905, -0.408188, -0.382491,
		0.081851, -0.764909, 0.638917,
		-0.553369, 0.498294, 0.667448,
		41.506878, 31.924061, 31.952785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391781, 31.104843, 31.699244>,  <41.894238, 31.575254, 31.485573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391781, 31.104843, 31.699244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237324, 31.456987, 31.809414>,  <41.144650, 31.668274, 31.875517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237324, 31.456987, 31.809414>,  <41.391781, 31.104843, 31.699244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237324, 31.456987, 31.809414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907286, -0.308569, -0.285687,
		-0.166520, -0.360205, 0.917891,
		-0.386139, 0.880363, 0.275426,
		41.121483, 31.721096, 31.892042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779285, 31.015881, 31.899996>,  <41.391781, 31.104843, 31.699244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779285, 31.015881, 31.899996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747238, 31.412567, 31.859827>,  <40.728012, 31.650579, 31.835726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747238, 31.412567, 31.859827>,  <40.779285, 31.015881, 31.899996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747238, 31.412567, 31.859827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921953, -0.112021, -0.370747,
		-0.378925, 0.062883, 0.923289,
		-0.080114, 0.991715, -0.100423,
		40.723206, 31.710081, 31.829700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128635, 31.158634, 32.120415>,  <40.779285, 31.015881, 31.899996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128635, 31.158634, 32.120415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.215523, 31.469376, 31.884005>,  <40.267654, 31.655821, 31.742157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.215523, 31.469376, 31.884005>,  <40.128635, 31.158634, 32.120415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215523, 31.469376, 31.884005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898521, -0.077456, -0.432041,
		-0.381411, 0.624900, 0.681194,
		0.217220, 0.776853, -0.591029,
		40.280689, 31.702431, 31.706696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.836170, 34.311989, 42.948460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623070, 34.202457, 42.628162>,  <36.495209, 34.136738, 42.435986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623070, 34.202457, 42.628162>,  <36.836170, 34.311989, 42.948460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623070, 34.202457, 42.628162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774931, 0.222389, -0.591629,
		0.340081, -0.935714, 0.093719,
		-0.532754, -0.273828, -0.800745,
		36.463245, 34.120308, 42.387939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235569, 33.816631, 42.582890>,  <36.836170, 34.311989, 42.948460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235569, 33.816631, 42.582890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994217, 33.957359, 42.296627>,  <36.849407, 34.041794, 42.124870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994217, 33.957359, 42.296627>,  <37.235569, 33.816631, 42.582890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994217, 33.957359, 42.296627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796113, 0.213673, -0.566169,
		-0.046271, -0.911356, -0.409011,
		-0.603376, 0.351816, -0.715655,
		36.813206, 34.062904, 42.081932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550991, 33.624645, 41.949982>,  <37.235569, 33.816631, 42.582890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550991, 33.624645, 41.949982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294937, 33.914070, 41.846687>,  <37.141304, 34.087727, 41.784710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294937, 33.914070, 41.846687>,  <37.550991, 33.624645, 41.949982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294937, 33.914070, 41.846687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602900, 0.264786, -0.752595,
		-0.476172, -0.637452, -0.605734,
		-0.640134, 0.723563, -0.258237,
		37.102898, 34.131138, 41.769215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466839, 33.560013, 41.281780>,  <37.550991, 33.624645, 41.949982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466839, 33.560013, 41.281780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346367, 33.936249, 41.344490>,  <37.274086, 34.161991, 41.382118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346367, 33.936249, 41.344490>,  <37.466839, 33.560013, 41.281780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346367, 33.936249, 41.344490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435186, 0.281871, -0.855080,
		-0.848472, -0.189304, -0.494226,
		-0.301178, 0.940592, 0.156777,
		37.256012, 34.218426, 41.391521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235291, 33.739620, 40.584114>,  <37.466839, 33.560013, 41.281780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235291, 33.739620, 40.584114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302860, 34.068707, 40.801220>,  <37.343403, 34.266159, 40.931484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302860, 34.068707, 40.801220>,  <37.235291, 33.739620, 40.584114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302860, 34.068707, 40.801220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483141, 0.410866, -0.773152,
		-0.859092, 0.392837, -0.328084,
		0.168924, 0.822720, 0.542767,
		37.353539, 34.315521, 40.964050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876278, 34.195969, 40.262768>,  <37.235291, 33.739620, 40.584114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876278, 34.195969, 40.262768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142471, 34.397354, 40.483189>,  <37.302185, 34.518185, 40.615440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142471, 34.397354, 40.483189>,  <36.876278, 34.195969, 40.262768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142471, 34.397354, 40.483189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357937, 0.432594, -0.827492,
		-0.654994, 0.747923, 0.107675,
		0.665480, 0.503461, 0.551056,
		37.342117, 34.548393, 40.648506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745747, 34.823708, 39.963917>,  <36.876278, 34.195969, 40.262768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745747, 34.823708, 39.963917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091331, 34.824394, 40.165337>,  <37.298683, 34.824806, 40.286190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091331, 34.824394, 40.165337>,  <36.745747, 34.823708, 39.963917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091331, 34.824394, 40.165337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424047, 0.536832, -0.729380,
		-0.271573, 0.843687, 0.463077,
		0.863963, 0.001714, 0.503552,
		37.350521, 34.824909, 40.316402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959305, 35.508793, 39.877583>,  <36.745747, 34.823708, 39.963917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959305, 35.508793, 39.877583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283298, 35.285610, 39.949821>,  <37.477695, 35.151703, 39.993164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283298, 35.285610, 39.949821>,  <36.959305, 35.508793, 39.877583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283298, 35.285610, 39.949821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531808, 0.569005, -0.627226,
		0.247201, 0.604087, 0.757609,
		0.809982, -0.557954, 0.180600,
		37.526295, 35.118225, 40.004002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380592, 35.936710, 39.824905>,  <36.959305, 35.508793, 39.877583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380592, 35.936710, 39.824905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605553, 35.607807, 39.790043>,  <37.740528, 35.410465, 39.769123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605553, 35.607807, 39.790043>,  <37.380592, 35.936710, 39.824905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605553, 35.607807, 39.790043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619327, 0.488737, -0.614467,
		0.547848, 0.291597, 0.784113,
		0.562402, -0.822257, -0.087159,
		37.774273, 35.361130, 39.763897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110130, 36.107826, 40.005039>,  <37.380592, 35.936710, 39.824905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110130, 36.107826, 40.005039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128105, 35.785553, 39.768780>,  <38.138889, 35.592190, 39.627026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128105, 35.785553, 39.768780>,  <38.110130, 36.107826, 40.005039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128105, 35.785553, 39.768780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527762, 0.521148, -0.670725,
		0.848202, -0.281577, 0.448628,
		0.044941, -0.805679, -0.590645,
		38.141586, 35.543850, 39.591587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854565, 35.991734, 39.881931>,  <38.110130, 36.107826, 40.005039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854565, 35.991734, 39.881931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657612, 35.808853, 39.585682>,  <38.539440, 35.699123, 39.407932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657612, 35.808853, 39.585682>,  <38.854565, 35.991734, 39.881931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657612, 35.808853, 39.585682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561283, 0.483558, -0.671664,
		0.665222, -0.746416, 0.018525,
		-0.492382, -0.457204, -0.740624,
		38.509895, 35.671692, 39.363495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315254, 35.743710, 39.414196>,  <38.854565, 35.991734, 39.881931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315254, 35.743710, 39.414196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987309, 35.792267, 39.190380>,  <38.790543, 35.821400, 39.056091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987309, 35.792267, 39.190380>,  <39.315254, 35.743710, 39.414196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987309, 35.792267, 39.190380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523057, 0.556288, -0.645721,
		0.232883, -0.822076, -0.519573,
		-0.819864, 0.121389, -0.559542,
		38.741348, 35.828682, 39.022518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513107, 35.595760, 38.787754>,  <39.315254, 35.743710, 39.414196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513107, 35.595760, 38.787754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199703, 35.843857, 38.772701>,  <39.011662, 35.992714, 38.763672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199703, 35.843857, 38.772701>,  <39.513107, 35.595760, 38.787754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199703, 35.843857, 38.772701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569163, 0.692055, -0.443976,
		-0.249329, -0.369277, -0.895248,
		-0.783511, 0.620238, -0.037630,
		38.964649, 36.029926, 38.761414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562500, 35.542477, 38.125870>,  <39.513107, 35.595760, 38.787754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562500, 35.542477, 38.125870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268444, 35.562721, 37.855461>,  <39.092010, 35.574867, 37.693214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268444, 35.562721, 37.855461>,  <39.562500, 35.542477, 38.125870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268444, 35.562721, 37.855461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007570, -0.997760, -0.066464,
		-0.677876, -0.043743, 0.733874,
		-0.735138, 0.050610, -0.676026,
		39.047901, 35.577904, 37.652653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109325, 35.079536, 38.284233>,  <39.562500, 35.542477, 38.125870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109325, 35.079536, 38.284233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452530, 34.874084, 38.283730>,  <40.658451, 34.750813, 38.283428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452530, 34.874084, 38.283730>,  <40.109325, 35.079536, 38.284233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452530, 34.874084, 38.283730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481382, -0.804995, 0.346777,
		-0.179123, -0.296935, -0.937947,
		0.858013, -0.513627, -0.001254,
		40.709934, 34.719997, 38.283352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011562, 34.519272, 37.837887>,  <40.109325, 35.079536, 38.284233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011562, 34.519272, 37.837887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278435, 34.452309, 38.128223>,  <40.438557, 34.412132, 38.302425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278435, 34.452309, 38.128223>,  <40.011562, 34.519272, 37.837887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278435, 34.452309, 38.128223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509546, -0.813344, 0.280774,
		0.543356, -0.557177, -0.627947,
		0.667178, -0.167408, 0.725843,
		40.478588, 34.402088, 38.345978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201664, 33.849884, 37.736198>,  <40.011562, 34.519272, 37.837887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201664, 33.849884, 37.736198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294033, 33.929401, 38.117176>,  <40.349453, 33.977112, 38.345764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294033, 33.929401, 38.117176>,  <40.201664, 33.849884, 37.736198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294033, 33.929401, 38.117176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436949, -0.853451, 0.284072,
		0.869340, -0.481769, -0.110215,
		0.230920, 0.198797, 0.952447,
		40.363308, 33.989040, 38.402908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303772, 33.193935, 38.047890>,  <40.201664, 33.849884, 37.736198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303772, 33.193935, 38.047890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284485, 33.420605, 38.376904>,  <40.272911, 33.556606, 38.574310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284485, 33.420605, 38.376904>,  <40.303772, 33.193935, 38.047890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284485, 33.420605, 38.376904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325731, -0.787392, 0.523368,
		0.944232, -0.242688, 0.222549,
		-0.048218, 0.566672, 0.822532,
		40.270020, 33.590607, 38.623665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418655, 32.696732, 38.626976>,  <40.303772, 33.193935, 38.047890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418655, 32.696732, 38.626976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257061, 33.010410, 38.815372>,  <40.160107, 33.198616, 38.928410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257061, 33.010410, 38.815372>,  <40.418655, 32.696732, 38.626976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257061, 33.010410, 38.815372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428011, -0.617084, 0.660313,
		0.808457, 0.065165, 0.584936,
		-0.403984, 0.784194, 0.470995,
		40.135864, 33.245670, 38.956673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462742, 32.482246, 39.348293>,  <40.418655, 32.696732, 38.626976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462742, 32.482246, 39.348293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188553, 32.769161, 39.298290>,  <40.024040, 32.941311, 39.268288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188553, 32.769161, 39.298290>,  <40.462742, 32.482246, 39.348293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188553, 32.769161, 39.298290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605914, -0.466765, 0.644204,
		0.403733, 0.517324, 0.754570,
		-0.685469, 0.717291, -0.125005,
		39.982914, 32.984348, 39.260788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275875, 32.763130, 40.032936>,  <40.462742, 32.482246, 39.348293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275875, 32.763130, 40.032936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967865, 32.792583, 39.779434>,  <39.783058, 32.810257, 39.627335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967865, 32.792583, 39.779434>,  <40.275875, 32.763130, 40.032936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967865, 32.792583, 39.779434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560889, -0.551546, 0.617414,
		-0.304082, 0.830888, 0.466003,
		-0.770024, 0.073632, -0.633752,
		39.736858, 32.814674, 39.589310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729759, 33.004494, 40.436497>,  <40.275875, 32.763130, 40.032936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729759, 33.004494, 40.436497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576447, 32.838753, 40.106308>,  <39.484459, 32.739307, 39.908195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576447, 32.838753, 40.106308>,  <39.729759, 33.004494, 40.436497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576447, 32.838753, 40.106308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580987, -0.586612, 0.564216,
		-0.718017, 0.695843, -0.015896,
		-0.383282, -0.414353, -0.825474,
		39.461464, 32.714447, 39.858665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103630, 32.984180, 40.594009>,  <39.729759, 33.004494, 40.436497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103630, 32.984180, 40.594009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138596, 32.715607, 40.299652>,  <39.159576, 32.554462, 40.123039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138596, 32.715607, 40.299652>,  <39.103630, 32.984180, 40.594009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138596, 32.715607, 40.299652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679355, -0.580470, 0.448923,
		-0.728585, 0.460691, -0.506880,
		0.087414, -0.671430, -0.735894,
		39.164818, 32.514179, 40.078884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537003, 32.531551, 40.653831>,  <39.103630, 32.984180, 40.594009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537003, 32.531551, 40.653831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714592, 32.310753, 40.371506>,  <38.821148, 32.178272, 40.202110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714592, 32.310753, 40.371506>,  <38.537003, 32.531551, 40.653831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714592, 32.310753, 40.371506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614262, -0.760988, 0.208758,
		-0.652354, 0.340873, -0.676935,
		0.443979, -0.551999, -0.705819,
		38.847786, 32.145153, 40.159760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018219, 32.227783, 40.242542>,  <38.537003, 32.531551, 40.653831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018219, 32.227783, 40.242542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339905, 32.002068, 40.167908>,  <38.532917, 31.866638, 40.123127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339905, 32.002068, 40.167908>,  <38.018219, 32.227783, 40.242542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339905, 32.002068, 40.167908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542653, -0.825206, 0.156723,
		-0.242407, -0.024789, -0.969858,
		0.804218, -0.564287, -0.186584,
		38.581169, 31.832781, 40.111931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803402, 31.696659, 39.830360>,  <38.018219, 32.227783, 40.242542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803402, 31.696659, 39.830360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134678, 31.545948, 39.996319>,  <38.333443, 31.455521, 40.095894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134678, 31.545948, 39.996319>,  <37.803402, 31.696659, 39.830360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134678, 31.545948, 39.996319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498940, -0.832852, 0.239616,
		0.255269, -0.405458, -0.877748,
		0.828189, -0.376777, 0.414901,
		38.383133, 31.432915, 40.120789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936974, 30.877674, 39.581730>,  <37.803402, 31.696659, 39.830360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936974, 30.877674, 39.581730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119999, 30.936666, 39.932476>,  <38.229813, 30.972061, 40.142921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119999, 30.936666, 39.932476>,  <37.936974, 30.877674, 39.581730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119999, 30.936666, 39.932476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415167, -0.836622, 0.357353,
		0.786305, -0.527555, -0.321575,
		0.457560, 0.147481, 0.876863,
		38.257267, 30.980911, 40.195534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146679, 30.195108, 39.846062>,  <37.936974, 30.877674, 39.581730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146679, 30.195108, 39.846062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147549, 30.424837, 40.173512>,  <38.148071, 30.562674, 40.369984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147549, 30.424837, 40.173512>,  <38.146679, 30.195108, 39.846062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147549, 30.424837, 40.173512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386944, -0.754376, 0.530274,
		0.922101, -0.317917, 0.220588,
		0.002177, 0.574321, 0.818627,
		38.148201, 30.597134, 40.419098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060158, 29.447491, 39.551212>,  <38.146679, 30.195108, 39.846062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060158, 29.447491, 39.551212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693867, 29.450428, 39.390514>,  <37.474094, 29.452190, 39.294094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693867, 29.450428, 39.390514>,  <38.060158, 29.447491, 39.551212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693867, 29.450428, 39.390514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370877, 0.400154, -0.838050,
		0.154603, -0.916418, -0.369155,
		-0.915723, 0.007346, -0.401743,
		37.419151, 29.452631, 39.269993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182915, 29.144499, 38.942528>,  <38.060158, 29.447491, 39.551212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182915, 29.144499, 38.942528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848972, 29.360863, 38.901684>,  <37.648605, 29.490681, 38.877178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848972, 29.360863, 38.901684>,  <38.182915, 29.144499, 38.942528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848972, 29.360863, 38.901684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332238, 0.347234, -0.876953,
		-0.438896, -0.766057, -0.469603,
		-0.834858, 0.540910, -0.102114,
		37.598515, 29.523136, 38.871048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131615, 29.168886, 38.220337>,  <38.182915, 29.144499, 38.942528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131615, 29.168886, 38.220337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898350, 29.463823, 38.356716>,  <37.758392, 29.640785, 38.438545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898350, 29.463823, 38.356716>,  <38.131615, 29.168886, 38.220337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898350, 29.463823, 38.356716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147182, 0.508662, -0.848293,
		-0.798912, -0.444509, -0.405156,
		-0.583161, 0.737343, 0.340953,
		37.723400, 29.685026, 38.459003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682297, 29.391678, 37.595654>,  <38.131615, 29.168886, 38.220337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682297, 29.391678, 37.595654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635090, 29.699625, 37.846531>,  <37.606766, 29.884394, 37.997059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635090, 29.699625, 37.846531>,  <37.682297, 29.391678, 37.595654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635090, 29.699625, 37.846531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150080, 0.638185, -0.755113,
		-0.981605, 0.005016, -0.190857,
		-0.118014, 0.769867, 0.627198,
		37.599686, 29.930586, 38.034691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283077, 29.856344, 37.222767>,  <37.682297, 29.391678, 37.595654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283077, 29.856344, 37.222767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431217, 30.090557, 37.511208>,  <37.520103, 30.231085, 37.684273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431217, 30.090557, 37.511208>,  <37.283077, 29.856344, 37.222767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431217, 30.090557, 37.511208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047058, 0.787136, -0.614982,
		-0.927698, 0.193826, 0.319072,
		0.370352, 0.585533, 0.721103,
		37.542324, 30.266216, 37.727539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925163, 30.483232, 37.164207>,  <37.283077, 29.856344, 37.222767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925163, 30.483232, 37.164207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276737, 30.540129, 37.346302>,  <37.487682, 30.574266, 37.455559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276737, 30.540129, 37.346302>,  <36.925163, 30.483232, 37.164207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276737, 30.540129, 37.346302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120176, 0.857647, -0.500000,
		-0.461556, 0.494176, 0.736720,
		0.878934, 0.142242, 0.455240,
		37.540417, 30.582802, 37.482876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935513, 31.291973, 37.321686>,  <36.925163, 30.483232, 37.164207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935513, 31.291973, 37.321686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310276, 31.152414, 37.330418>,  <37.535133, 31.068680, 37.335655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310276, 31.152414, 37.330418>,  <36.935513, 31.291973, 37.321686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310276, 31.152414, 37.330418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282601, 0.719162, -0.634778,
		0.205772, 0.600898, 0.772386,
		0.936907, -0.348896, 0.021831,
		37.591347, 31.047745, 37.336967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240524, 31.861107, 37.314682>,  <36.935513, 31.291973, 37.321686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240524, 31.861107, 37.314682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525364, 31.610241, 37.188454>,  <37.696266, 31.459721, 37.112717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525364, 31.610241, 37.188454>,  <37.240524, 31.861107, 37.314682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525364, 31.610241, 37.188454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400086, 0.731843, -0.551668,
		0.576933, 0.266586, 0.772062,
		0.712095, -0.627167, -0.315567,
		37.738991, 31.422091, 37.093784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988873, 32.186356, 37.378803>,  <37.240524, 31.861107, 37.314682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988873, 32.186356, 37.378803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992031, 31.910093, 37.089546>,  <37.993927, 31.744335, 36.915993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992031, 31.910093, 37.089546>,  <37.988873, 32.186356, 37.378803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992031, 31.910093, 37.089546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324549, 0.685782, -0.651438,
		0.945836, -0.229551, 0.229566,
		0.007894, -0.690659, -0.723138,
		37.994400, 31.702896, 36.872604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644943, 32.254375, 36.888527>,  <37.988873, 32.186356, 37.378803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644943, 32.254375, 36.888527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419418, 32.005692, 36.671055>,  <38.284103, 31.856480, 36.540573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419418, 32.005692, 36.671055>,  <38.644943, 32.254375, 36.888527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419418, 32.005692, 36.671055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423782, 0.347241, -0.836559,
		0.708889, -0.702064, 0.067692,
		-0.563813, -0.621714, -0.543678,
		38.250275, 31.819178, 36.507950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145523, 32.015652, 36.278179>,  <38.644943, 32.254375, 36.888527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145523, 32.015652, 36.278179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757423, 31.986588, 36.185802>,  <38.524563, 31.969151, 36.130379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757423, 31.986588, 36.185802>,  <39.145523, 32.015652, 36.278179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757423, 31.986588, 36.185802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183998, 0.398648, -0.898457,
		0.157342, -0.914222, -0.373420,
		-0.970252, -0.072656, -0.230939,
		38.466347, 31.964790, 36.116520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969883, 31.496208, 35.685749>,  <39.145523, 32.015652, 36.278179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969883, 31.496208, 35.685749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743580, 31.820700, 35.744846>,  <38.607800, 32.015396, 35.780304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743580, 31.820700, 35.744846>,  <38.969883, 31.496208, 35.685749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743580, 31.820700, 35.744846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593055, 0.524810, -0.610622,
		-0.572893, -0.257842, -0.778018,
		-0.565756, 0.811229, 0.147746,
		38.573853, 32.064068, 35.789169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.572968, 26.865957, 41.587288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.319878, 27.173222, 41.548119>,  <35.168022, 27.357580, 41.524616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.319878, 27.173222, 41.548119>,  <35.572968, 26.865957, 41.587288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319878, 27.173222, 41.548119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398757, 0.214799, -0.891546,
		-0.663815, -0.603153, -0.442218,
		-0.632726, 0.768159, -0.097925,
		35.130058, 27.403669, 41.518742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499744, 26.887342, 40.881718>,  <35.572968, 26.865957, 41.587288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499744, 26.887342, 40.881718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.368305, 27.248867, 40.991367>,  <35.289444, 27.465782, 41.057159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.368305, 27.248867, 40.991367>,  <35.499744, 26.887342, 40.881718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368305, 27.248867, 40.991367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433774, 0.402243, -0.806251,
		-0.838966, -0.146021, -0.524226,
		-0.328596, 0.903813, 0.274128,
		35.269726, 27.520012, 41.073605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320560, 27.273893, 40.266769>,  <35.499744, 26.887342, 40.881718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320560, 27.273893, 40.266769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.396782, 27.542896, 40.552826>,  <35.442513, 27.704298, 40.724461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.396782, 27.542896, 40.552826>,  <35.320560, 27.273893, 40.266769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396782, 27.542896, 40.552826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505231, 0.557418, -0.658807,
		-0.841684, 0.486847, -0.233555,
		0.190551, 0.672507, 0.715140,
		35.453949, 27.744648, 40.767368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241138, 27.853571, 39.933743>,  <35.320560, 27.273893, 40.266769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241138, 27.853571, 39.933743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.463211, 27.985014, 40.239368>,  <35.596455, 28.063879, 40.422745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.463211, 27.985014, 40.239368>,  <35.241138, 27.853571, 39.933743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463211, 27.985014, 40.239368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595325, 0.484524, -0.640957,
		-0.580830, 0.810712, 0.073370,
		0.555181, 0.328607, 0.764063,
		35.629765, 28.083595, 40.468586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260685, 28.604900, 39.806313>,  <35.241138, 27.853571, 39.933743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260685, 28.604900, 39.806313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.555935, 28.543034, 40.068993>,  <35.733086, 28.505915, 40.226601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.555935, 28.543034, 40.068993>,  <35.260685, 28.604900, 39.806313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555935, 28.543034, 40.068993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586251, 0.628760, -0.510853,
		-0.333896, 0.762063, 0.554774,
		0.738122, -0.154665, 0.656700,
		35.777370, 28.496634, 40.266003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471268, 29.289995, 40.087578>,  <35.260685, 28.604900, 39.806313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471268, 29.289995, 40.087578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.770031, 29.028509, 40.136211>,  <35.949291, 28.871618, 40.165394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.770031, 29.028509, 40.136211>,  <35.471268, 29.289995, 40.087578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770031, 29.028509, 40.136211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633115, 0.643305, -0.430492,
		0.203201, 0.398518, 0.894367,
		0.746910, -0.653714, 0.121587,
		35.994102, 28.832396, 40.172688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090870, 29.628757, 40.477150>,  <35.471268, 29.289995, 40.087578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090870, 29.628757, 40.477150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.242802, 29.324394, 40.266720>,  <36.333961, 29.141777, 40.140461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.242802, 29.324394, 40.266720>,  <36.090870, 29.628757, 40.477150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242802, 29.324394, 40.266720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712071, 0.603508, -0.358792,
		0.590497, -0.238322, 0.771049,
		0.379826, -0.760907, -0.526072,
		36.356750, 29.096123, 40.108898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896732, 29.751408, 40.409317>,  <36.090870, 29.628757, 40.477150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896732, 29.751408, 40.409317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.839188, 29.495411, 40.107399>,  <36.804661, 29.341812, 39.926250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.839188, 29.495411, 40.107399>,  <36.896732, 29.751408, 40.409317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839188, 29.495411, 40.107399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681366, 0.489078, -0.544558,
		0.717666, -0.592630, 0.365711,
		-0.143861, -0.639994, -0.754793,
		36.796028, 29.303413, 39.880962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548691, 29.630199, 40.133327>,  <36.896732, 29.751408, 40.409317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548691, 29.630199, 40.133327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.309933, 29.502802, 39.838772>,  <37.166679, 29.426363, 39.662037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.309933, 29.502802, 39.838772>,  <37.548691, 29.630199, 40.133327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309933, 29.502802, 39.838772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599162, 0.433465, -0.673137,
		0.533592, -0.843012, -0.067903,
		-0.596896, -0.318495, -0.736393,
		37.130863, 29.407253, 39.617855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242416, 29.697920, 40.486317>,  <37.548691, 29.630199, 40.133327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242416, 29.697920, 40.486317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.118153, 30.036806, 40.658695>,  <38.043594, 30.240137, 40.762123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.118153, 30.036806, 40.658695>,  <38.242416, 29.697920, 40.486317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118153, 30.036806, 40.658695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402980, -0.528014, 0.747535,
		0.860869, 0.058568, 0.505445,
		-0.310664, 0.847213, 0.430949,
		38.024952, 30.290970, 40.787979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417126, 29.612556, 41.203598>,  <38.242416, 29.697920, 40.486317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417126, 29.612556, 41.203598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.153538, 29.913410, 41.206398>,  <37.995384, 30.093922, 41.208080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.153538, 29.913410, 41.206398>,  <38.417126, 29.612556, 41.203598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153538, 29.913410, 41.206398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443999, -0.396485, 0.803533,
		0.607142, 0.526396, 0.595219,
		-0.658972, 0.752135, 0.007003,
		37.955845, 30.139051, 41.208500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272236, 29.863188, 41.958279>,  <38.417126, 29.612556, 41.203598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272236, 29.863188, 41.958279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.952808, 29.995113, 41.756882>,  <37.761150, 30.074268, 41.636044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.952808, 29.995113, 41.756882>,  <38.272236, 29.863188, 41.958279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952808, 29.995113, 41.756882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553276, -0.072855, 0.829806,
		0.236999, 0.941231, 0.240658,
		-0.798572, 0.329814, -0.503493,
		37.713238, 30.094057, 41.605835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917564, 30.255247, 42.435448>,  <38.272236, 29.863188, 41.958279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917564, 30.255247, 42.435448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645565, 30.141888, 42.164959>,  <37.482365, 30.073872, 42.002663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645565, 30.141888, 42.164959>,  <37.917564, 30.255247, 42.435448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645565, 30.141888, 42.164959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639930, -0.220785, 0.736032,
		-0.357890, 0.933241, -0.031220,
		-0.680003, -0.283397, -0.676227,
		37.441563, 30.056868, 41.962090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417664, 30.571674, 42.638512>,  <37.917564, 30.255247, 42.435448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417664, 30.571674, 42.638512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262001, 30.278551, 42.415245>,  <37.168602, 30.102676, 42.281284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262001, 30.278551, 42.415245>,  <37.417664, 30.571674, 42.638512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262001, 30.278551, 42.415245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689071, -0.170549, 0.704340,
		-0.611342, 0.658712, -0.438588,
		-0.389156, -0.732810, -0.558163,
		37.145256, 30.058708, 42.247795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746040, 30.818813, 42.661297>,  <37.417664, 30.571674, 42.638512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746040, 30.818813, 42.661297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.752815, 30.429550, 42.569492>,  <36.756882, 30.195992, 42.514412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.752815, 30.429550, 42.569492>,  <36.746040, 30.818813, 42.661297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752815, 30.429550, 42.569492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544883, -0.201445, 0.813955,
		-0.838341, 0.111269, -0.533670,
		0.016938, -0.973159, -0.229508,
		36.757896, 30.137602, 42.500641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077019, 30.542862, 42.707508>,  <36.746040, 30.818813, 42.661297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077019, 30.542862, 42.707508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.293060, 30.206285, 42.714043>,  <36.422684, 30.004339, 42.717964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.293060, 30.206285, 42.714043>,  <36.077019, 30.542862, 42.707508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293060, 30.206285, 42.714043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601025, -0.372055, 0.707350,
		-0.589116, -0.391859, -0.706675,
		0.540103, -0.841440, 0.016333,
		36.455090, 29.953854, 42.718945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661198, 29.994595, 42.646336>,  <36.077019, 30.542862, 42.707508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661198, 29.994595, 42.646336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960163, 29.808773, 42.836308>,  <36.139542, 29.697281, 42.950291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960163, 29.808773, 42.836308>,  <35.661198, 29.994595, 42.646336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960163, 29.808773, 42.836308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663168, -0.479001, 0.575123,
		-0.039684, -0.744814, -0.666091,
		0.747418, -0.464553, 0.474928,
		36.184387, 29.669407, 42.978786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534504, 29.268257, 42.708214>,  <35.661198, 29.994595, 42.646336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534504, 29.268257, 42.708214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789143, 29.326698, 43.011108>,  <35.941925, 29.361763, 43.192844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789143, 29.326698, 43.011108>,  <35.534504, 29.268257, 42.708214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789143, 29.326698, 43.011108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631410, -0.465027, 0.620541,
		0.442798, -0.873157, -0.203781,
		0.636593, 0.146105, 0.757234,
		35.980122, 29.370529, 43.238277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428524, 28.607634, 43.084076>,  <35.534504, 29.268257, 42.708214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428524, 28.607634, 43.084076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.604786, 28.870806, 43.328358>,  <35.710541, 29.028709, 43.474926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.604786, 28.870806, 43.328358>,  <35.428524, 28.607634, 43.084076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604786, 28.870806, 43.328358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585750, -0.304784, 0.751002,
		0.680238, -0.688648, 0.251078,
		0.440651, 0.657929, 0.610701,
		35.736980, 29.068184, 43.511566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645119, 28.236319, 43.584129>,  <35.428524, 28.607634, 43.084076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645119, 28.236319, 43.584129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591358, 28.599968, 43.741825>,  <35.559101, 28.818157, 43.836445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591358, 28.599968, 43.741825>,  <35.645119, 28.236319, 43.584129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591358, 28.599968, 43.741825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369981, -0.415120, 0.831137,
		0.919266, -0.034154, 0.392153,
		-0.134404, 0.909125, 0.394242,
		35.551037, 28.872705, 43.860096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665657, 28.124355, 44.321690>,  <35.645119, 28.236319, 43.584129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665657, 28.124355, 44.321690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519276, 28.494532, 44.282421>,  <35.431446, 28.716637, 44.258862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519276, 28.494532, 44.282421>,  <35.665657, 28.124355, 44.321690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519276, 28.494532, 44.282421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470466, -0.092956, 0.877509,
		0.802957, 0.367313, 0.469406,
		-0.365954, 0.925441, -0.098169,
		35.409489, 28.772163, 44.252972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743927, 28.456928, 45.033943>,  <35.665657, 28.124355, 44.321690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743927, 28.456928, 45.033943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.462212, 28.660124, 44.835583>,  <35.293182, 28.782042, 44.716568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.462212, 28.660124, 44.835583>,  <35.743927, 28.456928, 45.033943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462212, 28.660124, 44.835583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552792, 0.045851, 0.832057,
		0.445414, 0.860142, 0.248521,
		-0.704292, 0.507990, -0.495902,
		35.250923, 28.812521, 44.686813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534992, 29.059689, 45.481575>,  <35.743927, 28.456928, 45.033943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534992, 29.059689, 45.481575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.223316, 29.055445, 45.230896>,  <35.036312, 29.052898, 45.080486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.223316, 29.055445, 45.230896>,  <35.534992, 29.059689, 45.481575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223316, 29.055445, 45.230896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626721, -0.001579, 0.779242,
		-0.009258, 0.999942, -0.005420,
		-0.779189, -0.010611, -0.626700,
		34.989559, 29.052261, 45.042885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.389072, 31.779408, 42.029018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.718153, 31.552448, 42.042992>,  <28.915602, 31.416273, 42.051376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.718153, 31.552448, 42.042992>,  <28.389072, 31.779408, 42.029018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718153, 31.552448, 42.042992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336578, 0.436661, -0.834291,
		0.458124, 0.698129, 0.550216,
		0.822701, -0.567400, 0.034930,
		28.964964, 31.382229, 42.053471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863226, 32.244648, 42.168316>,  <28.389072, 31.779408, 42.029018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863226, 32.244648, 42.168316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.036640, 31.925610, 42.000561>,  <29.140688, 31.734186, 41.899906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.036640, 31.925610, 42.000561>,  <28.863226, 32.244648, 42.168316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036640, 31.925610, 42.000561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514584, 0.601178, -0.611383,
		0.739764, 0.049246, 0.671062,
		0.433536, -0.797597, -0.419388,
		29.166700, 31.686331, 41.874744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576729, 32.323917, 42.155087>,  <28.863226, 32.244648, 42.168316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576729, 32.323917, 42.155087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.562101, 32.041016, 41.872684>,  <29.553326, 31.871273, 41.703243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.562101, 32.041016, 41.872684>,  <29.576729, 32.323917, 42.155087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562101, 32.041016, 41.872684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532776, 0.583908, -0.612536,
		0.845466, -0.398544, 0.355458,
		-0.036568, -0.707258, -0.706009,
		29.551130, 31.828838, 41.660881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219425, 32.013653, 42.005470>,  <29.576729, 32.323917, 42.155087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219425, 32.013653, 42.005470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.014765, 31.973055, 41.664200>,  <29.891968, 31.948696, 41.459438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.014765, 31.973055, 41.664200>,  <30.219425, 32.013653, 42.005470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014765, 31.973055, 41.664200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703881, 0.519926, -0.483971,
		0.492711, -0.848160, -0.194579,
		-0.511651, -0.101498, -0.853177,
		29.861269, 31.942606, 41.408245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769602, 32.101768, 41.534931>,  <30.219425, 32.013653, 42.005470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769602, 32.101768, 41.534931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.452930, 32.109711, 41.290684>,  <30.262928, 32.114475, 41.144135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.452930, 32.109711, 41.290684>,  <30.769602, 32.101768, 41.534931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452930, 32.109711, 41.290684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538849, 0.493688, -0.682579,
		0.287899, -0.869412, -0.401543,
		-0.791679, 0.019858, -0.610614,
		30.215427, 32.115669, 41.107498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050547, 31.902117, 40.904579>,  <30.769602, 32.101768, 41.534931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050547, 31.902117, 40.904579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.704229, 32.077938, 40.808914>,  <30.496439, 32.183430, 40.751514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.704229, 32.077938, 40.808914>,  <31.050547, 31.902117, 40.904579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704229, 32.077938, 40.808914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441616, 0.446395, -0.778272,
		-0.235332, -0.779438, -0.580599,
		-0.865791, 0.439554, -0.239161,
		30.444492, 32.209805, 40.737167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834703, 31.734903, 40.154243>,  <31.050547, 31.902117, 40.904579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834703, 31.734903, 40.154243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.649940, 32.076389, 40.250420>,  <30.539083, 32.281281, 40.308125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.649940, 32.076389, 40.250420>,  <30.834703, 31.734903, 40.154243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649940, 32.076389, 40.250420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408912, 0.445546, -0.796417,
		-0.787040, -0.269552, -0.554896,
		-0.461908, 0.853715, 0.240440,
		30.511368, 32.332504, 40.322552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466272, 31.996855, 39.585503>,  <30.834703, 31.734903, 40.154243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466272, 31.996855, 39.585503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.514303, 32.315994, 39.821812>,  <30.543121, 32.507477, 39.963596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.514303, 32.315994, 39.821812>,  <30.466272, 31.996855, 39.585503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514303, 32.315994, 39.821812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313654, 0.534111, -0.785077,
		-0.941914, 0.279570, -0.186113,
		0.120079, 0.797851, 0.590775,
		30.550327, 32.555351, 39.999043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479906, 32.542370, 39.119324>,  <30.466272, 31.996855, 39.585503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479906, 32.542370, 39.119324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.604683, 32.719143, 39.455750>,  <30.679548, 32.825207, 39.657604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.604683, 32.719143, 39.455750>,  <30.479906, 32.542370, 39.119324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604683, 32.719143, 39.455750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608724, 0.586716, -0.534059,
		-0.729484, 0.678570, -0.085996,
		0.311941, 0.441936, 0.841062,
		30.698265, 32.851723, 39.708069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607330, 33.283939, 39.034393>,  <30.479906, 32.542370, 39.119324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607330, 33.283939, 39.034393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.834669, 33.216228, 39.356468>,  <30.971071, 33.175602, 39.549713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.834669, 33.216228, 39.356468>,  <30.607330, 33.283939, 39.034393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834669, 33.216228, 39.356468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756344, 0.492754, -0.430276,
		-0.323924, 0.853545, 0.408085,
		0.568346, -0.169276, 0.805189,
		31.005173, 33.165447, 39.598026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684856, 33.871986, 39.334156>,  <30.607330, 33.283939, 39.034393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684856, 33.871986, 39.334156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.010530, 33.664013, 39.437519>,  <31.205935, 33.539230, 39.499538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.010530, 33.664013, 39.437519>,  <30.684856, 33.871986, 39.334156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010530, 33.664013, 39.437519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535868, 0.501602, -0.679147,
		0.223494, 0.691423, 0.687012,
		0.814184, -0.519933, 0.258407,
		31.254786, 33.508034, 39.515041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196478, 34.307919, 39.594059>,  <30.684856, 33.871986, 39.334156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196478, 34.307919, 39.594059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425810, 34.002010, 39.476471>,  <31.563410, 33.818466, 39.405918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.425810, 34.002010, 39.476471>,  <31.196478, 34.307919, 39.594059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425810, 34.002010, 39.476471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530149, 0.619837, -0.578571,
		0.624688, 0.175864, 0.760814,
		0.573330, -0.764771, -0.293970,
		31.597809, 33.772579, 39.388279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842844, 34.639263, 39.622776>,  <31.196478, 34.307919, 39.594059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842844, 34.639263, 39.622776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900501, 34.302650, 39.414532>,  <31.935095, 34.100681, 39.289585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900501, 34.302650, 39.414532>,  <31.842844, 34.639263, 39.622776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900501, 34.302650, 39.414532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638001, 0.481195, -0.601171,
		0.756424, -0.245498, 0.606262,
		0.144144, -0.841536, -0.520615,
		31.943745, 34.050190, 39.258347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611458, 34.537083, 39.543556>,  <31.842844, 34.639263, 39.622776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611458, 34.537083, 39.543556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411797, 34.358154, 39.246708>,  <32.292000, 34.250797, 39.068600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411797, 34.358154, 39.246708>,  <32.611458, 34.537083, 39.543556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411797, 34.358154, 39.246708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598715, 0.441086, -0.668568,
		0.626406, -0.778039, 0.047650,
		-0.499155, -0.447324, -0.742122,
		32.262051, 34.223957, 39.024071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159801, 34.056461, 39.869503>,  <32.611458, 34.537083, 39.543556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159801, 34.056461, 39.869503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.320259, 34.357243, 40.078751>,  <33.416534, 34.537712, 40.204300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.320259, 34.357243, 40.078751>,  <33.159801, 34.056461, 39.869503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320259, 34.357243, 40.078751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500699, -0.298220, 0.812628,
		0.767061, -0.587907, 0.256871,
		0.401146, 0.751951, 0.523118,
		33.440601, 34.582829, 40.235687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450649, 33.725338, 40.469753>,  <33.159801, 34.056461, 39.869503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450649, 33.725338, 40.469753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.396286, 34.107979, 40.572857>,  <33.363667, 34.337563, 40.634720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.396286, 34.107979, 40.572857>,  <33.450649, 33.725338, 40.469753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396286, 34.107979, 40.572857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395435, -0.290928, 0.871201,
		0.908383, 0.016479, 0.417815,
		-0.135911, 0.956603, 0.257758,
		33.355515, 34.394958, 40.650185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739166, 33.796844, 41.217167>,  <33.450649, 33.725338, 40.469753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739166, 33.796844, 41.217167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481949, 34.101158, 41.182083>,  <33.327618, 34.283749, 41.161034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481949, 34.101158, 41.182083>,  <33.739166, 33.796844, 41.217167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481949, 34.101158, 41.182083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297519, -0.142646, 0.943999,
		0.705673, 0.633129, 0.318077,
		-0.643046, 0.760789, -0.087707,
		33.289036, 34.329395, 41.155769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750725, 34.046967, 41.830299>,  <33.739166, 33.796844, 41.217167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750725, 34.046967, 41.830299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.403557, 34.161003, 41.667606>,  <33.195255, 34.229427, 41.569988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.403557, 34.161003, 41.667606>,  <33.750725, 34.046967, 41.830299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403557, 34.161003, 41.667606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485151, -0.311012, 0.817252,
		0.106494, 0.906638, 0.408248,
		-0.867922, 0.285095, -0.406735,
		33.143181, 34.246532, 41.545586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471478, 34.467297, 42.334000>,  <33.750725, 34.046967, 41.830299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471478, 34.467297, 42.334000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177212, 34.354286, 42.087757>,  <33.000652, 34.286480, 41.940010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177212, 34.354286, 42.087757>,  <33.471478, 34.467297, 42.334000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177212, 34.354286, 42.087757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557602, -0.263372, 0.787220,
		-0.384542, 0.922396, 0.036218,
		-0.735668, -0.282525, -0.615608,
		32.956512, 34.269527, 41.903076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894798, 34.555073, 42.801983>,  <33.471478, 34.467297, 42.334000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894798, 34.555073, 42.801983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.747089, 34.346737, 42.494122>,  <32.658463, 34.221737, 42.309406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.747089, 34.346737, 42.494122>,  <32.894798, 34.555073, 42.801983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747089, 34.346737, 42.494122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565736, -0.531051, 0.630815,
		-0.737278, 0.668363, -0.098554,
		-0.369277, -0.520841, -0.769649,
		32.636307, 34.190483, 42.263226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106541, 34.620056, 42.754341>,  <32.894798, 34.555073, 42.801983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106541, 34.620056, 42.754341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.222767, 34.282635, 42.573681>,  <32.292503, 34.080181, 42.465286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.222767, 34.282635, 42.573681>,  <32.106541, 34.620056, 42.754341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222767, 34.282635, 42.573681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518755, -0.535502, 0.666431,
		-0.804029, 0.040650, -0.593199,
		0.290568, -0.843555, -0.451647,
		32.309937, 34.029568, 42.438187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560377, 34.323196, 42.613972>,  <32.106541, 34.620056, 42.754341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560377, 34.323196, 42.613972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.826273, 34.024601, 42.602146>,  <31.985811, 33.845444, 42.595051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.826273, 34.024601, 42.602146>,  <31.560377, 34.323196, 42.613972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826273, 34.024601, 42.602146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575012, -0.536505, 0.617675,
		-0.476950, -0.393593, -0.785877,
		0.664740, -0.746489, -0.029565,
		32.025696, 33.800655, 42.593277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146618, 33.800240, 42.343021>,  <31.560377, 34.323196, 42.613972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146618, 33.800240, 42.343021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.454840, 33.618439, 42.521763>,  <31.639772, 33.509357, 42.629005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.454840, 33.618439, 42.521763>,  <31.146618, 33.800240, 42.343021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454840, 33.618439, 42.521763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637235, -0.534689, 0.555013,
		-0.013329, -0.712415, -0.701631,
		0.770554, -0.454502, 0.446849,
		31.686007, 33.482086, 42.655819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905277, 33.044331, 42.542336>,  <31.146618, 33.800240, 42.343021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905277, 33.044331, 42.542336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229593, 33.133625, 42.758774>,  <31.424183, 33.187202, 42.888638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229593, 33.133625, 42.758774>,  <30.905277, 33.044331, 42.542336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229593, 33.133625, 42.758774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361264, -0.536495, 0.762667,
		0.460552, -0.813841, -0.354336,
		0.810789, 0.223239, 0.541095,
		31.472830, 33.200596, 42.921101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337790, 32.375000, 42.667824>,  <30.905277, 33.044331, 42.542336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337790, 32.375000, 42.667824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362431, 32.657337, 42.950100>,  <31.377214, 32.826740, 43.119465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362431, 32.657337, 42.950100>,  <31.337790, 32.375000, 42.667824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362431, 32.657337, 42.950100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346086, -0.648058, 0.678413,
		0.936178, -0.286020, 0.204360,
		0.061603, 0.705842, 0.705686,
		31.380911, 32.869091, 43.161804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678431, 32.078892, 43.287201>,  <31.337790, 32.375000, 42.667824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678431, 32.078892, 43.287201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.458832, 32.390903, 43.407310>,  <31.327072, 32.578110, 43.479374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.458832, 32.390903, 43.407310>,  <31.678431, 32.078892, 43.287201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458832, 32.390903, 43.407310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450312, -0.578687, 0.679957,
		0.704145, 0.238080, 0.668953,
		-0.548998, 0.780026, 0.300270,
		31.294132, 32.624912, 43.497391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832466, 32.071766, 43.979034>,  <31.678431, 32.078892, 43.287201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832466, 32.071766, 43.979034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.525295, 32.327908, 43.972881>,  <31.340992, 32.481594, 43.969189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.525295, 32.327908, 43.972881>,  <31.832466, 32.071766, 43.979034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525295, 32.327908, 43.972881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461157, -0.536046, 0.707099,
		0.444547, 0.550094, 0.706947,
		-0.767927, 0.640353, -0.015382,
		31.294918, 32.520012, 43.968266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683359, 32.274410, 44.693512>,  <31.832466, 32.071766, 43.979034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683359, 32.274410, 44.693512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350567, 32.389606, 44.503830>,  <31.150890, 32.458725, 44.390022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350567, 32.389606, 44.503830>,  <31.683359, 32.274410, 44.693512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350567, 32.389606, 44.503830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554269, -0.468884, 0.687701,
		-0.024293, 0.834990, 0.549728,
		-0.831983, 0.287991, -0.474200,
		31.100971, 32.476006, 44.361568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064205, 32.822521, 45.226353>,  <31.683359, 32.274410, 44.693512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064205, 32.822521, 45.226353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.303200, 32.596260, 45.453701>,  <32.446598, 32.460503, 45.590111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.303200, 32.596260, 45.453701>,  <32.064205, 32.822521, 45.226353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303200, 32.596260, 45.453701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786206, 0.273795, -0.554000,
		0.157754, 0.777865, 0.608308,
		0.597489, -0.565652, 0.568371,
		32.482445, 32.426563, 45.624210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555943, 33.269909, 45.546032>,  <32.064205, 32.822521, 45.226353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555943, 33.269909, 45.546032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702011, 32.897533, 45.546074>,  <32.789650, 32.674107, 45.546101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702011, 32.897533, 45.546074>,  <32.555943, 33.269909, 45.546032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702011, 32.897533, 45.546074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777095, 0.304755, -0.550680,
		0.512618, 0.201175, 0.834716,
		0.365167, -0.930942, 0.000109,
		32.811562, 32.618252, 45.546108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235176, 33.376789, 45.720291>,  <32.555943, 33.269909, 45.546032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235176, 33.376789, 45.720291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205059, 33.011002, 45.561256>,  <33.186989, 32.791531, 45.465836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205059, 33.011002, 45.561256>,  <33.235176, 33.376789, 45.720291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205059, 33.011002, 45.561256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897834, 0.111302, -0.426034,
		0.433847, -0.389048, 0.812661,
		-0.075297, -0.914469, -0.397589,
		33.182468, 32.736660, 45.441978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910172, 33.249104, 45.710667>,  <33.235176, 33.376789, 45.720291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910172, 33.249104, 45.710667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749115, 32.980434, 45.461914>,  <33.652481, 32.819233, 45.312664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749115, 32.980434, 45.461914>,  <33.910172, 33.249104, 45.710667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749115, 32.980434, 45.461914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803021, 0.066903, -0.592183,
		0.439361, -0.737818, 0.512432,
		-0.402640, -0.671676, -0.621878,
		33.628323, 32.778931, 45.275352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464748, 32.727509, 45.575592>,  <33.910172, 33.249104, 45.710667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464748, 32.727509, 45.575592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198215, 32.736191, 45.277458>,  <34.038296, 32.741402, 45.098576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198215, 32.736191, 45.277458>,  <34.464748, 32.727509, 45.575592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198215, 32.736191, 45.277458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735133, 0.186429, -0.651785,
		0.124805, -0.982229, -0.140181,
		-0.666335, 0.021705, -0.745336,
		33.998314, 32.742702, 45.053856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790604, 32.406918, 45.064835>,  <34.464748, 32.727509, 45.575592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790604, 32.406918, 45.064835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481907, 32.557213, 44.859608>,  <34.296688, 32.647392, 44.736473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.481907, 32.557213, 44.859608>,  <34.790604, 32.406918, 45.064835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481907, 32.557213, 44.859608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563460, 0.029958, -0.825600,
		-0.294842, -0.926240, -0.234836,
		-0.771739, 0.375742, -0.513066,
		34.250385, 32.669937, 44.705688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668797, 31.950415, 44.438599>,  <34.790604, 32.406918, 45.064835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668797, 31.950415, 44.438599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.515865, 32.312546, 44.364616>,  <34.424107, 32.529823, 44.320225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.515865, 32.312546, 44.364616>,  <34.668797, 31.950415, 44.438599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515865, 32.312546, 44.364616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404409, -0.016035, -0.914438,
		-0.830830, -0.424415, -0.359991,
		-0.382329, 0.905326, -0.184960,
		34.401165, 32.584145, 44.309128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396133, 31.905615, 43.707031>,  <34.668797, 31.950415, 44.438599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396133, 31.905615, 43.707031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.434608, 32.289989, 43.810837>,  <34.457695, 32.520615, 43.873119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.434608, 32.289989, 43.810837>,  <34.396133, 31.905615, 43.707031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434608, 32.289989, 43.810837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490918, 0.181005, -0.852195,
		-0.865879, 0.209374, -0.454330,
		0.096191, 0.960937, 0.259513,
		34.463467, 32.578270, 43.888691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213627, 32.285664, 43.087128>,  <34.396133, 31.905615, 43.707031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213627, 32.285664, 43.087128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416187, 32.531483, 43.329079>,  <34.537724, 32.678974, 43.474251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416187, 32.531483, 43.329079>,  <34.213627, 32.285664, 43.087128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416187, 32.531483, 43.329079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512033, 0.350109, -0.784376,
		-0.693814, 0.706930, -0.137376,
		0.506402, 0.614552, 0.604882,
		34.568108, 32.715847, 43.510544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314999, 32.952919, 42.750935>,  <34.213627, 32.285664, 43.087128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314999, 32.952919, 42.750935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581543, 33.006855, 43.044270>,  <34.741470, 33.039219, 43.220268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581543, 33.006855, 43.044270>,  <34.314999, 32.952919, 42.750935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581543, 33.006855, 43.044270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528510, 0.608348, -0.592106,
		-0.525964, 0.782132, 0.334114,
		0.666363, 0.134843, 0.733334,
		34.781452, 33.047310, 43.264271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512669, 33.711288, 42.732471>,  <34.314999, 32.952919, 42.750935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512669, 33.711288, 42.732471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.807579, 33.535854, 42.938019>,  <34.984524, 33.430592, 43.061348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.807579, 33.535854, 42.938019>,  <34.512669, 33.711288, 42.732471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807579, 33.535854, 42.938019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648183, 0.673667, -0.355008,
		-0.190476, 0.594822, 0.780964,
		0.737277, -0.438588, 0.513871,
		35.028763, 33.404278, 43.092178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802498, 34.242752, 43.083080>,  <34.512669, 33.711288, 42.732471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802498, 34.242752, 43.083080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071999, 33.949718, 43.044334>,  <35.233700, 33.773899, 43.021088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071999, 33.949718, 43.044334>,  <34.802498, 34.242752, 43.083080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071999, 33.949718, 43.044334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556832, 0.589487, -0.585186,
		0.485796, 0.340333, 0.805093,
		0.673751, -0.732583, -0.096862,
		35.274124, 33.729942, 43.015274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445370, 34.526081, 43.065395>,  <34.802498, 34.242752, 43.083080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445370, 34.526081, 43.065395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.559708, 34.172337, 42.917774>,  <35.628311, 33.960091, 42.829201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.559708, 34.172337, 42.917774>,  <35.445370, 34.526081, 43.065395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559708, 34.172337, 42.917774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683204, 0.458124, -0.568642,
		0.671957, -0.089597, 0.735150,
		0.285841, -0.884361, -0.369053,
		35.645458, 33.907028, 42.807056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152000, 34.524410, 43.138985>,  <35.445370, 34.526081, 43.065395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152000, 34.524410, 43.138985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.086372, 34.273014, 42.834858>,  <36.046997, 34.122177, 42.652382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.086372, 34.273014, 42.834858>,  <36.152000, 34.524410, 43.138985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086372, 34.273014, 42.834858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822096, 0.338875, -0.457517,
		0.545196, -0.700121, 0.461077,
		-0.164070, -0.628486, -0.760320,
		36.037151, 34.084469, 42.606762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.983908, 44.828690, 36.001717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.601469, 44.847763, 35.886059>,  <26.372005, 44.859207, 35.816666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.601469, 44.847763, 35.886059>,  <26.983908, 44.828690, 36.001717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601469, 44.847763, 35.886059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160248, -0.911161, 0.379612,
		-0.245351, 0.409281, 0.878802,
		-0.956098, 0.047688, -0.289141,
		26.314640, 44.862068, 35.799316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461811, 44.630741, 36.625645>,  <26.983908, 44.828690, 36.001717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461811, 44.630741, 36.625645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.260437, 44.544895, 36.290863>,  <26.139612, 44.493389, 36.089993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.260437, 44.544895, 36.290863>,  <26.461811, 44.630741, 36.625645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260437, 44.544895, 36.290863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327293, -0.849110, 0.414598,
		-0.799645, 0.482653, 0.357231,
		-0.503436, -0.214612, -0.836955,
		26.109406, 44.480511, 36.039776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892527, 44.341465, 36.894142>,  <26.461811, 44.630741, 36.625645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892527, 44.341465, 36.894142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.895805, 44.204540, 36.518322>,  <25.897774, 44.122387, 36.292831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.895805, 44.204540, 36.518322>,  <25.892527, 44.341465, 36.894142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895805, 44.204540, 36.518322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301914, -0.896582, 0.324019,
		-0.953300, 0.281007, -0.110699,
		0.008199, -0.342308, -0.939552,
		25.898266, 44.101849, 36.236458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175289, 44.011154, 36.767307>,  <25.892527, 44.341465, 36.894142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175289, 44.011154, 36.767307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.449131, 43.886349, 36.503803>,  <25.613436, 43.811466, 36.345699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.449131, 43.886349, 36.503803>,  <25.175289, 44.011154, 36.767307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449131, 43.886349, 36.503803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303949, -0.943630, 0.131064,
		-0.662521, 0.110503, -0.740847,
		0.684603, -0.312013, -0.658762,
		25.654512, 43.792744, 36.306175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885544, 43.441593, 36.482906>,  <25.175289, 44.011154, 36.767307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885544, 43.441593, 36.482906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.258844, 43.387955, 36.349606>,  <25.482824, 43.355770, 36.269623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.258844, 43.387955, 36.349606>,  <24.885544, 43.441593, 36.482906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.258844, 43.387955, 36.349606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160769, -0.985533, -0.053648,
		-0.321239, 0.103644, -0.941309,
		0.933252, -0.134099, -0.333255,
		25.538820, 43.347725, 36.249630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863764, 42.915436, 35.969173>,  <24.885544, 43.441593, 36.482906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863764, 42.915436, 35.969173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.248451, 42.875412, 36.071220>,  <25.479263, 42.851398, 36.132446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.248451, 42.875412, 36.071220>,  <24.863764, 42.915436, 35.969173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.248451, 42.875412, 36.071220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054775, -0.982356, -0.178821,
		0.268505, 0.158002, -0.950232,
		0.961720, -0.100063, 0.255113,
		25.536966, 42.845394, 36.147755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175211, 42.516758, 35.438873>,  <24.863764, 42.915436, 35.969173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175211, 42.516758, 35.438873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.428804, 42.461651, 35.743263>,  <25.580961, 42.428589, 35.925896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.428804, 42.461651, 35.743263>,  <25.175211, 42.516758, 35.438873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428804, 42.461651, 35.743263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115335, -0.989844, -0.083111,
		0.764696, -0.035076, -0.643435,
		0.633985, -0.137765, 0.760975,
		25.618999, 42.420322, 35.971558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554314, 41.968941, 35.197853>,  <25.175211, 42.516758, 35.438873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554314, 41.968941, 35.197853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.614613, 41.976372, 35.593212>,  <25.650791, 41.980831, 35.830429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.614613, 41.976372, 35.593212>,  <25.554314, 41.968941, 35.197853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614613, 41.976372, 35.593212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019593, -0.999683, 0.015798,
		0.988378, 0.016984, -0.151062,
		0.150746, 0.018574, 0.988398,
		25.659836, 41.981945, 35.889732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190315, 41.567314, 35.339306>,  <25.554314, 41.968941, 35.197853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190315, 41.567314, 35.339306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.987114, 41.586761, 35.683300>,  <25.865192, 41.598431, 35.889694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.987114, 41.586761, 35.683300>,  <26.190315, 41.567314, 35.339306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987114, 41.586761, 35.683300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005726, -0.998574, 0.053070,
		0.861336, 0.022035, 0.507558,
		-0.508003, 0.048617, 0.859982,
		25.834713, 41.601345, 35.941296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555834, 41.248230, 35.827698>,  <26.190315, 41.567314, 35.339306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555834, 41.248230, 35.827698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.191847, 41.251755, 35.993530>,  <25.973455, 41.253872, 36.093029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.191847, 41.251755, 35.993530>,  <26.555834, 41.248230, 35.827698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191847, 41.251755, 35.993530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127435, -0.945449, 0.299811,
		0.394613, 0.325651, 0.859205,
		-0.909968, 0.008816, 0.414585,
		25.918856, 41.254398, 36.117905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706684, 40.833523, 36.380497>,  <26.555834, 41.248230, 35.827698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706684, 40.833523, 36.380497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.307081, 40.836937, 36.363018>,  <26.067320, 40.838985, 36.352531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.307081, 40.836937, 36.363018>,  <26.706684, 40.833523, 36.380497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307081, 40.836937, 36.363018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018937, -0.969685, 0.243625,
		-0.040296, 0.244211, 0.968885,
		-0.999008, 0.008531, -0.043699,
		26.007380, 40.839497, 36.349907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483389, 40.356743, 36.835960>,  <26.706684, 40.833523, 36.380497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483389, 40.356743, 36.835960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.163124, 40.390850, 36.598755>,  <25.970964, 40.411316, 36.456432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.163124, 40.390850, 36.598755>,  <26.483389, 40.356743, 36.835960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163124, 40.390850, 36.598755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190298, -0.974757, 0.116771,
		-0.568090, 0.206344, 0.796678,
		-0.800663, 0.085270, -0.593016,
		25.922926, 40.416431, 36.420849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915224, 39.918289, 37.236515>,  <26.483389, 40.356743, 36.835960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915224, 39.918289, 37.236515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.839720, 39.946251, 36.844704>,  <25.794416, 39.963028, 36.609615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.839720, 39.946251, 36.844704>,  <25.915224, 39.918289, 37.236515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839720, 39.946251, 36.844704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279346, -0.960078, -0.014686,
		-0.941454, 0.270856, 0.200753,
		-0.188761, 0.069906, -0.979532,
		25.783091, 39.967224, 36.550842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437811, 39.435059, 37.161076>,  <25.915224, 39.918289, 37.236515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437811, 39.435059, 37.161076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.549055, 39.502991, 36.782909>,  <25.615803, 39.543751, 36.556011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.549055, 39.502991, 36.782909>,  <25.437811, 39.435059, 37.161076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549055, 39.502991, 36.782909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173517, -0.959172, -0.223341,
		-0.944746, 0.226160, -0.237290,
		0.278113, 0.169827, -0.945416,
		25.632488, 39.553940, 36.499283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864714, 39.194771, 36.662716>,  <25.437811, 39.435059, 37.161076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864714, 39.194771, 36.662716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.227598, 39.183025, 36.494854>,  <25.445330, 39.175980, 36.394138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.227598, 39.183025, 36.494854>,  <24.864714, 39.194771, 36.662716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227598, 39.183025, 36.494854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148411, -0.955758, -0.253969,
		-0.393628, 0.292684, -0.871431,
		0.907211, -0.029360, -0.419651,
		25.499762, 39.174217, 36.368958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.742233, 38.801529, 35.990398>,  <24.864714, 39.194771, 36.662716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.742233, 38.801529, 35.990398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.140837, 38.826931, 36.012093>,  <25.379999, 38.842171, 36.025108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.140837, 38.826931, 36.012093>,  <24.742233, 38.801529, 35.990398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140837, 38.826931, 36.012093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070471, -0.987909, -0.138094,
		0.044808, 0.141433, -0.988933,
		0.996507, 0.063503, 0.054233,
		25.439789, 38.845982, 36.028362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058060, 38.513409, 35.397648>,  <24.742233, 38.801529, 35.990398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058060, 38.513409, 35.397648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.353119, 38.483673, 35.666080>,  <25.530155, 38.465832, 35.827141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.353119, 38.483673, 35.666080>,  <25.058060, 38.513409, 35.397648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.353119, 38.483673, 35.666080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035683, -0.988238, -0.148702,
		0.674239, 0.133636, -0.726321,
		0.737650, -0.074343, 0.671078,
		25.574413, 38.461369, 35.867405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577341, 38.078785, 35.097019>,  <25.058060, 38.513409, 35.397648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577341, 38.078785, 35.097019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.712116, 38.093727, 35.473331>,  <25.792982, 38.102692, 35.699120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.712116, 38.093727, 35.473331>,  <25.577341, 38.078785, 35.097019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712116, 38.093727, 35.473331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284396, -0.956577, -0.063874,
		0.897547, 0.289078, -0.332932,
		0.336939, 0.037354, 0.940785,
		25.813198, 38.104935, 35.755566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372381, 37.881306, 35.086487>,  <25.577341, 38.078785, 35.097019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372381, 37.881306, 35.086487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.214140, 37.817387, 35.448254>,  <26.119196, 37.779034, 35.665314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.214140, 37.817387, 35.448254>,  <26.372381, 37.881306, 35.086487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214140, 37.817387, 35.448254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198352, -0.976372, -0.085755,
		0.896747, 0.145468, 0.417951,
		-0.395601, -0.159802, 0.904413,
		26.095459, 37.769447, 35.719578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850863, 37.533264, 35.468102>,  <26.372381, 37.881306, 35.086487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850863, 37.533264, 35.468102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.519661, 37.437199, 35.670776>,  <26.320940, 37.379559, 35.792381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.519661, 37.437199, 35.670776>,  <26.850863, 37.533264, 35.468102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519661, 37.437199, 35.670776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199835, -0.970688, -0.133532,
		0.523908, -0.009310, 0.851724,
		-0.828002, -0.240163, 0.506690,
		26.271261, 37.365150, 35.822784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513931, 37.978928, 35.440361>,  <26.850863, 37.533264, 35.468102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513931, 37.978928, 35.440361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.752340, 37.887020, 35.132603>,  <27.895386, 37.831875, 34.947948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.752340, 37.887020, 35.132603>,  <27.513931, 37.978928, 35.440361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752340, 37.887020, 35.132603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505870, 0.851569, 0.137570,
		0.623581, -0.471207, 0.623788,
		0.596022, -0.229770, -0.769392,
		27.931147, 37.818089, 34.901787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155592, 37.972561, 35.760307>,  <27.513931, 37.978928, 35.440361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155592, 37.972561, 35.760307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136751, 38.069057, 35.372578>,  <28.125446, 38.126957, 35.139942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136751, 38.069057, 35.372578>,  <28.155592, 37.972561, 35.760307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136751, 38.069057, 35.372578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423960, 0.883485, 0.199279,
		0.904455, -0.401566, -0.143894,
		-0.047104, 0.241244, -0.969321,
		28.122620, 38.141430, 35.081783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882828, 38.228905, 35.567371>,  <28.155592, 37.972561, 35.760307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882828, 38.228905, 35.567371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611427, 38.390949, 35.322254>,  <28.448587, 38.488178, 35.175182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611427, 38.390949, 35.322254>,  <28.882828, 38.228905, 35.567371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611427, 38.390949, 35.322254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289893, 0.914149, 0.283362,
		0.674982, 0.014615, -0.737689,
		-0.678499, 0.405116, -0.612797,
		28.407877, 38.512486, 35.138416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271152, 38.813709, 35.156994>,  <28.882828, 38.228905, 35.567371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271152, 38.813709, 35.156994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.882912, 38.896675, 35.108158>,  <28.649967, 38.946457, 35.078857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.882912, 38.896675, 35.108158>,  <29.271152, 38.813709, 35.156994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882912, 38.896675, 35.108158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209774, 0.977727, -0.006642,
		0.117991, -0.032058, -0.992497,
		-0.970604, 0.207417, -0.122088,
		28.591730, 38.958900, 35.071533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247717, 39.351303, 34.552849>,  <29.271152, 38.813709, 35.156994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247717, 39.351303, 34.552849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.895721, 39.390839, 34.738686>,  <28.684525, 39.414558, 34.850189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.895721, 39.390839, 34.738686>,  <29.247717, 39.351303, 34.552849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895721, 39.390839, 34.738686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108939, 0.994035, -0.005132,
		-0.462330, 0.046096, -0.885509,
		-0.879990, 0.098839, 0.464594,
		28.631723, 39.420490, 34.878063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877525, 39.829887, 34.238247>,  <29.247717, 39.351303, 34.552849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877525, 39.829887, 34.238247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741301, 39.839733, 34.614208>,  <28.659567, 39.845642, 34.839783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741301, 39.839733, 34.614208>,  <28.877525, 39.829887, 34.238247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741301, 39.839733, 34.614208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078258, 0.996931, 0.002245,
		-0.936960, 0.074319, -0.341442,
		-0.340560, 0.024617, 0.939900,
		28.639132, 39.847118, 34.896179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422619, 40.375702, 34.254494>,  <28.877525, 39.829887, 34.238247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422619, 40.375702, 34.254494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.493246, 40.310589, 34.642788>,  <28.535622, 40.271519, 34.875763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.493246, 40.310589, 34.642788>,  <28.422619, 40.375702, 34.254494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493246, 40.310589, 34.642788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007805, 0.986430, 0.163997,
		-0.984258, -0.021380, 0.175440,
		0.176566, -0.162784, 0.970735,
		28.546215, 40.261753, 34.934010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032867, 40.766983, 34.596554>,  <28.422619, 40.375702, 34.254494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032867, 40.766983, 34.596554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292795, 40.688885, 34.890388>,  <28.448751, 40.642025, 35.066689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292795, 40.688885, 34.890388>,  <28.032867, 40.766983, 34.596554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292795, 40.688885, 34.890388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005540, 0.967636, 0.252290,
		-0.760067, -0.159874, 0.629872,
		0.649821, -0.195247, 0.734582,
		28.487741, 40.630310, 35.110764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709110, 41.184422, 35.048923>,  <28.032867, 40.766983, 34.596554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709110, 41.184422, 35.048923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.066214, 41.124855, 35.219009>,  <28.280476, 41.089115, 35.321060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.066214, 41.124855, 35.219009>,  <27.709110, 41.184422, 35.048923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066214, 41.124855, 35.219009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034848, 0.963790, 0.264376,
		-0.449187, -0.221206, 0.865620,
		0.892758, -0.148919, 0.425214,
		28.334042, 41.080181, 35.346573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711105, 41.485012, 35.740032>,  <27.709110, 41.184422, 35.048923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711105, 41.485012, 35.740032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.098536, 41.454319, 35.645401>,  <28.330994, 41.435902, 35.588623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.098536, 41.454319, 35.645401>,  <27.711105, 41.485012, 35.740032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098536, 41.454319, 35.645401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118454, 0.978727, 0.167517,
		0.218690, -0.190277, 0.957063,
		0.968578, -0.076734, -0.236577,
		28.389109, 41.431297, 35.574429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049892, 41.699741, 36.341671>,  <27.711105, 41.485012, 35.740032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049892, 41.699741, 36.341671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306244, 41.749401, 36.038658>,  <28.460054, 41.779198, 35.856850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306244, 41.749401, 36.038658>,  <28.049892, 41.699741, 36.341671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306244, 41.749401, 36.038658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192273, 0.929416, 0.314987,
		0.743171, -0.347522, 0.571773,
		0.640880, 0.124153, -0.757534,
		28.498508, 41.786648, 35.811398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598270, 42.047394, 36.667057>,  <28.049892, 41.699741, 36.341671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598270, 42.047394, 36.667057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.627300, 42.127171, 36.276169>,  <28.644718, 42.175037, 36.041637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.627300, 42.127171, 36.276169>,  <28.598270, 42.047394, 36.667057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627300, 42.127171, 36.276169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091981, 0.974288, 0.205675,
		0.993113, -0.104813, 0.052362,
		0.072573, 0.199442, -0.977219,
		28.649073, 42.187004, 35.983002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178226, 42.499676, 36.593174>,  <28.598270, 42.047394, 36.667057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178226, 42.499676, 36.593174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.958334, 42.559052, 36.264355>,  <28.826399, 42.594677, 36.067062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.958334, 42.559052, 36.264355>,  <29.178226, 42.499676, 36.593174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958334, 42.559052, 36.264355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002387, 0.983802, 0.179240,
		0.835338, 0.100496, -0.540473,
		-0.549731, 0.148436, -0.822048,
		28.793415, 42.603580, 36.017742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578142, 42.962189, 36.209286>,  <29.178226, 42.499676, 36.593174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578142, 42.962189, 36.209286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.194834, 42.979935, 36.096329>,  <28.964849, 42.990582, 36.028553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.194834, 42.979935, 36.096329>,  <29.578142, 42.962189, 36.209286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194834, 42.979935, 36.096329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027199, 0.997552, 0.064418,
		0.284562, 0.054049, -0.957133,
		-0.958272, 0.044364, -0.282395,
		28.907352, 42.993244, 36.011612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601414, 43.293190, 35.589176>,  <29.578142, 42.962189, 36.209286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601414, 43.293190, 35.589176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227472, 43.344971, 35.721413>,  <29.003107, 43.376038, 35.800755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227472, 43.344971, 35.721413>,  <29.601414, 43.293190, 35.589176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227472, 43.344971, 35.721413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045056, 0.966887, -0.251196,
		-0.352161, -0.219937, -0.909731,
		-0.934854, 0.129450, 0.330591,
		28.947016, 43.383804, 35.820591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225779, 43.819778, 35.114685>,  <29.601414, 43.293190, 35.589176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225779, 43.819778, 35.114685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999250, 43.819672, 35.444359>,  <28.863333, 43.819607, 35.642162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999250, 43.819672, 35.444359>,  <29.225779, 43.819778, 35.114685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999250, 43.819672, 35.444359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050611, 0.998101, 0.035103,
		-0.822630, 0.061592, -0.565232,
		-0.566320, -0.000269, 0.824185,
		28.829353, 43.819592, 35.691616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626345, 44.295040, 34.963799>,  <29.225779, 43.819778, 35.114685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626345, 44.295040, 34.963799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674406, 44.252758, 35.358643>,  <28.703243, 44.227386, 35.595551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674406, 44.252758, 35.358643>,  <28.626345, 44.295040, 34.963799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674406, 44.252758, 35.358643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115426, 0.986084, 0.119649,
		-0.986022, -0.128314, 0.106280,
		0.120154, -0.105709, 0.987111,
		28.710453, 44.221046, 35.654778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172737, 44.678452, 35.231979>,  <28.626345, 44.295040, 34.963799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172737, 44.678452, 35.231979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.406340, 44.644711, 35.554920>,  <28.546501, 44.624466, 35.748684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.406340, 44.644711, 35.554920>,  <28.172737, 44.678452, 35.231979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406340, 44.644711, 35.554920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151153, 0.965892, 0.210251,
		-0.797553, -0.244822, 0.551337,
		0.584006, -0.084350, 0.807355,
		28.581541, 44.619404, 35.797127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801533, 45.020794, 35.781082>,  <28.172737, 44.678452, 35.231979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801533, 45.020794, 35.781082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.177696, 45.002987, 35.915932>,  <28.403395, 44.992302, 35.996841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.177696, 45.002987, 35.915932>,  <27.801533, 45.020794, 35.781082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177696, 45.002987, 35.915932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031071, 0.976000, 0.215542,
		-0.338630, -0.213172, 0.916454,
		0.940407, -0.044513, 0.337126,
		28.459818, 44.989632, 36.017071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862652, 45.264412, 36.521168>,  <27.801533, 45.020794, 35.781082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862652, 45.264412, 36.521168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213589, 45.322632, 36.338264>,  <28.424150, 45.357563, 36.228523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213589, 45.322632, 36.338264>,  <27.862652, 45.264412, 36.521168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213589, 45.322632, 36.338264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117447, 0.989040, 0.089473,
		0.465268, -0.024795, 0.884822,
		0.877343, 0.145549, -0.457257,
		28.476791, 45.366295, 36.201088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249191, 45.730633, 36.939556>,  <27.862652, 45.264412, 36.521168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249191, 45.730633, 36.939556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.370199, 45.771069, 36.560448>,  <28.442804, 45.795330, 36.332985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.370199, 45.771069, 36.560448>,  <28.249191, 45.730633, 36.939556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370199, 45.771069, 36.560448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195887, 0.979728, 0.041968,
		0.932797, 0.172959, 0.316189,
		0.302520, 0.101085, -0.947768,
		28.460955, 45.801395, 36.276119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671240, 46.348091, 36.822620>,  <28.249191, 45.730633, 36.939556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671240, 46.348091, 36.822620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.525270, 46.261181, 36.460487>,  <28.437689, 46.209034, 36.243210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.525270, 46.261181, 36.460487>,  <28.671240, 46.348091, 36.822620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525270, 46.261181, 36.460487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142237, 0.973984, -0.176419,
		0.920108, 0.064392, -0.386335,
		-0.364924, -0.217276, -0.905330,
		28.415794, 46.195999, 36.188889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.997120, 29.584503, 45.730011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794662, 29.318037, 45.510906>,  <34.673187, 29.158157, 45.379444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794662, 29.318037, 45.510906>,  <34.997120, 29.584503, 45.730011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794662, 29.318037, 45.510906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807456, 0.142860, 0.572369,
		-0.303038, 0.731996, -0.610205,
		-0.506145, -0.666163, -0.547763,
		34.642818, 29.118189, 45.346577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312630, 29.882757, 45.794498>,  <34.997120, 29.584503, 45.730011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312630, 29.882757, 45.794498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276184, 29.504597, 45.669334>,  <34.254318, 29.277700, 45.594234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276184, 29.504597, 45.669334>,  <34.312630, 29.882757, 45.794498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276184, 29.504597, 45.669334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838917, -0.096438, 0.535648,
		-0.536579, 0.311311, -0.784327,
		-0.091114, -0.945403, -0.312910,
		34.248852, 29.220976, 45.575462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594753, 29.766756, 45.613701>,  <34.312630, 29.882757, 45.794498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594753, 29.766756, 45.613701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739185, 29.407270, 45.713249>,  <33.825844, 29.191580, 45.772976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739185, 29.407270, 45.713249>,  <33.594753, 29.766756, 45.613701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739185, 29.407270, 45.713249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833845, -0.191671, 0.517653,
		-0.417520, -0.394432, -0.818596,
		0.361080, -0.898713, 0.248869,
		33.847507, 29.137657, 45.787910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036720, 29.437178, 45.631214>,  <33.594753, 29.766756, 45.613701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036720, 29.437178, 45.631214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290516, 29.194918, 45.823303>,  <33.442795, 29.049562, 45.938557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290516, 29.194918, 45.823303>,  <33.036720, 29.437178, 45.631214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290516, 29.194918, 45.823303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735650, -0.282550, 0.615618,
		-0.237164, -0.743875, -0.624822,
		0.634487, -0.605653, 0.480221,
		33.480862, 29.013222, 45.967369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756321, 28.717056, 45.676067>,  <33.036720, 29.437178, 45.631214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756321, 28.717056, 45.676067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.025642, 28.745411, 45.970451>,  <33.187237, 28.762423, 46.147083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.025642, 28.745411, 45.970451>,  <32.756321, 28.717056, 45.676067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025642, 28.745411, 45.970451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699860, -0.259912, 0.665313,
		0.238446, -0.963027, -0.125389,
		0.673304, 0.070886, 0.735959,
		33.227634, 28.766676, 46.191238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844879, 27.990206, 46.034431>,  <32.756321, 28.717056, 45.676067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844879, 27.990206, 46.034431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.958870, 28.286808, 46.277401>,  <33.027264, 28.464769, 46.423183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.958870, 28.286808, 46.277401>,  <32.844879, 27.990206, 46.034431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958870, 28.286808, 46.277401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492088, -0.430641, 0.756570,
		0.822579, -0.514511, 0.242162,
		0.284978, 0.741503, 0.607421,
		33.044365, 28.509258, 46.459629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851959, 27.648897, 46.685928>,  <32.844879, 27.990206, 46.034431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851959, 27.648897, 46.685928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897320, 28.019243, 46.830105>,  <32.924534, 28.241451, 46.916611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897320, 28.019243, 46.830105>,  <32.851959, 27.648897, 46.685928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897320, 28.019243, 46.830105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488108, -0.264069, 0.831876,
		0.865385, -0.270268, 0.421976,
		0.113399, 0.925863, 0.360441,
		32.931339, 28.297003, 46.938236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097450, 27.614868, 47.297203>,  <32.851959, 27.648897, 46.685928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097450, 27.614868, 47.297203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934879, 27.977695, 47.341103>,  <32.837337, 28.195393, 47.367443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934879, 27.977695, 47.341103>,  <33.097450, 27.614868, 47.297203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934879, 27.977695, 47.341103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499230, -0.321060, 0.804792,
		0.765238, 0.272298, 0.583323,
		-0.406425, 0.907069, 0.109748,
		32.812950, 28.249817, 47.374027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183407, 27.807734, 48.021008>,  <33.097450, 27.614868, 47.297203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183407, 27.807734, 48.021008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.885494, 28.031723, 47.875832>,  <32.706745, 28.166117, 47.788727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.885494, 28.031723, 47.875832>,  <33.183407, 27.807734, 48.021008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885494, 28.031723, 47.875832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561096, -0.231111, 0.794832,
		0.361207, 0.795623, 0.486327,
		-0.744782, 0.559975, -0.362942,
		32.662060, 28.199715, 47.766949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051971, 28.345325, 48.515221>,  <33.183407, 27.807734, 48.021008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051971, 28.345325, 48.515221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.724293, 28.306089, 48.289196>,  <32.527687, 28.282547, 48.153580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.724293, 28.306089, 48.289196>,  <33.051971, 28.345325, 48.515221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724293, 28.306089, 48.289196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572174, 0.072489, 0.816923,
		-0.039173, 0.992534, -0.115508,
		-0.819196, -0.098091, -0.565063,
		32.478535, 28.276663, 48.119678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580364, 28.676100, 48.930420>,  <33.051971, 28.345325, 48.515221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580364, 28.676100, 48.930420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364029, 28.483622, 48.654469>,  <32.234226, 28.368134, 48.488895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364029, 28.483622, 48.654469>,  <32.580364, 28.676100, 48.930420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364029, 28.483622, 48.654469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710588, -0.177468, 0.680859,
		-0.450060, 0.858461, -0.245950,
		-0.540843, -0.481197, -0.689883,
		32.201775, 28.339262, 48.447502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826096, 28.912743, 48.988937>,  <32.580364, 28.676100, 48.930420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826096, 28.912743, 48.988937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836796, 28.559450, 48.801666>,  <31.843216, 28.347475, 48.689304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.836796, 28.559450, 48.801666>,  <31.826096, 28.912743, 48.988937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836796, 28.559450, 48.801666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542173, -0.406294, 0.735510,
		-0.839841, 0.234156, -0.489733,
		0.026751, -0.883231, -0.468175,
		31.844822, 28.294481, 48.661213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205080, 28.759802, 48.713840>,  <31.826096, 28.912743, 48.988937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205080, 28.759802, 48.713840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.410809, 28.438313, 48.833511>,  <31.534246, 28.245419, 48.905312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.410809, 28.438313, 48.833511>,  <31.205080, 28.759802, 48.713840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410809, 28.438313, 48.833511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563929, -0.054132, 0.824047,
		-0.646109, -0.592538, -0.481084,
		0.514321, -0.803721, 0.299174,
		31.565105, 28.197197, 48.923264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700121, 28.233862, 48.890106>,  <31.205080, 28.759802, 48.713840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700121, 28.233862, 48.890106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.049316, 28.166010, 49.073025>,  <31.258833, 28.125299, 49.182774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.049316, 28.166010, 49.073025>,  <30.700121, 28.233862, 48.890106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049316, 28.166010, 49.073025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472265, -0.059685, 0.879434,
		-0.121889, -0.983698, -0.132217,
		0.872988, -0.169635, 0.457291,
		31.311213, 28.115122, 49.210213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053371, 28.640053, 48.908009>,  <30.700121, 28.233862, 48.890106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053371, 28.640053, 48.908009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.785870, 28.930250, 48.973034>,  <29.625368, 29.104368, 49.012051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.785870, 28.930250, 48.973034>,  <30.053371, 28.640053, 48.908009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785870, 28.930250, 48.973034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502237, 0.602047, -0.620723,
		-0.548203, -0.333463, -0.766991,
		-0.668753, 0.725493, 0.162567,
		29.585243, 29.147898, 49.021805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885201, 28.964302, 48.225433>,  <30.053371, 28.640053, 48.908009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885201, 28.964302, 48.225433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.792440, 29.226492, 48.512928>,  <29.736784, 29.383806, 48.685425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.792440, 29.226492, 48.512928>,  <29.885201, 28.964302, 48.225433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792440, 29.226492, 48.512928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339262, 0.746980, -0.571770,
		-0.911659, 0.111244, -0.395603,
		-0.231901, 0.655473, 0.718733,
		29.722870, 29.423134, 48.728546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373438, 29.533659, 47.950428>,  <29.885201, 28.964302, 48.225433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373438, 29.533659, 47.950428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.609999, 29.655405, 48.249123>,  <29.751934, 29.728453, 48.428337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.609999, 29.655405, 48.249123>,  <29.373438, 29.533659, 47.950428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609999, 29.655405, 48.249123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386555, 0.705690, -0.593781,
		-0.707687, 0.639815, 0.299692,
		0.591400, 0.304364, 0.746732,
		29.787418, 29.746714, 48.473141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398289, 30.329075, 47.920792>,  <29.373438, 29.533659, 47.950428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398289, 30.329075, 47.920792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.700005, 30.227171, 48.162830>,  <29.881033, 30.166029, 48.308056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.700005, 30.227171, 48.162830>,  <29.398289, 30.329075, 47.920792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700005, 30.227171, 48.162830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575032, 0.701126, -0.421617,
		-0.316840, 0.665973, 0.675347,
		0.754288, -0.254761, 0.605100,
		29.926291, 30.150743, 48.344360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703922, 30.916349, 48.172672>,  <29.398289, 30.329075, 47.920792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703922, 30.916349, 48.172672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.013592, 30.671936, 48.238754>,  <30.199392, 30.525288, 48.278404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.013592, 30.671936, 48.238754>,  <29.703922, 30.916349, 48.172672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013592, 30.671936, 48.238754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612788, 0.658117, -0.437461,
		0.158579, 0.439906, 0.883932,
		0.774173, -0.611035, 0.165206,
		30.245844, 30.488625, 48.288315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224466, 31.309143, 48.390881>,  <29.703922, 30.916349, 48.172672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224466, 31.309143, 48.390881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.425644, 30.979076, 48.288006>,  <30.546350, 30.781036, 48.226280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.425644, 30.979076, 48.288006>,  <30.224466, 31.309143, 48.390881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425644, 30.979076, 48.288006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669076, 0.560071, -0.488526,
		0.547161, 0.073621, 0.833784,
		0.502944, -0.825167, -0.257191,
		30.576527, 30.731525, 48.210850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881626, 31.474455, 48.533188>,  <30.224466, 31.309143, 48.390881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881626, 31.474455, 48.533188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.904886, 31.157391, 48.290436>,  <30.918842, 30.967152, 48.144783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.904886, 31.157391, 48.290436>,  <30.881626, 31.474455, 48.533188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904886, 31.157391, 48.290436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671703, 0.480794, -0.563607,
		0.738535, -0.374871, 0.560391,
		0.058152, -0.792660, -0.606885,
		30.922333, 30.919592, 48.108372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558727, 31.328302, 48.446117>,  <30.881626, 31.474455, 48.533188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558727, 31.328302, 48.446117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375505, 31.185343, 48.120552>,  <31.265572, 31.099567, 47.925213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375505, 31.185343, 48.120552>,  <31.558727, 31.328302, 48.446117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375505, 31.185343, 48.120552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608146, 0.541812, -0.580170,
		0.648339, -0.760727, -0.030830,
		-0.458056, -0.357398, -0.813912,
		31.238089, 31.078123, 47.876377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047089, 31.378239, 48.011253>,  <31.558727, 31.328302, 48.446117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047089, 31.378239, 48.011253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.749645, 31.289532, 47.758949>,  <31.571178, 31.236307, 47.607567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.749645, 31.289532, 47.758949>,  <32.047089, 31.378239, 48.011253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749645, 31.289532, 47.758949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469362, 0.498724, -0.728679,
		0.476175, -0.837910, -0.266766,
		-0.743610, -0.221769, -0.630763,
		31.526562, 31.223001, 47.569721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289944, 30.911041, 47.417641>,  <32.047089, 31.378239, 48.011253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289944, 30.911041, 47.417641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.972483, 31.118675, 47.290733>,  <31.782005, 31.243256, 47.214588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.972483, 31.118675, 47.290733>,  <32.289944, 30.911041, 47.417641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972483, 31.118675, 47.290733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533931, 0.344351, -0.772231,
		-0.291602, -0.782286, -0.550452,
		-0.793654, 0.519087, -0.317273,
		31.734386, 31.274401, 47.195553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441620, 30.984217, 46.684536>,  <32.289944, 30.911041, 47.417641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441620, 30.984217, 46.684536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128002, 31.227314, 46.735004>,  <31.939831, 31.373173, 46.765285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128002, 31.227314, 46.735004>,  <32.441620, 30.984217, 46.684536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128002, 31.227314, 46.735004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349831, 0.600573, -0.718979,
		-0.512730, -0.519574, -0.683485,
		-0.784045, 0.607745, 0.126169,
		31.892788, 31.409637, 46.772854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008461, 31.032150, 46.057766>,  <32.441620, 30.984217, 46.684536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008461, 31.032150, 46.057766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.960506, 31.365894, 46.272976>,  <31.931734, 31.566141, 46.402103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.960506, 31.365894, 46.272976>,  <32.008461, 31.032150, 46.057766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960506, 31.365894, 46.272976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341698, 0.543502, -0.766713,
		-0.932132, 0.091926, -0.350256,
		-0.119884, 0.834359, 0.538026,
		31.924541, 31.616201, 46.434383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760256, 31.425129, 45.516617>,  <32.008461, 31.032150, 46.057766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760256, 31.425129, 45.516617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862307, 31.696236, 45.792454>,  <31.923538, 31.858900, 45.957958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862307, 31.696236, 45.792454>,  <31.760256, 31.425129, 45.516617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862307, 31.696236, 45.792454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423981, 0.562558, -0.709766,
		-0.868994, 0.473457, -0.143835,
		0.255129, 0.677766, 0.689596,
		31.938845, 31.899565, 45.999332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546593, 32.104969, 45.386730>,  <31.760256, 31.425129, 45.516617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546593, 32.104969, 45.386730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859695, 32.169479, 45.627159>,  <32.047558, 32.208183, 45.771416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859695, 32.169479, 45.627159>,  <31.546593, 32.104969, 45.386730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859695, 32.169479, 45.627159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496509, 0.420457, -0.759404,
		-0.375195, 0.892865, 0.249041,
		0.782756, 0.161274, 0.601069,
		32.094521, 32.217861, 45.807480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057880, 32.770504, 45.306198>,  <31.546593, 32.104969, 45.386730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057880, 32.770504, 45.306198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.896664, 32.604843, 44.979752>,  <30.799932, 32.505447, 44.783886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.896664, 32.604843, 44.979752>,  <31.057880, 32.770504, 45.306198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896664, 32.604843, 44.979752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783034, -0.305541, 0.541758,
		-0.473724, 0.857395, -0.201146,
		-0.403043, -0.414148, -0.816112,
		30.775751, 32.480598, 44.734917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380642, 32.870991, 45.405544>,  <31.057880, 32.770504, 45.306198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380642, 32.870991, 45.405544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.341429, 32.599903, 45.114040>,  <30.317900, 32.437252, 44.939137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.341429, 32.599903, 45.114040>,  <30.380642, 32.870991, 45.405544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341429, 32.599903, 45.114040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778402, -0.404045, 0.480457,
		-0.620065, 0.614370, -0.487924,
		-0.098035, -0.677715, -0.728761,
		30.312017, 32.396587, 44.895412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664919, 32.850742, 45.121574>,  <30.380642, 32.870991, 45.405544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664919, 32.850742, 45.121574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.810394, 32.488777, 45.033146>,  <29.897678, 32.271599, 44.980087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.810394, 32.488777, 45.033146>,  <29.664919, 32.850742, 45.121574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810394, 32.488777, 45.033146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805457, -0.424702, 0.413361,
		-0.467943, 0.027728, -0.883324,
		0.363688, -0.904909, -0.221070,
		29.919500, 32.217304, 44.966824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032757, 32.452202, 44.852448>,  <29.664919, 32.850742, 45.121574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032757, 32.452202, 44.852448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.316158, 32.193611, 44.965649>,  <29.486200, 32.038456, 45.033569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.316158, 32.193611, 44.965649>,  <29.032757, 32.452202, 44.852448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316158, 32.193611, 44.965649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698723, -0.586350, 0.409853,
		-0.099024, -0.488121, -0.867140,
		0.708506, -0.646476, 0.282999,
		29.528709, 31.999668, 45.050549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724207, 31.796654, 44.740704>,  <29.032757, 32.452202, 44.852448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724207, 31.796654, 44.740704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.013250, 31.682543, 44.992561>,  <29.186676, 31.614077, 45.143677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.013250, 31.682543, 44.992561>,  <28.724207, 31.796654, 44.740704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013250, 31.682543, 44.992561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641281, -0.616704, 0.456547,
		0.258063, -0.733684, -0.628578,
		0.722608, -0.285277, 0.629646,
		29.230032, 31.596960, 45.181454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707228, 31.069937, 44.668526>,  <28.724207, 31.796654, 44.740704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707228, 31.069937, 44.668526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.897429, 31.183619, 45.001541>,  <29.011549, 31.251827, 45.201351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.897429, 31.183619, 45.001541>,  <28.707228, 31.069937, 44.668526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897429, 31.183619, 45.001541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475617, -0.713085, 0.515071,
		0.740058, -0.640889, -0.203901,
		0.475502, 0.284204, 0.832542,
		29.040079, 31.268879, 45.251305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799923, 30.563311, 44.935505>,  <28.707228, 31.069937, 44.668526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799923, 30.563311, 44.935505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.833088, 30.798946, 45.257027>,  <28.852987, 30.940329, 45.449940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.833088, 30.798946, 45.257027>,  <28.799923, 30.563311, 44.935505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833088, 30.798946, 45.257027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584355, -0.624624, 0.518049,
		0.807252, -0.512658, 0.292450,
		0.082910, 0.589091, 0.803802,
		28.857962, 30.975674, 45.498169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947918, 29.843283, 44.915813>,  <28.799923, 30.563311, 44.935505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947918, 29.843283, 44.915813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.693962, 29.731413, 44.627731>,  <28.541590, 29.664291, 44.454880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.693962, 29.731413, 44.627731>,  <28.947918, 29.843283, 44.915813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693962, 29.731413, 44.627731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548088, 0.493970, -0.674976,
		0.544536, -0.823271, -0.160328,
		-0.634886, -0.279675, -0.720210,
		28.503496, 29.647511, 44.411667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300940, 29.590197, 44.261742>,  <28.947918, 29.843283, 44.915813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300940, 29.590197, 44.261742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.944241, 29.665459, 44.097115>,  <28.730221, 29.710617, 43.998341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.944241, 29.665459, 44.097115>,  <29.300940, 29.590197, 44.261742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944241, 29.665459, 44.097115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451371, 0.435025, -0.779113,
		0.032445, -0.880540, -0.472860,
		-0.891746, 0.188157, -0.411565,
		28.676716, 29.721905, 43.973644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287563, 29.440300, 43.434105>,  <29.300940, 29.590197, 44.261742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287563, 29.440300, 43.434105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.995354, 29.704521, 43.503399>,  <28.820028, 29.863054, 43.544975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.995354, 29.704521, 43.503399>,  <29.287563, 29.440300, 43.434105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995354, 29.704521, 43.503399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274130, 0.515997, -0.811541,
		-0.625451, -0.545362, -0.558025,
		-0.730523, 0.660551, 0.173231,
		28.776197, 29.902687, 43.555367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014488, 29.475981, 42.891296>,  <29.287563, 29.440300, 43.434105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014488, 29.475981, 42.891296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.914915, 29.823570, 43.062374>,  <28.855171, 30.032124, 43.165020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.914915, 29.823570, 43.062374>,  <29.014488, 29.475981, 42.891296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914915, 29.823570, 43.062374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208754, 0.479354, -0.852433,
		-0.945755, -0.122917, -0.300729,
		-0.248934, 0.868971, 0.427692,
		28.840235, 30.084261, 43.190681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509783, 29.748255, 42.461170>,  <29.014488, 29.475981, 42.891296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509783, 29.748255, 42.461170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.666044, 30.061884, 42.654091>,  <28.759802, 30.250061, 42.769844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.666044, 30.061884, 42.654091>,  <28.509783, 29.748255, 42.461170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666044, 30.061884, 42.654091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220526, 0.428970, -0.875987,
		-0.893732, 0.448569, -0.005329,
		0.390655, 0.784073, 0.482306,
		28.783241, 30.297106, 42.798782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332821, 30.191805, 42.009586>,  <28.509783, 29.748255, 42.461170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332821, 30.191805, 42.009586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.592340, 30.382210, 42.247063>,  <28.748053, 30.496452, 42.389549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.592340, 30.382210, 42.247063>,  <28.332821, 30.191805, 42.009586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592340, 30.382210, 42.247063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261830, 0.592909, -0.761514,
		-0.714497, 0.649516, 0.260044,
		0.648798, 0.476012, 0.593695,
		28.786980, 30.525013, 42.425171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181772, 30.952534, 41.918007>,  <28.332821, 30.191805, 42.009586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181772, 30.952534, 41.918007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.559008, 30.957804, 42.050919>,  <28.785349, 30.960966, 42.130665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.559008, 30.957804, 42.050919>,  <28.181772, 30.952534, 41.918007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559008, 30.957804, 42.050919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249746, 0.631691, -0.733889,
		-0.219568, 0.775108, 0.592450,
		0.943089, 0.013176, 0.332279,
		28.841934, 30.961756, 42.150604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.143127, 26.495625, 46.666725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.516134, 26.397932, 46.773129>,  <30.739939, 26.339315, 46.836971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.516134, 26.397932, 46.773129>,  <30.143127, 26.495625, 46.666725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516134, 26.397932, 46.773129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350778, 0.437540, -0.827957,
		0.085824, 0.865395, 0.493685,
		0.932517, -0.244233, 0.266010,
		30.795889, 26.324663, 46.852932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479532, 26.658184, 46.023167>,  <30.143127, 26.495625, 46.666725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479532, 26.658184, 46.023167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.769964, 26.531094, 46.267086>,  <30.944223, 26.454840, 46.413437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.769964, 26.531094, 46.267086>,  <30.479532, 26.658184, 46.023167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769964, 26.531094, 46.267086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684904, 0.255583, -0.682337,
		0.060942, 0.913087, 0.403186,
		0.726080, -0.317726, 0.609801,
		30.987789, 26.435776, 46.450027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984182, 27.148281, 45.891373>,  <30.479532, 26.658184, 46.023167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984182, 27.148281, 45.891373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190325, 26.845196, 46.051510>,  <31.314011, 26.663345, 46.147594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190325, 26.845196, 46.051510>,  <30.984182, 27.148281, 45.891373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190325, 26.845196, 46.051510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766194, 0.198138, -0.611300,
		0.383866, 0.621783, 0.682667,
		0.515358, -0.757712, 0.400348,
		31.344933, 26.617882, 46.171616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644621, 27.462265, 46.212517>,  <30.984182, 27.148281, 45.891373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644621, 27.462265, 46.212517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.648430, 27.082952, 46.085598>,  <31.650715, 26.855366, 46.009449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.648430, 27.082952, 46.085598>,  <31.644621, 27.462265, 46.212517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648430, 27.082952, 46.085598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690862, 0.235638, -0.683509,
		0.722924, -0.212699, 0.657374,
		0.009520, -0.948280, -0.317294,
		31.651285, 26.798470, 45.990410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328651, 27.322235, 46.046291>,  <31.644621, 27.462265, 46.212517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328651, 27.322235, 46.046291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.128975, 27.023149, 45.871143>,  <32.009167, 26.843699, 45.766056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.128975, 27.023149, 45.871143>,  <32.328651, 27.322235, 46.046291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128975, 27.023149, 45.871143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597494, 0.068939, -0.798904,
		0.627539, -0.660432, 0.412341,
		-0.499195, -0.747715, -0.437866,
		31.979216, 26.798836, 45.739784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815895, 26.858477, 45.795231>,  <32.328651, 27.322235, 46.046291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815895, 26.858477, 45.795231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492695, 26.757046, 45.582504>,  <32.298775, 26.696188, 45.454868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492695, 26.757046, 45.582504>,  <32.815895, 26.858477, 45.795231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492695, 26.757046, 45.582504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532300, 0.072744, -0.843425,
		0.252558, -0.964577, 0.076201,
		-0.808004, -0.253575, -0.531816,
		32.250294, 26.680973, 45.422958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077187, 26.329487, 45.325642>,  <32.815895, 26.858477, 45.795231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077187, 26.329487, 45.325642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.750690, 26.479267, 45.149670>,  <32.554794, 26.569136, 45.044086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.750690, 26.479267, 45.149670>,  <33.077187, 26.329487, 45.325642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750690, 26.479267, 45.149670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486876, 0.035958, -0.872731,
		-0.310975, -0.926549, -0.211661,
		-0.816239, 0.374450, -0.439933,
		32.505817, 26.591602, 45.017689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098736, 25.868599, 44.752220>,  <33.077187, 26.329487, 45.325642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098736, 25.868599, 44.752220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.837971, 26.160975, 44.671486>,  <32.681511, 26.336399, 44.623047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.837971, 26.160975, 44.671486>,  <33.098736, 25.868599, 44.752220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837971, 26.160975, 44.671486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427458, 0.134386, -0.893991,
		-0.626328, -0.669082, -0.400054,
		-0.651914, 0.730938, -0.201835,
		32.642395, 26.380257, 44.610935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800159, 25.669907, 44.069355>,  <33.098736, 25.868599, 44.752220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800159, 25.669907, 44.069355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.769569, 26.063875, 44.131432>,  <32.751217, 26.300257, 44.168678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.769569, 26.063875, 44.131432>,  <32.800159, 25.669907, 44.069355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769569, 26.063875, 44.131432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539564, 0.171768, -0.824237,
		-0.838464, 0.020702, -0.544564,
		-0.076475, 0.984920, 0.155191,
		32.746628, 26.359352, 44.177990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670399, 26.016773, 43.381531>,  <32.800159, 25.669907, 44.069355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670399, 26.016773, 43.381531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.797459, 26.306807, 43.625942>,  <32.873695, 26.480825, 43.772591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.797459, 26.306807, 43.625942>,  <32.670399, 26.016773, 43.381531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797459, 26.306807, 43.625942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557655, 0.378328, -0.738843,
		-0.766891, 0.575434, -0.284171,
		0.317646, 0.725082, 0.611030,
		32.892754, 26.524330, 43.809250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583115, 26.627979, 42.952156>,  <32.670399, 26.016773, 43.381531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583115, 26.627979, 42.952156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.824303, 26.751476, 43.246395>,  <32.969017, 26.825575, 43.422939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.824303, 26.751476, 43.246395>,  <32.583115, 26.627979, 42.952156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824303, 26.751476, 43.246395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541447, 0.518805, -0.661571,
		-0.585887, 0.797195, 0.145657,
		0.602969, 0.308740, 0.735600,
		33.005192, 26.844099, 43.467075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587814, 27.428732, 42.937424>,  <32.583115, 26.627979, 42.952156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587814, 27.428732, 42.937424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.922401, 27.308170, 43.120499>,  <33.123154, 27.235832, 43.230343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.922401, 27.308170, 43.120499>,  <32.587814, 27.428732, 42.937424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922401, 27.308170, 43.120499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547859, 0.440088, -0.711458,
		0.013017, 0.845859, 0.533248,
		0.836469, -0.301406, 0.457683,
		33.173344, 27.217749, 43.257805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128906, 27.968969, 42.930939>,  <32.587814, 27.428732, 42.937424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128906, 27.968969, 42.930939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.858038, 28.048359, 42.647518>,  <31.695517, 28.095993, 42.477467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.858038, 28.048359, 42.647518>,  <32.128906, 27.968969, 42.930939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858038, 28.048359, 42.647518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692785, -0.496473, 0.523033,
		-0.247967, 0.845057, 0.473698,
		-0.677172, 0.198476, -0.708552,
		31.654886, 28.107903, 42.434952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517319, 28.312544, 43.272465>,  <32.128906, 27.968969, 42.930939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517319, 28.312544, 43.272465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.374598, 28.155920, 42.933201>,  <31.288965, 28.061945, 42.729645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.374598, 28.155920, 42.933201>,  <31.517319, 28.312544, 43.272465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374598, 28.155920, 42.933201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708002, -0.478968, 0.518963,
		-0.609447, 0.785665, -0.106329,
		-0.356803, -0.391562, -0.848158,
		31.267557, 28.038452, 42.678753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838776, 28.495087, 43.280510>,  <31.517319, 28.312544, 43.272465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838776, 28.495087, 43.280510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.871412, 28.176302, 43.041111>,  <30.890993, 27.985031, 42.897472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.871412, 28.176302, 43.041111>,  <30.838776, 28.495087, 43.280510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871412, 28.176302, 43.041111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716285, -0.464436, 0.520802,
		-0.693021, 0.386200, -0.608745,
		0.081589, -0.796962, -0.598493,
		30.895889, 27.937214, 42.861565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183096, 28.368404, 43.100071>,  <30.838776, 28.495087, 43.280510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183096, 28.368404, 43.100071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.366844, 28.029234, 42.994240>,  <30.477093, 27.825731, 42.930740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.366844, 28.029234, 42.994240>,  <30.183096, 28.368404, 43.100071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366844, 28.029234, 42.994240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848795, -0.506825, 0.150587,
		-0.261779, 0.155394, -0.952536,
		0.459369, -0.847928, -0.264574,
		30.504654, 27.774857, 42.914867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758444, 27.994427, 42.583160>,  <30.183096, 28.368404, 43.100071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758444, 27.994427, 42.583160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.011606, 27.734421, 42.751404>,  <30.163504, 27.578417, 42.852348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.011606, 27.734421, 42.751404>,  <29.758444, 27.994427, 42.583160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011606, 27.734421, 42.751404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756054, -0.635912, 0.154914,
		0.166772, -0.416047, -0.893920,
		0.632906, -0.650016, 0.420606,
		30.201477, 27.539415, 42.877586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368729, 27.442450, 42.480495>,  <29.758444, 27.994427, 42.583160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368729, 27.442450, 42.480495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.646769, 27.289864, 42.724239>,  <29.813593, 27.198313, 42.870487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.646769, 27.289864, 42.724239>,  <29.368729, 27.442450, 42.480495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646769, 27.289864, 42.724239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653471, -0.688591, 0.314353,
		0.299685, -0.616706, -0.727917,
		0.695100, -0.381465, 0.609360,
		29.855299, 27.175425, 42.907047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387194, 26.765633, 42.326321>,  <29.368729, 27.442450, 42.480495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387194, 26.765633, 42.326321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.529480, 26.826124, 42.695232>,  <29.614851, 26.862419, 42.916580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.529480, 26.826124, 42.695232>,  <29.387194, 26.765633, 42.326321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529480, 26.826124, 42.695232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583523, -0.734906, 0.345564,
		0.730047, -0.661093, -0.173171,
		0.355714, 0.151229, 0.922279,
		29.636194, 26.871492, 42.971916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355120, 26.123907, 42.628586>,  <29.387194, 26.765633, 42.326321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355120, 26.123907, 42.628586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.387239, 26.375685, 42.937740>,  <29.406511, 26.526751, 43.123234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.387239, 26.375685, 42.937740>,  <29.355120, 26.123907, 42.628586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387239, 26.375685, 42.937740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598918, -0.589344, 0.542190,
		0.796774, -0.506432, 0.329663,
		0.080298, 0.629444, 0.772886,
		29.411329, 26.564518, 43.169605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254158, 25.682003, 43.203674>,  <29.355120, 26.123907, 42.628586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254158, 25.682003, 43.203674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.208206, 26.048151, 43.358025>,  <29.180635, 26.267839, 43.450634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.208206, 26.048151, 43.358025>,  <29.254158, 25.682003, 43.203674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208206, 26.048151, 43.358025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507370, -0.388029, 0.769421,
		0.854037, -0.107395, 0.509007,
		-0.114877, 0.915369, 0.385880,
		29.173742, 26.322762, 43.473789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384342, 25.725061, 43.949963>,  <29.254158, 25.682003, 43.203674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384342, 25.725061, 43.949963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.112186, 26.009192, 43.877846>,  <28.948893, 26.179670, 43.834576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.112186, 26.009192, 43.877846>,  <29.384342, 25.725061, 43.949963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112186, 26.009192, 43.877846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510200, -0.282513, 0.812331,
		0.526086, 0.644687, 0.554628,
		-0.680390, 0.710327, -0.180293,
		28.908070, 26.222290, 43.823757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274958, 25.858318, 44.607765>,  <29.384342, 25.725061, 43.949963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274958, 25.858318, 44.607765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.991062, 26.075460, 44.428177>,  <28.820724, 26.205746, 44.320423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.991062, 26.075460, 44.428177>,  <29.274958, 25.858318, 44.607765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991062, 26.075460, 44.428177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606510, -0.146678, 0.781429,
		0.358350, 0.826917, 0.433352,
		-0.709740, 0.542857, -0.448972,
		28.778141, 26.238317, 44.293484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901100, 26.210445, 45.105522>,  <29.274958, 25.858318, 44.607765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901100, 26.210445, 45.105522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.653646, 26.200573, 44.791405>,  <28.505175, 26.194649, 44.602936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.653646, 26.200573, 44.791405>,  <28.901100, 26.210445, 45.105522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653646, 26.200573, 44.791405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726718, -0.361912, 0.583868,
		-0.298618, 0.931886, 0.205954,
		-0.618635, -0.024683, -0.785291,
		28.468056, 26.193169, 44.555817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175385, 26.592411, 45.270630>,  <28.901100, 26.210445, 45.105522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175385, 26.592411, 45.270630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.130894, 26.314070, 44.986824>,  <28.104198, 26.147064, 44.816540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.130894, 26.314070, 44.986824>,  <28.175385, 26.592411, 45.270630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130894, 26.314070, 44.986824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714010, -0.440638, 0.544084,
		-0.691243, 0.567122, -0.447834,
		-0.111229, -0.695852, -0.709519,
		28.097525, 26.105314, 44.773968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413364, 26.573135, 44.989006>,  <28.175385, 26.592411, 45.270630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413364, 26.573135, 44.989006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.641365, 26.245564, 45.015690>,  <27.778166, 26.049021, 45.031700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.641365, 26.245564, 45.015690>,  <27.413364, 26.573135, 44.989006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641365, 26.245564, 45.015690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654838, -0.403743, 0.638888,
		-0.496272, -0.407851, -0.766402,
		0.570001, -0.818931, 0.066710,
		27.812366, 25.999884, 45.035702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108360, 26.851431, 44.431648>,  <27.413364, 26.573135, 44.989006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108360, 26.851431, 44.431648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.936295, 27.018116, 44.751976>,  <26.833055, 27.118128, 44.944172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.936295, 27.018116, 44.751976>,  <27.108360, 26.851431, 44.431648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936295, 27.018116, 44.751976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295815, 0.903174, -0.311078,
		-0.852908, 0.103079, -0.511784,
		-0.430164, 0.416714, 0.800817,
		26.807245, 27.143129, 44.992222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858948, 27.528704, 44.153721>,  <27.108360, 26.851431, 44.431648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858948, 27.528704, 44.153721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.881636, 27.555309, 44.552189>,  <26.895248, 27.571272, 44.791271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.881636, 27.555309, 44.552189>,  <26.858948, 27.528704, 44.153721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881636, 27.555309, 44.552189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321455, 0.943429, -0.081293,
		-0.945224, 0.324836, 0.032132,
		0.056721, 0.066512, 0.996172,
		26.898651, 27.575262, 44.851040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475698, 28.115383, 44.441746>,  <26.858948, 27.528704, 44.153721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475698, 28.115383, 44.441746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.789539, 28.032949, 44.675644>,  <26.977844, 27.983488, 44.815983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.789539, 28.032949, 44.675644>,  <26.475698, 28.115383, 44.441746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789539, 28.032949, 44.675644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421431, 0.869032, -0.259190,
		-0.454748, 0.449792, 0.768695,
		0.784602, -0.206086, 0.584747,
		27.024920, 27.971125, 44.851067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609308, 28.795521, 44.877865>,  <26.475698, 28.115383, 44.441746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609308, 28.795521, 44.877865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.956114, 28.601391, 44.923027>,  <27.164198, 28.484913, 44.950127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.956114, 28.601391, 44.923027>,  <26.609308, 28.795521, 44.877865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956114, 28.601391, 44.923027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494631, 0.865660, -0.077284,
		-0.060233, 0.122855, 0.990595,
		0.867014, -0.485324, 0.112909,
		27.216217, 28.455793, 44.956902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063213, 29.058075, 45.384769>,  <26.609308, 28.795521, 44.877865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063213, 29.058075, 45.384769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.291090, 28.881685, 45.107353>,  <27.427816, 28.775852, 44.940903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.291090, 28.881685, 45.107353>,  <27.063213, 29.058075, 45.384769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291090, 28.881685, 45.107353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588604, 0.807858, -0.030166,
		0.573581, -0.391033, 0.719790,
		0.569692, -0.440974, -0.693536,
		27.461998, 28.749393, 44.899292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511457, 29.644958, 45.227943>,  <27.063213, 29.058075, 45.384769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511457, 29.644958, 45.227943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.667908, 29.363651, 44.990479>,  <27.761778, 29.194866, 44.848000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.667908, 29.363651, 44.990479>,  <27.511457, 29.644958, 45.227943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667908, 29.363651, 44.990479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667866, 0.660704, -0.342673,
		0.633227, -0.262460, 0.728106,
		0.391124, -0.703267, -0.593664,
		27.785246, 29.152672, 44.812378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264292, 29.714848, 45.344936>,  <27.511457, 29.644958, 45.227943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264292, 29.714848, 45.344936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.170567, 29.558216, 44.989010>,  <28.114332, 29.464237, 44.775455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.170567, 29.558216, 44.989010>,  <28.264292, 29.714848, 45.344936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170567, 29.558216, 44.989010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720707, 0.544307, -0.429314,
		0.652441, -0.741888, 0.154674,
		-0.234313, -0.391577, -0.889812,
		28.100273, 29.440742, 44.722065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902485, 30.100859, 45.588558>,  <28.264292, 29.714848, 45.344936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902485, 30.100859, 45.588558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.787386, 30.451977, 45.741753>,  <28.718327, 30.662647, 45.833672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.787386, 30.451977, 45.741753>,  <28.902485, 30.100859, 45.588558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787386, 30.451977, 45.741753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527868, -0.479039, 0.701339,
		0.799097, -0.000359, 0.601201,
		-0.287747, 0.877794, 0.382988,
		28.701061, 30.715315, 45.856647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834761, 29.921694, 46.188835>,  <28.902485, 30.100859, 45.588558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834761, 29.921694, 46.188835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.649944, 30.276430, 46.190971>,  <28.539055, 30.489273, 46.192253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.649944, 30.276430, 46.190971>,  <28.834761, 29.921694, 46.188835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649944, 30.276430, 46.190971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615612, -0.325053, 0.717888,
		0.638388, 0.328409, 0.696138,
		-0.462043, 0.886842, 0.005337,
		28.511332, 30.542482, 46.192574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811514, 30.098215, 46.873272>,  <28.834761, 29.921694, 46.188835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811514, 30.098215, 46.873272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.527239, 30.308256, 46.686001>,  <28.356674, 30.434280, 46.573639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.527239, 30.308256, 46.686001>,  <28.811514, 30.098215, 46.873272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527239, 30.308256, 46.686001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658147, -0.261159, 0.706143,
		0.248529, 0.809976, 0.531198,
		-0.710687, 0.525104, -0.468178,
		28.314034, 30.465788, 46.545547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450550, 30.523199, 47.364708>,  <28.811514, 30.098215, 46.873272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450550, 30.523199, 47.364708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.168003, 30.533634, 47.081764>,  <27.998474, 30.539896, 46.911999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.168003, 30.533634, 47.081764>,  <28.450550, 30.523199, 47.364708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168003, 30.533634, 47.081764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687886, -0.260933, 0.677294,
		-0.166904, 0.965004, 0.202262,
		-0.706368, 0.026090, -0.707364,
		27.956093, 30.541462, 46.869556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860392, 30.935768, 47.665501>,  <28.450550, 30.523199, 47.364708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860392, 30.935768, 47.665501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.713879, 30.713684, 47.366814>,  <27.625971, 30.580433, 47.187603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.713879, 30.713684, 47.366814>,  <27.860392, 30.935768, 47.665501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713879, 30.713684, 47.366814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758882, -0.286133, 0.585001,
		-0.538458, 0.780941, -0.316534,
		-0.366280, -0.555210, -0.746713,
		27.603994, 30.547121, 47.142799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081518, 31.116507, 47.454079>,  <27.860392, 30.935768, 47.665501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081518, 31.116507, 47.454079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.156845, 30.735437, 47.358624>,  <27.202042, 30.506796, 47.301350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.156845, 30.735437, 47.358624>,  <27.081518, 31.116507, 47.454079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156845, 30.735437, 47.358624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831988, -0.283862, 0.476673,
		-0.521855, 0.108778, -0.846070,
		0.188316, -0.952675, -0.238637,
		27.213341, 30.449635, 47.287033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347361, 30.793091, 47.324665>,  <27.081518, 31.116507, 47.454079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347361, 30.793091, 47.324665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.580372, 30.469166, 47.352566>,  <26.720179, 30.274811, 47.369305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.580372, 30.469166, 47.352566>,  <26.347361, 30.793091, 47.324665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580372, 30.469166, 47.352566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682785, -0.440981, 0.582529,
		-0.440981, -0.386965, -0.809811,
		-0.582529, 0.809811, -0.069750,
		26.755131, 30.226223, 47.373489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977226, 30.149532, 47.160164>,  <26.347361, 30.793091, 47.324665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977226, 30.149532, 47.160164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.288317, 30.025637, 47.378963>,  <26.474972, 29.951300, 47.510242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.288317, 30.025637, 47.378963>,  <25.977226, 30.149532, 47.160164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288317, 30.025637, 47.378963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621929, -0.505612, 0.597964,
		0.091354, -0.805245, -0.585863,
		0.777727, -0.309739, 0.546995,
		26.521635, 29.932714, 47.543060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785950, 29.545738, 47.380604>,  <25.977226, 30.149532, 47.160164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785950, 29.545738, 47.380604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.087786, 29.576897, 47.641228>,  <26.268887, 29.595592, 47.797604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.087786, 29.576897, 47.641228>,  <25.785950, 29.545738, 47.380604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087786, 29.576897, 47.641228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417033, -0.709690, 0.567824,
		0.506635, -0.700195, -0.503038,
		0.754588, 0.077896, 0.651558,
		26.314163, 29.600266, 47.836697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.935944, 36.567490, 37.020088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080597, 36.583935, 37.392654>,  <37.167389, 36.593803, 37.616196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080597, 36.583935, 37.392654>,  <36.935944, 36.567490, 37.020088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080597, 36.583935, 37.392654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671323, -0.681759, 0.290741,
		0.646954, -0.730420, -0.218945,
		0.361631, 0.041113, 0.931414,
		37.189087, 36.596268, 37.672077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726665, 35.919132, 37.336388>,  <36.935944, 36.567490, 37.020088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726665, 35.919132, 37.336388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825645, 36.132881, 37.659676>,  <36.885033, 36.261131, 37.853649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825645, 36.132881, 37.659676>,  <36.726665, 35.919132, 37.336388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825645, 36.132881, 37.659676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539139, -0.617152, 0.573108,
		0.805046, -0.577556, 0.135386,
		0.247448, 0.534370, 0.808219,
		36.899879, 36.293194, 37.902142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790863, 35.388794, 37.893093>,  <36.726665, 35.919132, 37.336388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790863, 35.388794, 37.893093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770210, 35.735027, 38.092331>,  <36.757816, 35.942768, 38.211876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770210, 35.735027, 38.092331>,  <36.790863, 35.388794, 37.893093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770210, 35.735027, 38.092331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496975, -0.454891, 0.738979,
		0.866227, -0.209385, 0.453661,
		-0.051635, 0.865582, 0.498098,
		36.754719, 35.994701, 38.241760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024517, 35.322350, 38.626423>,  <36.790863, 35.388794, 37.893093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024517, 35.322350, 38.626423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762859, 35.623913, 38.602020>,  <36.605865, 35.804852, 38.587379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762859, 35.623913, 38.602020>,  <37.024517, 35.322350, 38.626423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762859, 35.623913, 38.602020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595173, -0.463281, 0.656613,
		0.466758, 0.465832, 0.751756,
		-0.654145, 0.753904, -0.061010,
		36.566616, 35.850082, 38.583717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585003, 35.099026, 39.053837>,  <37.024517, 35.322350, 38.626423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585003, 35.099026, 39.053837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371498, 35.403858, 38.907234>,  <36.243397, 35.586758, 38.819271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371498, 35.403858, 38.907234>,  <36.585003, 35.099026, 39.053837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371498, 35.403858, 38.907234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829289, -0.386923, 0.403201,
		0.165461, 0.519156, 0.838510,
		-0.533763, 0.762081, -0.366510,
		36.211369, 35.632484, 38.797283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124676, 35.362541, 39.623703>,  <36.585003, 35.099026, 39.053837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124676, 35.362541, 39.623703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946022, 35.517490, 39.301098>,  <35.838829, 35.610462, 39.107536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946022, 35.517490, 39.301098>,  <36.124676, 35.362541, 39.623703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946022, 35.517490, 39.301098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889291, -0.093077, 0.447770,
		0.098388, 0.917212, 0.386060,
		-0.446633, 0.387375, -0.806511,
		35.812031, 35.633701, 39.059143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695801, 35.960297, 39.824154>,  <36.124676, 35.362541, 39.623703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695801, 35.960297, 39.824154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560051, 35.782421, 39.492592>,  <35.478603, 35.675697, 39.293655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560051, 35.782421, 39.492592>,  <35.695801, 35.960297, 39.824154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560051, 35.782421, 39.492592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913482, -0.054464, 0.403217,
		-0.224450, 0.894030, -0.387729,
		-0.339371, -0.444685, -0.828904,
		35.458241, 35.649017, 39.243919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116108, 36.314911, 39.632301>,  <35.695801, 35.960297, 39.824154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116108, 36.314911, 39.632301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060837, 35.973618, 39.431149>,  <35.027672, 35.768841, 39.310455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060837, 35.973618, 39.431149>,  <35.116108, 36.314911, 39.632301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060837, 35.973618, 39.431149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858271, -0.150225, 0.490717,
		-0.494244, 0.499417, -0.711551,
		-0.138180, -0.853238, -0.502883,
		35.019382, 35.717648, 39.280285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378349, 36.231758, 39.682117>,  <35.116108, 36.314911, 39.632301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378349, 36.231758, 39.682117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526024, 35.872147, 39.587925>,  <34.614628, 35.656380, 39.531410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526024, 35.872147, 39.587925>,  <34.378349, 36.231758, 39.682117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526024, 35.872147, 39.587925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858534, -0.426937, 0.283981,
		-0.355840, 0.097323, -0.929465,
		0.369185, -0.899029, -0.235476,
		34.636780, 35.602436, 39.517281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813580, 35.948708, 39.478992>,  <34.378349, 36.231758, 39.682117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813580, 35.948708, 39.478992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057396, 35.632408, 39.501572>,  <34.203686, 35.442631, 39.515121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057396, 35.632408, 39.501572>,  <33.813580, 35.948708, 39.478992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057396, 35.632408, 39.501572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755581, -0.557929, 0.343239,
		-0.239919, -0.251871, -0.937550,
		0.609538, -0.790744, 0.056451,
		34.240257, 35.395184, 39.518505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387150, 35.376804, 39.263729>,  <33.813580, 35.948708, 39.478992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387150, 35.376804, 39.263729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676403, 35.209255, 39.483410>,  <33.849953, 35.108727, 39.615219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676403, 35.209255, 39.483410>,  <33.387150, 35.376804, 39.263729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676403, 35.209255, 39.483410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684685, -0.539528, 0.490016,
		0.091056, -0.730378, -0.676947,
		0.723129, -0.418876, 0.549206,
		33.893341, 35.083591, 39.648170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280758, 34.696232, 39.297264>,  <33.387150, 35.376804, 39.263729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280758, 34.696232, 39.297264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460892, 34.811291, 39.635368>,  <33.568974, 34.880325, 39.838230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460892, 34.811291, 39.635368>,  <33.280758, 34.696232, 39.297264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460892, 34.811291, 39.635368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732870, -0.421662, 0.533950,
		0.510001, -0.859920, 0.020916,
		0.450335, 0.287644, 0.845257,
		33.595993, 34.897583, 39.888947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397400, 34.119389, 38.830498>,  <33.280758, 34.696232, 39.297264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397400, 34.119389, 38.830498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039959, 34.051601, 38.664242>,  <32.825493, 34.010929, 38.564487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039959, 34.051601, 38.664242>,  <33.397400, 34.119389, 38.830498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039959, 34.051601, 38.664242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247609, 0.586233, -0.771376,
		0.374388, -0.792218, -0.481896,
		-0.893601, -0.169472, -0.415639,
		32.771877, 34.000759, 38.539551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425968, 33.848339, 37.990231>,  <33.397400, 34.119389, 38.830498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425968, 33.848339, 37.990231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082245, 34.037998, 38.066936>,  <32.876011, 34.151794, 38.112961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082245, 34.037998, 38.066936>,  <33.425968, 33.848339, 37.990231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082245, 34.037998, 38.066936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072937, 0.484714, -0.871626,
		-0.506234, -0.735007, -0.451101,
		-0.859307, 0.474149, 0.191769,
		32.824451, 34.180244, 38.124466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008137, 33.698162, 37.396881>,  <33.425968, 33.848339, 37.990231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008137, 33.698162, 37.396881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862095, 34.028721, 37.568352>,  <32.774471, 34.227058, 37.671234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862095, 34.028721, 37.568352>,  <33.008137, 33.698162, 37.396881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862095, 34.028721, 37.568352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057341, 0.439627, -0.896348,
		-0.929199, -0.351842, -0.113123,
		-0.365104, 0.826399, 0.428676,
		32.752563, 34.276642, 37.696953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474167, 33.955040, 36.967739>,  <33.008137, 33.698162, 37.396881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474167, 33.955040, 36.967739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554874, 34.283215, 37.181721>,  <32.603298, 34.480118, 37.310112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554874, 34.283215, 37.181721>,  <32.474167, 33.955040, 36.967739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554874, 34.283215, 37.181721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045079, 0.553390, -0.831702,
		-0.978396, 0.143693, 0.148639,
		0.201766, 0.820434, 0.534957,
		32.615402, 34.529346, 37.342209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913036, 34.428661, 36.749893>,  <32.474167, 33.955040, 36.967739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913036, 34.428661, 36.749893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206257, 34.653996, 36.902363>,  <32.382191, 34.789196, 36.993843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206257, 34.653996, 36.902363>,  <31.913036, 34.428661, 36.749893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206257, 34.653996, 36.902363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024619, 0.582013, -0.812806,
		-0.679728, 0.586445, 0.440514,
		0.733051, 0.563332, 0.381173,
		32.426170, 34.822994, 37.016716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810848, 35.092564, 36.405609>,  <31.913036, 34.428661, 36.749893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810848, 35.092564, 36.405609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175972, 35.122322, 36.566227>,  <32.395046, 35.140179, 36.662598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175972, 35.122322, 36.566227>,  <31.810848, 35.092564, 36.405609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175972, 35.122322, 36.566227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287431, 0.581442, -0.761123,
		-0.290103, 0.810179, 0.509363,
		0.912811, 0.074397, 0.401549,
		32.449814, 35.144642, 36.686691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984730, 35.836136, 36.430283>,  <31.810848, 35.092564, 36.405609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984730, 35.836136, 36.430283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326107, 35.627697, 36.433975>,  <32.530933, 35.502632, 36.436192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326107, 35.627697, 36.433975>,  <31.984730, 35.836136, 36.430283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326107, 35.627697, 36.433975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378832, 0.608077, -0.697659,
		0.357937, 0.598912, 0.716370,
		0.853445, -0.521102, 0.009234,
		32.582142, 35.471367, 36.436745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537235, 36.292225, 36.337963>,  <31.984730, 35.836136, 36.430283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537235, 36.292225, 36.337963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665092, 35.941029, 36.195431>,  <32.741806, 35.730312, 36.109913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665092, 35.941029, 36.195431>,  <32.537235, 36.292225, 36.337963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665092, 35.941029, 36.195431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233293, 0.437400, -0.868479,
		0.918371, 0.194472, 0.344639,
		0.319640, -0.877988, -0.356326,
		32.760983, 35.677631, 36.088531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157398, 36.552525, 36.035961>,  <32.537235, 36.292225, 36.337963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157398, 36.552525, 36.035961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044601, 36.188831, 35.913471>,  <32.976925, 35.970615, 35.839977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044601, 36.188831, 35.913471>,  <33.157398, 36.552525, 36.035961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044601, 36.188831, 35.913471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259863, 0.234866, -0.936648,
		0.923554, -0.343704, 0.170046,
		-0.281991, -0.909233, -0.306228,
		32.960003, 35.916061, 35.821602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502514, 36.434959, 35.554966>,  <33.157398, 36.552525, 36.035961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502514, 36.434959, 35.554966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242329, 36.142185, 35.473804>,  <33.086216, 35.966522, 35.425110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242329, 36.142185, 35.473804>,  <33.502514, 36.434959, 35.554966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242329, 36.142185, 35.473804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266606, 0.030119, -0.963335,
		0.711210, -0.680708, 0.175547,
		-0.650463, -0.731935, -0.202902,
		33.047192, 35.922604, 35.412933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877003, 35.979336, 35.142323>,  <33.502514, 36.434959, 35.554966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877003, 35.979336, 35.142323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488182, 35.932407, 35.060978>,  <33.254890, 35.904251, 35.012173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488182, 35.932407, 35.060978>,  <33.877003, 35.979336, 35.142323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488182, 35.932407, 35.060978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201683, 0.026098, -0.979103,
		0.120176, -0.992751, -0.001706,
		-0.972050, -0.117321, -0.203357,
		33.196568, 35.897213, 34.999969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645023, 35.329960, 34.707726>,  <33.877003, 35.979336, 35.142323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645023, 35.329960, 34.707726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405678, 35.640572, 34.628773>,  <33.262070, 35.826939, 34.581402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405678, 35.640572, 34.628773>,  <33.645023, 35.329960, 34.707726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405678, 35.640572, 34.628773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285400, -0.023622, -0.958117,
		-0.748669, -0.629638, -0.207487,
		-0.598366, 0.776529, -0.197384,
		33.226170, 35.873531, 34.569557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881420, 34.708401, 34.991985>,  <33.645023, 35.329960, 34.707726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881420, 34.708401, 34.991985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106014, 34.576710, 35.295654>,  <34.240772, 34.497696, 35.477856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106014, 34.576710, 35.295654>,  <33.881420, 34.708401, 34.991985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106014, 34.576710, 35.295654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285984, -0.783702, -0.551385,
		0.776495, 0.526706, -0.345885,
		0.561488, -0.329230, 0.759170,
		34.274460, 34.477940, 35.523407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540367, 34.758636, 34.819096>,  <33.881420, 34.708401, 34.991985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540367, 34.758636, 34.819096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413841, 34.459862, 35.053028>,  <34.337925, 34.280598, 35.193390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413841, 34.459862, 35.053028>,  <34.540367, 34.758636, 34.819096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413841, 34.459862, 35.053028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156856, -0.649185, -0.744282,
		0.935596, -0.143695, 0.322510,
		-0.316318, -0.746935, 0.584835,
		34.318947, 34.235783, 35.228477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022682, 34.189255, 34.814922>,  <34.540367, 34.758636, 34.819096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022682, 34.189255, 34.814922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646584, 34.077908, 34.893353>,  <34.420925, 34.011097, 34.940411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646584, 34.077908, 34.893353>,  <35.022682, 34.189255, 34.814922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646584, 34.077908, 34.893353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036743, -0.655453, -0.754342,
		0.338507, -0.702063, 0.626515,
		-0.940246, -0.278370, 0.196080,
		34.364510, 33.994396, 34.952175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877705, 33.501892, 35.129383>,  <35.022682, 34.189255, 34.814922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877705, 33.501892, 35.129383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582809, 33.632092, 34.892559>,  <34.405872, 33.710209, 34.750465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582809, 33.632092, 34.892559>,  <34.877705, 33.501892, 35.129383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582809, 33.632092, 34.892559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196522, -0.735103, -0.648847,
		-0.646421, -0.594707, 0.477978,
		-0.737237, 0.325496, -0.592059,
		34.361637, 33.729740, 34.714943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346874, 33.306931, 34.467148>,  <34.877705, 33.501892, 35.129383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346874, 33.306931, 34.467148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605217, 33.075195, 34.666039>,  <35.760223, 32.936153, 34.785374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605217, 33.075195, 34.666039>,  <35.346874, 33.306931, 34.467148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605217, 33.075195, 34.666039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688044, -0.159436, 0.707937,
		-0.330860, -0.799341, -0.501584,
		0.645853, -0.579340, 0.497231,
		35.798973, 32.901394, 34.815208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083126, 32.641678, 34.815514>,  <35.346874, 33.306931, 34.467148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083126, 32.641678, 34.815514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412800, 32.722618, 35.027088>,  <35.610603, 32.771183, 35.154034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412800, 32.722618, 35.027088>,  <35.083126, 32.641678, 34.815514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412800, 32.722618, 35.027088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524033, -0.081651, 0.847775,
		0.214738, -0.975903, 0.038744,
		0.824183, 0.202353, 0.528939,
		35.660053, 32.783325, 35.185768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187469, 32.069767, 35.366241>,  <35.083126, 32.641678, 34.815514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187469, 32.069767, 35.366241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348682, 32.422699, 35.463448>,  <35.445412, 32.634457, 35.521770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348682, 32.422699, 35.463448>,  <35.187469, 32.069767, 35.366241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348682, 32.422699, 35.463448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417728, -0.058903, 0.906661,
		0.814288, -0.466930, 0.344834,
		0.403036, 0.882330, 0.243013,
		35.469593, 32.687397, 35.536350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451900, 31.899130, 36.014160>,  <35.187469, 32.069767, 35.366241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451900, 31.899130, 36.014160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473087, 32.298565, 36.015766>,  <35.485802, 32.538227, 36.016731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473087, 32.298565, 36.015766>,  <35.451900, 31.899130, 36.014160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473087, 32.298565, 36.015766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453204, 0.020458, 0.891172,
		0.889832, -0.049024, 0.453647,
		0.052970, 0.998588, 0.004014,
		35.488979, 32.598141, 36.016972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821896, 32.184746, 36.583542>,  <35.451900, 31.899130, 36.014160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821896, 32.184746, 36.583542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582886, 32.488018, 36.479141>,  <35.439480, 32.669983, 36.416500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582886, 32.488018, 36.479141>,  <35.821896, 32.184746, 36.583542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582886, 32.488018, 36.479141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447312, -0.045036, 0.893243,
		0.665488, 0.650484, 0.366055,
		-0.597526, 0.758184, -0.260998,
		35.403629, 32.715473, 36.400841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686169, 32.653622, 37.282494>,  <35.821896, 32.184746, 36.583542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686169, 32.653622, 37.282494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406498, 32.700558, 37.000393>,  <35.238693, 32.728722, 36.831135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406498, 32.700558, 37.000393>,  <35.686169, 32.653622, 37.282494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406498, 32.700558, 37.000393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714138, -0.067753, 0.696719,
		0.033971, 0.990778, 0.131170,
		-0.699181, 0.117342, -0.705250,
		35.196743, 32.735760, 36.788818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128025, 32.945286, 37.714924>,  <35.686169, 32.653622, 37.282494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128025, 32.945286, 37.714924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940182, 32.859829, 37.372269>,  <34.827477, 32.808556, 37.166676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940182, 32.859829, 37.372269>,  <35.128025, 32.945286, 37.714924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940182, 32.859829, 37.372269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842422, -0.181915, 0.507181,
		-0.264189, 0.959826, -0.094544,
		-0.469607, -0.213638, -0.856638,
		34.799301, 32.795738, 37.115276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455387, 33.287888, 37.682701>,  <35.128025, 32.945286, 37.714924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455387, 33.287888, 37.682701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428974, 32.973183, 37.437218>,  <34.413124, 32.784359, 37.289928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428974, 32.973183, 37.437218>,  <34.455387, 33.287888, 37.682701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428974, 32.973183, 37.437218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768419, -0.352259, 0.534270,
		-0.636530, 0.506870, -0.581302,
		-0.066036, -0.786763, -0.613712,
		34.409164, 32.737152, 37.253105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720467, 33.192245, 37.621605>,  <34.455387, 33.287888, 37.682701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720467, 33.192245, 37.621605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893475, 32.851349, 37.503891>,  <33.997280, 32.646809, 37.433262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893475, 32.851349, 37.503891>,  <33.720467, 33.192245, 37.621605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893475, 32.851349, 37.503891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599506, -0.515633, 0.612140,
		-0.673436, -0.088338, -0.733948,
		0.432523, -0.852243, -0.294287,
		34.023232, 32.595676, 37.415604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201237, 32.698734, 37.627773>,  <33.720467, 33.192245, 37.621605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201237, 32.698734, 37.627773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511955, 32.449619, 37.590405>,  <33.698387, 32.300152, 37.567982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511955, 32.449619, 37.590405>,  <33.201237, 32.698734, 37.627773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511955, 32.449619, 37.590405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421874, -0.624760, 0.657037,
		-0.467558, -0.470972, -0.748048,
		0.776796, -0.622784, -0.093421,
		33.744995, 32.262783, 37.562378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886917, 32.070107, 37.497139>,  <33.201237, 32.698734, 37.627773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886917, 32.070107, 37.497139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232468, 32.044952, 37.697044>,  <33.439800, 32.029858, 37.816986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232468, 32.044952, 37.697044>,  <32.886917, 32.070107, 37.497139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232468, 32.044952, 37.697044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442066, -0.570241, 0.692389,
		0.241439, -0.819067, -0.520420,
		0.863878, -0.062890, 0.499760,
		33.491631, 32.026085, 37.846973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845661, 31.540493, 37.872345>,  <32.886917, 32.070107, 37.497139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845661, 31.540493, 37.872345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158192, 31.676794, 38.081505>,  <33.345711, 31.758575, 38.207001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158192, 31.676794, 38.081505>,  <32.845661, 31.540493, 37.872345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158192, 31.676794, 38.081505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279461, -0.558122, 0.781282,
		0.558066, -0.756562, -0.340846,
		0.781322, 0.340754, 0.522899,
		33.392590, 31.779020, 38.238373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181133, 30.989328, 38.132248>,  <32.845661, 31.540493, 37.872345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181133, 30.989328, 38.132248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334774, 31.288664, 38.348564>,  <33.426960, 31.468266, 38.478355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334774, 31.288664, 38.348564>,  <33.181133, 30.989328, 38.132248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334774, 31.288664, 38.348564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042647, -0.570715, 0.820040,
		0.922304, -0.338044, -0.187300,
		0.384105, 0.748339, 0.540789,
		33.450005, 31.513165, 38.510799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797665, 30.710381, 38.582081>,  <33.181133, 30.989328, 38.132248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797665, 30.710381, 38.582081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679127, 31.053577, 38.749905>,  <33.608002, 31.259495, 38.850597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679127, 31.053577, 38.749905>,  <33.797665, 30.710381, 38.582081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679127, 31.053577, 38.749905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136391, -0.472809, 0.870545,
		0.945292, 0.200759, 0.257138,
		-0.296347, 0.857990, 0.419561,
		33.590221, 31.310974, 38.875774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199535, 30.755655, 39.238781>,  <33.797665, 30.710381, 38.582081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199535, 30.755655, 39.238781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883518, 30.997820, 39.277386>,  <33.693909, 31.143120, 39.300549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883518, 30.997820, 39.277386>,  <34.199535, 30.755655, 39.238781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883518, 30.997820, 39.277386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216087, -0.422316, 0.880315,
		0.573712, 0.674629, 0.464468,
		-0.790039, 0.605413, 0.096509,
		33.646507, 31.179443, 39.306339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270290, 31.010986, 39.903156>,  <34.199535, 30.755655, 39.238781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270290, 31.010986, 39.903156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892551, 31.050789, 39.777740>,  <33.665909, 31.074671, 39.702492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892551, 31.050789, 39.777740>,  <34.270290, 31.010986, 39.903156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892551, 31.050789, 39.777740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321667, -0.478753, 0.816900,
		-0.068821, 0.872292, 0.484117,
		-0.944348, 0.099505, -0.313536,
		33.609245, 31.080641, 39.683681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917244, 31.162996, 40.534569>,  <34.270290, 31.010986, 39.903156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917244, 31.162996, 40.534569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665127, 31.028803, 40.254517>,  <33.513855, 30.948288, 40.086487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665127, 31.028803, 40.254517>,  <33.917244, 31.162996, 40.534569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665127, 31.028803, 40.254517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529729, -0.473427, 0.703743,
		-0.567553, 0.814444, 0.120684,
		-0.630294, -0.335482, -0.700130,
		33.476040, 30.928158, 40.044479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268265, 31.164227, 40.844105>,  <33.917244, 31.162996, 40.534569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268265, 31.164227, 40.844105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189896, 30.955563, 40.511963>,  <33.142876, 30.830364, 40.312679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189896, 30.955563, 40.511963>,  <33.268265, 31.164227, 40.844105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189896, 30.955563, 40.511963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693087, -0.525363, 0.493584,
		-0.693720, 0.672209, -0.258627,
		-0.195918, -0.521660, -0.830354,
		33.131119, 30.799065, 40.262856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578705, 31.090288, 40.844879>,  <33.268265, 31.164227, 40.844105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578705, 31.090288, 40.844879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722065, 30.799763, 40.610268>,  <32.808083, 30.625448, 40.469501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722065, 30.799763, 40.610268>,  <32.578705, 31.090288, 40.844879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722065, 30.799763, 40.610268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626597, -0.652879, 0.425588,
		-0.692044, 0.214987, -0.689098,
		0.358402, -0.726312, -0.586531,
		32.829586, 30.581869, 40.434307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929928, 30.663603, 40.607677>,  <32.578705, 31.090288, 40.844879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929928, 30.663603, 40.607677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253239, 30.431355, 40.568558>,  <32.447224, 30.292006, 40.545086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253239, 30.431355, 40.568558>,  <31.929928, 30.663603, 40.607677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253239, 30.431355, 40.568558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524559, -0.785534, 0.328290,
		-0.267439, -0.214047, -0.939500,
		0.808279, -0.580621, -0.097802,
		32.495724, 30.257168, 40.539219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614965, 30.010723, 40.515316>,  <31.929928, 30.663603, 40.607677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614965, 30.010723, 40.515316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996511, 29.921392, 40.595581>,  <32.225437, 29.867794, 40.643742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996511, 29.921392, 40.595581>,  <31.614965, 30.010723, 40.515316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996511, 29.921392, 40.595581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295577, -0.815799, 0.497098,
		0.052685, -0.533476, -0.844173,
		0.953865, -0.223329, 0.200664,
		32.282669, 29.854393, 40.655781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673449, 29.352526, 40.418579>,  <31.614965, 30.010723, 40.515316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673449, 29.352526, 40.418579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011509, 29.394508, 40.628227>,  <32.214344, 29.419699, 40.754017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011509, 29.394508, 40.628227>,  <31.673449, 29.352526, 40.418579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011509, 29.394508, 40.628227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271545, -0.760278, 0.590119,
		0.460413, -0.641062, -0.614051,
		0.845153, 0.104956, 0.524119,
		32.265057, 29.425995, 40.785461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064995, 28.605787, 40.438263>,  <31.673449, 29.352526, 40.418579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064995, 28.605787, 40.438263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193085, 28.824697, 40.747570>,  <32.269939, 28.956043, 40.933155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193085, 28.824697, 40.747570>,  <32.064995, 28.605787, 40.438263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193085, 28.824697, 40.747570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102498, -0.791446, 0.602584,
		0.941782, -0.272219, -0.197343,
		0.320221, 0.547275, 0.773272,
		32.289150, 28.988880, 40.979553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496262, 28.152803, 40.879925>,  <32.064995, 28.605787, 40.438263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496262, 28.152803, 40.879925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366131, 28.437984, 41.128399>,  <32.288052, 28.609093, 41.277481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366131, 28.437984, 41.128399>,  <32.496262, 28.152803, 40.879925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366131, 28.437984, 41.128399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289922, -0.700481, 0.652129,
		0.900061, 0.032058, 0.434582,
		-0.325323, 0.712951, 0.621182,
		32.268536, 28.651869, 41.314754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592873, 27.913929, 41.572876>,  <32.496262, 28.152803, 40.879925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592873, 27.913929, 41.572876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323593, 28.205917, 41.620121>,  <32.162025, 28.381109, 41.648468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323593, 28.205917, 41.620121>,  <32.592873, 27.913929, 41.572876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323593, 28.205917, 41.620121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521807, -0.582120, 0.623581,
		0.523949, 0.358163, 0.772785,
		-0.673197, 0.729969, 0.118110,
		32.121635, 28.424908, 41.655556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504276, 27.906420, 42.314342>,  <32.592873, 27.913929, 41.572876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504276, 27.906420, 42.314342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184666, 28.108185, 42.183426>,  <31.992899, 28.229244, 42.104877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184666, 28.108185, 42.183426>,  <32.504276, 27.906420, 42.314342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184666, 28.108185, 42.183426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585027, -0.526432, 0.616938,
		0.138897, 0.684425, 0.715731,
		-0.799031, 0.504413, -0.327288,
		31.944956, 28.259508, 42.085239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111095, 28.025103, 42.845062>,  <32.504276, 27.906420, 42.314342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111095, 28.025103, 42.845062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338421, 27.719381, 42.966957>,  <33.474815, 27.535950, 43.040092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338421, 27.719381, 42.966957>,  <33.111095, 28.025103, 42.845062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338421, 27.719381, 42.966957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675809, 0.222317, -0.702750,
		0.469365, 0.605325, 0.642867,
		0.568313, -0.764301, 0.304736,
		33.508915, 27.490091, 43.058376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795288, 28.341427, 42.848446>,  <33.111095, 28.025103, 42.845062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795288, 28.341427, 42.848446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887283, 27.952250, 42.839642>,  <33.942482, 27.718742, 42.834358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887283, 27.952250, 42.839642>,  <33.795288, 28.341427, 42.848446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887283, 27.952250, 42.839642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764016, 0.194518, -0.615176,
		0.602813, 0.124670, 0.788082,
		0.229990, -0.972944, -0.022008,
		33.956280, 27.660366, 42.833038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487598, 28.204981, 43.033035>,  <33.795288, 28.341427, 42.848446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487598, 28.204981, 43.033035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378529, 27.896996, 42.802277>,  <34.313087, 27.712204, 42.663822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378529, 27.896996, 42.802277>,  <34.487598, 28.204981, 43.033035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378529, 27.896996, 42.802277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606521, 0.327891, -0.724306,
		0.746847, -0.547397, 0.377592,
		-0.272674, -0.769964, -0.576893,
		34.296726, 27.666006, 42.629208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143055, 27.957939, 42.779026>,  <34.487598, 28.204981, 43.033035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143055, 27.957939, 42.779026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860973, 27.790432, 42.550175>,  <34.691727, 27.689928, 42.412865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860973, 27.790432, 42.550175>,  <35.143055, 27.957939, 42.779026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860973, 27.790432, 42.550175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587647, 0.106259, -0.802110,
		0.396691, -0.901855, 0.171153,
		-0.705201, -0.418767, -0.572124,
		34.649414, 27.664803, 42.378536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460060, 27.418648, 42.444782>,  <35.143055, 27.957939, 42.779026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460060, 27.418648, 42.444782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150162, 27.521887, 42.213905>,  <34.964222, 27.583830, 42.075378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150162, 27.521887, 42.213905>,  <35.460060, 27.418648, 42.444782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150162, 27.521887, 42.213905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610503, 0.067884, -0.789099,
		-0.164481, -0.963731, -0.210162,
		-0.774746, 0.258096, -0.577195,
		34.917736, 27.599316, 42.040749>
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
