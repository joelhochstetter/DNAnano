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
	<24.066923, 35.368149, 35.134182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360554, 35.124931, 35.013241>,  <24.536732, 34.979000, 34.940678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360554, 35.124931, 35.013241>,  <24.066923, 35.368149, 35.134182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.360554, 35.124931, 35.013241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670199, 0.576989, 0.466816,
		-0.109391, -0.545314, 0.831063,
		0.734075, -0.608043, -0.302352,
		24.580776, 34.942520, 34.922535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.544804, 35.254139, 35.595306>,  <24.066923, 35.368149, 35.134182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.544804, 35.254139, 35.595306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.776268, 35.154202, 35.284763>,  <24.915146, 35.094238, 35.098438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.776268, 35.154202, 35.284763>,  <24.544804, 35.254139, 35.595306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.776268, 35.154202, 35.284763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784378, 0.431226, 0.445864,
		0.223388, -0.866961, 0.445507,
		0.578661, -0.249846, -0.776356,
		24.949867, 35.079247, 35.051857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151211, 34.810108, 35.845860>,  <24.544804, 35.254139, 35.595306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151211, 34.810108, 35.845860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245295, 35.045258, 35.536259>,  <25.301744, 35.186348, 35.350498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245295, 35.045258, 35.536259>,  <25.151211, 34.810108, 35.845860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245295, 35.045258, 35.536259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592555, 0.544504, 0.593628,
		0.770425, -0.598268, -0.220273,
		0.235209, 0.587869, -0.774007,
		25.315857, 35.221619, 35.304058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899078, 34.861050, 35.768887>,  <25.151211, 34.810108, 35.845860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899078, 34.861050, 35.768887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712873, 35.188900, 35.635315>,  <25.601151, 35.385612, 35.555172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712873, 35.188900, 35.635315>,  <25.899078, 34.861050, 35.768887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712873, 35.188900, 35.635315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522236, 0.558997, 0.644044,
		0.714542, 0.125421, -0.688259,
		-0.465511, 0.819629, -0.333927,
		25.573219, 35.434788, 35.535137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478519, 35.435936, 35.724663>,  <25.899078, 34.861050, 35.768887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478519, 35.435936, 35.724663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094952, 35.546513, 35.750130>,  <25.864811, 35.612858, 35.765408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094952, 35.546513, 35.750130>,  <26.478519, 35.435936, 35.724663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094952, 35.546513, 35.750130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234457, 0.645990, 0.726448,
		0.159690, 0.711533, -0.684266,
		-0.958921, 0.276437, 0.063666,
		25.807276, 35.629444, 35.769230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211887, 35.381702, 35.685780>,  <26.478519, 35.435936, 35.724663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211887, 35.381702, 35.685780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595743, 35.493877, 35.677303>,  <27.826056, 35.561184, 35.672218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595743, 35.493877, 35.677303>,  <27.211887, 35.381702, 35.685780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595743, 35.493877, 35.677303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271627, 0.943738, 0.188621,
		0.072892, -0.175252, 0.981821,
		0.959638, 0.280438, -0.021188,
		27.883635, 35.578011, 35.670948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138241, 35.797150, 36.174515>,  <27.211887, 35.381702, 35.685780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138241, 35.797150, 36.174515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468307, 35.894970, 35.970833>,  <27.666348, 35.953663, 35.848625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468307, 35.894970, 35.970833>,  <27.138241, 35.797150, 36.174515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468307, 35.894970, 35.970833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260135, 0.964669, 0.041751,
		0.501426, 0.098011, 0.859631,
		0.825168, 0.244555, -0.509206,
		27.715858, 35.968338, 35.818069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305727, 36.422508, 36.501537>,  <27.138241, 35.797150, 36.174515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305727, 36.422508, 36.501537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486618, 36.448753, 36.145744>,  <27.595152, 36.464500, 35.932266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.486618, 36.448753, 36.145744>,  <27.305727, 36.422508, 36.501537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486618, 36.448753, 36.145744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326338, 0.940309, -0.096550,
		0.830057, 0.333936, 0.446646,
		0.452227, 0.065615, -0.889486,
		27.622286, 36.468437, 35.878899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696524, 36.951523, 36.529911>,  <27.305727, 36.422508, 36.501537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696524, 36.951523, 36.529911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646296, 36.906258, 36.135666>,  <27.616159, 36.879097, 35.899120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646296, 36.906258, 36.135666>,  <27.696524, 36.951523, 36.529911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646296, 36.906258, 36.135666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255618, 0.963620, -0.078074,
		0.958588, 0.242135, -0.149930,
		-0.125571, -0.113165, -0.985609,
		27.608624, 36.872307, 35.839985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199608, 37.446266, 36.124596>,  <27.696524, 36.951523, 36.529911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199608, 37.446266, 36.124596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904869, 37.352135, 35.871082>,  <27.728025, 37.295658, 35.718975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904869, 37.352135, 35.871082>,  <28.199608, 37.446266, 36.124596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904869, 37.352135, 35.871082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065527, 0.908190, -0.413396,
		0.672878, -0.346139, -0.653776,
		-0.736846, -0.235325, -0.633782,
		27.683815, 37.281536, 35.680946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225378, 37.883080, 35.585121>,  <28.199608, 37.446266, 36.124596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225378, 37.883080, 35.585121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862860, 37.732449, 35.508369>,  <27.645348, 37.642071, 35.462318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862860, 37.732449, 35.508369>,  <28.225378, 37.883080, 35.585121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862860, 37.732449, 35.508369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305076, 0.897088, -0.319626,
		0.292497, -0.231138, -0.927912,
		-0.906297, -0.376573, -0.191881,
		27.590971, 37.619476, 35.450806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019943, 38.174923, 34.973801>,  <28.225378, 37.883080, 35.585121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019943, 38.174923, 34.973801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675207, 38.044540, 35.129230>,  <27.468365, 37.966312, 35.222488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675207, 38.044540, 35.129230>,  <28.019943, 38.174923, 34.973801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675207, 38.044540, 35.129230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397785, 0.909707, -0.119168,
		-0.314641, -0.257271, -0.913681,
		-0.861840, -0.325953, 0.388570,
		27.416655, 37.946754, 35.245800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464035, 38.339905, 34.527843>,  <28.019943, 38.174923, 34.973801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464035, 38.339905, 34.527843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285378, 38.276859, 34.880131>,  <27.178183, 38.239033, 35.091503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285378, 38.276859, 34.880131>,  <27.464035, 38.339905, 34.527843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285378, 38.276859, 34.880131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493818, 0.864276, -0.095759,
		-0.746093, -0.477686, -0.463855,
		-0.446642, -0.157615, 0.880721,
		27.151384, 38.229576, 35.144348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786732, 38.503460, 34.343941>,  <27.464035, 38.339905, 34.527843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786732, 38.503460, 34.343941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833923, 38.530643, 34.740215>,  <26.862238, 38.546955, 34.977982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.833923, 38.530643, 34.740215>,  <26.786732, 38.503460, 34.343941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833923, 38.530643, 34.740215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404237, 0.914538, -0.014594,
		-0.907013, -0.398751, 0.135368,
		0.117979, 0.067957, 0.990688,
		26.869318, 38.551029, 35.037422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186796, 38.629578, 34.704010>,  <26.786732, 38.503460, 34.343941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186796, 38.629578, 34.704010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454191, 38.763355, 34.969723>,  <26.614628, 38.843624, 35.129150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454191, 38.763355, 34.969723>,  <26.186796, 38.629578, 34.704010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454191, 38.763355, 34.969723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307314, 0.937581, -0.162789,
		-0.677263, -0.095321, 0.729540,
		0.668486, 0.334449, 0.664282,
		26.654737, 38.863689, 35.169006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941551, 39.124435, 35.098080>,  <26.186796, 38.629578, 34.704010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941551, 39.124435, 35.098080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304998, 39.230213, 35.227375>,  <26.523067, 39.293682, 35.304951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304998, 39.230213, 35.227375>,  <25.941551, 39.124435, 35.098080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304998, 39.230213, 35.227375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267681, 0.962861, -0.035288,
		-0.320562, -0.054460, 0.945661,
		0.908618, 0.264448, 0.323235,
		26.577583, 39.309547, 35.324345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838945, 39.743305, 35.562775>,  <25.941551, 39.124435, 35.098080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838945, 39.743305, 35.562775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229481, 39.740032, 35.476337>,  <26.463802, 39.738068, 35.424477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229481, 39.740032, 35.476337>,  <25.838945, 39.743305, 35.562775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229481, 39.740032, 35.476337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034832, 0.992187, 0.119796,
		0.213423, -0.124488, 0.968996,
		0.976339, -0.008184, -0.216091,
		26.522383, 39.737576, 35.411510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319012, 40.147411, 36.126991>,  <25.838945, 39.743305, 35.562775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319012, 40.147411, 36.126991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456303, 40.146595, 35.751289>,  <26.538677, 40.146107, 35.525867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456303, 40.146595, 35.751289>,  <26.319012, 40.147411, 36.126991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456303, 40.146595, 35.751289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066000, 0.997578, 0.021951,
		0.936930, -0.069524, 0.342531,
		0.343227, -0.002041, -0.939250,
		26.559271, 40.145985, 35.469513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778065, 40.658680, 36.282043>,  <26.319012, 40.147411, 36.126991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778065, 40.658680, 36.282043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748075, 40.594543, 35.888359>,  <26.730082, 40.556061, 35.652149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748075, 40.594543, 35.888359>,  <26.778065, 40.658680, 36.282043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748075, 40.594543, 35.888359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094951, 0.983652, -0.153014,
		0.992655, 0.081980, -0.088972,
		-0.074974, -0.160338, -0.984211,
		26.725584, 40.546444, 35.593098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415960, 41.074413, 35.927837>,  <26.778065, 40.658680, 36.282043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415960, 41.074413, 35.927837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143572, 41.030312, 35.638252>,  <26.980139, 41.003853, 35.464500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143572, 41.030312, 35.638252>,  <27.415960, 41.074413, 35.927837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143572, 41.030312, 35.638252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024044, 0.984703, -0.172573,
		0.731915, -0.134924, -0.667904,
		-0.680972, -0.110250, -0.723963,
		26.939280, 40.997238, 35.421062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657246, 41.381607, 35.274296>,  <27.415960, 41.074413, 35.927837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657246, 41.381607, 35.274296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260889, 41.372486, 35.221214>,  <27.023075, 41.367012, 35.189365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260889, 41.372486, 35.221214>,  <27.657246, 41.381607, 35.274296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260889, 41.372486, 35.221214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021867, 0.945224, -0.325689,
		0.132863, -0.325625, -0.936117,
		-0.990893, -0.022802, -0.132705,
		26.963621, 41.365646, 35.181404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554083, 41.955353, 34.898716>,  <27.657246, 41.381607, 35.274296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554083, 41.955353, 34.898716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168571, 41.872795, 34.966278>,  <26.937265, 41.823261, 35.006817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168571, 41.872795, 34.966278>,  <27.554083, 41.955353, 34.898716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168571, 41.872795, 34.966278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231828, 0.961437, -0.147968,
		-0.131854, -0.181766, -0.974462,
		-0.963779, -0.206397, 0.168908,
		26.879438, 41.810875, 35.016949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257015, 42.324677, 34.411324>,  <27.554083, 41.955353, 34.898716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257015, 42.324677, 34.411324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000410, 42.240967, 34.706528>,  <26.846447, 42.190742, 34.883652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000410, 42.240967, 34.706528>,  <27.257015, 42.324677, 34.411324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000410, 42.240967, 34.706528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375496, 0.924597, -0.064216,
		-0.668926, -0.318317, -0.671724,
		-0.641515, -0.209274, 0.738013,
		26.807955, 42.178185, 34.927933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502234, 42.450001, 34.263477>,  <27.257015, 42.324677, 34.411324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502234, 42.450001, 34.263477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598577, 42.497555, 34.648777>,  <26.656384, 42.526085, 34.879959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598577, 42.497555, 34.648777>,  <26.502234, 42.450001, 34.263477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598577, 42.497555, 34.648777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273093, 0.960673, -0.050276,
		-0.931347, -0.250948, 0.263854,
		0.240861, 0.118881, 0.963252,
		26.670835, 42.533218, 34.937752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041727, 42.948231, 34.593807>,  <26.502234, 42.450001, 34.263477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041727, 42.948231, 34.593807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385866, 42.958149, 34.797451>,  <26.592350, 42.964100, 34.919636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385866, 42.958149, 34.797451>,  <26.041727, 42.948231, 34.593807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385866, 42.958149, 34.797451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017209, 0.996834, -0.077625,
		-0.509418, 0.075546, 0.857196,
		0.860347, 0.024792, 0.509106,
		26.643970, 42.965588, 34.950184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851038, 43.310825, 35.098259>,  <26.041727, 42.948231, 34.593807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851038, 43.310825, 35.098259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243504, 43.368988, 35.047394>,  <26.478983, 43.403885, 35.016876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243504, 43.368988, 35.047394>,  <25.851038, 43.310825, 35.098259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243504, 43.368988, 35.047394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167029, 0.969303, -0.180425,
		0.097026, 0.198267, 0.975334,
		0.981166, 0.145403, -0.127164,
		26.537853, 43.412609, 35.009243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888189, 43.929142, 34.800755>,  <25.851038, 43.310825, 35.098259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888189, 43.929142, 34.800755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279158, 43.850773, 34.832420>,  <26.513739, 43.803753, 34.851418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279158, 43.850773, 34.832420>,  <25.888189, 43.929142, 34.800755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279158, 43.850773, 34.832420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211218, 0.894651, -0.393684,
		0.006310, 0.401514, 0.915831,
		0.977418, -0.195924, 0.079162,
		26.572384, 43.791996, 34.856171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293537, 44.390656, 35.195465>,  <25.888189, 43.929142, 34.800755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293537, 44.390656, 35.195465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544666, 44.216511, 34.937382>,  <26.695343, 44.112022, 34.782532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544666, 44.216511, 34.937382>,  <26.293537, 44.390656, 35.195465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544666, 44.216511, 34.937382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164810, 0.884499, -0.436463,
		0.760708, 0.167684, 0.627060,
		0.627822, -0.435366, -0.645210,
		26.733013, 44.085899, 34.743820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744776, 44.830906, 35.102100>,  <26.293537, 44.390656, 35.195465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744776, 44.830906, 35.102100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856045, 44.594692, 34.799076>,  <26.922806, 44.452965, 34.617264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856045, 44.594692, 34.799076>,  <26.744776, 44.830906, 35.102100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856045, 44.594692, 34.799076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415507, 0.785054, -0.459396,
		0.866011, -0.186979, 0.463750,
		0.278171, -0.590533, -0.757556,
		26.939497, 44.417534, 34.571808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535587, 44.876522, 35.036205>,  <26.744776, 44.830906, 35.102100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535587, 44.876522, 35.036205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298197, 44.867500, 34.714390>,  <27.155762, 44.862087, 34.521301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298197, 44.867500, 34.714390>,  <27.535587, 44.876522, 35.036205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298197, 44.867500, 34.714390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340570, 0.898669, -0.276416,
		0.729244, -0.438047, -0.525660,
		-0.593477, -0.022550, -0.804535,
		27.120153, 44.860737, 34.473030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200279, 45.300468, 34.904007>,  <27.535587, 44.876522, 35.036205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200279, 45.300468, 34.904007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555126, 45.410942, 34.756092>,  <28.768034, 45.477226, 34.667343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555126, 45.410942, 34.756092>,  <28.200279, 45.300468, 34.904007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555126, 45.410942, 34.756092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446407, -0.716954, 0.535441,
		-0.117241, -0.640075, -0.759314,
		0.887116, 0.276188, -0.369791,
		28.821260, 45.493797, 34.645153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517664, 44.788624, 34.505981>,  <28.200279, 45.300468, 34.904007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517664, 44.788624, 34.505981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812508, 45.005177, 34.667763>,  <28.989414, 45.135109, 34.764832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812508, 45.005177, 34.667763>,  <28.517664, 44.788624, 34.505981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812508, 45.005177, 34.667763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454880, -0.840096, 0.295504,
		0.499756, -0.033842, -0.865505,
		0.737108, 0.541381, 0.404449,
		29.033640, 45.167591, 34.789097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182728, 44.585102, 34.264618>,  <28.517664, 44.788624, 34.505981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182728, 44.585102, 34.264618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195587, 44.741085, 34.632729>,  <29.203302, 44.834675, 34.853596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195587, 44.741085, 34.632729>,  <29.182728, 44.585102, 34.264618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195587, 44.741085, 34.632729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359753, -0.863551, 0.353352,
		0.932494, 0.319711, -0.168050,
		0.032149, 0.389955, 0.920273,
		29.205233, 44.858070, 34.908810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963621, 44.637764, 34.611279>,  <29.182728, 44.585102, 34.264618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963621, 44.637764, 34.611279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650034, 44.583450, 34.853588>,  <29.461882, 44.550861, 34.998974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650034, 44.583450, 34.853588>,  <29.963621, 44.637764, 34.611279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650034, 44.583450, 34.853588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373335, -0.882741, 0.285288,
		0.496001, 0.449812, 0.742733,
		-0.783967, -0.135785, 0.605771,
		29.414845, 44.542713, 35.035320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203182, 44.323132, 35.240993>,  <29.963621, 44.637764, 34.611279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203182, 44.323132, 35.240993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815681, 44.247555, 35.176716>,  <29.583181, 44.202209, 35.138149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815681, 44.247555, 35.176716>,  <30.203182, 44.323132, 35.240993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815681, 44.247555, 35.176716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149013, -0.961252, 0.231926,
		-0.198285, 0.200733, 0.959369,
		-0.968751, -0.188946, -0.160690,
		29.525057, 44.190872, 35.128510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948526, 43.957306, 35.741966>,  <30.203182, 44.323132, 35.240993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948526, 43.957306, 35.741966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676090, 43.841949, 35.472759>,  <29.512629, 43.772736, 35.311237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676090, 43.841949, 35.472759>,  <29.948526, 43.957306, 35.741966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676090, 43.841949, 35.472759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149403, -0.954565, 0.257848,
		-0.716797, 0.075067, 0.693230,
		-0.681089, -0.288395, -0.673013,
		29.471764, 43.755432, 35.270855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602631, 43.414783, 36.077583>,  <29.948526, 43.957306, 35.741966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602631, 43.414783, 36.077583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527725, 43.364719, 35.687862>,  <29.482782, 43.334679, 35.454029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527725, 43.364719, 35.687862>,  <29.602631, 43.414783, 36.077583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527725, 43.364719, 35.687862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157765, -0.982806, 0.095933,
		-0.969558, -0.135746, 0.203788,
		-0.187262, -0.125163, -0.974303,
		29.471546, 43.327171, 35.395573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989283, 42.957767, 36.096218>,  <29.602631, 43.414783, 36.077583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989283, 42.957767, 36.096218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187630, 42.927681, 35.750164>,  <29.306639, 42.909630, 35.542530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187630, 42.927681, 35.750164>,  <28.989283, 42.957767, 36.096218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187630, 42.927681, 35.750164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004741, -0.995992, 0.089313,
		-0.868385, -0.048389, -0.493524,
		0.495868, -0.075218, -0.865134,
		29.336390, 42.905117, 35.490623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643875, 42.499542, 35.750000>,  <28.989283, 42.957767, 36.096218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643875, 42.499542, 35.750000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994352, 42.486061, 35.557690>,  <29.204639, 42.477974, 35.442303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.994352, 42.486061, 35.557690>,  <28.643875, 42.499542, 35.750000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994352, 42.486061, 35.557690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092262, -0.967376, 0.235950,
		-0.473043, -0.251095, -0.844501,
		0.876195, -0.033699, -0.480777,
		29.257212, 42.475952, 35.413456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620354, 41.948902, 35.255405>,  <28.643875, 42.499542, 35.750000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620354, 41.948902, 35.255405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011892, 41.987411, 35.327614>,  <29.246817, 42.010517, 35.370937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011892, 41.987411, 35.327614>,  <28.620354, 41.948902, 35.255405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011892, 41.987411, 35.327614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068654, -0.985769, 0.153445,
		0.192724, -0.137806, -0.971528,
		0.978848, 0.096271, 0.180521,
		29.305548, 42.016293, 35.381771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956709, 41.361538, 34.926689>,  <28.620354, 41.948902, 35.255405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956709, 41.361538, 34.926689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243580, 41.489410, 35.174385>,  <29.415703, 41.566135, 35.323002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243580, 41.489410, 35.174385>,  <28.956709, 41.361538, 34.926689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243580, 41.489410, 35.174385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208557, -0.946309, 0.246988,
		0.664952, -0.047987, -0.745343,
		0.717177, 0.319681, 0.619242,
		29.458733, 41.585316, 35.360157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425741, 40.942776, 34.702225>,  <28.956709, 41.361538, 34.926689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425741, 40.942776, 34.702225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573982, 41.078537, 35.048046>,  <29.662928, 41.159992, 35.255539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573982, 41.078537, 35.048046>,  <29.425741, 40.942776, 34.702225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573982, 41.078537, 35.048046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199199, -0.938227, 0.282930,
		0.907178, 0.067364, -0.415319,
		0.370604, 0.339399, 0.864558,
		29.685163, 41.180355, 35.307415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929684, 40.562393, 34.844749>,  <29.425741, 40.942776, 34.702225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929684, 40.562393, 34.844749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892962, 40.727390, 35.207279>,  <29.870928, 40.826389, 35.424797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892962, 40.727390, 35.207279>,  <29.929684, 40.562393, 34.844749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892962, 40.727390, 35.207279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406994, -0.815129, 0.412215,
		0.908806, 0.406711, -0.093051,
		-0.091804, 0.412494, 0.906323,
		29.865421, 40.851139, 35.479176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543446, 40.575268, 35.125015>,  <29.929684, 40.562393, 34.844749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543446, 40.575268, 35.125015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289776, 40.549332, 35.433201>,  <30.137573, 40.533772, 35.618111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289776, 40.549332, 35.433201>,  <30.543446, 40.575268, 35.125015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289776, 40.549332, 35.433201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426386, -0.860587, 0.278541,
		0.644992, 0.505159, 0.573410,
		-0.634177, -0.064837, 0.770465,
		30.099524, 40.529881, 35.664341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998007, 40.268738, 35.660950>,  <30.543446, 40.575268, 35.125015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998007, 40.268738, 35.660950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625547, 40.249382, 35.805515>,  <30.402071, 40.237770, 35.892254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625547, 40.249382, 35.805515>,  <30.998007, 40.268738, 35.660950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625547, 40.249382, 35.805515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200084, -0.896413, 0.395488,
		0.304840, 0.440572, 0.844375,
		-0.931150, -0.048385, 0.361413,
		30.346203, 40.234867, 35.913940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067886, 40.053772, 36.345371>,  <30.998007, 40.268738, 35.660950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067886, 40.053772, 36.345371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704954, 39.935669, 36.225655>,  <30.487196, 39.864807, 36.153824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704954, 39.935669, 36.225655>,  <31.067886, 40.053772, 36.345371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704954, 39.935669, 36.225655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237693, -0.947453, 0.214091,
		-0.346779, 0.123111, 0.929832,
		-0.907329, -0.295257, -0.299294,
		30.432755, 39.847092, 36.135868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666286, 39.606491, 36.912827>,  <31.067886, 40.053772, 36.345371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666286, 39.606491, 36.912827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486099, 39.497948, 36.572605>,  <30.377987, 39.432823, 36.368473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486099, 39.497948, 36.572605>,  <30.666286, 39.606491, 36.912827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486099, 39.497948, 36.572605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025924, -0.956265, 0.291349,
		-0.892416, 0.109193, 0.437801,
		-0.450467, -0.271354, -0.850556,
		30.350960, 39.416542, 36.317440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308456, 39.155128, 37.213631>,  <30.666286, 39.606491, 36.912827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308456, 39.155128, 37.213631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278353, 39.109928, 36.817333>,  <30.260290, 39.082809, 36.579556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278353, 39.109928, 36.817333>,  <30.308456, 39.155128, 37.213631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278353, 39.109928, 36.817333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125521, -0.984582, 0.121831,
		-0.989232, 0.133527, 0.059917,
		-0.075261, -0.112999, -0.990741,
		30.255774, 39.076027, 36.520111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738176, 38.608261, 36.973087>,  <30.308456, 39.155128, 37.213631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738176, 38.608261, 36.973087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998537, 38.630657, 36.670250>,  <30.154753, 38.644096, 36.488548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998537, 38.630657, 36.670250>,  <29.738176, 38.608261, 36.973087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998537, 38.630657, 36.670250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138903, -0.971657, -0.191283,
		-0.746347, 0.229669, -0.624675,
		0.650901, 0.055994, -0.757094,
		30.193808, 38.647457, 36.443123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351969, 38.203999, 36.533066>,  <29.738176, 38.608261, 36.973087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351969, 38.203999, 36.533066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744083, 38.215862, 36.454929>,  <29.979353, 38.222980, 36.408047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744083, 38.215862, 36.454929>,  <29.351969, 38.203999, 36.533066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744083, 38.215862, 36.454929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000815, -0.988054, -0.154104,
		-0.197577, 0.151226, -0.968553,
		0.980287, 0.029658, -0.195340,
		30.038170, 38.224758, 36.396328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396303, 37.730045, 35.977669>,  <29.351969, 38.203999, 36.533066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396303, 37.730045, 35.977669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759756, 37.774406, 36.138710>,  <29.977827, 37.801022, 36.235336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759756, 37.774406, 36.138710>,  <29.396303, 37.730045, 35.977669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759756, 37.774406, 36.138710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168129, -0.979654, -0.109597,
		0.382259, 0.167273, -0.908789,
		0.908631, 0.110900, 0.402605,
		30.032345, 37.807678, 36.259491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792997, 37.272400, 35.618862>,  <29.396303, 37.730045, 35.977669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792997, 37.272400, 35.618862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006374, 37.360909, 35.945415>,  <30.134399, 37.414013, 36.141346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006374, 37.360909, 35.945415>,  <29.792997, 37.272400, 35.618862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006374, 37.360909, 35.945415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330523, -0.942966, 0.039611,
		0.778585, 0.248703, -0.576153,
		0.533441, 0.221272, 0.816381,
		30.166407, 37.427292, 36.190331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466314, 37.025795, 35.431736>,  <29.792997, 37.272400, 35.618862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466314, 37.025795, 35.431736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469589, 37.050957, 35.830929>,  <30.471554, 37.066055, 36.070446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469589, 37.050957, 35.830929>,  <30.466314, 37.025795, 35.431736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469589, 37.050957, 35.830929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371951, -0.926600, 0.055356,
		0.928216, 0.370749, -0.030985,
		0.008187, 0.062908, 0.997986,
		30.472046, 37.069828, 36.130325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210037, 36.907715, 35.786472>,  <30.466314, 37.025795, 35.431736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210037, 36.907715, 35.786472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917830, 36.817707, 36.044376>,  <30.742504, 36.763702, 36.199120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917830, 36.817707, 36.044376>,  <31.210037, 36.907715, 35.786472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917830, 36.817707, 36.044376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340970, -0.938228, 0.058891,
		0.591677, 0.262864, 0.762116,
		-0.730519, -0.225015, 0.644756,
		30.698673, 36.750202, 36.237804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547358, 36.505825, 36.295609>,  <31.210037, 36.907715, 35.786472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547358, 36.505825, 36.295609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164557, 36.423153, 36.377026>,  <30.934875, 36.373550, 36.425877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164557, 36.423153, 36.377026>,  <31.547358, 36.505825, 36.295609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164557, 36.423153, 36.377026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247695, -0.947422, 0.202581,
		0.150975, 0.244288, 0.957878,
		-0.957003, -0.206677, 0.203546,
		30.877457, 36.361149, 36.438091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364426, 36.421177, 36.997719>,  <31.547358, 36.505825, 36.295609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364426, 36.421177, 36.997719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127174, 36.194241, 36.769222>,  <30.984823, 36.058079, 36.632126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127174, 36.194241, 36.769222>,  <31.364426, 36.421177, 36.997719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127174, 36.194241, 36.769222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372277, -0.822382, 0.430230,
		-0.713867, 0.042522, 0.698989,
		-0.593130, -0.567344, -0.571242,
		30.949236, 36.024036, 36.597851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770329, 35.948597, 37.306759>,  <31.364426, 36.421177, 36.997719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770329, 35.948597, 37.306759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921528, 35.788918, 36.972630>,  <31.012247, 35.693111, 36.772152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921528, 35.788918, 36.972630>,  <30.770329, 35.948597, 37.306759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921528, 35.788918, 36.972630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143462, -0.866107, 0.478829,
		-0.914623, -0.300833, -0.270118,
		0.377998, -0.399197, -0.835320,
		31.034927, 35.669159, 36.722034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349539, 35.527676, 37.001194>,  <30.770329, 35.948597, 37.306759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349539, 35.527676, 37.001194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735390, 35.436977, 36.947411>,  <30.966900, 35.382557, 36.915142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735390, 35.436977, 36.947411>,  <30.349539, 35.527676, 37.001194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735390, 35.436977, 36.947411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038006, -0.624341, 0.780226,
		-0.260858, -0.747519, -0.610875,
		0.964629, -0.226746, -0.134455,
		31.024778, 35.368954, 36.907074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420595, 34.805103, 37.162560>,  <30.349539, 35.527676, 37.001194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420595, 34.805103, 37.162560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800751, 34.928673, 37.147995>,  <31.028845, 35.002815, 37.139256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800751, 34.928673, 37.147995>,  <30.420595, 34.805103, 37.162560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800751, 34.928673, 37.147995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212120, -0.558025, 0.802255,
		0.227520, -0.770177, -0.595871,
		0.950389, 0.308925, -0.036408,
		31.085867, 35.021351, 37.137074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812361, 34.276821, 37.395706>,  <30.420595, 34.805103, 37.162560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812361, 34.276821, 37.395706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009077, 34.614826, 37.479702>,  <31.127108, 34.817631, 37.530102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009077, 34.614826, 37.479702>,  <30.812361, 34.276821, 37.395706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009077, 34.614826, 37.479702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265161, -0.375063, 0.888267,
		0.829356, -0.381160, -0.408517,
		0.491791, 0.845012, 0.209992,
		31.156614, 34.868328, 37.542698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473356, 34.124126, 37.650433>,  <30.812361, 34.276821, 37.395706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473356, 34.124126, 37.650433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340448, 34.476509, 37.785202>,  <31.260704, 34.687939, 37.866062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340448, 34.476509, 37.785202>,  <31.473356, 34.124126, 37.650433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340448, 34.476509, 37.785202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111289, -0.318104, 0.941501,
		0.936596, 0.350326, 0.007655,
		-0.332268, 0.880955, 0.336922,
		31.240768, 34.740795, 37.886280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021217, 34.607628, 37.776527>,  <31.473356, 34.124126, 37.650433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021217, 34.607628, 37.776527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699324, 34.632000, 38.012726>,  <31.506187, 34.646622, 38.154446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699324, 34.632000, 38.012726>,  <32.021217, 34.607628, 37.776527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699324, 34.632000, 38.012726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556937, -0.266812, 0.786532,
		0.205471, 0.961821, 0.180782,
		-0.804738, 0.060926, 0.590496,
		31.457903, 34.650276, 38.189873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031097, 35.186138, 38.477116>,  <32.021217, 34.607628, 37.776527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031097, 35.186138, 38.477116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814278, 34.852810, 38.520493>,  <31.684185, 34.652813, 38.546520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814278, 34.852810, 38.520493>,  <32.031097, 35.186138, 38.477116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814278, 34.852810, 38.520493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417750, -0.155241, 0.895201,
		-0.729154, 0.530546, 0.432268,
		-0.542051, -0.833319, 0.108441,
		31.651663, 34.602814, 38.553024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877506, 35.094978, 39.163422>,  <32.031097, 35.186138, 38.477116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877506, 35.094978, 39.163422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783886, 34.724224, 39.046051>,  <31.727713, 34.501770, 38.975628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783886, 34.724224, 39.046051>,  <31.877506, 35.094978, 39.163422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783886, 34.724224, 39.046051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308571, -0.357027, 0.881655,
		-0.921956, 0.115810, 0.369574,
		-0.234053, -0.926887, -0.293428,
		31.713671, 34.446159, 38.958023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335144, 34.747311, 39.603657>,  <31.877506, 35.094978, 39.163422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335144, 34.747311, 39.603657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600536, 34.505241, 39.427673>,  <31.759771, 34.360001, 39.322083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600536, 34.505241, 39.427673>,  <31.335144, 34.747311, 39.603657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600536, 34.505241, 39.427673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283011, -0.341349, 0.896318,
		-0.692604, -0.719202, -0.055209,
		0.663479, -0.605169, -0.439961,
		31.799580, 34.323692, 39.295685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331400, 33.978748, 39.940308>,  <31.335144, 34.747311, 39.603657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331400, 33.978748, 39.940308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680689, 34.006989, 39.747437>,  <31.890263, 34.023933, 39.631714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680689, 34.006989, 39.747437>,  <31.331400, 33.978748, 39.940308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680689, 34.006989, 39.747437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462763, -0.430273, 0.775058,
		-0.152750, -0.899934, -0.408395,
		0.873223, 0.070600, -0.482180,
		31.942656, 34.028168, 39.602783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592001, 33.356583, 40.065773>,  <31.331400, 33.978748, 39.940308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592001, 33.356583, 40.065773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883440, 33.602959, 39.945934>,  <32.058304, 33.750786, 39.874031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883440, 33.602959, 39.945934>,  <31.592001, 33.356583, 40.065773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883440, 33.602959, 39.945934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618575, -0.403884, 0.673976,
		0.294129, -0.676380, -0.675276,
		0.728597, 0.615945, -0.299597,
		32.102020, 33.787743, 39.856056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145069, 32.955845, 39.930565>,  <31.592001, 33.356583, 40.065773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145069, 32.955845, 39.930565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324028, 33.309696, 39.983147>,  <32.431404, 33.522007, 40.014694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324028, 33.309696, 39.983147>,  <32.145069, 32.955845, 39.930565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324028, 33.309696, 39.983147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619111, -0.412418, 0.668291,
		0.645400, -0.217605, -0.732194,
		0.447393, 0.884624, 0.131452,
		32.458244, 33.575085, 40.022583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788574, 32.735352, 40.085232>,  <32.145069, 32.955845, 39.930565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788574, 32.735352, 40.085232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789589, 33.122742, 40.184872>,  <32.790195, 33.355175, 40.244656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789589, 33.122742, 40.184872>,  <32.788574, 32.735352, 40.085232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789589, 33.122742, 40.184872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614775, -0.197972, 0.763452,
		0.788699, 0.151204, -0.595896,
		0.002534, 0.968475, 0.249097,
		32.790348, 33.413284, 40.259602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362206, 32.730541, 40.412636>,  <32.788574, 32.735352, 40.085232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362206, 32.730541, 40.412636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170124, 33.060810, 40.531078>,  <33.054874, 33.258972, 40.602146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170124, 33.060810, 40.531078>,  <33.362206, 32.730541, 40.412636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170124, 33.060810, 40.531078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462313, -0.048646, 0.885381,
		0.745436, 0.562055, -0.358358,
		-0.480200, 0.825668, 0.296108,
		33.026066, 33.308510, 40.619911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902355, 33.288792, 40.569916>,  <33.362206, 32.730541, 40.412636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902355, 33.288792, 40.569916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555851, 33.338943, 40.763359>,  <33.347950, 33.369034, 40.879425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555851, 33.338943, 40.763359>,  <33.902355, 33.288792, 40.569916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555851, 33.338943, 40.763359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470620, -0.120097, 0.874125,
		0.167679, 0.984813, 0.045028,
		-0.866257, 0.125381, 0.483610,
		33.295975, 33.376556, 40.908443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059444, 33.886024, 41.112812>,  <33.902355, 33.288792, 40.569916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059444, 33.886024, 41.112812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720551, 33.723251, 41.249405>,  <33.517216, 33.625587, 41.331360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720551, 33.723251, 41.249405>,  <34.059444, 33.886024, 41.112812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720551, 33.723251, 41.249405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435394, -0.163632, 0.885244,
		-0.304356, 0.898683, 0.315809,
		-0.847231, -0.406931, 0.341479,
		33.466381, 33.601173, 41.351849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037342, 34.160683, 41.829494>,  <34.059444, 33.886024, 41.112812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037342, 34.160683, 41.829494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784527, 33.850716, 41.827389>,  <33.632839, 33.664734, 41.826126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784527, 33.850716, 41.827389>,  <34.037342, 34.160683, 41.829494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784527, 33.850716, 41.827389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419588, -0.347912, 0.838393,
		-0.651519, 0.527687, 0.545041,
		-0.632035, -0.774922, -0.005260,
		33.594917, 33.618240, 41.825809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561699, 34.079056, 42.532887>,  <34.037342, 34.160683, 41.829494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561699, 34.079056, 42.532887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590595, 33.718056, 42.363049>,  <33.607933, 33.501457, 42.261147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590595, 33.718056, 42.363049>,  <33.561699, 34.079056, 42.532887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590595, 33.718056, 42.363049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230648, -0.399051, 0.887446,
		-0.970352, -0.162044, 0.179330,
		0.072244, -0.902497, -0.424595,
		33.612267, 33.447308, 42.235672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121716, 33.640057, 43.003735>,  <33.561699, 34.079056, 42.532887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121716, 33.640057, 43.003735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369678, 33.399681, 42.801907>,  <33.518456, 33.255455, 42.680809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369678, 33.399681, 42.801907>,  <33.121716, 33.640057, 43.003735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369678, 33.399681, 42.801907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340436, -0.373382, 0.862954,
		-0.706978, -0.706724, -0.026881,
		0.619907, -0.600939, -0.504567,
		33.555653, 33.219398, 42.650536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891956, 33.035393, 43.243591>,  <33.121716, 33.640057, 43.003735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891956, 33.035393, 43.243591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232452, 32.940853, 43.056171>,  <33.436749, 32.884129, 42.943722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232452, 32.940853, 43.056171>,  <32.891956, 33.035393, 43.243591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232452, 32.940853, 43.056171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328744, -0.455780, 0.827159,
		-0.409055, -0.858139, -0.310277,
		0.851235, -0.236352, -0.468547,
		33.487823, 32.869949, 42.915607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986477, 32.237316, 43.279640>,  <32.891956, 33.035393, 43.243591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986477, 32.237316, 43.279640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348850, 32.390251, 43.206871>,  <33.566277, 32.482014, 43.163212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348850, 32.390251, 43.206871>,  <32.986477, 32.237316, 43.279640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348850, 32.390251, 43.206871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373841, -0.520546, 0.767642,
		0.198804, -0.763443, -0.614517,
		0.905936, 0.382342, -0.181920,
		33.620632, 32.504955, 43.152294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465199, 31.679411, 43.187218>,  <32.986477, 32.237316, 43.279640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465199, 31.679411, 43.187218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661251, 32.007065, 43.306408>,  <33.778881, 32.203659, 43.377922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661251, 32.007065, 43.306408>,  <33.465199, 31.679411, 43.187218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661251, 32.007065, 43.306408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374533, -0.506597, 0.776586,
		0.787080, -0.269030, -0.555093,
		0.490132, 0.819136, 0.297972,
		33.808292, 32.252804, 43.395798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085049, 31.504971, 43.312588>,  <33.465199, 31.679411, 43.187218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085049, 31.504971, 43.312588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111984, 31.851189, 43.511101>,  <34.128147, 32.058922, 43.630207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111984, 31.851189, 43.511101>,  <34.085049, 31.504971, 43.312588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111984, 31.851189, 43.511101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378092, -0.482448, 0.790120,
		0.923316, 0.134434, -0.359744,
		0.067339, 0.865547, 0.496280,
		34.132187, 32.110851, 43.659985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724014, 31.437214, 43.632099>,  <34.085049, 31.504971, 43.312588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724014, 31.437214, 43.632099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462975, 31.673819, 43.821507>,  <34.306351, 31.815783, 43.935150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462975, 31.673819, 43.821507>,  <34.724014, 31.437214, 43.632099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462975, 31.673819, 43.821507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260981, -0.411221, 0.873376,
		0.711335, 0.693548, 0.113990,
		-0.652603, 0.591514, 0.473519,
		34.267193, 31.851273, 43.963562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051491, 31.946630, 44.141373>,  <34.724014, 31.437214, 43.632099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051491, 31.946630, 44.141373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666992, 31.906698, 44.244164>,  <34.436295, 31.882738, 44.305840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666992, 31.906698, 44.244164>,  <35.051491, 31.946630, 44.141373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666992, 31.906698, 44.244164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268866, -0.133430, 0.953891,
		-0.060941, 0.986017, 0.155101,
		-0.961248, -0.099833, 0.256976,
		34.378616, 31.876749, 44.321255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046421, 32.006332, 44.943245>,  <35.051491, 31.946630, 44.141373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046421, 32.006332, 44.943245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660973, 31.908068, 44.901138>,  <34.429703, 31.849108, 44.875874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660973, 31.908068, 44.901138>,  <35.046421, 32.006332, 44.943245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660973, 31.908068, 44.901138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055287, -0.202136, 0.977796,
		-0.261487, 0.948046, 0.181200,
		-0.963622, -0.245663, -0.105270,
		34.371887, 31.834370, 44.869556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694363, 32.308792, 45.468773>,  <35.046421, 32.006332, 44.943245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694363, 32.308792, 45.468773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447041, 32.016800, 45.352272>,  <34.298645, 31.841606, 45.282372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447041, 32.016800, 45.352272>,  <34.694363, 32.308792, 45.468773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447041, 32.016800, 45.352272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105651, -0.290017, 0.951172,
		-0.778801, 0.618890, 0.102198,
		-0.618310, -0.729976, -0.291252,
		34.261547, 31.797808, 45.264896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026901, 32.276745, 45.928326>,  <34.694363, 32.308792, 45.468773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026901, 32.276745, 45.928326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016201, 31.915466, 45.756969>,  <34.009781, 31.698700, 45.654156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016201, 31.915466, 45.756969>,  <34.026901, 32.276745, 45.928326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016201, 31.915466, 45.756969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238830, -0.410362, 0.880093,
		-0.970693, 0.125856, -0.204733,
		-0.026750, -0.903196, -0.428393,
		34.008175, 31.644508, 45.628452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362049, 31.961910, 46.086838>,  <34.026901, 32.276745, 45.928326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362049, 31.961910, 46.086838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623367, 31.667562, 46.015621>,  <33.780159, 31.490953, 45.972893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623367, 31.667562, 46.015621>,  <33.362049, 31.961910, 46.086838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623367, 31.667562, 46.015621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090075, -0.309037, 0.946775,
		-0.751722, -0.602490, -0.268177,
		0.653299, -0.735868, -0.178041,
		33.819359, 31.446802, 45.962208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112370, 31.382463, 46.362087>,  <33.362049, 31.961910, 46.086838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112370, 31.382463, 46.362087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487144, 31.251978, 46.311909>,  <33.712009, 31.173687, 46.281803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487144, 31.251978, 46.311909>,  <33.112370, 31.382463, 46.362087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487144, 31.251978, 46.311909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009778, -0.383249, 0.923593,
		-0.349368, -0.864120, -0.362269,
		0.936934, -0.326217, -0.125446,
		33.768227, 31.154114, 46.274277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087536, 30.741844, 46.758247>,  <33.112370, 31.382463, 46.362087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087536, 30.741844, 46.758247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474148, 30.835560, 46.716438>,  <33.706116, 30.891790, 46.691353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474148, 30.835560, 46.716438>,  <33.087536, 30.741844, 46.758247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474148, 30.835560, 46.716438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161668, -0.239878, 0.957247,
		0.199202, -0.942107, -0.269728,
		0.966531, 0.234292, -0.104525,
		33.764107, 30.905848, 46.685081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476227, 30.188988, 46.961082>,  <33.087536, 30.741844, 46.758247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476227, 30.188988, 46.961082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701038, 30.517189, 47.002842>,  <33.835926, 30.714109, 47.027897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701038, 30.517189, 47.002842>,  <33.476227, 30.188988, 46.961082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701038, 30.517189, 47.002842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151411, -0.226145, 0.962254,
		0.813143, -0.525005, -0.251333,
		0.562026, 0.820505, 0.104397,
		33.869644, 30.763340, 47.034161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092209, 29.881538, 47.369480>,  <33.476227, 30.188988, 46.961082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092209, 29.881538, 47.369480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091137, 30.280817, 47.393482>,  <34.090492, 30.520384, 47.407883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091137, 30.280817, 47.393482>,  <34.092209, 29.881538, 47.369480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091137, 30.280817, 47.393482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119868, -0.059254, 0.991020,
		0.992786, 0.009853, -0.119492,
		-0.002684, 0.998194, 0.060007,
		34.090332, 30.580275, 47.411484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617706, 29.993620, 47.782322>,  <34.092209, 29.881538, 47.369480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617706, 29.993620, 47.782322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429554, 30.345533, 47.809811>,  <34.316662, 30.556681, 47.826305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429554, 30.345533, 47.809811>,  <34.617706, 29.993620, 47.782322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429554, 30.345533, 47.809811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205785, 0.033624, 0.978019,
		0.858134, 0.474186, -0.196862,
		-0.470382, 0.879783, 0.068726,
		34.288441, 30.609468, 47.830429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088009, 30.400921, 48.221230>,  <34.617706, 29.993620, 47.782322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088009, 30.400921, 48.221230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718822, 30.554852, 48.223804>,  <34.497311, 30.647211, 48.225349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718822, 30.554852, 48.223804>,  <35.088009, 30.400921, 48.221230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718822, 30.554852, 48.223804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119195, 0.269889, 0.955485,
		0.365960, 0.882648, -0.294968,
		-0.922966, 0.384828, 0.006439,
		34.441933, 30.670300, 48.225735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158024, 31.072151, 48.536781>,  <35.088009, 30.400921, 48.221230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158024, 31.072151, 48.536781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781998, 30.946220, 48.589180>,  <34.556381, 30.870661, 48.620617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781998, 30.946220, 48.589180>,  <35.158024, 31.072151, 48.536781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781998, 30.946220, 48.589180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079171, 0.172139, 0.981886,
		-0.331675, 0.933408, -0.136897,
		-0.940066, -0.314829, 0.130993,
		34.499977, 30.851772, 48.628479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853672, 31.527521, 48.917664>,  <35.158024, 31.072151, 48.536781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853672, 31.527521, 48.917664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611332, 31.214054, 48.972538>,  <34.465927, 31.025974, 49.005463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611332, 31.214054, 48.972538>,  <34.853672, 31.527521, 48.917664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611332, 31.214054, 48.972538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081970, 0.110028, 0.990543,
		-0.791348, 0.611361, -0.002423,
		-0.605846, -0.783665, 0.137184,
		34.429577, 30.978954, 49.013695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480206, 31.700577, 49.472923>,  <34.853672, 31.527521, 48.917664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480206, 31.700577, 49.472923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481285, 31.300631, 49.466515>,  <34.481934, 31.060661, 49.462669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481285, 31.300631, 49.466515>,  <34.480206, 31.700577, 49.472923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481285, 31.300631, 49.466515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091855, -0.015709, 0.995649,
		-0.995769, -0.004162, 0.091800,
		0.002701, -0.999868, -0.016025,
		34.482094, 31.000669, 49.461708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237865, 31.553726, 50.113922>,  <34.480206, 31.700577, 49.472923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237865, 31.553726, 50.113922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352402, 31.186531, 50.004158>,  <34.421124, 30.966213, 49.938297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352402, 31.186531, 50.004158>,  <34.237865, 31.553726, 50.113922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352402, 31.186531, 50.004158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090549, -0.259196, 0.961571,
		-0.953838, -0.300189, 0.008904,
		0.286345, -0.917989, -0.274413,
		34.438305, 30.911135, 49.921833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018673, 31.203897, 50.709015>,  <34.237865, 31.553726, 50.113922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018673, 31.203897, 50.709015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205994, 30.918470, 50.500587>,  <34.318386, 30.747213, 50.375530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205994, 30.918470, 50.500587>,  <34.018673, 31.203897, 50.709015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205994, 30.918470, 50.500587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173035, -0.504248, 0.846046,
		-0.866460, -0.486367, -0.112668,
		0.468301, -0.713569, -0.521069,
		34.346485, 30.704399, 50.344265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696758, 30.587149, 50.780235>,  <34.018673, 31.203897, 50.709015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696758, 30.587149, 50.780235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082825, 30.517801, 50.701859>,  <34.314465, 30.476192, 50.654835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082825, 30.517801, 50.701859>,  <33.696758, 30.587149, 50.780235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082825, 30.517801, 50.701859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083791, -0.504638, 0.859255,
		-0.247845, -0.845745, -0.472534,
		0.965169, -0.173368, -0.195938,
		34.372375, 30.465792, 50.643078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823021, 29.887821, 50.947964>,  <33.696758, 30.587149, 50.780235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823021, 29.887821, 50.947964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199860, 30.019676, 50.923351>,  <34.425964, 30.098789, 50.908585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199860, 30.019676, 50.923351>,  <33.823021, 29.887821, 50.947964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199860, 30.019676, 50.923351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227494, -0.493485, 0.839476,
		0.246357, -0.804868, -0.539903,
		0.942101, 0.329636, -0.061530,
		34.482491, 30.118567, 50.904892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259983, 29.276640, 50.815929>,  <33.823021, 29.887821, 50.947964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259983, 29.276640, 50.815929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474365, 29.566439, 50.989300>,  <34.602993, 29.740318, 51.093323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474365, 29.566439, 50.989300>,  <34.259983, 29.276640, 50.815929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474365, 29.566439, 50.989300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214310, -0.613322, 0.760202,
		0.816592, -0.314548, -0.483981,
		0.535956, 0.724497, 0.433422,
		34.635151, 29.783789, 51.119328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931854, 29.000349, 51.007755>,  <34.259983, 29.276640, 50.815929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931854, 29.000349, 51.007755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905418, 29.323418, 51.242123>,  <34.889557, 29.517258, 51.382744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905418, 29.323418, 51.242123>,  <34.931854, 29.000349, 51.007755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905418, 29.323418, 51.242123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268757, -0.551092, 0.789979,
		0.960938, 0.209683, -0.180643,
		-0.066094, 0.807670, 0.585919,
		34.885590, 29.565720, 51.417900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509087, 28.960379, 51.446369>,  <34.931854, 29.000349, 51.007755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509087, 28.960379, 51.446369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270893, 29.220009, 51.635727>,  <35.127979, 29.375788, 51.749340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270893, 29.220009, 51.635727>,  <35.509087, 28.960379, 51.446369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270893, 29.220009, 51.635727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231548, -0.425586, 0.874793,
		0.769278, 0.630535, 0.103136,
		-0.595481, 0.649078, 0.473393,
		35.092247, 29.414732, 51.777744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907551, 29.205652, 52.034325>,  <35.509087, 28.960379, 51.446369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907551, 29.205652, 52.034325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529285, 29.276600, 52.143333>,  <35.302326, 29.319168, 52.208736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529285, 29.276600, 52.143333>,  <35.907551, 29.205652, 52.034325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529285, 29.276600, 52.143333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193018, -0.368255, 0.909468,
		0.261669, 0.912649, 0.314009,
		-0.945660, 0.177370, 0.272518,
		35.245586, 29.329811, 52.225090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973907, 29.360779, 52.756111>,  <35.907551, 29.205652, 52.034325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973907, 29.360779, 52.756111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593899, 29.245075, 52.709145>,  <35.365894, 29.175653, 52.680965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593899, 29.245075, 52.709145>,  <35.973907, 29.360779, 52.756111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593899, 29.245075, 52.709145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009050, -0.401472, 0.915826,
		-0.312049, 0.868994, 0.384026,
		-0.950023, -0.289259, -0.117415,
		35.308891, 29.158298, 52.673920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643394, 29.349579, 53.357258>,  <35.973907, 29.360779, 52.756111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643394, 29.349579, 53.357258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391472, 29.107973, 53.161907>,  <35.240318, 28.963009, 53.044697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391472, 29.107973, 53.161907>,  <35.643394, 29.349579, 53.357258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391472, 29.107973, 53.161907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086755, -0.679507, 0.728522,
		-0.771893, 0.416458, 0.480358,
		-0.629805, -0.604015, -0.488377,
		35.202530, 28.926769, 53.015392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412205, 28.971298, 54.028526>,  <35.643394, 29.349579, 53.357258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412205, 28.971298, 54.028526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275383, 28.792456, 53.697926>,  <35.193291, 28.685150, 53.499565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275383, 28.792456, 53.697926>,  <35.412205, 28.971298, 54.028526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275383, 28.792456, 53.697926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155409, -0.840523, 0.519009,
		-0.926740, 0.305974, 0.218019,
		-0.342053, -0.447104, -0.826497,
		35.172768, 28.658325, 53.449978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788639, 28.676977, 54.144657>,  <35.412205, 28.971298, 54.028526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788639, 28.676977, 54.144657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953991, 28.436193, 53.871376>,  <35.053204, 28.291723, 53.707409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953991, 28.436193, 53.871376>,  <34.788639, 28.676977, 54.144657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953991, 28.436193, 53.871376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301681, -0.798473, 0.520988,
		-0.859131, -0.009257, -0.511672,
		0.413380, -0.601959, -0.683200,
		35.078007, 28.255606, 53.666416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332523, 28.203835, 54.096752>,  <34.788639, 28.676977, 54.144657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332523, 28.203835, 54.096752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645081, 28.003075, 53.948418>,  <34.832615, 27.882618, 53.859417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645081, 28.003075, 53.948418>,  <34.332523, 28.203835, 54.096752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645081, 28.003075, 53.948418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346991, -0.843364, 0.410287,
		-0.518674, -0.191918, -0.833153,
		0.781392, -0.501902, -0.370837,
		34.879498, 27.852505, 53.837166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064045, 27.777222, 53.640285>,  <34.332523, 28.203835, 54.096752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064045, 27.777222, 53.640285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405949, 27.646717, 53.801750>,  <34.611092, 27.568415, 53.898628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405949, 27.646717, 53.801750>,  <34.064045, 27.777222, 53.640285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405949, 27.646717, 53.801750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457179, -0.841468, 0.287956,
		0.245722, -0.430679, -0.868410,
		0.854756, -0.326262, 0.403665,
		34.662376, 27.548838, 53.922848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404785, 27.142822, 53.304146>,  <34.064045, 27.777222, 53.640285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404785, 27.142822, 53.304146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447559, 27.189491, 53.699104>,  <34.473225, 27.217493, 53.936081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447559, 27.189491, 53.699104>,  <34.404785, 27.142822, 53.304146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447559, 27.189491, 53.699104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581521, -0.798180, 0.157296,
		0.806472, -0.591013, -0.017509,
		0.106940, 0.116673, 0.987397,
		34.479641, 27.224493, 53.995323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744846, 26.498438, 53.515865>,  <34.404785, 27.142822, 53.304146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744846, 26.498438, 53.515865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504295, 26.667696, 53.786953>,  <34.359966, 26.769251, 53.949604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504295, 26.667696, 53.786953>,  <34.744846, 26.498438, 53.515865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504295, 26.667696, 53.786953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384152, -0.896893, 0.219112,
		0.700555, -0.128577, 0.701920,
		-0.601374, 0.423144, 0.677716,
		34.323883, 26.794640, 53.990269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536736, 25.681438, 53.755177>,  <34.744846, 26.498438, 53.515865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536736, 25.681438, 53.755177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821747, 25.823149, 53.512924>,  <34.992752, 25.908175, 53.367573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821747, 25.823149, 53.512924>,  <34.536736, 25.681438, 53.755177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821747, 25.823149, 53.512924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661221, -0.050309, 0.748502,
		0.234709, -0.933786, -0.270103,
		0.712529, 0.354278, -0.605631,
		35.035507, 25.929432, 53.331234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151058, 25.296448, 53.687855>,  <34.536736, 25.681438, 53.755177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151058, 25.296448, 53.687855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255413, 25.681381, 53.657249>,  <35.318024, 25.912340, 53.638885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255413, 25.681381, 53.657249>,  <35.151058, 25.296448, 53.687855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255413, 25.681381, 53.657249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766082, -0.158148, 0.622982,
		0.587415, -0.221144, -0.778485,
		0.260885, 0.962333, -0.076516,
		35.333679, 25.970081, 53.634296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915047, 25.375107, 53.535839>,  <35.151058, 25.296448, 53.687855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915047, 25.375107, 53.535839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787037, 25.709261, 53.714600>,  <35.710232, 25.909754, 53.821854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787037, 25.709261, 53.714600>,  <35.915047, 25.375107, 53.535839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787037, 25.709261, 53.714600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714694, -0.096782, 0.692709,
		0.621930, 0.541079, -0.566071,
		-0.320025, 0.835384, 0.446897,
		35.691029, 25.959877, 53.848667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293873, 25.393829, 52.968567>,  <35.915047, 25.375107, 53.535839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293873, 25.393829, 52.968567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953362, 25.197943, 52.893200>,  <35.749054, 25.080410, 52.847980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953362, 25.197943, 52.893200>,  <36.293873, 25.393829, 52.968567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953362, 25.197943, 52.893200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207654, 0.644192, -0.736136,
		0.481872, -0.587533, -0.650080,
		-0.851281, -0.489716, -0.188414,
		35.697979, 25.051027, 52.836674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135197, 25.424780, 52.341476>,  <36.293873, 25.393829, 52.968567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135197, 25.424780, 52.341476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749523, 25.352810, 52.419418>,  <35.518120, 25.309628, 52.466183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749523, 25.352810, 52.419418>,  <36.135197, 25.424780, 52.341476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749523, 25.352810, 52.419418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264722, 0.607855, -0.748622,
		0.016249, -0.773396, -0.633716,
		-0.964188, -0.179922, 0.194858,
		35.460266, 25.298834, 52.477875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711739, 25.334621, 51.735111>,  <36.135197, 25.424780, 52.341476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711739, 25.334621, 51.735111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459209, 25.460201, 52.018764>,  <35.307693, 25.535549, 52.188957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459209, 25.460201, 52.018764>,  <35.711739, 25.334621, 51.735111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459209, 25.460201, 52.018764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298178, 0.745842, -0.595659,
		-0.715908, -0.587500, -0.377253,
		-0.631321, 0.313948, 0.709134,
		35.269814, 25.554386, 52.231506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097504, 25.199324, 51.534206>,  <35.711739, 25.334621, 51.735111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097504, 25.199324, 51.534206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079308, 25.512274, 51.782665>,  <35.068390, 25.700043, 51.931740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079308, 25.512274, 51.782665>,  <35.097504, 25.199324, 51.534206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079308, 25.512274, 51.782665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267060, 0.589633, -0.762241,
		-0.962605, -0.200558, 0.182118,
		-0.045491, 0.782374, 0.621145,
		35.065659, 25.746986, 51.969009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448193, 25.590237, 51.382408>,  <35.097504, 25.199324, 51.534206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448193, 25.590237, 51.382408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707096, 25.837595, 51.560684>,  <34.862438, 25.986010, 51.667648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707096, 25.837595, 51.560684>,  <34.448193, 25.590237, 51.382408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707096, 25.837595, 51.560684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193871, 0.699014, -0.688327,
		-0.737202, 0.359121, 0.572333,
		0.647261, 0.618395, 0.445691,
		34.901276, 26.023113, 51.694393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115440, 26.198633, 51.338715>,  <34.448193, 25.590237, 51.382408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115440, 26.198633, 51.338715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489952, 26.309490, 51.425041>,  <34.714657, 26.376005, 51.476837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489952, 26.309490, 51.425041>,  <34.115440, 26.198633, 51.338715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489952, 26.309490, 51.425041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060086, 0.731707, -0.678965,
		-0.346084, 0.622733, 0.701734,
		0.936278, 0.277143, 0.215815,
		34.770836, 26.392633, 51.489784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119774, 26.866129, 51.417057>,  <34.115440, 26.198633, 51.338715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119774, 26.866129, 51.417057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497425, 26.770285, 51.326538>,  <34.724014, 26.712778, 51.272228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497425, 26.770285, 51.326538>,  <34.119774, 26.866129, 51.417057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497425, 26.770285, 51.326538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018576, 0.724214, -0.689325,
		0.329053, 0.646608, 0.688202,
		0.944129, -0.239609, -0.226293,
		34.780663, 26.698402, 51.258652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335876, 27.455324, 51.021164>,  <34.119774, 26.866129, 51.417057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335876, 27.455324, 51.021164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623787, 27.189514, 50.940826>,  <34.796532, 27.030029, 50.892624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623787, 27.189514, 50.940826>,  <34.335876, 27.455324, 51.021164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623787, 27.189514, 50.940826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013267, 0.302423, -0.953081,
		0.694083, 0.683337, 0.226492,
		0.719772, -0.664523, -0.200841,
		34.839718, 26.990158, 50.880573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859631, 27.772566, 50.792252>,  <34.335876, 27.455324, 51.021164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859631, 27.772566, 50.792252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921551, 27.407379, 50.641239>,  <34.958702, 27.188267, 50.550632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921551, 27.407379, 50.641239>,  <34.859631, 27.772566, 50.792252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921551, 27.407379, 50.641239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190645, 0.402556, -0.895323,
		0.969376, 0.066625, 0.236370,
		0.154803, -0.912968, -0.377526,
		34.967991, 27.133490, 50.527981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450191, 27.897129, 50.343494>,  <34.859631, 27.772566, 50.792252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450191, 27.897129, 50.343494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307735, 27.539503, 50.234825>,  <35.222260, 27.324926, 50.169624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307735, 27.539503, 50.234825>,  <35.450191, 27.897129, 50.343494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307735, 27.539503, 50.234825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176970, 0.220941, -0.959097,
		0.917521, -0.389654, 0.079536,
		-0.356143, -0.894066, -0.271675,
		35.200893, 27.271282, 50.153324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902260, 27.688372, 49.838428>,  <35.450191, 27.897129, 50.343494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902260, 27.688372, 49.838428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572937, 27.476219, 49.757568>,  <35.375343, 27.348928, 49.709053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572937, 27.476219, 49.757568>,  <35.902260, 27.688372, 49.838428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572937, 27.476219, 49.757568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109962, 0.200364, -0.973531,
		0.556846, -0.823742, -0.106639,
		-0.823305, -0.530381, -0.202152,
		35.325947, 27.317104, 49.696922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017715, 27.393965, 49.192406>,  <35.902260, 27.688372, 49.838428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017715, 27.393965, 49.192406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621021, 27.362001, 49.232559>,  <35.383003, 27.342823, 49.256649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621021, 27.362001, 49.232559>,  <36.017715, 27.393965, 49.192406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621021, 27.362001, 49.232559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113970, 0.189335, -0.975276,
		0.058927, -0.978656, -0.196878,
		-0.991735, -0.079908, 0.100381,
		35.323502, 27.338028, 49.262672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789387, 26.801355, 48.834995>,  <36.017715, 27.393965, 49.192406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789387, 26.801355, 48.834995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492126, 27.067089, 48.866978>,  <35.313770, 27.226530, 48.886166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492126, 27.067089, 48.866978>,  <35.789387, 26.801355, 48.834995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492126, 27.067089, 48.866978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011890, 0.132583, -0.991100,
		-0.669023, -0.735583, -0.106428,
		-0.743147, 0.664334, 0.079955,
		35.269184, 27.266390, 48.890965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528397, 26.631788, 48.270061>,  <35.789387, 26.801355, 48.834995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528397, 26.631788, 48.270061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328449, 26.968384, 48.352070>,  <35.208481, 27.170341, 48.401276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328449, 26.968384, 48.352070>,  <35.528397, 26.631788, 48.270061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328449, 26.968384, 48.352070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147359, 0.150632, -0.977546,
		-0.853475, -0.518852, 0.048705,
		-0.499865, 0.841488, 0.205018,
		35.178490, 27.220831, 48.413574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763691, 26.607117, 47.940876>,  <35.528397, 26.631788, 48.270061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763691, 26.607117, 47.940876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902172, 26.980463, 47.978748>,  <34.985260, 27.204472, 48.001472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902172, 26.980463, 47.978748>,  <34.763691, 26.607117, 47.940876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902172, 26.980463, 47.978748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301826, 0.206371, -0.930759,
		-0.888281, 0.293658, 0.353162,
		0.346207, 0.933368, 0.094682,
		35.006035, 27.260473, 48.007153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304035, 27.028990, 47.574375>,  <34.763691, 26.607117, 47.940876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304035, 27.028990, 47.574375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591740, 27.294491, 47.656445>,  <34.764362, 27.453791, 47.705685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591740, 27.294491, 47.656445>,  <34.304035, 27.028990, 47.574375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591740, 27.294491, 47.656445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279250, 0.546626, -0.789443,
		-0.636144, 0.510524, 0.578520,
		0.719264, 0.663751, 0.205169,
		34.807518, 27.493616, 47.717995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978783, 27.605831, 47.387794>,  <34.304035, 27.028990, 47.574375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978783, 27.605831, 47.387794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359947, 27.726347, 47.374065>,  <34.588646, 27.798656, 47.365829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359947, 27.726347, 47.374065>,  <33.978783, 27.605831, 47.387794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359947, 27.726347, 47.374065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167744, 0.429453, -0.887374,
		-0.252617, 0.851349, 0.459772,
		0.952915, 0.301290, -0.034321,
		34.645821, 27.816734, 47.363770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951656, 28.333036, 47.164650>,  <33.978783, 27.605831, 47.387794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951656, 28.333036, 47.164650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318180, 28.200481, 47.074715>,  <34.538094, 28.120949, 47.020756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318180, 28.200481, 47.074715>,  <33.951656, 28.333036, 47.164650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318180, 28.200481, 47.074715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017843, 0.527096, -0.849618,
		0.400064, 0.782528, 0.477073,
		0.916313, -0.331390, -0.224835,
		34.593075, 28.101065, 47.007263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370907, 28.833937, 46.868195>,  <33.951656, 28.333036, 47.164650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370907, 28.833937, 46.868195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564342, 28.513075, 46.728088>,  <34.680405, 28.320557, 46.644024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564342, 28.513075, 46.728088>,  <34.370907, 28.833937, 46.868195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564342, 28.513075, 46.728088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203591, 0.492275, -0.846296,
		0.851287, 0.337952, 0.401372,
		0.483593, -0.802156, -0.350263,
		34.709419, 28.272429, 46.623009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094299, 29.048498, 46.592014>,  <34.370907, 28.833937, 46.868195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094299, 29.048498, 46.592014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955261, 28.717857, 46.414970>,  <34.871838, 28.519474, 46.308743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955261, 28.717857, 46.414970>,  <35.094299, 29.048498, 46.592014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955261, 28.717857, 46.414970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059443, 0.451672, -0.890202,
		0.935757, -0.335744, -0.107866,
		-0.347600, -0.826601, -0.442613,
		34.850983, 28.469877, 46.282188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463928, 29.065908, 46.035789>,  <35.094299, 29.048498, 46.592014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463928, 29.065908, 46.035789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166786, 28.814442, 45.943752>,  <34.988503, 28.663561, 45.888531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166786, 28.814442, 45.943752>,  <35.463928, 29.065908, 46.035789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166786, 28.814442, 45.943752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033465, 0.308398, -0.950669,
		0.668614, -0.713910, -0.208057,
		-0.742856, -0.628668, -0.230090,
		34.943928, 28.625841, 45.874725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575050, 28.931177, 45.321224>,  <35.463928, 29.065908, 46.035789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575050, 28.931177, 45.321224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212593, 28.762888, 45.338638>,  <34.995117, 28.661915, 45.349087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212593, 28.762888, 45.338638>,  <35.575050, 28.931177, 45.321224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212593, 28.762888, 45.338638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181087, 0.292881, -0.938844,
		0.382247, -0.858610, -0.341581,
		-0.906143, -0.420726, 0.043530,
		34.940750, 28.636671, 45.351696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516708, 28.542933, 44.690453>,  <35.575050, 28.931177, 45.321224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516708, 28.542933, 44.690453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150200, 28.627087, 44.826801>,  <34.930294, 28.677580, 44.908611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150200, 28.627087, 44.826801>,  <35.516708, 28.542933, 44.690453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150200, 28.627087, 44.826801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257038, 0.343866, -0.903154,
		-0.307225, -0.915147, -0.260996,
		-0.916266, 0.210386, 0.340872,
		34.875320, 28.690203, 44.929062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071297, 28.347538, 44.116505>,  <35.516708, 28.542933, 44.690453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071297, 28.347538, 44.116505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833733, 28.579939, 44.339111>,  <34.691196, 28.719379, 44.472675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833733, 28.579939, 44.339111>,  <35.071297, 28.347538, 44.116505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833733, 28.579939, 44.339111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431898, 0.353357, -0.829821,
		-0.678777, -0.733195, 0.041072,
		-0.593907, 0.581002, 0.556516,
		34.655560, 28.754240, 44.506065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477398, 28.220707, 43.758736>,  <35.071297, 28.347538, 44.116505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477398, 28.220707, 43.758736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404766, 28.552452, 43.970089>,  <34.361187, 28.751499, 44.096901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404766, 28.552452, 43.970089>,  <34.477398, 28.220707, 43.758736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404766, 28.552452, 43.970089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393678, 0.431071, -0.811908,
		-0.901137, -0.355436, 0.248229,
		-0.181577, 0.829363, 0.528382,
		34.350292, 28.801260, 44.128605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822529, 28.374355, 43.585655>,  <34.477398, 28.220707, 43.758736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822529, 28.374355, 43.585655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963226, 28.720907, 43.727448>,  <34.047646, 28.928839, 43.812523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963226, 28.720907, 43.727448>,  <33.822529, 28.374355, 43.585655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963226, 28.720907, 43.727448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468753, 0.490804, -0.734426,
		-0.810276, 0.092163, 0.578755,
		0.351743, 0.866381, 0.354485,
		34.068748, 28.980822, 43.833794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226982, 28.778942, 43.636154>,  <33.822529, 28.374355, 43.585655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226982, 28.778942, 43.636154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560963, 28.993084, 43.585167>,  <33.761353, 29.121569, 43.554573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560963, 28.993084, 43.585167>,  <33.226982, 28.778942, 43.636154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560963, 28.993084, 43.585167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471090, 0.575575, -0.668421,
		-0.284474, 0.618150, 0.732779,
		0.834954, 0.535354, -0.127468,
		33.811447, 29.153690, 43.546928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928753, 29.416763, 43.645069>,  <33.226982, 28.778942, 43.636154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928753, 29.416763, 43.645069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288456, 29.412069, 43.470165>,  <33.504276, 29.409252, 43.365223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288456, 29.412069, 43.470165>,  <32.928753, 29.416763, 43.645069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288456, 29.412069, 43.470165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362393, 0.539830, -0.759773,
		0.244964, 0.841693, 0.481193,
		0.899258, -0.011736, -0.437262,
		33.558235, 29.408548, 43.338985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908031, 30.013008, 43.249969>,  <32.928753, 29.416763, 43.645069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908031, 30.013008, 43.249969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246677, 29.843374, 43.121349>,  <33.449863, 29.741594, 43.044178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246677, 29.843374, 43.121349>,  <32.908031, 30.013008, 43.249969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246677, 29.843374, 43.121349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111173, 0.449941, -0.886112,
		0.520467, 0.785942, 0.333779,
		0.846614, -0.424085, -0.321555,
		33.500660, 29.716148, 43.024883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214783, 30.474249, 42.796333>,  <32.908031, 30.013008, 43.249969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214783, 30.474249, 42.796333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394684, 30.142694, 42.663261>,  <33.502625, 29.943762, 42.583420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394684, 30.142694, 42.663261>,  <33.214783, 30.474249, 42.796333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394684, 30.142694, 42.663261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036154, 0.355275, -0.934062,
		0.892422, 0.432123, 0.129818,
		0.449751, -0.828884, -0.332678,
		33.529610, 29.894030, 42.563457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815823, 30.597830, 42.441601>,  <33.214783, 30.474249, 42.796333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815823, 30.597830, 42.441601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707111, 30.244354, 42.289165>,  <33.641884, 30.032269, 42.197704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707111, 30.244354, 42.289165>,  <33.815823, 30.597830, 42.441601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707111, 30.244354, 42.289165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108668, 0.365282, -0.924532,
		0.956204, -0.292682, -0.003248,
		-0.271781, -0.883689, -0.381089,
		33.625576, 29.979248, 42.174839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205692, 30.491228, 41.808167>,  <33.815823, 30.597830, 42.441601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205692, 30.491228, 41.808167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893978, 30.242908, 41.773930>,  <33.706951, 30.093916, 41.753387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893978, 30.242908, 41.773930>,  <34.205692, 30.491228, 41.808167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893978, 30.242908, 41.773930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160628, 0.329888, -0.930254,
		0.605735, -0.711184, -0.356794,
		-0.779284, -0.620799, -0.085588,
		33.660194, 30.056669, 41.748253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248749, 30.107786, 41.085857>,  <34.205692, 30.491228, 41.808167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248749, 30.107786, 41.085857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869995, 30.096298, 41.213974>,  <33.642742, 30.089405, 41.290844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869995, 30.096298, 41.213974>,  <34.248749, 30.107786, 41.085857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869995, 30.096298, 41.213974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317146, 0.248243, -0.915311,
		-0.053223, -0.968272, -0.244165,
		-0.946882, -0.028720, 0.320296,
		33.585930, 30.087681, 41.310062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857422, 29.635256, 40.665821>,  <34.248749, 30.107786, 41.085857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857422, 29.635256, 40.665821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599434, 29.903732, 40.811985>,  <33.444641, 30.064817, 40.899685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599434, 29.903732, 40.811985>,  <33.857422, 29.635256, 40.665821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599434, 29.903732, 40.811985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299471, 0.217931, -0.928883,
		-0.703090, -0.708527, 0.060443,
		-0.644966, 0.671189, 0.365409,
		33.405945, 30.105089, 40.921608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242661, 29.481615, 40.247818>,  <33.857422, 29.635256, 40.665821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242661, 29.481615, 40.247818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220322, 29.841549, 40.420876>,  <33.206921, 30.057508, 40.524712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220322, 29.841549, 40.420876>,  <33.242661, 29.481615, 40.247818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220322, 29.841549, 40.420876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240495, 0.408441, -0.880533,
		-0.969043, -0.153221, 0.193596,
		-0.055844, 0.899833, 0.432646,
		33.203568, 30.111498, 40.550671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645428, 29.761229, 39.934814>,  <33.242661, 29.481615, 40.247818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645428, 29.761229, 39.934814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865097, 30.051794, 40.100090>,  <32.996899, 30.226133, 40.199257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865097, 30.051794, 40.100090>,  <32.645428, 29.761229, 39.934814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865097, 30.051794, 40.100090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229092, 0.606341, -0.761491,
		-0.803692, 0.323535, 0.499404,
		0.549178, 0.726413, 0.413192,
		33.029850, 30.269718, 40.224049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307270, 30.360628, 39.775810>,  <32.645428, 29.761229, 39.934814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307270, 30.360628, 39.775810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668743, 30.511375, 39.857124>,  <32.885628, 30.601824, 39.905910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668743, 30.511375, 39.857124>,  <32.307270, 30.360628, 39.775810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668743, 30.511375, 39.857124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132246, 0.697169, -0.704604,
		-0.407266, 0.609856, 0.679860,
		0.903685, 0.376870, 0.203282,
		32.939850, 30.624435, 39.918110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249123, 31.047216, 39.884216>,  <32.307270, 30.360628, 39.775810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249123, 31.047216, 39.884216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646000, 31.041908, 39.834625>,  <32.884129, 31.038723, 39.804871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646000, 31.041908, 39.834625>,  <32.249123, 31.047216, 39.884216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646000, 31.041908, 39.834625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079862, 0.695979, -0.713607,
		0.095759, 0.717939, 0.689488,
		0.992196, -0.013270, -0.123982,
		32.943657, 31.037928, 39.797432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432423, 31.692123, 39.776340>,  <32.249123, 31.047216, 39.884216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432423, 31.692123, 39.776340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757706, 31.501451, 39.642796>,  <32.952877, 31.387049, 39.562668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757706, 31.501451, 39.642796>,  <32.432423, 31.692123, 39.776340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757706, 31.501451, 39.642796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048408, 0.627091, -0.777441,
		0.579952, 0.616062, 0.533032,
		0.813211, -0.476682, -0.333861,
		33.001671, 31.358446, 39.542637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069359, 32.093437, 39.777069>,  <32.432423, 31.692123, 39.776340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069359, 32.093437, 39.777069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085556, 31.823856, 39.482002>,  <33.095272, 31.662107, 39.304962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085556, 31.823856, 39.482002>,  <33.069359, 32.093437, 39.777069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085556, 31.823856, 39.482002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070504, 0.738357, -0.670715,
		0.996689, -0.024851, 0.077413,
		0.040490, -0.673952, -0.737665,
		33.097702, 31.621670, 39.260704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440407, 32.489689, 39.250618>,  <33.069359, 32.093437, 39.777069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440407, 32.489689, 39.250618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327793, 32.157234, 39.058804>,  <33.260223, 31.957762, 38.943714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327793, 32.157234, 39.058804>,  <33.440407, 32.489689, 39.250618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327793, 32.157234, 39.058804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033562, 0.490912, -0.870563,
		0.958964, -0.261189, -0.110315,
		-0.281536, -0.831136, -0.479532,
		33.243332, 31.907894, 38.914944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922848, 32.408752, 38.746799>,  <33.440407, 32.489689, 39.250618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922848, 32.408752, 38.746799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574333, 32.232559, 38.660225>,  <33.365227, 32.126842, 38.608280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574333, 32.232559, 38.660225>,  <33.922848, 32.408752, 38.746799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574333, 32.232559, 38.660225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021958, 0.475541, -0.879419,
		0.490301, -0.761465, -0.424001,
		-0.871277, -0.440490, -0.216438,
		33.312950, 32.100414, 38.595295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407879, 31.807180, 38.564606>,  <33.922848, 32.408752, 38.746799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407879, 31.807180, 38.564606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789814, 31.744438, 38.463665>,  <35.018974, 31.706793, 38.403099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789814, 31.744438, 38.463665>,  <34.407879, 31.807180, 38.564606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789814, 31.744438, 38.463665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227458, -0.160579, 0.960457,
		-0.191180, -0.974479, -0.117647,
		0.954837, -0.156860, -0.252353,
		35.076267, 31.697382, 38.387959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578644, 31.137247, 38.796535>,  <34.407879, 31.807180, 38.564606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578644, 31.137247, 38.796535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919983, 31.344749, 38.775810>,  <35.124786, 31.469250, 38.763374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919983, 31.344749, 38.775810>,  <34.578644, 31.137247, 38.796535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919983, 31.344749, 38.775810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187207, -0.212161, 0.959136,
		0.486564, -0.828179, -0.278162,
		0.853352, 0.518755, -0.051811,
		35.175987, 31.500376, 38.760265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973804, 30.730900, 39.210583>,  <34.578644, 31.137247, 38.796535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973804, 30.730900, 39.210583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191895, 31.063486, 39.167870>,  <35.322746, 31.263037, 39.142242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191895, 31.063486, 39.167870>,  <34.973804, 30.730900, 39.210583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191895, 31.063486, 39.167870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509558, -0.227570, 0.829797,
		0.665646, -0.506832, -0.547755,
		0.545221, 0.831464, -0.106779,
		35.355461, 31.312925, 39.135838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678318, 30.425388, 39.331802>,  <34.973804, 30.730900, 39.210583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678318, 30.425388, 39.331802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678989, 30.820814, 39.392120>,  <35.679390, 31.058069, 39.428310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678989, 30.820814, 39.392120>,  <35.678318, 30.425388, 39.331802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678989, 30.820814, 39.392120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596617, -0.122001, 0.793199,
		0.802525, 0.088636, -0.589998,
		0.001675, 0.988564, 0.150791,
		35.679493, 31.117384, 39.437359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428429, 30.670181, 39.355225>,  <35.678318, 30.425388, 39.331802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428429, 30.670181, 39.355225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226788, 30.961811, 39.540405>,  <36.105801, 31.136789, 39.651516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226788, 30.961811, 39.540405>,  <36.428429, 30.670181, 39.355225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226788, 30.961811, 39.540405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584863, -0.106230, 0.804146,
		0.635461, 0.676141, -0.372857,
		-0.504107, 0.729074, 0.462955,
		36.075554, 31.180532, 39.679291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983963, 30.955708, 39.720055>,  <36.428429, 30.670181, 39.355225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983963, 30.955708, 39.720055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656551, 31.109900, 39.890427>,  <36.460106, 31.202415, 39.992649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656551, 31.109900, 39.890427>,  <36.983963, 30.955708, 39.720055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656551, 31.109900, 39.890427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464100, 0.006778, 0.885757,
		0.338554, 0.922692, -0.184449,
		-0.818531, 0.385479, 0.425927,
		36.410992, 31.225544, 40.018204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223602, 31.662678, 40.156376>,  <36.983963, 30.955708, 39.720055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223602, 31.662678, 40.156376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880013, 31.503716, 40.285515>,  <36.673859, 31.408339, 40.362999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880013, 31.503716, 40.285515>,  <37.223602, 31.662678, 40.156376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880013, 31.503716, 40.285515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382968, -0.080136, 0.920279,
		-0.339854, 0.914136, 0.221029,
		-0.858973, -0.397408, 0.322850,
		36.622322, 31.384493, 40.382370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177177, 31.962847, 40.795044>,  <37.223602, 31.662678, 40.156376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177177, 31.962847, 40.795044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910488, 31.665209, 40.812008>,  <36.750473, 31.486626, 40.822186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910488, 31.665209, 40.812008>,  <37.177177, 31.962847, 40.795044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910488, 31.665209, 40.812008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336648, -0.249897, 0.907865,
		-0.664937, 0.619577, 0.417111,
		-0.666728, -0.744094, 0.042414,
		36.710468, 31.441980, 40.824734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738949, 32.104290, 41.388226>,  <37.177177, 31.962847, 40.795044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738949, 32.104290, 41.388226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725864, 31.710966, 41.316639>,  <36.718014, 31.474972, 41.273685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725864, 31.710966, 41.316639>,  <36.738949, 32.104290, 41.388226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725864, 31.710966, 41.316639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270315, -0.181093, 0.945587,
		-0.962216, -0.017448, 0.271727,
		-0.032709, -0.983311, -0.178967,
		36.716053, 31.415974, 41.262947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491070, 31.840551, 42.009575>,  <36.738949, 32.104290, 41.388226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491070, 31.840551, 42.009575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621235, 31.510111, 41.825546>,  <36.699333, 31.311848, 41.715130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621235, 31.510111, 41.825546>,  <36.491070, 31.840551, 42.009575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621235, 31.510111, 41.825546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465466, -0.283577, 0.838406,
		-0.823074, -0.486973, 0.292243,
		0.325408, -0.826099, -0.460075,
		36.718857, 31.262281, 41.687523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137863, 31.183260, 42.312004>,  <36.491070, 31.840551, 42.009575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137863, 31.183260, 42.312004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478268, 31.064035, 42.139057>,  <36.682510, 30.992500, 42.035290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478268, 31.064035, 42.139057>,  <36.137863, 31.183260, 42.312004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478268, 31.064035, 42.139057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332747, -0.330910, 0.883051,
		-0.406280, -0.895353, -0.182427,
		0.851009, -0.298064, -0.432368,
		36.733570, 30.974617, 42.009346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255539, 30.604237, 42.602371>,  <36.137863, 31.183260, 42.312004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255539, 30.604237, 42.602371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614902, 30.697206, 42.453327>,  <36.830521, 30.752989, 42.363899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614902, 30.697206, 42.453327>,  <36.255539, 30.604237, 42.602371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614902, 30.697206, 42.453327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436297, -0.375662, 0.817633,
		0.050061, -0.897138, -0.438904,
		0.898409, 0.232424, -0.372612,
		36.884426, 30.766933, 42.341545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648315, 29.921167, 42.490177>,  <36.255539, 30.604237, 42.602371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648315, 29.921167, 42.490177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863781, 30.245413, 42.582043>,  <36.993061, 30.439960, 42.637161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863781, 30.245413, 42.582043>,  <36.648315, 29.921167, 42.490177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863781, 30.245413, 42.582043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219974, -0.398454, 0.890419,
		0.813295, -0.429119, -0.392948,
		0.538667, 0.810612, 0.229665,
		37.025383, 30.488596, 42.650944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252377, 29.699497, 42.680382>,  <36.648315, 29.921167, 42.490177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252377, 29.699497, 42.680382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179249, 30.050951, 42.856827>,  <37.135372, 30.261824, 42.962692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179249, 30.050951, 42.856827>,  <37.252377, 29.699497, 42.680382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179249, 30.050951, 42.856827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229339, -0.398181, 0.888175,
		0.956023, 0.263541, -0.128710,
		-0.182820, 0.878634, 0.441111,
		37.124401, 30.314541, 42.989159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735825, 29.747387, 43.132130>,  <37.252377, 29.699497, 42.680382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735825, 29.747387, 43.132130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447826, 29.988371, 43.269909>,  <37.275028, 30.132961, 43.352577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447826, 29.988371, 43.269909>,  <37.735825, 29.747387, 43.132130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447826, 29.988371, 43.269909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183902, -0.312961, 0.931791,
		0.669167, 0.734232, 0.114538,
		-0.719997, 0.602460, 0.344450,
		37.231827, 30.169109, 43.373245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939098, 29.958565, 43.855522>,  <37.735825, 29.747387, 43.132130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939098, 29.958565, 43.855522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556515, 30.072395, 43.829582>,  <37.326965, 30.140694, 43.814018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556515, 30.072395, 43.829582>,  <37.939098, 29.958565, 43.855522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556515, 30.072395, 43.829582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124571, -0.197080, 0.972441,
		0.263952, 0.938177, 0.223948,
		-0.956458, 0.284575, -0.064850,
		37.269577, 30.157768, 43.810127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736504, 30.520845, 44.289848>,  <37.939098, 29.958565, 43.855522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736504, 30.520845, 44.289848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395260, 30.320498, 44.231419>,  <37.190514, 30.200289, 44.196362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395260, 30.320498, 44.231419>,  <37.736504, 30.520845, 44.289848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395260, 30.320498, 44.231419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006177, -0.289654, 0.957111,
		-0.521701, 0.815615, 0.250200,
		-0.853106, -0.500872, -0.146075,
		37.139328, 30.170237, 44.187595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321545, 30.767551, 44.814098>,  <37.736504, 30.520845, 44.289848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321545, 30.767551, 44.814098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143047, 30.436159, 44.678757>,  <37.035950, 30.237324, 44.597549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143047, 30.436159, 44.678757>,  <37.321545, 30.767551, 44.814098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143047, 30.436159, 44.678757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080933, -0.339179, 0.937234,
		-0.891244, 0.445620, 0.084305,
		-0.446245, -0.828481, -0.338356,
		37.009174, 30.187614, 44.577251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762123, 30.487770, 45.285152>,  <37.321545, 30.767551, 44.814098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762123, 30.487770, 45.285152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847755, 30.156715, 45.077621>,  <36.899136, 29.958082, 44.953102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847755, 30.156715, 45.077621>,  <36.762123, 30.487770, 45.285152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847755, 30.156715, 45.077621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059211, -0.541162, 0.838831,
		-0.975020, -0.148857, -0.164858,
		0.214081, -0.827638, -0.518830,
		36.911980, 29.908424, 44.921974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523712, 29.934700, 45.666378>,  <36.762123, 30.487770, 45.285152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523712, 29.934700, 45.666378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724331, 29.706697, 45.406055>,  <36.844704, 29.569897, 45.249863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724331, 29.706697, 45.406055>,  <36.523712, 29.934700, 45.666378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724331, 29.706697, 45.406055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148579, -0.684332, 0.713873,
		-0.852277, -0.454736, -0.258533,
		0.501546, -0.570004, -0.650804,
		36.874794, 29.535696, 45.210815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180458, 29.257635, 45.569725>,  <36.523712, 29.934700, 45.666378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180458, 29.257635, 45.569725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569881, 29.220049, 45.486443>,  <36.803535, 29.197498, 45.436474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569881, 29.220049, 45.486443>,  <36.180458, 29.257635, 45.569725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569881, 29.220049, 45.486443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052741, -0.794383, 0.605124,
		-0.222255, -0.600106, -0.768424,
		0.973561, -0.093964, -0.208206,
		36.861950, 29.191860, 45.423981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237530, 28.479572, 45.564556>,  <36.180458, 29.257635, 45.569725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237530, 28.479572, 45.564556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598145, 28.648634, 45.601654>,  <36.814514, 28.750071, 45.623913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598145, 28.648634, 45.601654>,  <36.237530, 28.479572, 45.564556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598145, 28.648634, 45.601654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209041, -0.613070, 0.761871,
		0.378866, -0.667465, -0.641055,
		0.901533, 0.422653, 0.092744,
		36.868603, 28.775431, 45.629478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737331, 27.929451, 45.635773>,  <36.237530, 28.479572, 45.564556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737331, 27.929451, 45.635773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940460, 28.244534, 45.775276>,  <37.062340, 28.433582, 45.858978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940460, 28.244534, 45.775276>,  <36.737331, 27.929451, 45.635773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940460, 28.244534, 45.775276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435827, -0.584135, 0.684720,
		0.743081, -0.195719, -0.639942,
		0.507825, 0.787706, 0.348760,
		37.092808, 28.480844, 45.879906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436840, 27.679785, 45.786598>,  <36.737331, 27.929451, 45.635773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436840, 27.679785, 45.786598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375149, 28.001415, 46.016266>,  <37.338135, 28.194393, 46.154068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375149, 28.001415, 46.016266>,  <37.436840, 27.679785, 45.786598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375149, 28.001415, 46.016266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270975, -0.524421, 0.807190,
		0.950150, 0.280081, -0.137002,
		-0.154231, 0.804076, 0.574173,
		37.328880, 28.242638, 46.188519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919369, 27.638393, 46.219566>,  <37.436840, 27.679785, 45.786598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919369, 27.638393, 46.219566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699120, 27.898365, 46.429100>,  <37.566971, 28.054348, 46.554821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699120, 27.898365, 46.429100>,  <37.919369, 27.638393, 46.219566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699120, 27.898365, 46.429100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344900, -0.394334, 0.851789,
		0.760170, 0.649686, -0.007032,
		-0.550623, 0.649930, 0.523838,
		37.533932, 28.093344, 46.586250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326733, 27.959702, 46.745647>,  <37.919369, 27.638393, 46.219566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326733, 27.959702, 46.745647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974686, 28.066334, 46.902786>,  <37.763458, 28.130312, 46.997070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974686, 28.066334, 46.902786>,  <38.326733, 27.959702, 46.745647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974686, 28.066334, 46.902786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348241, -0.199900, 0.915843,
		0.322673, 0.942855, 0.083102,
		-0.880120, 0.266579, 0.392843,
		37.710651, 28.146307, 47.020638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520378, 28.216389, 47.360126>,  <38.326733, 27.959702, 46.745647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520378, 28.216389, 47.360126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125908, 28.190710, 47.421223>,  <37.889225, 28.175303, 47.457882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125908, 28.190710, 47.421223>,  <38.520378, 28.216389, 47.360126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125908, 28.190710, 47.421223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163722, -0.236068, 0.957845,
		-0.025433, 0.969614, 0.243316,
		-0.986179, -0.064197, 0.152744,
		37.830055, 28.171452, 47.467045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392357, 28.540630, 47.984802>,  <38.520378, 28.216389, 47.360126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392357, 28.540630, 47.984802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071106, 28.306551, 47.940044>,  <37.878353, 28.166103, 47.913189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071106, 28.306551, 47.940044>,  <38.392357, 28.540630, 47.984802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071106, 28.306551, 47.940044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012166, -0.203877, 0.978921,
		-0.595677, 0.784841, 0.170859,
		-0.803132, -0.585200, -0.111896,
		37.830166, 28.130991, 47.906475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979610, 28.727299, 48.558846>,  <38.392357, 28.540630, 47.984802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979610, 28.727299, 48.558846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854946, 28.370647, 48.427471>,  <37.780148, 28.156656, 48.348648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854946, 28.370647, 48.427471>,  <37.979610, 28.727299, 48.558846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854946, 28.370647, 48.427471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287260, -0.241060, 0.927023,
		-0.905732, 0.383259, -0.181001,
		-0.311658, -0.891629, -0.328431,
		37.761448, 28.103159, 48.328941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311016, 28.594955, 48.937157>,  <37.979610, 28.727299, 48.558846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311016, 28.594955, 48.937157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454037, 28.242699, 48.812817>,  <37.539848, 28.031345, 48.738213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454037, 28.242699, 48.812817>,  <37.311016, 28.594955, 48.937157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454037, 28.242699, 48.812817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077105, -0.359553, 0.929934,
		-0.930706, -0.308529, -0.196460,
		0.357550, -0.880642, -0.310849,
		37.561302, 27.978506, 48.719563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925457, 28.098360, 49.341080>,  <37.311016, 28.594955, 48.937157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925457, 28.098360, 49.341080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255737, 27.916080, 49.208080>,  <37.453907, 27.806713, 49.128281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255737, 27.916080, 49.208080>,  <36.925457, 28.098360, 49.341080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255737, 27.916080, 49.208080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189985, -0.330340, 0.924544,
		-0.531149, -0.826568, -0.186187,
		0.825704, -0.455698, -0.332495,
		37.503448, 27.779371, 49.108334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948353, 27.585604, 49.763569>,  <36.925457, 28.098360, 49.341080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948353, 27.585604, 49.763569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317753, 27.588440, 49.610157>,  <37.539394, 27.590141, 49.518112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317753, 27.588440, 49.610157>,  <36.948353, 27.585604, 49.763569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317753, 27.588440, 49.610157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371129, -0.269285, 0.888678,
		-0.096976, -0.963035, -0.251318,
		0.923504, 0.007091, -0.383525,
		37.594803, 27.590567, 49.495098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343498, 26.992853, 50.009323>,  <36.948353, 27.585604, 49.763569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343498, 26.992853, 50.009323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648506, 27.225363, 49.895702>,  <37.831509, 27.364868, 49.827530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648506, 27.225363, 49.895702>,  <37.343498, 26.992853, 50.009323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648506, 27.225363, 49.895702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523778, -0.296920, 0.798432,
		0.379768, -0.757599, -0.530867,
		0.762517, 0.581276, -0.284053,
		37.877262, 27.399746, 49.810486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008343, 26.586533, 49.992729>,  <37.343498, 26.992853, 50.009323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008343, 26.586533, 49.992729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097214, 26.974222, 50.035141>,  <38.150536, 27.206837, 50.060589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097214, 26.974222, 50.035141>,  <38.008343, 26.586533, 49.992729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097214, 26.974222, 50.035141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524165, -0.210425, 0.825211,
		0.822125, -0.127766, -0.554785,
		0.222175, 0.969225, 0.106025,
		38.163868, 27.264990, 50.066948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773209, 26.667717, 50.029053>,  <38.008343, 26.586533, 49.992729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773209, 26.667717, 50.029053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591503, 26.971466, 50.215385>,  <38.482479, 27.153715, 50.327187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591503, 26.971466, 50.215385>,  <38.773209, 26.667717, 50.029053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591503, 26.971466, 50.215385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491168, -0.222759, 0.842100,
		0.743237, 0.611334, -0.271789,
		-0.454261, 0.759374, 0.465830,
		38.455223, 27.199278, 50.355133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278023, 26.833593, 50.461426>,  <38.773209, 26.667717, 50.029053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278023, 26.833593, 50.461426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955856, 27.015875, 50.613029>,  <38.762558, 27.125244, 50.703991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955856, 27.015875, 50.613029>,  <39.278023, 26.833593, 50.461426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955856, 27.015875, 50.613029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315629, -0.211483, 0.925015,
		0.501686, 0.864644, 0.026498,
		-0.805413, 0.455703, 0.379005,
		38.714233, 27.152586, 50.726730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491783, 27.238134, 50.984097>,  <39.278023, 26.833593, 50.461426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491783, 27.238134, 50.984097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100880, 27.195480, 51.057407>,  <38.866337, 27.169888, 51.101395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100880, 27.195480, 51.057407>,  <39.491783, 27.238134, 50.984097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100880, 27.195480, 51.057407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210723, -0.392197, 0.895420,
		-0.023605, 0.913679, 0.405750,
		-0.977261, -0.106637, 0.183275,
		38.807701, 27.163488, 51.112389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385986, 27.658499, 51.524475>,  <39.491783, 27.238134, 50.984097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385986, 27.658499, 51.524475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131626, 27.350660, 51.501339>,  <38.979008, 27.165956, 51.487457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131626, 27.350660, 51.501339>,  <39.385986, 27.658499, 51.524475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131626, 27.350660, 51.501339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263050, -0.286592, 0.921233,
		-0.725555, 0.570601, 0.384688,
		-0.635905, -0.769597, -0.057842,
		38.940853, 27.119781, 51.483986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957561, 27.528805, 51.881702>,  <39.385986, 27.658499, 51.524475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957561, 27.528805, 51.881702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228180, 27.801880, 51.992138>,  <40.390553, 27.965725, 52.058399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228180, 27.801880, 51.992138>,  <39.957561, 27.528805, 51.881702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228180, 27.801880, 51.992138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280364, 0.585467, -0.760674,
		-0.680941, 0.437227, 0.587497,
		0.676547, 0.682687, 0.276085,
		40.431145, 28.006685, 52.074963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609333, 28.317944, 51.918549>,  <39.957561, 27.528805, 51.881702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609333, 28.317944, 51.918549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004662, 28.346245, 51.864559>,  <40.241859, 28.363226, 51.832165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004662, 28.346245, 51.864559>,  <39.609333, 28.317944, 51.918549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004662, 28.346245, 51.864559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145855, 0.695838, -0.703232,
		0.044162, 0.714705, 0.698031,
		0.988320, 0.070755, -0.134973,
		40.301159, 28.367472, 51.824066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776890, 28.978691, 51.963776>,  <39.609333, 28.317944, 51.918549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776890, 28.978691, 51.963776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087891, 28.826933, 51.763157>,  <40.274490, 28.735878, 51.642784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087891, 28.826933, 51.763157>,  <39.776890, 28.978691, 51.963776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087891, 28.826933, 51.763157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136270, 0.676940, -0.723313,
		0.613940, 0.630723, 0.474622,
		0.777502, -0.379394, -0.501549,
		40.321140, 28.713114, 51.612694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218628, 29.529388, 51.673866>,  <39.776890, 28.978691, 51.963776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218628, 29.529388, 51.673866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336460, 29.217255, 51.453213>,  <40.407162, 29.029974, 51.320820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336460, 29.217255, 51.453213>,  <40.218628, 29.529388, 51.673866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336460, 29.217255, 51.453213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217561, 0.507327, -0.833838,
		0.930530, 0.365651, -0.020319,
		0.294585, -0.780332, -0.551635,
		40.424835, 28.983154, 51.287724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785454, 29.771915, 51.249901>,  <40.218628, 29.529388, 51.673866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785454, 29.771915, 51.249901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584690, 29.467625, 51.085278>,  <40.464230, 29.285049, 50.986504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584690, 29.467625, 51.085278>,  <40.785454, 29.771915, 51.249901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584690, 29.467625, 51.085278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028885, 0.490310, -0.871070,
		0.864435, -0.425314, -0.268067,
		-0.501914, -0.760726, -0.411556,
		40.434116, 29.239407, 50.961811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795753, 30.007763, 50.467606>,  <40.785454, 29.771915, 51.249901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795753, 30.007763, 50.467606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565201, 29.680902, 50.470409>,  <40.426868, 29.484785, 50.472092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565201, 29.680902, 50.470409>,  <40.795753, 30.007763, 50.467606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565201, 29.680902, 50.470409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332889, 0.226952, -0.915247,
		0.746306, -0.529863, -0.402831,
		-0.576379, -0.817152, 0.007010,
		40.392288, 29.435757, 50.472511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911636, 29.731258, 49.788399>,  <40.795753, 30.007763, 50.467606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911636, 29.731258, 49.788399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563538, 29.606880, 49.941231>,  <40.354679, 29.532253, 50.032932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563538, 29.606880, 49.941231>,  <40.911636, 29.731258, 49.788399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563538, 29.606880, 49.941231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454055, 0.205473, -0.866957,
		0.191049, -0.927958, -0.319990,
		-0.870250, -0.310924, 0.382088,
		40.302464, 29.513596, 50.055855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674927, 29.090668, 49.385036>,  <40.911636, 29.731258, 49.788399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674927, 29.090668, 49.385036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370403, 29.291006, 49.549747>,  <40.187687, 29.411209, 49.648575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370403, 29.291006, 49.549747>,  <40.674927, 29.090668, 49.385036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370403, 29.291006, 49.549747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363824, 0.195692, -0.910679,
		-0.536690, -0.843125, 0.033236,
		-0.761312, 0.500844, 0.411775,
		40.142010, 29.441259, 49.673279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023193, 28.751841, 49.162189>,  <40.674927, 29.090668, 49.385036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023193, 28.751841, 49.162189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921764, 29.120365, 49.280094>,  <39.860909, 29.341480, 49.350838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921764, 29.120365, 49.280094>,  <40.023193, 28.751841, 49.162189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921764, 29.120365, 49.280094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505176, 0.133736, -0.852591,
		-0.824923, -0.365101, 0.431512,
		-0.253573, 0.921312, 0.294763,
		39.845692, 29.396759, 49.368523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306717, 28.851063, 48.798820>,  <40.023193, 28.751841, 49.162189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306717, 28.851063, 48.798820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433296, 29.217834, 48.896065>,  <39.509243, 29.437897, 48.954411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433296, 29.217834, 48.896065>,  <39.306717, 28.851063, 48.798820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433296, 29.217834, 48.896065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410436, 0.363395, -0.836353,
		-0.855221, 0.164882, 0.491336,
		0.316449, 0.916929, 0.243109,
		39.528233, 29.492912, 48.968998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712822, 29.307127, 48.727718>,  <39.306717, 28.851063, 48.798820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712822, 29.307127, 48.727718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032402, 29.547407, 48.716167>,  <39.224152, 29.691576, 48.709236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032402, 29.547407, 48.716167>,  <38.712822, 29.307127, 48.727718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032402, 29.547407, 48.716167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408920, 0.507411, -0.758498,
		-0.440978, 0.617812, 0.651036,
		0.798951, 0.600702, -0.028879,
		39.272087, 29.727617, 48.707504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498058, 29.993002, 48.717667>,  <38.712822, 29.307127, 48.727718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498058, 29.993002, 48.717667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876301, 30.001167, 48.587799>,  <39.103245, 30.006065, 48.509876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876301, 30.001167, 48.587799>,  <38.498058, 29.993002, 48.717667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876301, 30.001167, 48.587799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301181, 0.432149, -0.850022,
		0.122956, 0.901571, 0.414790,
		0.945607, 0.020412, -0.324671,
		39.159985, 30.007290, 48.490398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689182, 30.687674, 48.448280>,  <38.498058, 29.993002, 48.717667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689182, 30.687674, 48.448280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948521, 30.443281, 48.266579>,  <39.104126, 30.296646, 48.157558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948521, 30.443281, 48.266579>,  <38.689182, 30.687674, 48.448280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948521, 30.443281, 48.266579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237988, 0.404111, -0.883207,
		0.723192, 0.680733, 0.116599,
		0.648347, -0.610980, -0.454257,
		39.143024, 30.259987, 48.130302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171986, 31.136545, 48.093395>,  <38.689182, 30.687674, 48.448280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171986, 31.136545, 48.093395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172180, 30.782799, 47.906677>,  <39.172298, 30.570551, 47.794647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172180, 30.782799, 47.906677>,  <39.171986, 31.136545, 48.093395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172180, 30.782799, 47.906677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002175, 0.466796, -0.884363,
		0.999997, -0.000585, 0.002150,
		0.000487, -0.884365, -0.466796,
		39.172325, 30.517488, 47.766640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428295, 31.306627, 47.542233>,  <39.171986, 31.136545, 48.093395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428295, 31.306627, 47.542233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363827, 30.927586, 47.431908>,  <39.325146, 30.700161, 47.365711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363827, 30.927586, 47.431908>,  <39.428295, 31.306627, 47.542233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363827, 30.927586, 47.431908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102045, 0.293968, -0.950352,
		0.981637, -0.125025, -0.144078,
		-0.161172, -0.947603, -0.275811,
		39.315475, 30.643305, 47.349163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943314, 31.101715, 46.977360>,  <39.428295, 31.306627, 47.542233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943314, 31.101715, 46.977360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660397, 30.820948, 46.943771>,  <39.490646, 30.652487, 46.923618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660397, 30.820948, 46.943771>,  <39.943314, 31.101715, 46.977360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660397, 30.820948, 46.943771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189370, 0.302566, -0.934127,
		0.681086, -0.644799, -0.346924,
		-0.707291, -0.701918, -0.083967,
		39.448208, 30.610373, 46.918583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064274, 30.697136, 46.365421>,  <39.943314, 31.101715, 46.977360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064274, 30.697136, 46.365421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673161, 30.675261, 46.446365>,  <39.438492, 30.662136, 46.494930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673161, 30.675261, 46.446365>,  <40.064274, 30.697136, 46.365421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673161, 30.675261, 46.446365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209414, 0.297201, -0.931567,
		-0.009196, -0.953247, -0.302051,
		-0.977784, -0.054687, 0.202357,
		39.379826, 30.658854, 46.507072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831543, 30.440779, 45.835026>,  <40.064274, 30.697136, 46.365421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831543, 30.440779, 45.835026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508308, 30.608467, 46.000553>,  <39.314365, 30.709080, 46.099869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508308, 30.608467, 46.000553>,  <39.831543, 30.440779, 45.835026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508308, 30.608467, 46.000553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320339, 0.276795, -0.905962,
		-0.494342, -0.864660, -0.089381,
		-0.808089, 0.419223, 0.413816,
		39.265881, 30.734234, 46.124699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398388, 30.251936, 45.425716>,  <39.831543, 30.440779, 45.835026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398388, 30.251936, 45.425716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209026, 30.553791, 45.607445>,  <39.095409, 30.734905, 45.716480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209026, 30.553791, 45.607445>,  <39.398388, 30.251936, 45.425716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209026, 30.553791, 45.607445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240836, 0.385234, -0.890838,
		-0.847281, -0.531144, -0.000628,
		-0.473405, 0.754639, 0.454321,
		39.067005, 30.780182, 45.743740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684368, 30.255169, 45.241741>,  <39.398388, 30.251936, 45.425716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684368, 30.255169, 45.241741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793922, 30.625864, 45.344612>,  <38.859653, 30.848282, 45.406334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793922, 30.625864, 45.344612>,  <38.684368, 30.255169, 45.241741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793922, 30.625864, 45.344612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273217, 0.331361, -0.903079,
		-0.922139, 0.177072, 0.343956,
		0.273884, 0.926739, 0.257182,
		38.876087, 30.903885, 45.421768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154068, 30.645493, 44.911987>,  <38.684368, 30.255169, 45.241741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154068, 30.645493, 44.911987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439121, 30.909157, 45.008038>,  <38.610153, 31.067356, 45.065666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439121, 30.909157, 45.008038>,  <38.154068, 30.645493, 44.911987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439121, 30.909157, 45.008038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171813, 0.495850, -0.851242,
		-0.680174, 0.565365, 0.466612,
		0.712632, 0.659162, 0.240126,
		38.652912, 31.106905, 45.080074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891773, 31.231056, 44.810154>,  <38.154068, 30.645493, 44.911987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891773, 31.231056, 44.810154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276276, 31.341305, 44.812191>,  <38.506977, 31.407454, 44.813412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276276, 31.341305, 44.812191>,  <37.891773, 31.231056, 44.810154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276276, 31.341305, 44.812191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084193, 0.311120, -0.946634,
		-0.262499, 0.909525, 0.322271,
		0.961252, 0.275623, 0.005093,
		38.564651, 31.423992, 44.813721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908741, 31.908340, 44.524345>,  <37.891773, 31.231056, 44.810154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908741, 31.908340, 44.524345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265980, 31.737036, 44.469242>,  <38.480324, 31.634253, 44.436180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265980, 31.737036, 44.469242>,  <37.908741, 31.908340, 44.524345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265980, 31.737036, 44.469242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012041, 0.283341, -0.958944,
		0.449711, 0.858084, 0.247893,
		0.893093, -0.428263, -0.137754,
		38.533909, 31.608557, 44.427917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258583, 32.464737, 44.229912>,  <37.908741, 31.908340, 44.524345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258583, 32.464737, 44.229912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437042, 32.119801, 44.134151>,  <38.544117, 31.912838, 44.076694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437042, 32.119801, 44.134151>,  <38.258583, 32.464737, 44.229912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437042, 32.119801, 44.134151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191350, 0.353230, -0.915759,
		0.874263, 0.362756, 0.322602,
		0.446149, -0.862344, -0.239402,
		38.570889, 31.861097, 44.062332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920425, 32.588448, 44.030121>,  <38.258583, 32.464737, 44.229912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920425, 32.588448, 44.030121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829502, 32.240597, 43.854813>,  <38.774948, 32.031887, 43.749626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829502, 32.240597, 43.854813>,  <38.920425, 32.588448, 44.030121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829502, 32.240597, 43.854813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098352, 0.427248, -0.898769,
		0.968843, -0.247405, -0.011588,
		-0.227311, -0.869626, -0.438269,
		38.761311, 31.979710, 43.723331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421913, 32.424656, 43.534832>,  <38.920425, 32.588448, 44.030121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421913, 32.424656, 43.534832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129665, 32.178684, 43.416130>,  <38.954319, 32.031101, 43.344910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129665, 32.178684, 43.416130>,  <39.421913, 32.424656, 43.534832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129665, 32.178684, 43.416130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016745, 0.450629, -0.892554,
		0.682585, -0.647145, -0.339533,
		-0.730615, -0.614929, -0.296756,
		38.910480, 31.994205, 43.327103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723267, 32.035416, 43.067028>,  <39.421913, 32.424656, 43.534832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723267, 32.035416, 43.067028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338772, 31.985720, 42.968563>,  <39.108074, 31.955902, 42.909485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338772, 31.985720, 42.968563>,  <39.723267, 32.035416, 43.067028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338772, 31.985720, 42.968563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187871, 0.358374, -0.914479,
		0.201829, -0.925275, -0.321141,
		-0.961233, -0.124236, -0.246163,
		39.050404, 31.948448, 42.894714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777390, 31.704899, 42.412247>,  <39.723267, 32.035416, 43.067028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777390, 31.704899, 42.412247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408924, 31.859148, 42.433270>,  <39.187847, 31.951696, 42.445885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408924, 31.859148, 42.433270>,  <39.777390, 31.704899, 42.412247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408924, 31.859148, 42.433270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096466, 0.357064, -0.929085,
		-0.377042, -0.850765, -0.366112,
		-0.921159, 0.385622, 0.052559,
		39.132576, 31.974834, 42.449036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484306, 31.559246, 41.714699>,  <39.777390, 31.704899, 42.412247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484306, 31.559246, 41.714699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220543, 31.824205, 41.856911>,  <39.062283, 31.983181, 41.942238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220543, 31.824205, 41.856911>,  <39.484306, 31.559246, 41.714699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220543, 31.824205, 41.856911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007771, 0.478900, -0.877835,
		-0.751742, -0.576091, -0.320940,
		-0.659411, 0.662399, 0.355533,
		39.022720, 32.022926, 41.963570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892330, 31.555447, 41.430843>,  <39.484306, 31.559246, 41.714699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892330, 31.555447, 41.430843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915844, 31.931089, 41.566265>,  <38.929955, 32.156475, 41.647518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915844, 31.931089, 41.566265>,  <38.892330, 31.555447, 41.430843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915844, 31.931089, 41.566265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158524, 0.343620, -0.925633,
		-0.985604, 0.000745, 0.169071,
		0.058786, 0.939109, 0.338555,
		38.933479, 32.212822, 41.667831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337067, 31.726137, 41.135429>,  <38.892330, 31.555447, 41.430843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337067, 31.726137, 41.135429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569508, 32.041805, 41.214951>,  <38.708973, 32.231205, 41.262665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569508, 32.041805, 41.214951>,  <38.337067, 31.726137, 41.135429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569508, 32.041805, 41.214951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180715, 0.363314, -0.913972,
		-0.793510, 0.495188, 0.353739,
		0.581106, 0.789172, 0.198805,
		38.743839, 32.278557, 41.274593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086231, 32.285126, 40.762302>,  <38.337067, 31.726137, 41.135429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086231, 32.285126, 40.762302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439835, 32.435963, 40.872822>,  <38.651997, 32.526463, 40.939133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439835, 32.435963, 40.872822>,  <38.086231, 32.285126, 40.762302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439835, 32.435963, 40.872822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136500, 0.357065, -0.924052,
		-0.447107, 0.854580, 0.264174,
		0.884004, 0.377090, 0.276296,
		38.705036, 32.549091, 40.955711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019672, 32.915985, 40.606987>,  <38.086231, 32.285126, 40.762302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019672, 32.915985, 40.606987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413288, 32.845470, 40.616753>,  <38.649456, 32.803162, 40.622612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413288, 32.845470, 40.616753>,  <38.019672, 32.915985, 40.606987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413288, 32.845470, 40.616753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084508, 0.342109, -0.935853,
		0.156623, 0.922976, 0.351545,
		0.984036, -0.176285, 0.024417,
		38.708500, 32.792583, 40.624077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199078, 33.231506, 40.082153>,  <38.019672, 32.915985, 40.606987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199078, 33.231506, 40.082153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566074, 33.099380, 40.170795>,  <38.786270, 33.020103, 40.223980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566074, 33.099380, 40.170795>,  <38.199078, 33.231506, 40.082153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566074, 33.099380, 40.170795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327210, 0.309998, -0.892656,
		0.226162, 0.891512, 0.392502,
		0.917488, -0.330315, 0.221602,
		38.841320, 33.000286, 40.237274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538261, 33.838055, 40.179386>,  <38.199078, 33.231506, 40.082153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538261, 33.838055, 40.179386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793308, 33.540051, 40.101002>,  <38.946335, 33.361248, 40.053970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793308, 33.540051, 40.101002>,  <38.538261, 33.838055, 40.179386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793308, 33.540051, 40.101002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365833, 0.516703, -0.774069,
		0.677945, 0.421871, 0.602009,
		0.637618, -0.745012, -0.195962,
		38.984592, 33.316547, 40.042213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156849, 34.165047, 39.971226>,  <38.538261, 33.838055, 40.179386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156849, 34.165047, 39.971226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181946, 33.794411, 39.822906>,  <39.197006, 33.572029, 39.733913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181946, 33.794411, 39.822906>,  <39.156849, 34.165047, 39.971226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181946, 33.794411, 39.822906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528342, 0.346041, -0.775313,
		0.846710, -0.147262, 0.511270,
		0.062746, -0.926590, -0.370801,
		39.200771, 33.516434, 39.711666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843018, 34.095646, 39.763718>,  <39.156849, 34.165047, 39.971226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843018, 34.095646, 39.763718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632389, 33.825867, 39.556705>,  <39.506012, 33.663998, 39.432499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632389, 33.825867, 39.556705>,  <39.843018, 34.095646, 39.763718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632389, 33.825867, 39.556705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476893, 0.269616, -0.836589,
		0.703771, -0.687333, 0.179667,
		-0.526574, -0.674449, -0.517532,
		39.474419, 33.623531, 39.401447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312099, 33.732582, 39.419907>,  <39.843018, 34.095646, 39.763718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312099, 33.732582, 39.419907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975601, 33.678032, 39.210640>,  <39.773701, 33.645302, 39.085079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975601, 33.678032, 39.210640>,  <40.312099, 33.732582, 39.419907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975601, 33.678032, 39.210640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367233, 0.566049, -0.738057,
		0.396788, -0.813014, -0.426108,
		-0.841249, -0.136371, -0.523167,
		39.723225, 33.637119, 39.053688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496761, 33.458763, 38.743210>,  <40.312099, 33.732582, 39.419907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496761, 33.458763, 38.743210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146591, 33.648190, 38.704494>,  <39.936489, 33.761845, 38.681267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146591, 33.648190, 38.704494>,  <40.496761, 33.458763, 38.743210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146591, 33.648190, 38.704494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409443, 0.620124, -0.669181,
		-0.256884, -0.625445, -0.736770,
		-0.875424, 0.473567, -0.096784,
		39.883965, 33.790260, 38.675461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376301, 33.572071, 38.020962>,  <40.496761, 33.458763, 38.743210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376301, 33.572071, 38.020962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147617, 33.863728, 38.171432>,  <40.010406, 34.038719, 38.261715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147617, 33.863728, 38.171432>,  <40.376301, 33.572071, 38.020962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147617, 33.863728, 38.171432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372554, 0.639209, -0.672767,
		-0.730993, -0.244482, -0.637085,
		-0.571710, 0.729137, 0.376174,
		39.976105, 34.082470, 38.284286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038109, 33.960125, 37.420204>,  <40.376301, 33.572071, 38.020962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038109, 33.960125, 37.420204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064114, 34.233543, 37.711006>,  <40.079716, 34.397594, 37.885487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064114, 34.233543, 37.711006>,  <40.038109, 33.960125, 37.420204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064114, 34.233543, 37.711006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424688, 0.640323, -0.640021,
		-0.903002, 0.350362, -0.248663,
		0.065015, 0.683545, 0.727008,
		40.083618, 34.438606, 37.929108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533092, 34.629524, 37.313778>,  <40.038109, 33.960125, 37.420204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533092, 34.629524, 37.313778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889893, 34.636505, 37.494461>,  <40.103973, 34.640694, 37.602871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889893, 34.636505, 37.494461>,  <39.533092, 34.629524, 37.313778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889893, 34.636505, 37.494461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334224, 0.647343, -0.685012,
		-0.304361, 0.761999, 0.571595,
		0.891997, 0.017450, 0.451705,
		40.157490, 34.641739, 37.629974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791431, 35.307888, 37.500214>,  <39.533092, 34.629524, 37.313778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791431, 35.307888, 37.500214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071461, 35.040279, 37.400364>,  <40.239479, 34.879715, 37.340454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071461, 35.040279, 37.400364>,  <39.791431, 35.307888, 37.500214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071461, 35.040279, 37.400364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268078, 0.570247, -0.776500,
		0.661839, 0.476689, 0.578564,
		0.700074, -0.669019, -0.249622,
		40.281483, 34.839573, 37.325478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406773, 35.646217, 37.433990>,  <39.791431, 35.307888, 37.500214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406773, 35.646217, 37.433990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429127, 35.327591, 37.193207>,  <40.442539, 35.136414, 37.048737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429127, 35.327591, 37.193207>,  <40.406773, 35.646217, 37.433990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429127, 35.327591, 37.193207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357319, 0.578931, -0.732914,
		0.932309, -0.174129, 0.316985,
		0.055890, -0.796567, -0.601962,
		40.445892, 35.088619, 37.012619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050880, 35.532547, 37.087406>,  <40.406773, 35.646217, 37.433990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050880, 35.532547, 37.087406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781101, 35.368961, 36.841522>,  <40.619232, 35.270809, 36.693993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781101, 35.368961, 36.841522>,  <41.050880, 35.532547, 37.087406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781101, 35.368961, 36.841522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266875, 0.641249, -0.719428,
		0.688400, -0.649269, -0.323350,
		-0.674450, -0.408960, -0.614710,
		40.578766, 35.246273, 36.657108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297611, 35.407688, 36.432678>,  <41.050880, 35.532547, 37.087406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297611, 35.407688, 36.432678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907593, 35.472668, 36.372162>,  <40.673580, 35.511654, 36.335850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907593, 35.472668, 36.372162>,  <41.297611, 35.407688, 36.432678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907593, 35.472668, 36.372162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216345, 0.542700, -0.811586,
		-0.049732, -0.824068, -0.564304,
		-0.975050, 0.162446, -0.151294,
		40.615078, 35.521400, 36.326775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055725, 35.316525, 35.794209>,  <41.297611, 35.407688, 36.432678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055725, 35.316525, 35.794209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818359, 35.597374, 35.951630>,  <40.675941, 35.765884, 36.046082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818359, 35.597374, 35.951630>,  <41.055725, 35.316525, 35.794209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818359, 35.597374, 35.951630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323189, 0.655654, -0.682398,
		-0.737162, -0.277752, -0.615992,
		-0.593415, 0.702119, 0.393557,
		40.640335, 35.808010, 36.069698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653805, 35.558517, 35.475952>,  <41.055725, 35.316525, 35.794209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653805, 35.558517, 35.475952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007069, 35.445145, 35.326447>,  <42.219025, 35.377121, 35.236740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007069, 35.445145, 35.326447>,  <41.653805, 35.558517, 35.475952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007069, 35.445145, 35.326447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243290, -0.958030, 0.151620,
		-0.401055, -0.042970, -0.915045,
		0.883156, -0.283430, -0.373769,
		42.272015, 35.360115, 35.214317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612606, 34.931187, 34.965904>,  <41.653805, 35.558517, 35.475952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612606, 34.931187, 34.965904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002468, 34.927677, 35.055317>,  <42.236385, 34.925571, 35.108963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002468, 34.927677, 35.055317>,  <41.612606, 34.931187, 34.965904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002468, 34.927677, 35.055317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058379, -0.974576, 0.216317,
		0.215951, -0.223884, -0.950390,
		0.974658, -0.008769, 0.223531,
		42.294865, 34.925045, 35.122375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898178, 34.307743, 34.551044>,  <41.612606, 34.931187, 34.965904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898178, 34.307743, 34.551044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161823, 34.377739, 34.843605>,  <42.320011, 34.419735, 35.019142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161823, 34.377739, 34.843605>,  <41.898178, 34.307743, 34.551044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161823, 34.377739, 34.843605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100768, -0.984332, 0.144692,
		0.745259, -0.021667, -0.666423,
		0.659117, 0.174987, 0.731399,
		42.359558, 34.430237, 35.063026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477192, 33.835529, 34.430649>,  <41.898178, 34.307743, 34.551044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477192, 33.835529, 34.430649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517143, 33.927483, 34.817883>,  <42.541115, 33.982655, 35.050220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517143, 33.927483, 34.817883>,  <42.477192, 33.835529, 34.430649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517143, 33.927483, 34.817883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148751, -0.965461, 0.213912,
		0.983818, 0.122638, -0.130621,
		0.099876, 0.229880, 0.968081,
		42.547108, 33.996449, 35.108307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189613, 33.675133, 34.690273>,  <42.477192, 33.835529, 34.430649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189613, 33.675133, 34.690273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950840, 33.681988, 35.011116>,  <42.807575, 33.686100, 35.203621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950840, 33.681988, 35.011116>,  <43.189613, 33.675133, 34.690273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950840, 33.681988, 35.011116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387971, -0.868933, 0.307301,
		0.702244, 0.494632, 0.512048,
		-0.596936, 0.017140, 0.802106,
		42.771759, 33.687130, 35.251747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628139, 33.393551, 35.229710>,  <43.189613, 33.675133, 34.690273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628139, 33.393551, 35.229710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253059, 33.354870, 35.363194>,  <43.028011, 33.331661, 35.443283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253059, 33.354870, 35.363194>,  <43.628139, 33.393551, 35.229710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253059, 33.354870, 35.363194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230362, -0.892061, 0.388795,
		0.260096, 0.441448, 0.858763,
		-0.937701, -0.096702, 0.333714,
		42.971748, 33.325859, 35.463306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646843, 33.091274, 35.995804>,  <43.628139, 33.393551, 35.229710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646843, 33.091274, 35.995804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295864, 33.008766, 35.822578>,  <43.085278, 32.959263, 35.718643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295864, 33.008766, 35.822578>,  <43.646843, 33.091274, 35.995804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295864, 33.008766, 35.822578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016569, -0.915315, 0.402397,
		-0.479394, 0.345905, 0.806555,
		-0.877443, -0.206271, -0.433065,
		43.032631, 32.946884, 35.692657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273880, 32.816574, 36.517437>,  <43.646843, 33.091274, 35.995804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273880, 32.816574, 36.517437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070080, 32.706291, 36.191395>,  <42.947800, 32.640121, 35.995770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070080, 32.706291, 36.191395>,  <43.273880, 32.816574, 36.517437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070080, 32.706291, 36.191395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145734, -0.905943, 0.397530,
		-0.848040, 0.321330, 0.421398,
		-0.509501, -0.275709, -0.815103,
		42.917229, 32.623577, 35.946865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588741, 32.505054, 36.784225>,  <43.273880, 32.816574, 36.517437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588741, 32.505054, 36.784225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613308, 32.349247, 36.416637>,  <42.628048, 32.255764, 36.196083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613308, 32.349247, 36.416637>,  <42.588741, 32.505054, 36.784225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613308, 32.349247, 36.416637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191793, -0.908155, 0.372115,
		-0.979512, 0.153399, -0.130480,
		0.061414, -0.389517, -0.918970,
		42.631733, 32.232391, 36.140945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069519, 31.990698, 36.716465>,  <42.588741, 32.505054, 36.784225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069519, 31.990698, 36.716465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322933, 31.900368, 36.420456>,  <42.474983, 31.846170, 36.242851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322933, 31.900368, 36.420456>,  <42.069519, 31.990698, 36.716465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322933, 31.900368, 36.420456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150177, -0.974159, 0.168706,
		-0.758999, 0.004253, -0.651077,
		0.633535, -0.225824, -0.740025,
		42.512993, 31.832621, 36.198448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771023, 31.446394, 36.442921>,  <42.069519, 31.990698, 36.716465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771023, 31.446394, 36.442921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145046, 31.393856, 36.311214>,  <42.369461, 31.362333, 36.232193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145046, 31.393856, 36.311214>,  <41.771023, 31.446394, 36.442921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145046, 31.393856, 36.311214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090869, -0.986600, 0.135508,
		-0.342648, -0.096788, -0.934464,
		0.935059, -0.131345, -0.329262,
		42.425564, 31.354452, 36.212437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821091, 30.804705, 36.099297>,  <41.771023, 31.446394, 36.442921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821091, 30.804705, 36.099297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208614, 30.880283, 36.163441>,  <42.441128, 30.925631, 36.201927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208614, 30.880283, 36.163441>,  <41.821091, 30.804705, 36.099297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208614, 30.880283, 36.163441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167322, -0.976030, 0.139170,
		0.182809, -0.107997, -0.977199,
		0.968805, 0.188949, 0.160357,
		42.499256, 30.936968, 36.211548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103638, 30.215899, 35.664295>,  <41.821091, 30.804705, 36.099297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103638, 30.215899, 35.664295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404396, 30.363913, 35.882553>,  <42.584850, 30.452721, 36.013508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404396, 30.363913, 35.882553>,  <42.103638, 30.215899, 35.664295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404396, 30.363913, 35.882553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397267, -0.914799, 0.072944,
		0.526144, 0.161918, -0.834839,
		0.751899, 0.370033, 0.545641,
		42.629967, 30.474922, 36.046246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.756271, 30.078213, 35.332638>,  <42.103638, 30.215899, 35.664295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.756271, 30.078213, 35.332638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800415, 30.115377, 35.728455>,  <42.826900, 30.137676, 35.965942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800415, 30.115377, 35.728455>,  <42.756271, 30.078213, 35.332638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800415, 30.115377, 35.728455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456334, -0.889211, 0.032600,
		0.882939, 0.447963, -0.140531,
		0.110358, 0.092913, 0.989539,
		42.833523, 30.143251, 36.025318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495388, 29.945463, 35.502167>,  <42.756271, 30.078213, 35.332638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495388, 29.945463, 35.502167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301552, 29.885311, 35.846855>,  <43.185249, 29.849220, 36.053669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301552, 29.885311, 35.846855>,  <43.495388, 29.945463, 35.502167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301552, 29.885311, 35.846855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521344, -0.840683, 0.146468,
		0.702406, 0.520229, 0.485785,
		-0.484588, -0.150381, 0.861719,
		43.156174, 29.840197, 36.105370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064049, 29.880245, 36.054092>,  <43.495388, 29.945463, 35.502167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064049, 29.880245, 36.054092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725475, 29.727797, 36.202847>,  <43.522331, 29.636328, 36.292099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725475, 29.727797, 36.202847>,  <44.064049, 29.880245, 36.054092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725475, 29.727797, 36.202847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467319, -0.866462, 0.175659,
		0.255277, 0.322472, 0.911507,
		-0.846432, -0.381123, 0.371885,
		43.471546, 29.613459, 36.314411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285439, 29.523088, 36.661434>,  <44.064049, 29.880245, 36.054092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285439, 29.523088, 36.661434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922272, 29.377262, 36.578709>,  <43.704372, 29.289766, 36.529072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922272, 29.377262, 36.578709>,  <44.285439, 29.523088, 36.661434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922272, 29.377262, 36.578709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367075, -0.929784, 0.027515,
		-0.202326, -0.050936, 0.977993,
		-0.907921, -0.364564, -0.206817,
		43.649895, 29.267893, 36.516663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221634, 28.926517, 37.090927>,  <44.285439, 29.523088, 36.661434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221634, 28.926517, 37.090927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945011, 28.863224, 36.809013>,  <43.779037, 28.825249, 36.639866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945011, 28.863224, 36.809013>,  <44.221634, 28.926517, 37.090927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945011, 28.863224, 36.809013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254740, -0.966447, -0.032976,
		-0.675915, -0.202341, 0.708659,
		-0.691554, -0.158234, -0.704780,
		43.737545, 28.815754, 36.597580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929398, 28.349663, 37.364918>,  <44.221634, 28.926517, 37.090927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929398, 28.349663, 37.364918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816055, 28.346224, 36.981327>,  <43.748051, 28.344160, 36.751171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816055, 28.346224, 36.981327>,  <43.929398, 28.349663, 37.364918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816055, 28.346224, 36.981327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299277, -0.950815, -0.079906,
		-0.911122, -0.309641, 0.271992,
		-0.283356, -0.008597, -0.958976,
		43.731049, 28.343645, 36.693634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542225, 27.778719, 37.288895>,  <43.929398, 28.349663, 37.364918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542225, 27.778719, 37.288895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650787, 27.861609, 36.912937>,  <43.715927, 27.911343, 36.687363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650787, 27.861609, 36.912937>,  <43.542225, 27.778719, 37.288895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650787, 27.861609, 36.912937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257569, -0.956567, -0.136524,
		-0.927359, -0.205033, -0.312995,
		0.271409, 0.207225, -0.939891,
		43.732208, 27.923777, 36.630970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260349, 27.242390, 36.788689>,  <43.542225, 27.778719, 37.288895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260349, 27.242390, 36.788689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598217, 27.394108, 36.637600>,  <43.800938, 27.485138, 36.546947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.598217, 27.394108, 36.637600>,  <43.260349, 27.242390, 36.788689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.598217, 27.394108, 36.637600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397867, -0.916919, -0.031017,
		-0.358103, -0.124083, -0.925401,
		0.844668, 0.379293, -0.377719,
		43.851616, 27.507896, 36.524284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354057, 26.888304, 36.188858>,  <43.260349, 27.242390, 36.788689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354057, 26.888304, 36.188858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687489, 27.038015, 36.351372>,  <43.887547, 27.127842, 36.448879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687489, 27.038015, 36.351372>,  <43.354057, 26.888304, 36.188858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687489, 27.038015, 36.351372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390493, -0.919463, 0.045856,
		0.390725, 0.120426, -0.912596,
		0.833577, 0.374279, 0.406282,
		43.937561, 27.150299, 36.473255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005569, 26.819990, 35.811703>,  <43.354057, 26.888304, 36.188858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005569, 26.819990, 35.811703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106010, 26.829830, 36.198761>,  <44.166275, 26.835733, 36.430996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106010, 26.829830, 36.198761>,  <44.005569, 26.819990, 35.811703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106010, 26.829830, 36.198761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364324, -0.928567, -0.070936,
		0.896781, 0.370350, -0.242126,
		0.251102, 0.024598, 0.967648,
		44.181339, 26.837210, 36.489056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749836, 26.820326, 35.937336>,  <44.005569, 26.819990, 35.811703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749836, 26.820326, 35.937336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568077, 26.657761, 36.254410>,  <44.459023, 26.560223, 36.444653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568077, 26.657761, 36.254410>,  <44.749836, 26.820326, 35.937336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568077, 26.657761, 36.254410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351738, -0.899411, -0.259499,
		0.818413, 0.160901, 0.551644,
		-0.454401, -0.406412, 0.792685,
		44.431755, 26.535837, 36.492214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840130, 26.497206, 35.216583>,  <44.749836, 26.820326, 35.937336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840130, 26.497206, 35.216583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584373, 26.449303, 35.520382>,  <44.430920, 26.420561, 35.702660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.584373, 26.449303, 35.520382>,  <44.840130, 26.497206, 35.216583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584373, 26.449303, 35.520382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179418, -0.983765, -0.004078,
		0.747656, 0.133660, 0.650497,
		-0.639390, -0.119759, 0.759498,
		44.392555, 26.413374, 35.748230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346500, 25.991335, 35.004551>,  <44.840130, 26.497206, 35.216583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346500, 25.991335, 35.004551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135307, 25.771988, 34.745159>,  <45.008591, 25.640379, 34.589523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135307, 25.771988, 34.745159>,  <45.346500, 25.991335, 35.004551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135307, 25.771988, 34.745159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177121, 0.817897, -0.547423,
		0.830579, -0.174172, -0.528964,
		-0.527984, -0.548369, -0.648479,
		44.976910, 25.607477, 34.550617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513653, 26.161470, 34.303699>,  <45.346500, 25.991335, 35.004551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513653, 26.161470, 34.303699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157604, 25.982351, 34.269855>,  <44.943974, 25.874880, 34.249550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157604, 25.982351, 34.269855>,  <45.513653, 26.161470, 34.303699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157604, 25.982351, 34.269855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273565, 0.673532, -0.686671,
		0.364475, -0.588076, -0.722028,
		-0.890123, -0.447796, -0.084608,
		44.890568, 25.848013, 34.244473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170300, 26.088268, 33.593235>,  <45.513653, 26.161470, 34.303699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170300, 26.088268, 33.593235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834614, 26.085558, 33.810738>,  <44.633202, 26.083933, 33.941238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834614, 26.085558, 33.810738>,  <45.170300, 26.088268, 33.593235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834614, 26.085558, 33.810738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464168, 0.529870, -0.709778,
		-0.283312, -0.848052, -0.447820,
		-0.839215, -0.006775, 0.543757,
		44.582848, 26.083525, 33.973866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661221, 25.878147, 33.161766>,  <45.170300, 26.088268, 33.593235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661221, 25.878147, 33.161766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444046, 26.053570, 33.448231>,  <44.313740, 26.158823, 33.620110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444046, 26.053570, 33.448231>,  <44.661221, 25.878147, 33.161766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444046, 26.053570, 33.448231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597008, 0.398186, -0.696441,
		-0.590595, -0.805677, 0.045632,
		-0.542936, 0.438557, 0.716162,
		44.281166, 26.185137, 33.663078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679409, 26.382074, 32.605801>,  <44.661221, 25.878147, 33.161766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679409, 26.382074, 32.605801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666733, 26.436329, 32.209702>,  <44.659126, 26.468882, 31.972040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666733, 26.436329, 32.209702>,  <44.679409, 26.382074, 32.605801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666733, 26.436329, 32.209702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057910, 0.988836, 0.137295,
		0.997819, 0.061696, -0.023480,
		-0.031688, 0.135636, -0.990252,
		44.657227, 26.477020, 31.912626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131008, 26.898512, 32.508675>,  <44.679409, 26.382074, 32.605801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131008, 26.898512, 32.508675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892651, 26.869902, 32.188728>,  <44.749634, 26.852736, 31.996759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892651, 26.869902, 32.188728>,  <45.131008, 26.898512, 32.508675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892651, 26.869902, 32.188728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295135, 0.945828, 0.135296,
		0.746862, 0.316692, -0.584725,
		-0.595896, -0.071526, -0.799870,
		44.713882, 26.848444, 31.948767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370293, 27.383568, 31.979065>,  <45.131008, 26.898512, 32.508675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370293, 27.383568, 31.979065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978241, 27.304613, 31.986923>,  <44.743011, 27.257240, 31.991638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978241, 27.304613, 31.986923>,  <45.370293, 27.383568, 31.979065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978241, 27.304613, 31.986923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186765, 0.951663, 0.243838,
		-0.066827, 0.235323, -0.969617,
		-0.980129, -0.197385, 0.019647,
		44.684204, 27.245398, 31.992817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971340, 27.767794, 31.483210>,  <45.370293, 27.383568, 31.979065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971340, 27.767794, 31.483210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742229, 27.695860, 31.803106>,  <44.604763, 27.652699, 31.995045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742229, 27.695860, 31.803106>,  <44.971340, 27.767794, 31.483210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742229, 27.695860, 31.803106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241879, 0.969275, 0.044725,
		-0.783212, -0.167823, -0.598678,
		-0.572777, -0.179836, 0.799741,
		44.570396, 27.641909, 32.043030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436180, 28.174065, 31.266052>,  <44.971340, 27.767794, 31.483210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436180, 28.174065, 31.266052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368450, 28.084448, 31.649956>,  <44.327812, 28.030678, 31.880297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368450, 28.084448, 31.649956>,  <44.436180, 28.174065, 31.266052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368450, 28.084448, 31.649956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299839, 0.939369, 0.166384,
		-0.938843, -0.259599, -0.226235,
		-0.169325, -0.224042, 0.959757,
		44.317654, 28.017235, 31.937883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.767220, 28.382975, 31.499519>,  <44.436180, 28.174065, 31.266052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.767220, 28.382975, 31.499519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974445, 28.359476, 31.840849>,  <44.098782, 28.345377, 32.045647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974445, 28.359476, 31.840849>,  <43.767220, 28.382975, 31.499519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974445, 28.359476, 31.840849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196276, 0.962853, 0.185447,
		-0.832520, -0.263560, 0.487285,
		0.518060, -0.058746, 0.853324,
		44.129864, 28.341852, 32.096848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371071, 28.831446, 31.922426>,  <43.767220, 28.382975, 31.499519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371071, 28.831446, 31.922426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718906, 28.789700, 32.115475>,  <43.927608, 28.764652, 32.231304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718906, 28.789700, 32.115475>,  <43.371071, 28.831446, 31.922426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718906, 28.789700, 32.115475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120503, 0.903001, 0.412392,
		-0.478845, -0.416769, 0.772665,
		0.869590, -0.104363, 0.482619,
		43.979782, 28.758390, 32.260262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333000, 29.253305, 32.518322>,  <43.371071, 28.831446, 31.922426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333000, 29.253305, 32.518322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722729, 29.181412, 32.464069>,  <43.956566, 29.138275, 32.431519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722729, 29.181412, 32.464069>,  <43.333000, 29.253305, 32.518322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722729, 29.181412, 32.464069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212085, 0.934872, 0.284666,
		0.075632, -0.306121, 0.948984,
		0.974320, -0.179735, -0.135630,
		44.015026, 29.127491, 32.423382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621433, 29.315031, 33.168228>,  <43.333000, 29.253305, 32.518322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621433, 29.315031, 33.168228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889748, 29.380962, 32.878986>,  <44.050735, 29.420521, 32.705441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889748, 29.380962, 32.878986>,  <43.621433, 29.315031, 33.168228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889748, 29.380962, 32.878986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204865, 0.895876, 0.394254,
		0.712793, -0.412599, 0.567176,
		0.670788, 0.164827, -0.723101,
		44.090984, 29.430410, 32.662056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117588, 29.624689, 33.571411>,  <43.621433, 29.315031, 33.168228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117588, 29.624689, 33.571411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211952, 29.707794, 33.191689>,  <44.268570, 29.757658, 32.963856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211952, 29.707794, 33.191689>,  <44.117588, 29.624689, 33.571411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211952, 29.707794, 33.191689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311461, 0.909178, 0.276381,
		0.920510, -0.360873, 0.149775,
		0.235911, 0.207763, -0.949306,
		44.282726, 29.770123, 32.906898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741531, 29.987234, 33.590641>,  <44.117588, 29.624689, 33.571411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741531, 29.987234, 33.590641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.598778, 30.082348, 33.229290>,  <44.513126, 30.139416, 33.012478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.598778, 30.082348, 33.229290>,  <44.741531, 29.987234, 33.590641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598778, 30.082348, 33.229290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220071, 0.961243, 0.166075,
		0.907857, -0.139539, -0.395379,
		-0.356881, 0.237784, -0.903380,
		44.491714, 30.153683, 32.958275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246479, 30.346367, 33.244518>,  <44.741531, 29.987234, 33.590641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246479, 30.346367, 33.244518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892784, 30.438990, 33.082279>,  <44.680569, 30.494562, 32.984936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892784, 30.438990, 33.082279>,  <45.246479, 30.346367, 33.244518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892784, 30.438990, 33.082279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172250, 0.968906, 0.177628,
		0.434121, 0.087200, -0.896625,
		-0.884234, 0.231555, -0.405602,
		44.627514, 30.508455, 32.960598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342461, 30.819254, 32.701084>,  <45.246479, 30.346367, 33.244518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342461, 30.819254, 32.701084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973148, 30.886969, 32.839008>,  <44.751560, 30.927597, 32.921761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973148, 30.886969, 32.839008>,  <45.342461, 30.819254, 32.701084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973148, 30.886969, 32.839008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226925, 0.964646, 0.134026,
		-0.309929, 0.201990, -0.929056,
		-0.923282, 0.169287, 0.344808,
		44.696163, 30.937756, 32.942451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308121, 31.474016, 32.583820>,  <45.342461, 30.819254, 32.701084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308121, 31.474016, 32.583820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959915, 31.427494, 32.775105>,  <44.750992, 31.399580, 32.889874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959915, 31.427494, 32.775105>,  <45.308121, 31.474016, 32.583820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959915, 31.427494, 32.775105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017361, 0.963813, 0.266013,
		-0.491843, 0.239869, -0.836991,
		-0.870511, -0.116305, 0.478209,
		44.698761, 31.392603, 32.918568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945004, 32.085163, 32.485279>,  <45.308121, 31.474016, 32.583820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945004, 32.085163, 32.485279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811630, 31.913853, 32.821232>,  <44.731606, 31.811066, 33.022804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811630, 31.913853, 32.821232>,  <44.945004, 32.085163, 32.485279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811630, 31.913853, 32.821232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069788, 0.899631, 0.431038,
		-0.940186, 0.085111, -0.329859,
		-0.333437, -0.428276, 0.839880,
		44.711597, 31.785370, 33.073196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520477, 32.520111, 32.680771>,  <44.945004, 32.085163, 32.485279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520477, 32.520111, 32.680771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572647, 32.308624, 33.016258>,  <44.603951, 32.181732, 33.217552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572647, 32.308624, 33.016258>,  <44.520477, 32.520111, 32.680771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572647, 32.308624, 33.016258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050798, 0.841269, 0.538225,
		-0.990156, -0.112804, 0.082866,
		0.130426, -0.528718, 0.838717,
		44.611774, 32.150009, 33.267872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040154, 32.859703, 33.229107>,  <44.520477, 32.520111, 32.680771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040154, 32.859703, 33.229107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327721, 32.654472, 33.416683>,  <44.500259, 32.531334, 33.529228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327721, 32.654472, 33.416683>,  <44.040154, 32.859703, 33.229107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327721, 32.654472, 33.416683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195631, 0.796724, 0.571803,
		-0.666998, -0.319340, 0.673154,
		0.718917, -0.513081, 0.468941,
		44.543396, 32.500549, 33.557365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919708, 33.092518, 33.956043>,  <44.040154, 32.859703, 33.229107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919708, 33.092518, 33.956043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290169, 32.945240, 33.923386>,  <44.512447, 32.856873, 33.903790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290169, 32.945240, 33.923386>,  <43.919708, 33.092518, 33.956043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290169, 32.945240, 33.923386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304307, 0.601685, 0.738493,
		-0.222785, -0.708806, 0.669299,
		0.926156, -0.368198, -0.081648,
		44.568016, 32.834782, 33.898891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125122, 33.063164, 34.561626>,  <43.919708, 33.092518, 33.956043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125122, 33.063164, 34.561626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471878, 33.041084, 34.363449>,  <44.679932, 33.027836, 34.244545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.471878, 33.041084, 34.363449>,  <44.125122, 33.063164, 34.561626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471878, 33.041084, 34.363449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325675, 0.815154, 0.479020,
		0.377416, -0.576608, 0.724625,
		0.866887, -0.055202, -0.495439,
		44.731945, 33.024525, 34.214817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676762, 33.070953, 35.079918>,  <44.125122, 33.063164, 34.561626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676762, 33.070953, 35.079918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829735, 33.191116, 34.730404>,  <44.921516, 33.263214, 34.520695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829735, 33.191116, 34.730404>,  <44.676762, 33.070953, 35.079918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829735, 33.191116, 34.730404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306432, 0.850919, 0.426657,
		0.871692, -0.430923, 0.233364,
		0.382430, 0.300404, -0.873788,
		44.944466, 33.281239, 34.468269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320957, 33.351421, 35.266132>,  <44.676762, 33.070953, 35.079918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320957, 33.351421, 35.266132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214085, 33.505280, 34.912712>,  <45.149960, 33.597595, 34.700661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214085, 33.505280, 34.912712>,  <45.320957, 33.351421, 35.266132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214085, 33.505280, 34.912712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163393, 0.921690, 0.351838,
		0.949692, -0.050360, -0.309110,
		-0.267185, 0.384644, -0.883550,
		45.133930, 33.620674, 34.647648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876591, 33.824509, 35.084148>,  <45.320957, 33.351421, 35.266132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876591, 33.824509, 35.084148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572357, 33.938786, 34.850948>,  <45.389816, 34.007351, 34.711029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572357, 33.938786, 34.850948>,  <45.876591, 33.824509, 35.084148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572357, 33.938786, 34.850948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119648, 0.944277, 0.306636,
		0.638117, 0.163469, -0.752387,
		-0.760587, 0.285691, -0.583000,
		45.344181, 34.024494, 34.676048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.109898, 34.490089, 34.909340>,  <45.876591, 33.824509, 35.084148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.109898, 34.490089, 34.909340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717556, 34.477959, 34.832394>,  <45.482151, 34.470680, 34.786224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717556, 34.477959, 34.832394>,  <46.109898, 34.490089, 34.909340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717556, 34.477959, 34.832394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110798, 0.899245, 0.423181,
		0.160150, 0.436393, -0.885389,
		-0.980855, -0.030327, -0.192365,
		45.423298, 34.468861, 34.774685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579872, 33.923096, 35.271641>,  <46.109898, 34.490089, 34.909340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579872, 33.923096, 35.271641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976173, 33.899929, 35.320732>,  <47.213955, 33.886028, 35.350185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976173, 33.899929, 35.320732>,  <46.579872, 33.923096, 35.271641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976173, 33.899929, 35.320732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128419, 0.692535, -0.709861,
		-0.043878, 0.719055, 0.693567,
		0.990749, -0.057920, 0.122727,
		47.273399, 33.882553, 35.357552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741093, 34.595024, 35.468170>,  <46.579872, 33.923096, 35.271641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.741093, 34.595024, 35.468170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.066944, 34.414913, 35.321945>,  <47.262455, 34.306847, 35.234211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.066944, 34.414913, 35.321945>,  <46.741093, 34.595024, 35.468170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.066944, 34.414913, 35.321945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111451, 0.740083, -0.663216,
		0.569179, 0.499530, 0.653074,
		0.814625, -0.450275, -0.365566,
		47.311333, 34.279831, 35.212276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.433556, 34.981476, 35.478157>,  <46.741093, 34.595024, 35.468170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.433556, 34.981476, 35.478157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405872, 34.724171, 35.173153>,  <47.389263, 34.569786, 34.990150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.405872, 34.724171, 35.173153>,  <47.433556, 34.981476, 35.478157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.405872, 34.724171, 35.173153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217929, 0.736131, -0.640794,
		0.973508, -0.210520, 0.089241,
		-0.069207, -0.643266, -0.762508,
		47.385109, 34.531189, 34.944401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.006760, 35.022408, 34.963760>,  <47.433556, 34.981476, 35.478157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.006760, 35.022408, 34.963760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661953, 34.914001, 34.792423>,  <47.455070, 34.848957, 34.689621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661953, 34.914001, 34.792423>,  <48.006760, 35.022408, 34.963760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.661953, 34.914001, 34.792423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084782, 0.756061, -0.648987,
		0.499743, -0.595752, -0.628758,
		-0.862015, -0.271019, -0.428345,
		47.403347, 34.832695, 34.663921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.030815, 34.415890, 47.413155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673004, 34.237095, 47.414608>,  <36.458317, 34.129818, 47.415482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673004, 34.237095, 47.414608>,  <37.030815, 34.415890, 47.413155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673004, 34.237095, 47.414608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107661, 0.207548, -0.972282,
		0.433848, -0.870128, -0.233781,
		-0.894531, -0.446992, 0.003635,
		36.404644, 34.102997, 47.415699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018585, 34.084896, 46.794323>,  <37.030815, 34.415890, 47.413155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018585, 34.084896, 46.794323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.624439, 34.098026, 46.861217>,  <36.387951, 34.105904, 46.901356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.624439, 34.098026, 46.861217>,  <37.018585, 34.084896, 46.794323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624439, 34.098026, 46.861217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166409, 0.026596, -0.985698,
		-0.036809, -0.999107, -0.020744,
		-0.985370, 0.032831, 0.167240,
		36.328827, 34.107876, 46.911388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682991, 33.555546, 46.288639>,  <37.018585, 34.084896, 46.794323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682991, 33.555546, 46.288639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.379768, 33.785801, 46.411266>,  <36.197834, 33.923954, 46.484844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.379768, 33.785801, 46.411266>,  <36.682991, 33.555546, 46.288639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379768, 33.785801, 46.411266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344758, 0.045328, -0.937597,
		-0.553616, -0.816445, 0.164096,
		-0.758058, 0.575641, 0.306570,
		36.152351, 33.958492, 46.503239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139442, 33.329468, 45.960342>,  <36.682991, 33.555546, 46.288639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139442, 33.329468, 45.960342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.028751, 33.700748, 46.059830>,  <35.962337, 33.923515, 46.119522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.028751, 33.700748, 46.059830>,  <36.139442, 33.329468, 45.960342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028751, 33.700748, 46.059830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313877, 0.157324, -0.936339,
		-0.908242, -0.337179, 0.247806,
		-0.276728, 0.928203, 0.248721,
		35.945732, 33.979210, 46.134445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489105, 33.438194, 45.638817>,  <36.139442, 33.329468, 45.960342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489105, 33.438194, 45.638817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641937, 33.799717, 45.715912>,  <35.733635, 34.016632, 45.762169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.641937, 33.799717, 45.715912>,  <35.489105, 33.438194, 45.638817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641937, 33.799717, 45.715912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040102, 0.224584, -0.973629,
		-0.923259, 0.364274, 0.122053,
		0.382079, 0.903807, 0.192741,
		35.756561, 34.070858, 45.773735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937023, 33.798401, 45.397739>,  <35.489105, 33.438194, 45.638817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937023, 33.798401, 45.397739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.270630, 34.018723, 45.384888>,  <35.470795, 34.150913, 45.377178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.270630, 34.018723, 45.384888>,  <34.937023, 33.798401, 45.397739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270630, 34.018723, 45.384888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150064, 0.170417, -0.973878,
		-0.530936, 0.817054, 0.224786,
		0.834019, 0.550800, -0.032130,
		35.520836, 34.183964, 45.375248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839096, 34.517246, 45.106091>,  <34.937023, 33.798401, 45.397739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839096, 34.517246, 45.106091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222496, 34.420815, 45.045227>,  <35.452538, 34.362957, 45.008709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222496, 34.420815, 45.045227>,  <34.839096, 34.517246, 45.106091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222496, 34.420815, 45.045227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065173, 0.334293, -0.940213,
		0.277531, 0.911114, 0.304710,
		0.958504, -0.241079, -0.152157,
		35.510048, 34.348492, 44.999580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064774, 35.101322, 44.899323>,  <34.839096, 34.517246, 45.106091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064774, 35.101322, 44.899323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.315189, 34.807915, 44.793468>,  <35.465439, 34.631870, 44.729958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.315189, 34.807915, 44.793468>,  <35.064774, 35.101322, 44.899323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315189, 34.807915, 44.793468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064922, 0.289156, -0.955078,
		0.777087, 0.615093, 0.133401,
		0.626036, -0.733518, -0.264633,
		35.502998, 34.587860, 44.714077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333923, 35.357117, 44.354214>,  <35.064774, 35.101322, 44.899323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333923, 35.357117, 44.354214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445297, 34.976913, 44.299080>,  <35.512123, 34.748791, 44.265999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445297, 34.976913, 44.299080>,  <35.333923, 35.357117, 44.354214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445297, 34.976913, 44.299080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071304, 0.163572, -0.983951,
		0.957804, 0.264142, 0.113320,
		0.278439, -0.950512, -0.137836,
		35.528828, 34.691761, 44.257729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677448, 35.487377, 43.775814>,  <35.333923, 35.357117, 44.354214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677448, 35.487377, 43.775814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671154, 35.090614, 43.826199>,  <35.667377, 34.852554, 43.856430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671154, 35.090614, 43.826199>,  <35.677448, 35.487377, 43.775814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671154, 35.090614, 43.826199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184765, -0.126690, -0.974583,
		0.982657, 0.007939, 0.185264,
		-0.015734, -0.991911, 0.125959,
		35.666435, 34.793041, 43.863987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316795, 35.134407, 43.570442>,  <35.677448, 35.487377, 43.775814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316795, 35.134407, 43.570442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.007980, 34.891117, 43.496666>,  <35.822693, 34.745144, 43.452400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.007980, 34.891117, 43.496666>,  <36.316795, 35.134407, 43.570442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007980, 34.891117, 43.496666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153401, 0.103304, -0.982749,
		0.616790, -0.787011, 0.013548,
		-0.772035, -0.608228, -0.184445,
		35.776371, 34.708649, 43.441334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638699, 34.764034, 43.039452>,  <36.316795, 35.134407, 43.570442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638699, 34.764034, 43.039452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245628, 34.691055, 43.026379>,  <36.009789, 34.647266, 43.018536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245628, 34.691055, 43.026379>,  <36.638699, 34.764034, 43.039452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245628, 34.691055, 43.026379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021861, 0.061014, -0.997897,
		0.184061, -0.981320, -0.055968,
		-0.982672, -0.182451, -0.032683,
		35.950829, 34.636322, 43.016575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516918, 34.138020, 42.596535>,  <36.638699, 34.764034, 43.039452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516918, 34.138020, 42.596535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158237, 34.313648, 42.618992>,  <35.943031, 34.419025, 42.632465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158237, 34.313648, 42.618992>,  <36.516918, 34.138020, 42.596535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158237, 34.313648, 42.618992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082537, -0.041235, -0.995735,
		-0.434882, -0.897506, 0.073214,
		-0.896697, 0.439070, 0.056145,
		35.889229, 34.445370, 42.635834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047184, 33.726410, 42.102489>,  <36.516918, 34.138020, 42.596535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047184, 33.726410, 42.102489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894932, 34.092525, 42.155197>,  <35.803581, 34.312195, 42.186821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894932, 34.092525, 42.155197>,  <36.047184, 33.726410, 42.102489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894932, 34.092525, 42.155197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234067, 0.042491, -0.971291,
		-0.894613, -0.400546, 0.198067,
		-0.380631, 0.915291, 0.131767,
		35.780743, 34.367111, 42.194729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538563, 33.706944, 41.703518>,  <36.047184, 33.726410, 42.102489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538563, 33.706944, 41.703518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574795, 34.102974, 41.746502>,  <35.596535, 34.340591, 41.772293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574795, 34.102974, 41.746502>,  <35.538563, 33.706944, 41.703518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574795, 34.102974, 41.746502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034136, 0.110928, -0.993242,
		-0.995304, 0.086301, 0.043845,
		0.090581, 0.990074, 0.107461,
		35.601971, 34.399998, 41.778740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003727, 34.052319, 41.369183>,  <35.538563, 33.706944, 41.703518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003727, 34.052319, 41.369183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306061, 34.314178, 41.364155>,  <35.487461, 34.471294, 41.361137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306061, 34.314178, 41.364155>,  <35.003727, 34.052319, 41.369183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306061, 34.314178, 41.364155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050751, 0.039429, -0.997933,
		-0.652798, 0.754906, 0.063025,
		0.755830, 0.654647, -0.012573,
		35.532810, 34.510574, 41.360382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888550, 34.456024, 40.783257>,  <35.003727, 34.052319, 41.369183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888550, 34.456024, 40.783257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272709, 34.539406, 40.857212>,  <35.503204, 34.589436, 40.901585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.272709, 34.539406, 40.857212>,  <34.888550, 34.456024, 40.783257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272709, 34.539406, 40.857212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182954, 0.028714, -0.982702,
		-0.210159, 0.977610, -0.010561,
		0.960396, 0.208455, 0.184892,
		35.560829, 34.601944, 40.912682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100288, 34.721569, 40.256935>,  <34.888550, 34.456024, 40.783257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100288, 34.721569, 40.256935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.464413, 34.646336, 40.404423>,  <35.682888, 34.601196, 40.492916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.464413, 34.646336, 40.404423>,  <35.100288, 34.721569, 40.256935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464413, 34.646336, 40.404423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342267, -0.158910, -0.926067,
		0.232773, 0.969212, -0.080282,
		0.910313, -0.188085, 0.368719,
		35.737507, 34.589909, 40.515038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471294, 35.002811, 39.758575>,  <35.100288, 34.721569, 40.256935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471294, 35.002811, 39.758575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.727257, 34.760914, 39.948227>,  <35.880836, 34.615776, 40.062019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.727257, 34.760914, 39.948227>,  <35.471294, 35.002811, 39.758575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727257, 34.760914, 39.948227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401153, -0.263365, -0.877334,
		0.655432, 0.751614, 0.074065,
		0.639910, -0.604744, 0.474130,
		35.919231, 34.579491, 40.090466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100838, 35.249546, 39.513317>,  <35.471294, 35.002811, 39.758575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100838, 35.249546, 39.513317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.164112, 34.874878, 39.638294>,  <36.202076, 34.650078, 39.713280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.164112, 34.874878, 39.638294>,  <36.100838, 35.249546, 39.513317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164112, 34.874878, 39.638294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409494, -0.225701, -0.883954,
		0.898494, 0.267772, 0.347859,
		0.158186, -0.936673, 0.312442,
		36.211567, 34.593876, 39.732025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773499, 35.103588, 39.241676>,  <36.100838, 35.249546, 39.513317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773499, 35.103588, 39.241676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.608418, 34.748844, 39.324764>,  <36.509369, 34.535995, 39.374619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.608418, 34.748844, 39.324764>,  <36.773499, 35.103588, 39.241676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608418, 34.748844, 39.324764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330522, -0.358313, -0.873136,
		0.848782, -0.291692, 0.441006,
		-0.412705, -0.886864, 0.207719,
		36.484608, 34.482784, 39.387081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226120, 34.533085, 39.167126>,  <36.773499, 35.103588, 39.241676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226120, 34.533085, 39.167126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851357, 34.413429, 39.094772>,  <36.626499, 34.341637, 39.051361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851357, 34.413429, 39.094772>,  <37.226120, 34.533085, 39.167126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851357, 34.413429, 39.094772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271464, -0.296585, -0.915612,
		0.220252, -0.906946, 0.359079,
		-0.936908, -0.299142, -0.180880,
		36.570286, 34.323689, 39.040508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713745, 34.821442, 39.680656>,  <37.226120, 34.533085, 39.167126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713745, 34.821442, 39.680656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900742, 35.157909, 39.571934>,  <38.012939, 35.359791, 39.506699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900742, 35.157909, 39.571934>,  <37.713745, 34.821442, 39.680656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900742, 35.157909, 39.571934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333016, 0.117247, 0.935603,
		0.818872, -0.527904, -0.225311,
		0.467492, 0.841172, -0.271811,
		38.040989, 35.410259, 39.490391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282608, 34.787033, 40.036877>,  <37.713745, 34.821442, 39.680656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282608, 34.787033, 40.036877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.358978, 35.162365, 39.921581>,  <38.404800, 35.387566, 39.852402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.358978, 35.162365, 39.921581>,  <38.282608, 34.787033, 40.036877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358978, 35.162365, 39.921581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487099, 0.164374, 0.857739,
		0.852222, -0.304164, -0.425678,
		0.190923, 0.938331, -0.288241,
		38.416256, 35.443863, 39.835110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965748, 34.920593, 40.127159>,  <38.282608, 34.787033, 40.036877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965748, 34.920593, 40.127159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.776745, 35.272705, 40.144310>,  <38.663342, 35.483974, 40.154598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.776745, 35.272705, 40.144310>,  <38.965748, 34.920593, 40.127159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776745, 35.272705, 40.144310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569196, 0.267665, 0.777413,
		0.672866, 0.391740, -0.627527,
		-0.472511, 0.880281, 0.042874,
		38.634991, 35.536789, 40.157173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528870, 35.265785, 40.212856>,  <38.965748, 34.920593, 40.127159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528870, 35.265785, 40.212856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.222668, 35.505833, 40.305695>,  <39.038948, 35.649860, 40.361397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.222668, 35.505833, 40.305695>,  <39.528870, 35.265785, 40.212856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222668, 35.505833, 40.305695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494140, 0.317273, 0.809422,
		0.412109, 0.734302, -0.539414,
		-0.765501, 0.600116, 0.232097,
		38.993019, 35.685867, 40.375324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932613, 35.834538, 40.468998>,  <39.528870, 35.265785, 40.212856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932613, 35.834538, 40.468998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.556644, 35.834373, 40.605549>,  <39.331062, 35.834274, 40.687481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.556644, 35.834373, 40.605549>,  <39.932613, 35.834538, 40.468998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556644, 35.834373, 40.605549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337418, 0.150779, 0.929201,
		-0.051855, 0.988567, -0.141582,
		-0.939925, -0.000411, 0.341380,
		39.274666, 35.834251, 40.707962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979801, 36.204670, 41.112148>,  <39.932613, 35.834538, 40.468998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979801, 36.204670, 41.112148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.608387, 36.064789, 41.161991>,  <39.385540, 35.980862, 41.191895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.608387, 36.064789, 41.161991>,  <39.979801, 36.204670, 41.112148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608387, 36.064789, 41.161991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063971, 0.179903, 0.981602,
		-0.365687, 0.919425, -0.144676,
		-0.928537, -0.349704, 0.124605,
		39.329826, 35.959877, 41.199371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739498, 36.550213, 41.673157>,  <39.979801, 36.204670, 41.112148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739498, 36.550213, 41.673157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.468388, 36.257385, 41.645729>,  <39.305721, 36.081688, 41.629272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.468388, 36.257385, 41.645729>,  <39.739498, 36.550213, 41.673157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468388, 36.257385, 41.645729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031585, -0.064187, 0.997438,
		-0.734592, 0.678203, 0.020382,
		-0.677774, -0.732066, -0.068573,
		39.265057, 36.037766, 41.625156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194256, 36.696358, 42.058277>,  <39.739498, 36.550213, 41.673157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194256, 36.696358, 42.058277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202190, 36.296932, 42.038380>,  <39.206951, 36.057278, 42.026440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202190, 36.296932, 42.038380>,  <39.194256, 36.696358, 42.058277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202190, 36.296932, 42.038380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172572, -0.052427, 0.983601,
		-0.984797, -0.010926, -0.173364,
		0.019836, -0.998565, -0.049744,
		39.208141, 35.997364, 42.023457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653839, 36.410343, 42.521015>,  <39.194256, 36.696358, 42.058277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653839, 36.410343, 42.521015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.897278, 36.097183, 42.469353>,  <39.043343, 35.909286, 42.438354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.897278, 36.097183, 42.469353>,  <38.653839, 36.410343, 42.521015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897278, 36.097183, 42.469353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209900, -0.315816, 0.925312,
		-0.765211, -0.536036, -0.356535,
		0.608600, -0.782895, -0.129152,
		39.079857, 35.862316, 42.430607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247589, 35.825718, 42.775154>,  <38.653839, 36.410343, 42.521015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247589, 35.825718, 42.775154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630909, 35.713352, 42.754177>,  <38.860901, 35.645935, 42.741592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630909, 35.713352, 42.754177>,  <38.247589, 35.825718, 42.775154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630909, 35.713352, 42.754177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078355, -0.434776, 0.897123,
		-0.274812, -0.855604, -0.438657,
		0.958300, -0.280911, -0.052441,
		38.918400, 35.629078, 42.738445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245392, 35.129936, 43.060890>,  <38.247589, 35.825718, 42.775154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245392, 35.129936, 43.060890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615227, 35.278728, 43.093822>,  <38.837128, 35.368004, 43.113583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615227, 35.278728, 43.093822>,  <38.245392, 35.129936, 43.060890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615227, 35.278728, 43.093822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039157, -0.307744, 0.950663,
		0.378962, -0.875743, -0.299101,
		0.924584, 0.371978, 0.082332,
		38.892601, 35.390324, 43.118523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751648, 34.536060, 43.128410>,  <38.245392, 35.129936, 43.060890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751648, 34.536060, 43.128410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.910347, 34.869282, 43.282612>,  <39.005566, 35.069214, 43.375134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.910347, 34.869282, 43.282612>,  <38.751648, 34.536060, 43.128410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910347, 34.869282, 43.282612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171328, -0.479799, 0.860488,
		0.901798, -0.275346, -0.333084,
		0.396745, 0.833053, 0.385507,
		39.029369, 35.119198, 43.398266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171028, 34.293736, 43.595123>,  <38.751648, 34.536060, 43.128410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171028, 34.293736, 43.595123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.182953, 34.674370, 43.717499>,  <39.190109, 34.902748, 43.790924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.182953, 34.674370, 43.717499>,  <39.171028, 34.293736, 43.595123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182953, 34.674370, 43.717499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052159, -0.307141, 0.950234,
		0.998194, -0.012374, -0.058791,
		0.029815, 0.951584, 0.305941,
		39.191898, 34.959846, 43.809280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738453, 34.420963, 43.992939>,  <39.171028, 34.293736, 43.595123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738453, 34.420963, 43.992939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.444073, 34.669434, 44.100651>,  <39.267445, 34.818516, 44.165279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.444073, 34.669434, 44.100651>,  <39.738453, 34.420963, 43.992939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444073, 34.669434, 44.100651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021168, -0.376433, 0.926202,
		0.676703, 0.687340, 0.263887,
		-0.735952, 0.621178, 0.269283,
		39.223286, 34.855785, 44.181435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046036, 34.693844, 44.590183>,  <39.738453, 34.420963, 43.992939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046036, 34.693844, 44.590183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.664764, 34.812565, 44.613392>,  <39.436001, 34.883797, 44.627316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.664764, 34.812565, 44.613392>,  <40.046036, 34.693844, 44.590183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664764, 34.812565, 44.613392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010343, -0.223728, 0.974597,
		0.302241, 0.928362, 0.216322,
		-0.953175, 0.296800, 0.058018,
		39.378811, 34.901604, 44.630798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987339, 34.866096, 45.287498>,  <40.046036, 34.693844, 44.590183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987339, 34.866096, 45.287498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.597469, 34.874653, 45.198463>,  <39.363548, 34.879787, 45.145042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.597469, 34.874653, 45.198463>,  <39.987339, 34.866096, 45.287498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597469, 34.874653, 45.198463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219430, -0.283127, 0.933643,
		-0.043045, 0.958844, 0.280652,
		-0.974678, 0.021395, -0.222587,
		39.305065, 34.881073, 45.131687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710316, 35.311661, 45.763256>,  <39.987339, 34.866096, 45.287498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710316, 35.311661, 45.763256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.431366, 35.063007, 45.620575>,  <39.263996, 34.913815, 45.534966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.431366, 35.063007, 45.620575>,  <39.710316, 35.311661, 45.763256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431366, 35.063007, 45.620575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127021, -0.382613, 0.915136,
		-0.705360, 0.683501, 0.187864,
		-0.697375, -0.621638, -0.356699,
		39.222153, 34.876514, 45.513565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189655, 35.398655, 46.169323>,  <39.710316, 35.311661, 45.763256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189655, 35.398655, 46.169323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109947, 35.034519, 46.024235>,  <39.062122, 34.816036, 45.937180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.109947, 35.034519, 46.024235>,  <39.189655, 35.398655, 46.169323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109947, 35.034519, 46.024235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069433, -0.356101, 0.931864,
		-0.977481, 0.210883, 0.007754,
		-0.199275, -0.910341, -0.362724,
		39.050163, 34.761417, 45.915417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.636509, 35.173500, 46.571411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773064, 34.829086, 46.420639>,  <38.854996, 34.622437, 46.330177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773064, 34.829086, 46.420639>,  <38.636509, 35.173500, 46.571411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773064, 34.829086, 46.420639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271796, -0.474318, 0.837346,
		-0.899769, -0.183409, -0.395951,
		0.341384, -0.861036, -0.376927,
		38.875481, 34.570774, 46.307560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102768, 34.734829, 46.821869>,  <38.636509, 35.173500, 46.571411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102768, 34.734829, 46.821869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434429, 34.529137, 46.734173>,  <38.633427, 34.405724, 46.681553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434429, 34.529137, 46.734173>,  <38.102768, 34.734829, 46.821869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434429, 34.529137, 46.734173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007172, -0.401951, 0.915633,
		-0.558970, -0.757631, -0.336968,
		0.829157, -0.514228, -0.219245,
		38.683178, 34.374866, 46.668400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901108, 34.161774, 47.281227>,  <38.102768, 34.734829, 46.821869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901108, 34.161774, 47.281227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.287697, 34.152763, 47.178909>,  <38.519650, 34.147358, 47.117519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.287697, 34.152763, 47.178909>,  <37.901108, 34.161774, 47.281227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287697, 34.152763, 47.178909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203913, -0.538116, 0.817833,
		-0.156070, -0.842570, -0.515479,
		0.966469, -0.022526, -0.255795,
		38.577637, 34.146004, 47.102169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131897, 33.478966, 47.519268>,  <37.901108, 34.161774, 47.281227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131897, 33.478966, 47.519268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459232, 33.696938, 47.446198>,  <38.655636, 33.827721, 47.402355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459232, 33.696938, 47.446198>,  <38.131897, 33.478966, 47.519268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459232, 33.696938, 47.446198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428446, -0.366556, 0.825876,
		0.383084, -0.754114, -0.533441,
		0.818340, 0.544930, -0.182676,
		38.704735, 33.860416, 47.391396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662319, 33.023903, 47.537045>,  <38.131897, 33.478966, 47.519268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662319, 33.023903, 47.537045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808151, 33.381496, 47.641258>,  <38.895653, 33.596050, 47.703785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808151, 33.381496, 47.641258>,  <38.662319, 33.023903, 47.537045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808151, 33.381496, 47.641258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522347, -0.427972, 0.737559,
		0.770865, -0.132810, -0.622999,
		0.364582, 0.893981, 0.260536,
		38.917526, 33.649689, 47.719418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325115, 32.939434, 47.683468>,  <38.662319, 33.023903, 47.537045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325115, 32.939434, 47.683468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247379, 33.284843, 47.869610>,  <39.200737, 33.492088, 47.981297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247379, 33.284843, 47.869610>,  <39.325115, 32.939434, 47.683468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247379, 33.284843, 47.869610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376796, -0.372293, 0.848188,
		0.905680, 0.340185, -0.253019,
		-0.194344, 0.863523, 0.465358,
		39.189075, 33.543900, 48.009216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838783, 32.971180, 48.224255>,  <39.325115, 32.939434, 47.683468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838783, 32.971180, 48.224255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.547604, 33.219910, 48.339790>,  <39.372894, 33.369148, 48.409111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.547604, 33.219910, 48.339790>,  <39.838783, 32.971180, 48.224255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547604, 33.219910, 48.339790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075102, -0.346420, 0.935069,
		0.681504, 0.702376, 0.205477,
		-0.727951, 0.621821, 0.288836,
		39.329220, 33.406456, 48.426441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058132, 33.349262, 48.931763>,  <39.838783, 32.971180, 48.224255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058132, 33.349262, 48.931763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.659332, 33.374268, 48.913540>,  <39.420052, 33.389271, 48.902607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.659332, 33.374268, 48.913540>,  <40.058132, 33.349262, 48.931763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659332, 33.374268, 48.913540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063060, -0.315717, 0.946756,
		0.044802, 0.946792, 0.318713,
		-0.997004, 0.062514, -0.045560,
		39.360229, 33.393021, 48.899872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898853, 33.692890, 49.559238>,  <40.058132, 33.349262, 48.931763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898853, 33.692890, 49.559238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.571247, 33.501419, 49.432697>,  <39.374683, 33.386536, 49.356773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.571247, 33.501419, 49.432697>,  <39.898853, 33.692890, 49.559238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571247, 33.501419, 49.432697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209237, -0.264213, 0.941494,
		-0.534260, 0.837291, 0.116236,
		-0.819016, -0.478682, -0.316350,
		39.325542, 33.357815, 49.337791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447113, 33.831993, 50.083355>,  <39.898853, 33.692890, 49.559238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447113, 33.831993, 50.083355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300835, 33.517269, 49.884483>,  <39.213066, 33.328434, 49.765160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300835, 33.517269, 49.884483>,  <39.447113, 33.831993, 50.083355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300835, 33.517269, 49.884483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157228, -0.474280, 0.866220,
		-0.917358, 0.394944, 0.049734,
		-0.365697, -0.786815, -0.497181,
		39.191124, 33.281223, 49.735329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882439, 33.728645, 50.353256>,  <39.447113, 33.831993, 50.083355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882439, 33.728645, 50.353256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971706, 33.373436, 50.192451>,  <39.025269, 33.160309, 50.095970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971706, 33.373436, 50.192451>,  <38.882439, 33.728645, 50.353256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971706, 33.373436, 50.192451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152835, -0.439187, 0.885300,
		-0.962724, -0.136129, -0.233733,
		0.223168, -0.888023, -0.402010,
		39.038658, 33.107029, 50.071850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492702, 33.309105, 50.783939>,  <38.882439, 33.728645, 50.353256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492702, 33.309105, 50.783939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.733978, 33.045269, 50.604565>,  <38.878746, 32.886967, 50.496941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.733978, 33.045269, 50.604565>,  <38.492702, 33.309105, 50.783939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733978, 33.045269, 50.604565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103868, -0.492487, 0.864100,
		-0.790803, -0.567797, -0.228555,
		0.603194, -0.659593, -0.448436,
		38.914936, 32.847393, 50.470036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376202, 32.538666, 51.044182>,  <38.492702, 33.309105, 50.783939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376202, 32.538666, 51.044182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.732689, 32.516674, 50.864090>,  <38.946583, 32.503479, 50.756035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.732689, 32.516674, 50.864090>,  <38.376202, 32.538666, 51.044182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732689, 32.516674, 50.864090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314991, -0.639188, 0.701584,
		-0.326353, -0.767083, -0.552338,
		0.891221, -0.054983, -0.450225,
		39.000053, 32.500179, 50.729023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515980, 31.750320, 50.813805>,  <38.376202, 32.538666, 51.044182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515980, 31.750320, 50.813805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851742, 31.958542, 50.876308>,  <39.053200, 32.083473, 50.913811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851742, 31.958542, 50.876308>,  <38.515980, 31.750320, 50.813805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851742, 31.958542, 50.876308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331448, -0.718147, 0.611888,
		0.430738, -0.461832, -0.775355,
		0.839409, 0.520553, 0.156260,
		39.103565, 32.114708, 50.923187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069553, 31.267729, 50.717449>,  <38.515980, 31.750320, 50.813805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069553, 31.267729, 50.717449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244602, 31.549044, 50.941547>,  <39.349632, 31.717833, 51.076004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244602, 31.549044, 50.941547>,  <39.069553, 31.267729, 50.717449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244602, 31.549044, 50.941547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427096, -0.710888, 0.558774,
		0.791247, -0.005257, -0.611474,
		0.437626, 0.703286, 0.560243,
		39.375889, 31.760029, 51.109619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832600, 31.029442, 50.791645>,  <39.069553, 31.267729, 50.717449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832600, 31.029442, 50.791645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.737648, 31.288769, 51.081013>,  <39.680676, 31.444365, 51.254635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.737648, 31.288769, 51.081013>,  <39.832600, 31.029442, 50.791645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737648, 31.288769, 51.081013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369762, -0.628342, 0.684443,
		0.898291, 0.429965, -0.090568,
		-0.237379, 0.648318, 0.723419,
		39.666435, 31.483265, 51.298038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476021, 31.034548, 51.254707>,  <39.832600, 31.029442, 50.791645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476021, 31.034548, 51.254707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182735, 31.216436, 51.456947>,  <40.006763, 31.325569, 51.578289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182735, 31.216436, 51.456947>,  <40.476021, 31.034548, 51.254707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182735, 31.216436, 51.456947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296800, -0.454958, 0.839597,
		0.611809, 0.765663, 0.198619,
		-0.733211, 0.454723, 0.505596,
		39.962772, 31.352854, 51.608627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829781, 31.115669, 51.838230>,  <40.476021, 31.034548, 51.254707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829781, 31.115669, 51.838230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.464455, 31.210211, 51.970894>,  <40.245258, 31.266935, 52.050491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.464455, 31.210211, 51.970894>,  <40.829781, 31.115669, 51.838230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464455, 31.210211, 51.970894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185209, -0.484230, 0.855113,
		0.362707, 0.842412, 0.398479,
		-0.913313, 0.236354, 0.331656,
		40.190460, 31.281116, 52.070389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883965, 31.355291, 52.537373>,  <40.829781, 31.115669, 51.838230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883965, 31.355291, 52.537373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.505348, 31.229584, 52.508278>,  <40.278179, 31.154160, 52.490822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.505348, 31.229584, 52.508278>,  <40.883965, 31.355291, 52.537373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505348, 31.229584, 52.508278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103419, -0.509234, 0.854392,
		-0.305548, 0.801197, 0.514513,
		-0.946544, -0.314268, -0.072736,
		40.221386, 31.135303, 52.486458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493137, 31.478239, 53.267685>,  <40.883965, 31.355291, 52.537373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493137, 31.478239, 53.267685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.322865, 31.190868, 53.047626>,  <40.220703, 31.018446, 52.915592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.322865, 31.190868, 53.047626>,  <40.493137, 31.478239, 53.267685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322865, 31.190868, 53.047626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015019, -0.613509, 0.789545,
		-0.904749, 0.327831, 0.271948,
		-0.425680, -0.718424, -0.550148,
		40.195160, 30.975342, 52.882584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981182, 31.263409, 53.627975>,  <40.493137, 31.478239, 53.267685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981182, 31.263409, 53.627975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.027580, 30.943768, 53.392017>,  <40.055420, 30.751984, 53.250443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.027580, 30.943768, 53.392017>,  <39.981182, 31.263409, 53.627975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027580, 30.943768, 53.392017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029363, -0.590890, 0.806217,
		-0.992816, -0.110836, -0.045075,
		0.115993, -0.799102, -0.589900,
		40.062378, 30.704037, 53.215046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477329, 30.868614, 53.832069>,  <39.981182, 31.263409, 53.627975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477329, 30.868614, 53.832069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776619, 30.664660, 53.662281>,  <39.956192, 30.542286, 53.560410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.776619, 30.664660, 53.662281>,  <39.477329, 30.868614, 53.832069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776619, 30.664660, 53.662281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090342, -0.555534, 0.826571,
		-0.657267, -0.656808, -0.369600,
		0.748224, -0.509887, -0.424472,
		40.001087, 30.511694, 53.534939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893970, 30.726099, 54.246632>,  <39.477329, 30.868614, 53.832069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893970, 30.726099, 54.246632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132359, 30.405069, 54.257160>,  <39.275391, 30.212452, 54.263477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132359, 30.405069, 54.257160>,  <38.893970, 30.726099, 54.246632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132359, 30.405069, 54.257160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060746, 0.077749, 0.995121,
		-0.800707, -0.591461, 0.095089,
		0.595968, -0.802576, 0.026325,
		39.311150, 30.164297, 54.265057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583969, 30.303888, 54.694653>,  <38.893970, 30.726099, 54.246632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583969, 30.303888, 54.694653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.974487, 30.217312, 54.695469>,  <39.208797, 30.165365, 54.695957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.974487, 30.217312, 54.695469>,  <38.583969, 30.303888, 54.694653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974487, 30.217312, 54.695469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016069, 0.081868, 0.996514,
		-0.215854, -0.972857, 0.083405,
		0.976294, -0.216442, 0.002039,
		39.267376, 30.152380, 54.696079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836349, 30.515133, 54.717178>,  <38.583969, 30.303888, 54.694653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836349, 30.515133, 54.717178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462200, 30.402500, 54.802761>,  <37.237709, 30.334921, 54.854111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462200, 30.402500, 54.802761>,  <37.836349, 30.515133, 54.717178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462200, 30.402500, 54.802761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327510, 0.461436, -0.824508,
		0.133437, -0.841301, -0.523838,
		-0.935378, -0.281583, 0.213962,
		37.181587, 30.318026, 54.866951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574547, 30.013866, 54.241978>,  <37.836349, 30.515133, 54.717178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574547, 30.013866, 54.241978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.250298, 30.205006, 54.377361>,  <37.055748, 30.319689, 54.458591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.250298, 30.205006, 54.377361>,  <37.574547, 30.013866, 54.241978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250298, 30.205006, 54.377361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247556, 0.244148, -0.937607,
		-0.530669, -0.843831, -0.079617,
		-0.810621, 0.477850, 0.338458,
		37.007111, 30.348360, 54.478897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064018, 29.958195, 53.718628>,  <37.574547, 30.013866, 54.241978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064018, 29.958195, 53.718628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.907902, 30.252472, 53.940052>,  <36.814232, 30.429039, 54.072906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.907902, 30.252472, 53.940052>,  <37.064018, 29.958195, 53.718628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907902, 30.252472, 53.940052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197494, 0.520348, -0.830803,
		-0.899260, -0.433580, -0.057792,
		-0.390292, 0.735694, 0.553558,
		36.790813, 30.473181, 54.106121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294483, 29.954094, 53.554302>,  <37.064018, 29.958195, 53.718628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294483, 29.954094, 53.554302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419674, 30.303864, 53.702587>,  <36.494789, 30.513725, 53.791557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419674, 30.303864, 53.702587>,  <36.294483, 29.954094, 53.554302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419674, 30.303864, 53.702587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274436, 0.456932, -0.846108,
		-0.909247, 0.163075, 0.382983,
		0.312976, 0.874425, 0.370710,
		36.513565, 30.566191, 53.813801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715546, 30.352812, 53.345425>,  <36.294483, 29.954094, 53.554302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715546, 30.352812, 53.345425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017632, 30.592499, 53.451694>,  <36.198883, 30.736311, 53.515457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017632, 30.592499, 53.451694>,  <35.715546, 30.352812, 53.345425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017632, 30.592499, 53.451694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231106, 0.622712, -0.747542,
		-0.613383, 0.503156, 0.608765,
		0.755216, 0.599219, 0.265678,
		36.244198, 30.772264, 53.531399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340179, 31.018984, 53.281708>,  <35.715546, 30.352812, 53.345425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340179, 31.018984, 53.281708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737236, 31.062122, 53.259651>,  <35.975468, 31.088005, 53.246418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737236, 31.062122, 53.259651>,  <35.340179, 31.018984, 53.281708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737236, 31.062122, 53.259651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100158, 0.474826, -0.874362,
		-0.068115, 0.873447, 0.482132,
		0.992637, 0.107846, -0.055140,
		36.035027, 31.094477, 53.243111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507317, 31.773962, 53.184486>,  <35.340179, 31.018984, 53.281708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507317, 31.773962, 53.184486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816513, 31.562880, 53.043629>,  <36.002033, 31.436230, 52.959114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816513, 31.562880, 53.043629>,  <35.507317, 31.773962, 53.184486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816513, 31.562880, 53.043629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073326, 0.477038, -0.875818,
		0.630162, 0.702823, 0.330053,
		0.772993, -0.527706, -0.352147,
		36.048412, 31.404568, 52.937984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911430, 32.264217, 52.761314>,  <35.507317, 31.773962, 53.184486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911430, 32.264217, 52.761314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.999805, 31.892384, 52.643288>,  <36.052830, 31.669285, 52.572472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.999805, 31.892384, 52.643288>,  <35.911430, 32.264217, 52.761314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999805, 31.892384, 52.643288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106482, 0.277746, -0.954735,
		0.969458, 0.242356, -0.037620,
		0.220937, -0.929581, -0.295070,
		36.066086, 31.613510, 52.554768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397602, 32.346699, 52.235634>,  <35.911430, 32.264217, 52.761314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397602, 32.346699, 52.235634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.270943, 31.971390, 52.179951>,  <36.194946, 31.746204, 52.146542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.270943, 31.971390, 52.179951>,  <36.397602, 32.346699, 52.235634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270943, 31.971390, 52.179951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066778, 0.168442, -0.983447,
		0.946190, -0.302112, -0.115992,
		-0.316649, -0.938273, -0.139203,
		36.175949, 31.689907, 52.138191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119110, 32.457111, 51.715385>,  <36.397602, 32.346699, 52.235634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119110, 32.457111, 51.715385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951355, 32.162754, 51.502754>,  <36.850700, 31.986139, 51.375175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951355, 32.162754, 51.502754>,  <37.119110, 32.457111, 51.715385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951355, 32.162754, 51.502754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218349, 0.486602, -0.845897,
		0.881157, -0.470828, -0.043393,
		-0.419387, -0.735894, -0.531577,
		36.825539, 31.941986, 51.343281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599380, 32.341808, 51.134979>,  <37.119110, 32.457111, 51.715385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599380, 32.341808, 51.134979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.242485, 32.199577, 51.023647>,  <37.028347, 32.114239, 50.956848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.242485, 32.199577, 51.023647>,  <37.599380, 32.341808, 51.134979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242485, 32.199577, 51.023647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169612, 0.307342, -0.936361,
		0.418496, -0.882668, -0.213912,
		-0.892240, -0.355582, -0.278333,
		36.974812, 32.092903, 50.940147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660076, 31.963375, 50.527695>,  <37.599380, 32.341808, 51.134979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660076, 31.963375, 50.527695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274651, 32.069862, 50.517384>,  <37.043396, 32.133755, 50.511196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274651, 32.069862, 50.517384>,  <37.660076, 31.963375, 50.527695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274651, 32.069862, 50.517384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091496, 0.237541, -0.967059,
		-0.251327, -0.934185, -0.253245,
		-0.963568, 0.266219, -0.025774,
		36.985580, 32.149727, 50.509651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395462, 31.587900, 49.940781>,  <37.660076, 31.963375, 50.527695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395462, 31.587900, 49.940781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145275, 31.886129, 50.032791>,  <36.995163, 32.065067, 50.087997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.145275, 31.886129, 50.032791>,  <37.395462, 31.587900, 49.940781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145275, 31.886129, 50.032791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018654, 0.309011, -0.950875,
		-0.780029, -0.590449, -0.207184,
		-0.625465, 0.745575, 0.230023,
		36.957634, 32.109802, 50.101799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901199, 31.572292, 49.370892>,  <37.395462, 31.587900, 49.940781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901199, 31.572292, 49.370892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845295, 31.933140, 49.534180>,  <36.811752, 32.149651, 49.632153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.845295, 31.933140, 49.534180>,  <36.901199, 31.572292, 49.370892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845295, 31.933140, 49.534180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345850, 0.341831, -0.873807,
		-0.927823, -0.263306, 0.264225,
		-0.139758, 0.902121, 0.408223,
		36.803368, 32.203777, 49.656647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306385, 31.790277, 49.057041>,  <36.901199, 31.572292, 49.370892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306385, 31.790277, 49.057041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.454132, 32.130550, 49.206657>,  <36.542778, 32.334713, 49.296429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.454132, 32.130550, 49.206657>,  <36.306385, 31.790277, 49.057041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454132, 32.130550, 49.206657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186455, 0.462163, -0.866971,
		-0.910387, 0.250485, 0.329321,
		0.369364, 0.850683, 0.374043,
		36.564941, 32.385754, 49.318871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836765, 32.384609, 48.845425>,  <36.306385, 31.790277, 49.057041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836765, 32.384609, 48.845425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172813, 32.587017, 48.923550>,  <36.374443, 32.708462, 48.970425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172813, 32.587017, 48.923550>,  <35.836765, 32.384609, 48.845425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172813, 32.587017, 48.923550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210178, 0.635658, -0.742809,
		-0.500029, 0.582995, 0.640381,
		0.840117, 0.506020, 0.195315,
		36.424847, 32.738823, 48.982143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684689, 33.150311, 48.919773>,  <35.836765, 32.384609, 48.845425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684689, 33.150311, 48.919773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.075356, 33.137112, 48.834885>,  <36.309753, 33.129192, 48.783951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.075356, 33.137112, 48.834885>,  <35.684689, 33.150311, 48.919773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075356, 33.137112, 48.834885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138166, 0.659966, -0.738482,
		0.164423, 0.750571, 0.640007,
		0.976665, -0.032996, -0.212217,
		36.368355, 33.127213, 48.771221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876904, 33.896568, 48.898277>,  <35.684689, 33.150311, 48.919773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876904, 33.896568, 48.898277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134781, 33.662910, 48.701038>,  <36.289505, 33.522717, 48.582695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134781, 33.662910, 48.701038>,  <35.876904, 33.896568, 48.898277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134781, 33.662910, 48.701038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134211, 0.548529, -0.825290,
		0.752570, 0.598236, 0.275232,
		0.644691, -0.584149, -0.493096,
		36.328190, 33.487667, 48.553108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396786, 34.322838, 48.716320>,  <35.876904, 33.896568, 48.898277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396786, 34.322838, 48.716320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410282, 33.997303, 48.484276>,  <36.418381, 33.801983, 48.345051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410282, 33.997303, 48.484276>,  <36.396786, 34.322838, 48.716320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410282, 33.997303, 48.484276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189177, 0.564747, -0.803288,
		0.981363, 0.136847, -0.134904,
		0.033741, -0.813839, -0.580111,
		36.420403, 33.753151, 48.310242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738037, 34.589684, 48.078896>,  <36.396786, 34.322838, 48.716320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738037, 34.589684, 48.078896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.543846, 34.256062, 47.974083>,  <36.427330, 34.055889, 47.911194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.543846, 34.256062, 47.974083>,  <36.738037, 34.589684, 48.078896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543846, 34.256062, 47.974083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348668, 0.459574, -0.816837,
		0.801712, -0.305193, -0.513921,
		-0.485478, -0.834056, -0.262035,
		36.398201, 34.005844, 47.895473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.915474, 28.128731, 36.102394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.595184, 27.914549, 36.209820>,  <44.403011, 27.786039, 36.274273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.595184, 27.914549, 36.209820>,  <44.915474, 28.128731, 36.102394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595184, 27.914549, 36.209820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597941, 0.741467, -0.304456,
		-0.036108, -0.404370, -0.913882,
		-0.800726, -0.535454, 0.268562,
		44.354965, 27.753912, 36.290390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300480, 28.133556, 35.490421>,  <44.915474, 28.128731, 36.102394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300480, 28.133556, 35.490421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161171, 28.076246, 35.860973>,  <44.077583, 28.041861, 36.083305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161171, 28.076246, 35.860973>,  <44.300480, 28.133556, 35.490421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161171, 28.076246, 35.860973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578713, 0.810297, -0.092248,
		-0.737425, -0.568235, -0.365120,
		-0.348275, -0.143274, 0.926378,
		44.056690, 28.033264, 36.138885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654808, 28.502813, 35.449318>,  <44.300480, 28.133556, 35.490421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654808, 28.502813, 35.449318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685371, 28.447420, 35.844284>,  <43.703709, 28.414185, 36.081264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685371, 28.447420, 35.844284>,  <43.654808, 28.502813, 35.449318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685371, 28.447420, 35.844284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594882, 0.788410, 0.156607,
		-0.800174, -0.599360, -0.022139,
		0.076409, -0.138483, 0.987413,
		43.708294, 28.405876, 36.140507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961365, 28.478151, 35.666363>,  <43.654808, 28.502813, 35.449318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961365, 28.478151, 35.666363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.214550, 28.590982, 35.954750>,  <43.366459, 28.658680, 36.127781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.214550, 28.590982, 35.954750>,  <42.961365, 28.478151, 35.666363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214550, 28.590982, 35.954750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506760, 0.854990, 0.110389,
		-0.585283, -0.435230, 0.684120,
		0.632960, 0.282076, 0.720968,
		43.404438, 28.675606, 36.171040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444576, 28.751314, 36.291733>,  <42.961365, 28.478151, 35.666363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444576, 28.751314, 36.291733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807594, 28.902094, 36.365776>,  <43.025406, 28.992561, 36.410202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807594, 28.902094, 36.365776>,  <42.444576, 28.751314, 36.291733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807594, 28.902094, 36.365776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406151, 0.899916, 0.158718,
		-0.106750, -0.219225, 0.969817,
		0.907549, 0.376949, 0.185105,
		43.079861, 29.015179, 36.421307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302723, 29.228548, 36.847576>,  <42.444576, 28.751314, 36.291733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302723, 29.228548, 36.847576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.665382, 29.315928, 36.703209>,  <42.882980, 29.368355, 36.616589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.665382, 29.315928, 36.703209>,  <42.302723, 29.228548, 36.847576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665382, 29.315928, 36.703209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167962, 0.971685, 0.166184,
		0.387003, -0.090050, 0.917671,
		0.906652, 0.218448, -0.360920,
		42.937378, 29.381462, 36.594933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642494, 29.748142, 37.284378>,  <42.302723, 29.228548, 36.847576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642494, 29.748142, 37.284378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.795921, 29.785339, 36.916851>,  <42.887978, 29.807657, 36.696335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.795921, 29.785339, 36.916851>,  <42.642494, 29.748142, 37.284378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795921, 29.785339, 36.916851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169707, 0.985072, 0.028851,
		0.907785, 0.144863, 0.393627,
		0.383571, 0.092992, -0.918818,
		42.910992, 29.813236, 36.641205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004200, 30.336117, 37.307564>,  <42.642494, 29.748142, 37.284378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004200, 30.336117, 37.307564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949936, 30.256422, 36.919357>,  <42.917377, 30.208605, 36.686432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.949936, 30.256422, 36.919357>,  <43.004200, 30.336117, 37.307564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949936, 30.256422, 36.919357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080842, 0.978531, -0.189581,
		0.987451, 0.052740, -0.148856,
		-0.135662, -0.199235, -0.970516,
		42.909237, 30.196651, 36.628204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457962, 30.855618, 36.974125>,  <43.004200, 30.336117, 37.307564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457962, 30.855618, 36.974125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.223854, 30.737869, 36.671921>,  <43.083389, 30.667221, 36.490597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.223854, 30.737869, 36.671921>,  <43.457962, 30.855618, 36.974125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223854, 30.737869, 36.671921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044451, 0.918723, -0.392394,
		0.809616, -0.263241, -0.524619,
		-0.585274, -0.294369, -0.755514,
		43.048271, 30.649559, 36.445267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711220, 31.214048, 36.440792>,  <43.457962, 30.855618, 36.974125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711220, 31.214048, 36.440792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341633, 31.103029, 36.335537>,  <43.119881, 31.036417, 36.272385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341633, 31.103029, 36.335537>,  <43.711220, 31.214048, 36.440792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341633, 31.103029, 36.335537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114405, 0.857088, -0.502306,
		0.364950, -0.434012, -0.823678,
		-0.923972, -0.277549, -0.263141,
		43.064442, 31.019764, 36.256596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599594, 31.269341, 35.666119>,  <43.711220, 31.214048, 36.440792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599594, 31.269341, 35.666119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.248745, 31.298487, 35.856003>,  <43.038235, 31.315975, 35.969933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.248745, 31.298487, 35.856003>,  <43.599594, 31.269341, 35.666119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248745, 31.298487, 35.856003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189626, 0.855575, -0.481698,
		-0.441248, -0.512525, -0.736627,
		-0.877122, 0.072865, 0.474708,
		42.985607, 31.320347, 35.998417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151569, 31.408079, 35.159588>,  <43.599594, 31.269341, 35.666119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151569, 31.408079, 35.159588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.994415, 31.555523, 35.496578>,  <42.900124, 31.643990, 35.698772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.994415, 31.555523, 35.496578>,  <43.151569, 31.408079, 35.159588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994415, 31.555523, 35.496578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251204, 0.838282, -0.483921,
		-0.884612, -0.401759, -0.236751,
		-0.392884, 0.368609, 0.842478,
		42.876549, 31.666105, 35.749321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568005, 31.718649, 34.959377>,  <43.151569, 31.408079, 35.159588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568005, 31.718649, 34.959377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.614437, 31.891354, 35.317173>,  <42.642296, 31.994976, 35.531849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.614437, 31.891354, 35.317173>,  <42.568005, 31.718649, 34.959377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614437, 31.891354, 35.317173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170259, 0.895896, -0.410344,
		-0.978539, -0.104662, 0.177505,
		0.116078, 0.431759, 0.894488,
		42.649261, 32.020882, 35.585518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108917, 32.236530, 34.987579>,  <42.568005, 31.718649, 34.959377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108917, 32.236530, 34.987579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.364799, 32.366821, 35.266056>,  <42.518330, 32.444996, 35.433144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.364799, 32.366821, 35.266056>,  <42.108917, 32.236530, 34.987579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364799, 32.366821, 35.266056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169287, 0.943230, -0.285759,
		-0.749749, 0.064944, 0.658527,
		0.639701, 0.325728, 0.696192,
		42.556709, 32.464539, 35.474915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791603, 32.832695, 35.355217>,  <42.108917, 32.236530, 34.987579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791603, 32.832695, 35.355217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178970, 32.863819, 35.449963>,  <42.411392, 32.882492, 35.506809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178970, 32.863819, 35.449963>,  <41.791603, 32.832695, 35.355217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178970, 32.863819, 35.449963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079835, 0.996807, -0.001030,
		-0.236190, -0.017913, 0.971542,
		0.968422, 0.077806, 0.236866,
		42.469498, 32.887161, 35.521023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775494, 33.233910, 35.943344>,  <41.791603, 32.832695, 35.355217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775494, 33.233910, 35.943344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.145039, 33.259331, 35.792381>,  <42.366764, 33.274582, 35.701805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.145039, 33.259331, 35.792381>,  <41.775494, 33.233910, 35.943344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145039, 33.259331, 35.792381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072829, 0.997291, -0.010345,
		0.375728, 0.037043, 0.925989,
		0.923864, 0.063552, -0.377408,
		42.422199, 33.278397, 35.679157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106354, 33.737869, 36.336224>,  <41.775494, 33.233910, 35.943344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106354, 33.737869, 36.336224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.299210, 33.714264, 35.986584>,  <42.414925, 33.700100, 35.776798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.299210, 33.714264, 35.986584>,  <42.106354, 33.737869, 36.336224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299210, 33.714264, 35.986584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046389, 0.998049, -0.041789,
		0.874863, -0.020401, 0.483941,
		0.482144, -0.059009, -0.874102,
		42.443851, 33.696560, 35.724354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680885, 34.314190, 36.344315>,  <42.106354, 33.737869, 36.336224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680885, 34.314190, 36.344315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.627121, 34.224300, 35.958271>,  <42.594860, 34.170368, 35.726646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.627121, 34.224300, 35.958271>,  <42.680885, 34.314190, 36.344315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627121, 34.224300, 35.958271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075189, 0.968825, -0.236059,
		0.988069, -0.104295, -0.113327,
		-0.134414, -0.224722, -0.965108,
		42.586796, 34.156883, 35.668739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150921, 34.719070, 36.074463>,  <42.680885, 34.314190, 36.344315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150921, 34.719070, 36.074463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923134, 34.608047, 35.764969>,  <42.786461, 34.541431, 35.579273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923134, 34.608047, 35.764969>,  <43.150921, 34.719070, 36.074463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923134, 34.608047, 35.764969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185461, 0.873615, -0.449890,
		0.800821, -0.399695, -0.446017,
		-0.569465, -0.277562, -0.773737,
		42.752293, 34.524780, 35.532848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532383, 34.814758, 35.410362>,  <43.150921, 34.719070, 36.074463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532383, 34.814758, 35.410362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.147598, 34.871777, 35.317139>,  <42.916729, 34.905987, 35.261204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.147598, 34.871777, 35.317139>,  <43.532383, 34.814758, 35.410362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147598, 34.871777, 35.317139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243337, 0.834879, -0.493726,
		0.124197, -0.531655, -0.837806,
		-0.961958, 0.142550, -0.233060,
		42.859013, 34.914543, 35.247219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557346, 35.041592, 34.752640>,  <43.532383, 34.814758, 35.410362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557346, 35.041592, 34.752640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209454, 35.144413, 34.921158>,  <43.000717, 35.206104, 35.022270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209454, 35.144413, 34.921158>,  <43.557346, 35.041592, 34.752640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209454, 35.144413, 34.921158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117520, 0.936965, -0.329066,
		-0.479329, -0.236688, -0.845117,
		-0.869731, 0.257049, 0.421299,
		42.948536, 35.221527, 35.047546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.126129, 34.524944, 34.406910>,  <43.557346, 35.041592, 34.752640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.126129, 34.524944, 34.406910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.515087, 34.511295, 34.499245>,  <44.748463, 34.503105, 34.554646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.515087, 34.511295, 34.499245>,  <44.126129, 34.524944, 34.406910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515087, 34.511295, 34.499245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087528, -0.863676, -0.496390,
		0.216307, 0.502891, -0.836846,
		0.972394, -0.034125, 0.230837,
		44.806805, 34.501057, 34.568497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392250, 34.386372, 33.827702>,  <44.126129, 34.524944, 34.406910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392250, 34.386372, 33.827702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.648399, 34.273750, 34.113541>,  <44.802090, 34.206177, 34.285046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.648399, 34.273750, 34.113541>,  <44.392250, 34.386372, 33.827702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.648399, 34.273750, 34.113541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097115, -0.893242, -0.438962,
		0.761901, 0.350497, -0.544664,
		0.640371, -0.281551, 0.714600,
		44.840511, 34.189285, 34.327919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932678, 34.129604, 33.472744>,  <44.392250, 34.386372, 33.827702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932678, 34.129604, 33.472744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.002033, 33.969368, 33.832623>,  <45.043648, 33.873226, 34.048550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.002033, 33.969368, 33.832623>,  <44.932678, 34.129604, 33.472744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002033, 33.969368, 33.832623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065762, -0.916207, -0.395271,
		0.982655, 0.009369, -0.185205,
		0.173389, -0.400595, 0.899700,
		45.054050, 33.849190, 34.102531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547657, 33.679276, 33.405083>,  <44.932678, 34.129604, 33.472744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547657, 33.679276, 33.405083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.336937, 33.548309, 33.718842>,  <45.210506, 33.469730, 33.907097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.336937, 33.548309, 33.718842>,  <45.547657, 33.679276, 33.405083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336937, 33.548309, 33.718842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029727, -0.929367, -0.367959,
		0.849470, -0.170523, 0.499322,
		-0.526799, -0.327414, 0.784400,
		45.178898, 33.450085, 33.954163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926395, 33.066509, 33.660759>,  <45.547657, 33.679276, 33.405083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926395, 33.066509, 33.660759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.554432, 33.042496, 33.805901>,  <45.331253, 33.028088, 33.892986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.554432, 33.042496, 33.805901>,  <45.926395, 33.066509, 33.660759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.554432, 33.042496, 33.805901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069908, -0.939751, -0.334634,
		0.361082, -0.336546, 0.869688,
		-0.929910, -0.060032, 0.362855,
		45.275459, 33.024487, 33.914757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746723, 32.378071, 33.635506>,  <45.926395, 33.066509, 33.660759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746723, 32.378071, 33.635506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381611, 32.498055, 33.746391>,  <45.162544, 32.570045, 33.812923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381611, 32.498055, 33.746391>,  <45.746723, 32.378071, 33.635506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381611, 32.498055, 33.746391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391441, -0.836222, -0.384065,
		0.116606, -0.459081, 0.880709,
		-0.912785, 0.299962, 0.277211,
		45.107777, 32.588043, 33.829556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458473, 31.944792, 34.252254>,  <45.746723, 32.378071, 33.635506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458473, 31.944792, 34.252254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.162983, 32.109787, 34.039036>,  <44.985691, 32.208786, 33.911102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.162983, 32.109787, 34.039036>,  <45.458473, 31.944792, 34.252254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162983, 32.109787, 34.039036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313078, -0.910364, -0.270591,
		-0.596884, -0.033006, 0.801648,
		-0.738723, 0.412490, -0.533049,
		44.941364, 32.233532, 33.879120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876862, 31.444834, 34.346672>,  <45.458473, 31.944792, 34.252254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876862, 31.444834, 34.346672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758953, 31.670847, 34.038425>,  <44.688210, 31.806456, 33.853477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758953, 31.670847, 34.038425>,  <44.876862, 31.444834, 34.346672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758953, 31.670847, 34.038425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347275, -0.814649, -0.464485,
		-0.890231, 0.130699, 0.436357,
		-0.294770, 0.565035, -0.770614,
		44.670521, 31.840357, 33.807240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191116, 31.190384, 34.105816>,  <44.876862, 31.444834, 34.346672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191116, 31.190384, 34.105816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.370205, 31.349108, 33.785294>,  <44.477657, 31.444342, 33.592979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.370205, 31.349108, 33.785294>,  <44.191116, 31.190384, 34.105816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370205, 31.349108, 33.785294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390708, -0.719247, -0.574483,
		-0.804294, 0.570286, -0.166989,
		0.447725, 0.396809, -0.801302,
		44.504524, 31.468151, 33.544903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664463, 31.362551, 33.622459>,  <44.191116, 31.190384, 34.105816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664463, 31.362551, 33.622459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.013184, 31.306561, 33.434685>,  <44.222416, 31.272966, 33.322018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.013184, 31.306561, 33.434685>,  <43.664463, 31.362551, 33.622459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013184, 31.306561, 33.434685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403573, -0.748413, -0.526315,
		-0.277662, 0.648294, -0.708956,
		0.871799, -0.139978, -0.469439,
		44.274723, 31.264566, 33.293854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473480, 31.223047, 32.921219>,  <43.664463, 31.362551, 33.622459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473480, 31.223047, 32.921219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.857601, 31.112249, 32.934479>,  <44.088074, 31.045771, 32.942436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.857601, 31.112249, 32.934479>,  <43.473480, 31.223047, 32.921219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857601, 31.112249, 32.934479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226873, -0.844577, -0.484993,
		0.162342, 0.458216, -0.873890,
		0.960299, -0.276997, 0.033153,
		44.145691, 31.029150, 32.944424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425842, 30.645649, 32.453812>,  <43.473480, 31.223047, 32.921219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425842, 30.645649, 32.453812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.798561, 30.620831, 32.596863>,  <44.022194, 30.605940, 32.682693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.798561, 30.620831, 32.596863>,  <43.425842, 30.645649, 32.453812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798561, 30.620831, 32.596863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088479, -0.916736, -0.389572,
		0.352025, 0.394646, -0.848724,
		0.931799, -0.062045, 0.357632,
		44.078102, 30.602217, 32.704151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872410, 30.410872, 31.867954>,  <43.425842, 30.645649, 32.453812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872410, 30.410872, 31.867954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.088985, 30.337835, 32.196224>,  <44.218929, 30.294014, 32.393185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.088985, 30.337835, 32.196224>,  <43.872410, 30.410872, 31.867954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088985, 30.337835, 32.196224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228823, -0.907280, -0.352822,
		0.809003, 0.378820, -0.449455,
		0.541437, -0.182589, 0.820675,
		44.251415, 30.283058, 32.442425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576508, 30.152636, 31.642683>,  <43.872410, 30.410872, 31.867954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576508, 30.152636, 31.642683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.498318, 30.022573, 32.012779>,  <44.451405, 29.944536, 32.234837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.498318, 30.022573, 32.012779>,  <44.576508, 30.152636, 31.642683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498318, 30.022573, 32.012779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147665, -0.942440, -0.300002,
		0.969529, 0.077984, 0.232233,
		-0.195470, -0.325153, 0.925239,
		44.439678, 29.925028, 32.290352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114315, 29.657856, 31.896578>,  <44.576508, 30.152636, 31.642683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114315, 29.657856, 31.896578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786243, 29.590557, 32.115303>,  <44.589401, 29.550179, 32.246540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786243, 29.590557, 32.115303>,  <45.114315, 29.657856, 31.896578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786243, 29.590557, 32.115303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153036, -0.985470, -0.073675,
		0.551265, 0.023256, 0.834006,
		-0.820175, -0.168247, 0.546814,
		44.540192, 29.540083, 32.279346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.304573, 29.081671, 32.382038>,  <45.114315, 29.657856, 31.896578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.304573, 29.081671, 32.382038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.904907, 29.065615, 32.384872>,  <44.665108, 29.055981, 32.386574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.904907, 29.065615, 32.384872>,  <45.304573, 29.081671, 32.382038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904907, 29.065615, 32.384872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040435, -0.998016, 0.048270,
		0.005133, 0.048517, 0.998809,
		-0.999169, -0.040139, 0.007084,
		44.605156, 29.053574, 32.386997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169685, 28.596010, 32.865780>,  <45.304573, 29.081671, 32.382038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169685, 28.596010, 32.865780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806717, 28.628649, 32.700890>,  <44.588936, 28.648232, 32.601955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.806717, 28.628649, 32.700890>,  <45.169685, 28.596010, 32.865780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806717, 28.628649, 32.700890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067958, -0.996549, -0.047663,
		-0.414688, -0.015237, 0.909836,
		-0.907423, 0.081596, -0.412221,
		44.534489, 28.653128, 32.577225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742085, 28.157469, 33.225800>,  <45.169685, 28.596010, 32.865780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742085, 28.157469, 33.225800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563480, 28.211391, 32.871971>,  <44.456318, 28.243746, 32.659676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563480, 28.211391, 32.871971>,  <44.742085, 28.157469, 33.225800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563480, 28.211391, 32.871971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022261, -0.989953, -0.139630,
		-0.894504, -0.042655, 0.445021,
		-0.446506, 0.134806, -0.884568,
		44.429527, 28.251833, 32.606602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284988, 27.601236, 33.219177>,  <44.742085, 28.157469, 33.225800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284988, 27.601236, 33.219177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.258217, 27.752937, 32.850029>,  <44.242153, 27.843958, 32.628540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.258217, 27.752937, 32.850029>,  <44.284988, 27.601236, 33.219177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258217, 27.752937, 32.850029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192928, -0.912407, -0.360960,
		-0.978927, 0.153888, 0.134237,
		-0.066931, 0.379252, -0.922869,
		44.238136, 27.866713, 32.573170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676895, 27.352276, 32.932442>,  <44.284988, 27.601236, 33.219177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676895, 27.352276, 32.932442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.944275, 27.446072, 32.650112>,  <44.104702, 27.502348, 32.480713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.944275, 27.446072, 32.650112>,  <43.676895, 27.352276, 32.932442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944275, 27.446072, 32.650112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042245, -0.935498, -0.350798,
		-0.742555, 0.264309, -0.615429,
		0.668452, 0.234488, -0.705824,
		44.144810, 27.516418, 32.438366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442837, 27.062548, 32.287666>,  <43.676895, 27.352276, 32.932442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442837, 27.062548, 32.287666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824020, 27.117723, 32.179710>,  <44.052731, 27.150829, 32.114937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824020, 27.117723, 32.179710>,  <43.442837, 27.062548, 32.287666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824020, 27.117723, 32.179710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030832, -0.929939, -0.366419,
		-0.301523, 0.340862, -0.890448,
		0.952960, 0.137938, -0.269889,
		44.109909, 27.159105, 32.098743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.674713, 36.218655, 43.765846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454773, 35.897659, 43.673176>,  <39.322807, 35.705063, 43.617573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454773, 35.897659, 43.673176>,  <39.674713, 36.218655, 43.765846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454773, 35.897659, 43.673176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126113, 0.194425, -0.972776,
		0.825688, -0.564098, -0.005700,
		-0.549849, -0.802491, -0.231675,
		39.289818, 35.656914, 43.603672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033268, 35.950619, 43.210606>,  <39.674713, 36.218655, 43.765846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033268, 35.950619, 43.210606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673389, 35.777035, 43.191734>,  <39.457462, 35.672882, 43.180412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673389, 35.777035, 43.191734>,  <40.033268, 35.950619, 43.210606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673389, 35.777035, 43.191734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012435, 0.082554, -0.996509,
		0.436342, -0.897141, -0.068877,
		-0.899695, -0.433962, -0.047177,
		39.403481, 35.646847, 43.177582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210026, 35.339195, 42.725613>,  <40.033268, 35.950619, 43.210606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210026, 35.339195, 42.725613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815388, 35.396645, 42.756611>,  <39.578606, 35.431114, 42.775208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815388, 35.396645, 42.756611>,  <40.210026, 35.339195, 42.725613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815388, 35.396645, 42.756611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074736, 0.024485, -0.996903,
		-0.145083, -0.989328, -0.013423,
		-0.986593, 0.143630, 0.077491,
		39.519409, 35.439732, 42.779858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877022, 34.821537, 42.256672>,  <40.210026, 35.339195, 42.725613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877022, 34.821537, 42.256672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626369, 35.128071, 42.313332>,  <39.475979, 35.311993, 42.347328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626369, 35.128071, 42.313332>,  <39.877022, 34.821537, 42.256672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626369, 35.128071, 42.313332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085671, 0.112922, -0.989904,
		-0.774595, -0.632437, -0.005107,
		-0.626629, 0.766337, 0.141650,
		39.438381, 35.357971, 42.355827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237328, 34.724857, 41.885471>,  <39.877022, 34.821537, 42.256672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237328, 34.724857, 41.885471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223755, 35.122581, 41.925842>,  <39.215611, 35.361217, 41.950066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223755, 35.122581, 41.925842>,  <39.237328, 34.724857, 41.885471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223755, 35.122581, 41.925842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272683, 0.087944, -0.958076,
		-0.961506, -0.060028, 0.268149,
		-0.033929, 0.994315, 0.100927,
		39.213577, 35.420876, 41.956120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594276, 34.934399, 41.716312>,  <39.237328, 34.724857, 41.885471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594276, 34.934399, 41.716312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808037, 35.270889, 41.683434>,  <38.936295, 35.472782, 41.663708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808037, 35.270889, 41.683434>,  <38.594276, 34.934399, 41.716312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808037, 35.270889, 41.683434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396996, 0.163965, -0.903056,
		-0.746194, 0.515228, 0.421586,
		0.534405, 0.841222, -0.082194,
		38.968357, 35.523254, 41.658775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233093, 35.235355, 41.308403>,  <38.594276, 34.934399, 41.716312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233093, 35.235355, 41.308403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552818, 35.475197, 41.292469>,  <38.744652, 35.619102, 41.282909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552818, 35.475197, 41.292469>,  <38.233093, 35.235355, 41.308403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552818, 35.475197, 41.292469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251277, 0.273284, -0.928534,
		-0.545862, 0.752195, 0.369104,
		0.799309, 0.599599, -0.039834,
		38.792610, 35.655075, 41.280518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002064, 35.848186, 41.096027>,  <38.233093, 35.235355, 41.308403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002064, 35.848186, 41.096027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387184, 35.826973, 40.990044>,  <38.618256, 35.814243, 40.926453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387184, 35.826973, 40.990044>,  <38.002064, 35.848186, 41.096027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387184, 35.826973, 40.990044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244144, 0.249448, -0.937107,
		0.115792, 0.966935, 0.227221,
		0.962801, -0.053035, -0.264956,
		38.676025, 35.811062, 40.910557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221134, 36.562260, 40.845104>,  <38.002064, 35.848186, 41.096027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221134, 36.562260, 40.845104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433121, 36.255013, 40.701363>,  <38.560314, 36.070663, 40.615116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433121, 36.255013, 40.701363>,  <38.221134, 36.562260, 40.845104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433121, 36.255013, 40.701363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332472, 0.201632, -0.921307,
		0.780127, 0.607737, -0.148518,
		0.529967, -0.768115, -0.359354,
		38.592110, 36.024578, 40.593555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233280, 36.765366, 40.154842>,  <38.221134, 36.562260, 40.845104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233280, 36.765366, 40.154842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378578, 36.393520, 40.129982>,  <38.465759, 36.170414, 40.115067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378578, 36.393520, 40.129982>,  <38.233280, 36.765366, 40.154842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378578, 36.393520, 40.129982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326946, -0.064716, -0.942825,
		0.872444, 0.362800, -0.327442,
		0.363247, -0.929617, -0.062155,
		38.487553, 36.114635, 40.111336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573875, 36.725323, 39.580429>,  <38.233280, 36.765366, 40.154842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573875, 36.725323, 39.580429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503689, 36.337509, 39.648796>,  <38.461578, 36.104820, 39.689816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503689, 36.337509, 39.648796>,  <38.573875, 36.725323, 39.580429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503689, 36.337509, 39.648796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182822, -0.138501, -0.973341,
		0.967361, -0.202036, -0.152951,
		-0.175466, -0.969535, 0.170917,
		38.451050, 36.046650, 39.700069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900623, 36.408890, 39.025871>,  <38.573875, 36.725323, 39.580429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900623, 36.408890, 39.025871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657139, 36.117290, 39.151108>,  <38.511047, 35.942329, 39.226250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657139, 36.117290, 39.151108>,  <38.900623, 36.408890, 39.025871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657139, 36.117290, 39.151108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337722, -0.119003, -0.933693,
		0.717922, -0.674088, -0.173761,
		-0.608713, -0.729002, 0.313090,
		38.474525, 35.898590, 39.245033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053303, 35.686848, 38.691769>,  <38.900623, 36.408890, 39.025871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053303, 35.686848, 38.691769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678352, 35.788788, 38.786739>,  <38.453381, 35.849953, 38.843723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678352, 35.788788, 38.786739>,  <39.053303, 35.686848, 38.691769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678352, 35.788788, 38.786739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279343, -0.142869, -0.949503,
		-0.208059, -0.956368, 0.205113,
		-0.937379, 0.254849, 0.237430,
		38.397137, 35.865242, 38.857967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714878, 35.280048, 38.624020>,  <39.053303, 35.686848, 38.691769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714878, 35.280048, 38.624020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710739, 34.990025, 38.348576>,  <39.708256, 34.816010, 38.183308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710739, 34.990025, 38.348576>,  <39.714878, 35.280048, 38.624020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710739, 34.990025, 38.348576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164773, -0.677997, 0.716359,
		-0.986277, 0.120878, -0.112454,
		-0.010349, -0.725058, -0.688610,
		39.707634, 34.772507, 38.141991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059444, 34.931419, 38.553268>,  <39.714878, 35.280048, 38.624020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059444, 34.931419, 38.553268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354710, 34.671379, 38.481171>,  <39.531868, 34.515354, 38.437912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354710, 34.671379, 38.481171>,  <39.059444, 34.931419, 38.553268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354710, 34.671379, 38.481171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358849, -0.604622, 0.711098,
		-0.571263, -0.460225, -0.679596,
		0.738163, -0.650097, -0.180247,
		39.576157, 34.476349, 38.427097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693310, 34.257690, 38.562195>,  <39.059444, 34.931419, 38.553268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693310, 34.257690, 38.562195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069313, 34.123188, 38.585243>,  <39.294914, 34.042488, 38.599072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069313, 34.123188, 38.585243>,  <38.693310, 34.257690, 38.562195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069313, 34.123188, 38.585243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302985, -0.745225, 0.594003,
		-0.156796, -0.575825, -0.802397,
		0.940008, -0.336252, 0.057619,
		39.351315, 34.022312, 38.602528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572060, 33.563648, 38.506634>,  <38.693310, 34.257690, 38.562195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572060, 33.563648, 38.506634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936306, 33.591846, 38.669510>,  <39.154854, 33.608765, 38.767235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936306, 33.591846, 38.669510>,  <38.572060, 33.563648, 38.506634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936306, 33.591846, 38.669510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220167, -0.751094, 0.622402,
		0.349712, -0.656420, -0.668441,
		0.910620, 0.070493, 0.407189,
		39.209492, 33.612995, 38.791668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716225, 32.890373, 38.720036>,  <38.572060, 33.563648, 38.506634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716225, 32.890373, 38.720036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974075, 33.105522, 38.937344>,  <39.128788, 33.234612, 39.067730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974075, 33.105522, 38.937344>,  <38.716225, 32.890373, 38.720036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974075, 33.105522, 38.937344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071959, -0.664780, 0.743565,
		0.761101, -0.518417, -0.389832,
		0.644629, 0.537876, 0.543270,
		39.167465, 33.266884, 39.100323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248299, 32.358070, 39.037392>,  <38.716225, 32.890373, 38.720036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248299, 32.358070, 39.037392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232212, 32.694229, 39.253582>,  <39.222561, 32.895924, 39.383297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232212, 32.694229, 39.253582>,  <39.248299, 32.358070, 39.037392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232212, 32.694229, 39.253582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182936, -0.537964, 0.822879,
		0.982302, -0.065781, 0.175372,
		-0.040214, 0.840397, 0.540477,
		39.220146, 32.946350, 39.415726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744846, 32.328617, 39.589108>,  <39.248299, 32.358070, 39.037392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744846, 32.328617, 39.589108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529472, 32.625851, 39.748062>,  <39.400249, 32.804192, 39.843433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529472, 32.625851, 39.748062>,  <39.744846, 32.328617, 39.589108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529472, 32.625851, 39.748062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037949, -0.492482, 0.869495,
		0.841813, 0.453085, 0.293369,
		-0.538434, 0.743085, 0.397384,
		39.367943, 32.848778, 39.867279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899521, 32.211105, 40.295883>,  <39.744846, 32.328617, 39.589108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899521, 32.211105, 40.295883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596611, 32.472336, 40.293999>,  <39.414864, 32.629074, 40.292866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596611, 32.472336, 40.293999>,  <39.899521, 32.211105, 40.295883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596611, 32.472336, 40.293999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224197, -0.253173, 0.941084,
		0.613410, 0.713716, 0.338140,
		-0.757274, 0.653080, -0.004714,
		39.369431, 32.668259, 40.292583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988346, 32.649208, 40.769924>,  <39.899521, 32.211105, 40.295883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988346, 32.649208, 40.769924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591705, 32.664726, 40.720577>,  <39.353722, 32.674038, 40.690968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591705, 32.664726, 40.720577>,  <39.988346, 32.649208, 40.769924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591705, 32.664726, 40.720577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126643, -0.098049, 0.987091,
		0.026202, 0.994425, 0.102139,
		-0.991602, 0.038799, -0.123368,
		39.294224, 32.676365, 40.683567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814743, 33.113194, 41.239212>,  <39.988346, 32.649208, 40.769924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814743, 33.113194, 41.239212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478397, 32.915356, 41.151287>,  <39.276588, 32.796654, 41.098534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478397, 32.915356, 41.151287>,  <39.814743, 33.113194, 41.239212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478397, 32.915356, 41.151287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217938, -0.062337, 0.973970,
		-0.495426, 0.866884, -0.055375,
		-0.840867, -0.494598, -0.219810,
		39.226139, 32.766975, 41.085342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467789, 33.369305, 41.703091>,  <39.814743, 33.113194, 41.239212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467789, 33.369305, 41.703091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240505, 33.068142, 41.570263>,  <39.104134, 32.887444, 41.490566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240505, 33.068142, 41.570263>,  <39.467789, 33.369305, 41.703091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240505, 33.068142, 41.570263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278673, -0.203629, 0.938550,
		-0.774259, 0.625833, -0.094110,
		-0.568212, -0.752907, -0.332065,
		39.070042, 32.842270, 41.470642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770889, 33.412434, 42.068127>,  <39.467789, 33.369305, 41.703091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770889, 33.412434, 42.068127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843231, 33.037872, 41.947834>,  <38.886639, 32.813137, 41.875656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843231, 33.037872, 41.947834>,  <38.770889, 33.412434, 42.068127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843231, 33.037872, 41.947834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226167, -0.337180, 0.913870,
		-0.957151, -0.097265, -0.272765,
		0.180858, -0.936402, -0.300734,
		38.897488, 32.756950, 41.857613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318394, 33.013008, 42.470688>,  <38.770889, 33.412434, 42.068127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318394, 33.013008, 42.470688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521645, 32.711697, 42.303654>,  <38.643597, 32.530910, 42.203434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521645, 32.711697, 42.303654>,  <38.318394, 33.013008, 42.470688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521645, 32.711697, 42.303654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315009, -0.613790, 0.723901,
		-0.801607, -0.236294, -0.549174,
		0.508130, -0.753278, -0.417583,
		38.674084, 32.485714, 42.178379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905193, 32.384106, 42.422432>,  <38.318394, 33.013008, 42.470688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905193, 32.384106, 42.422432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288406, 32.271500, 42.444042>,  <38.518333, 32.203934, 42.457008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288406, 32.271500, 42.444042>,  <37.905193, 32.384106, 42.422432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288406, 32.271500, 42.444042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207252, -0.550043, 0.809011,
		-0.198034, -0.786257, -0.585305,
		0.958034, -0.281518, 0.054026,
		38.575817, 32.187046, 42.460251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816475, 31.816956, 42.480427>,  <37.905193, 32.384106, 42.422432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816475, 31.816956, 42.480427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190094, 31.858946, 42.616974>,  <38.414265, 31.884140, 42.698902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190094, 31.858946, 42.616974>,  <37.816475, 31.816956, 42.480427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190094, 31.858946, 42.616974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211339, -0.608058, 0.765246,
		0.287905, -0.786922, -0.545770,
		0.934048, 0.104976, 0.341370,
		38.470310, 31.890438, 42.719383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066090, 31.229942, 41.859318>,  <37.816475, 31.816956, 42.480427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066090, 31.229942, 41.859318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729057, 31.058784, 41.990139>,  <37.526836, 30.956089, 42.068630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729057, 31.058784, 41.990139>,  <38.066090, 31.229942, 41.859318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729057, 31.058784, 41.990139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390115, 0.066245, -0.918380,
		0.371307, -0.901396, -0.222746,
		-0.842580, -0.427898, 0.327051,
		37.476284, 30.930416, 42.088253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895447, 30.659824, 41.419682>,  <38.066090, 31.229942, 41.859318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895447, 30.659824, 41.419682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551891, 30.774508, 41.589439>,  <37.345760, 30.843317, 41.691296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551891, 30.774508, 41.589439>,  <37.895447, 30.659824, 41.419682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551891, 30.774508, 41.589439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439092, 0.014363, -0.898328,
		-0.263652, -0.957911, 0.113554,
		-0.858886, 0.286707, 0.424397,
		37.294224, 30.860519, 41.716759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309021, 30.308258, 41.064625>,  <37.895447, 30.659824, 41.419682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309021, 30.308258, 41.064625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106155, 30.582027, 41.274139>,  <36.984436, 30.746288, 41.399849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106155, 30.582027, 41.274139>,  <37.309021, 30.308258, 41.064625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106155, 30.582027, 41.274139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635971, 0.112967, -0.763400,
		-0.581659, -0.720279, 0.377981,
		-0.507162, 0.684424, 0.523785,
		36.954006, 30.787355, 41.431274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625481, 30.149839, 40.987370>,  <37.309021, 30.308258, 41.064625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625481, 30.149839, 40.987370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646908, 30.538471, 41.079601>,  <36.659763, 30.771650, 41.134941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646908, 30.538471, 41.079601>,  <36.625481, 30.149839, 40.987370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646908, 30.538471, 41.079601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579016, 0.218351, -0.785534,
		-0.813555, -0.091428, 0.574256,
		0.053570, 0.971578, 0.230578,
		36.662979, 30.829945, 41.148773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935249, 30.426449, 40.890446>,  <36.625481, 30.149839, 40.987370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935249, 30.426449, 40.890446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175171, 30.746080, 40.873886>,  <36.319122, 30.937859, 40.863949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175171, 30.746080, 40.873886>,  <35.935249, 30.426449, 40.890446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175171, 30.746080, 40.873886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455470, 0.298431, -0.838741,
		-0.657864, 0.521933, 0.542955,
		0.599801, 0.799077, -0.041398,
		36.355110, 30.985804, 40.861465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439709, 30.955622, 40.710464>,  <35.935249, 30.426449, 40.890446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439709, 30.955622, 40.710464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805119, 31.099283, 40.634064>,  <36.024364, 31.185480, 40.588223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805119, 31.099283, 40.634064>,  <35.439709, 30.955622, 40.710464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805119, 31.099283, 40.634064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350647, 0.457252, -0.817293,
		-0.206199, 0.813591, 0.543647,
		0.913525, 0.359153, -0.190998,
		36.079178, 31.207029, 40.576763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277699, 31.632772, 40.609299>,  <35.439709, 30.955622, 40.710464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277699, 31.632772, 40.609299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631714, 31.548874, 40.443062>,  <35.844124, 31.498535, 40.343319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631714, 31.548874, 40.443062>,  <35.277699, 31.632772, 40.609299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631714, 31.548874, 40.443062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306364, 0.409742, -0.859216,
		0.350502, 0.887760, 0.298378,
		0.885036, -0.209745, -0.415593,
		35.897224, 31.485950, 40.318382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406757, 32.171761, 40.189014>,  <35.277699, 31.632772, 40.609299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406757, 32.171761, 40.189014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635601, 31.877659, 40.043636>,  <35.772907, 31.701199, 39.956409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635601, 31.877659, 40.043636>,  <35.406757, 32.171761, 40.189014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635601, 31.877659, 40.043636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213199, 0.294577, -0.931542,
		0.791981, 0.610433, 0.011776,
		0.572113, -0.735253, -0.363443,
		35.807236, 31.657084, 39.934605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823421, 32.465881, 39.663506>,  <35.406757, 32.171761, 40.189014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823421, 32.465881, 39.663506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774029, 32.073540, 39.603275>,  <35.744392, 31.838135, 39.567135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774029, 32.073540, 39.603275>,  <35.823421, 32.465881, 39.663506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774029, 32.073540, 39.603275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329382, 0.183650, -0.926164,
		0.936087, -0.064767, -0.345754,
		-0.123482, -0.980856, -0.150580,
		35.736984, 31.779284, 39.558102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077023, 32.401405, 38.957012>,  <35.823421, 32.465881, 39.663506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077023, 32.401405, 38.957012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872105, 32.065643, 39.029621>,  <35.749153, 31.864185, 39.073185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872105, 32.065643, 39.029621>,  <36.077023, 32.401405, 38.957012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872105, 32.065643, 39.029621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209614, -0.082761, -0.974275,
		0.832838, -0.537163, -0.133554,
		-0.512291, -0.839409, 0.181523,
		35.718418, 31.813820, 39.084080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382572, 31.999580, 38.476307>,  <36.077023, 32.401405, 38.957012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382572, 31.999580, 38.476307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030487, 31.839397, 38.578175>,  <35.819237, 31.743288, 38.639294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030487, 31.839397, 38.578175>,  <36.382572, 31.999580, 38.476307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030487, 31.839397, 38.578175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192784, -0.188634, -0.962939,
		0.433655, -0.896689, 0.088837,
		-0.880215, -0.400456, 0.254670,
		35.766422, 31.719261, 38.654575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280682, 31.407812, 37.997807>,  <36.382572, 31.999580, 38.476307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280682, 31.407812, 37.997807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921040, 31.549898, 38.100132>,  <35.705254, 31.635149, 38.161526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921040, 31.549898, 38.100132>,  <36.280682, 31.407812, 37.997807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921040, 31.549898, 38.100132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317559, -0.127060, -0.939687,
		-0.301290, -0.926108, 0.227042,
		-0.899100, 0.355218, 0.255812,
		35.651310, 31.656464, 38.176876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.116035, 29.155619, 45.220173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722038, 29.170612, 45.287556>,  <37.485638, 29.179607, 45.327984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722038, 29.170612, 45.287556>,  <38.116035, 29.155619, 45.220173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722038, 29.170612, 45.287556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118418, 0.563254, -0.817754,
		-0.125534, -0.825433, -0.550365,
		-0.984996, 0.037483, 0.168454,
		37.426540, 29.181858, 45.338093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794907, 28.987164, 44.570564>,  <38.116035, 29.155619, 45.220173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794907, 28.987164, 44.570564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503223, 29.170956, 44.773396>,  <37.328213, 29.281231, 44.895096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503223, 29.170956, 44.773396>,  <37.794907, 28.987164, 44.570564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503223, 29.170956, 44.773396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218680, 0.545693, -0.808949,
		-0.648405, -0.700782, -0.297446,
		-0.729211, 0.459481, 0.507078,
		37.284458, 29.308800, 44.925518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198505, 28.894402, 44.178432>,  <37.794907, 28.987164, 44.570564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198505, 28.894402, 44.178432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139481, 29.211517, 44.414978>,  <37.104065, 29.401787, 44.556904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139481, 29.211517, 44.414978>,  <37.198505, 28.894402, 44.178432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139481, 29.211517, 44.414978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283846, 0.538814, -0.793165,
		-0.947447, -0.284899, 0.145520,
		-0.147564, 0.792788, 0.591365,
		37.095211, 29.449354, 44.592388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424629, 29.031864, 44.232185>,  <37.198505, 28.894402, 44.178432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424629, 29.031864, 44.232185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.636944, 29.362627, 44.306473>,  <36.764332, 29.561085, 44.351044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.636944, 29.362627, 44.306473>,  <36.424629, 29.031864, 44.232185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636944, 29.362627, 44.306473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419790, 0.446882, -0.789983,
		-0.736237, 0.341349, 0.584325,
		0.530784, 0.826909, 0.185716,
		36.796181, 29.610699, 44.362186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952072, 29.683727, 44.017960>,  <36.424629, 29.031864, 44.232185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952072, 29.683727, 44.017960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.326729, 29.815006, 44.066944>,  <36.551521, 29.893774, 44.096333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.326729, 29.815006, 44.066944>,  <35.952072, 29.683727, 44.017960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326729, 29.815006, 44.066944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059528, 0.493620, -0.867638,
		-0.345202, 0.805374, 0.481880,
		0.936639, 0.328196, 0.122457,
		36.607719, 29.913465, 44.103680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995449, 30.419443, 43.837990>,  <35.952072, 29.683727, 44.017960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995449, 30.419443, 43.837990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379238, 30.309046, 43.815235>,  <36.609512, 30.242807, 43.801582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379238, 30.309046, 43.815235>,  <35.995449, 30.419443, 43.837990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379238, 30.309046, 43.815235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138328, 0.637165, -0.758212,
		0.245505, 0.719617, 0.649522,
		0.959475, -0.275992, -0.056884,
		36.667080, 30.226248, 43.798168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299603, 30.947859, 43.832726>,  <35.995449, 30.419443, 43.837990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299603, 30.947859, 43.832726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588192, 30.715767, 43.681564>,  <36.761345, 30.576511, 43.590870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588192, 30.715767, 43.681564>,  <36.299603, 30.947859, 43.832726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588192, 30.715767, 43.681564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176265, 0.681669, -0.710111,
		0.669629, 0.445717, 0.594081,
		0.721475, -0.580227, -0.377901,
		36.804634, 30.541698, 43.568195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791271, 31.412853, 43.588356>,  <36.299603, 30.947859, 43.832726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791271, 31.412853, 43.588356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873569, 31.062052, 43.414673>,  <36.922947, 30.851572, 43.310463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873569, 31.062052, 43.414673>,  <36.791271, 31.412853, 43.588356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873569, 31.062052, 43.414673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202980, 0.472295, -0.857751,
		0.957323, 0.088344, 0.275187,
		0.205747, -0.877002, -0.434206,
		36.935295, 30.798950, 43.284412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303661, 31.687969, 43.156261>,  <36.791271, 31.412853, 43.588356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303661, 31.687969, 43.156261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181759, 31.338949, 43.003540>,  <37.108616, 31.129538, 42.911907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181759, 31.338949, 43.003540>,  <37.303661, 31.687969, 43.156261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181759, 31.338949, 43.003540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194090, 0.335568, -0.921804,
		0.932444, -0.355031, 0.067088,
		-0.304756, -0.872552, -0.381806,
		37.090332, 31.077183, 42.889000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938168, 31.180614, 43.044743>,  <37.303661, 31.687969, 43.156261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938168, 31.180614, 43.044743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243927, 31.430220, 43.109612>,  <38.427383, 31.579983, 43.148533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243927, 31.430220, 43.109612>,  <37.938168, 31.180614, 43.044743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243927, 31.430220, 43.109612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161964, -0.429310, 0.888516,
		0.624066, -0.652918, -0.429233,
		0.764401, 0.624013, 0.162169,
		38.473248, 31.617424, 43.158260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602665, 30.790510, 43.258091>,  <37.938168, 31.180614, 43.044743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602665, 30.790510, 43.258091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651463, 31.159847, 43.403725>,  <38.680740, 31.381449, 43.491104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651463, 31.159847, 43.403725>,  <38.602665, 30.790510, 43.258091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651463, 31.159847, 43.403725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325883, -0.383754, 0.864022,
		0.937506, 0.013242, -0.347717,
		0.121997, 0.923340, 0.364087,
		38.688061, 31.436850, 43.512951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166325, 30.729668, 43.795807>,  <38.602665, 30.790510, 43.258091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166325, 30.729668, 43.795807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998127, 31.083801, 43.875172>,  <38.897209, 31.296282, 43.922791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998127, 31.083801, 43.875172>,  <39.166325, 30.729668, 43.795807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998127, 31.083801, 43.875172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112990, -0.165884, 0.979651,
		0.900230, 0.434360, -0.030279,
		-0.420498, 0.885333, 0.198412,
		38.871979, 31.349401, 43.934696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676060, 31.077921, 44.205952>,  <39.166325, 30.729668, 43.795807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676060, 31.077921, 44.205952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.322620, 31.244152, 44.292248>,  <39.110558, 31.343891, 44.344025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.322620, 31.244152, 44.292248>,  <39.676060, 31.077921, 44.205952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322620, 31.244152, 44.292248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200271, -0.081057, 0.976382,
		0.423250, 0.905939, -0.011606,
		-0.883601, 0.415578, 0.215741,
		39.057541, 31.368826, 44.356972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838615, 31.685431, 44.677837>,  <39.676060, 31.077921, 44.205952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838615, 31.685431, 44.677837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453148, 31.590231, 44.726345>,  <39.221867, 31.533112, 44.755451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453148, 31.590231, 44.726345>,  <39.838615, 31.685431, 44.677837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453148, 31.590231, 44.726345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153310, -0.121013, 0.980740,
		-0.218738, 0.963697, 0.153104,
		-0.963665, -0.237998, 0.121274,
		39.164047, 31.518831, 44.762726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638393, 31.983515, 45.395447>,  <39.838615, 31.685431, 44.677837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638393, 31.983515, 45.395447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362499, 31.710629, 45.298412>,  <39.196964, 31.546896, 45.240192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.362499, 31.710629, 45.298412>,  <39.638393, 31.983515, 45.395447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362499, 31.710629, 45.298412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167805, -0.175300, 0.970109,
		-0.704350, 0.709824, 0.006431,
		-0.689734, -0.682217, -0.242584,
		39.155579, 31.505962, 45.225636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939964, 32.091572, 45.837944>,  <39.638393, 31.983515, 45.395447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939964, 32.091572, 45.837944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.974224, 31.717384, 45.700794>,  <38.994778, 31.492872, 45.618504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.974224, 31.717384, 45.700794>,  <38.939964, 32.091572, 45.837944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974224, 31.717384, 45.700794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153519, -0.352423, 0.923163,
		-0.984427, -0.026428, -0.173797,
		0.085647, -0.935468, -0.342877,
		38.999920, 31.436745, 45.597931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645641, 31.867996, 46.377686>,  <38.939964, 32.091572, 45.837944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645641, 31.867996, 46.377686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.772850, 31.546209, 46.177010>,  <38.849174, 31.353138, 46.056602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.772850, 31.546209, 46.177010>,  <38.645641, 31.867996, 46.377686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772850, 31.546209, 46.177010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000671, -0.528973, 0.848638,
		-0.948083, -0.270223, -0.167685,
		0.318023, -0.804467, -0.501692,
		38.868256, 31.304869, 46.026501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211281, 31.324829, 46.634972>,  <38.645641, 31.867996, 46.377686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211281, 31.324829, 46.634972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.546108, 31.168203, 46.482136>,  <38.747005, 31.074228, 46.390434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.546108, 31.168203, 46.482136>,  <38.211281, 31.324829, 46.634972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546108, 31.168203, 46.482136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086935, -0.594320, 0.799516,
		-0.540140, -0.702470, -0.463448,
		0.837073, -0.391561, -0.382085,
		38.797230, 31.050734, 46.367508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131565, 30.660574, 46.752586>,  <38.211281, 31.324829, 46.634972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131565, 30.660574, 46.752586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.525997, 30.689655, 46.692776>,  <38.762657, 30.707104, 46.656887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.525997, 30.689655, 46.692776>,  <38.131565, 30.660574, 46.752586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525997, 30.689655, 46.692776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154240, -0.735818, 0.659380,
		-0.062087, -0.673265, -0.736790,
		0.986081, 0.072704, -0.149529,
		38.821823, 30.711466, 46.647919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276939, 29.980284, 46.894073>,  <38.131565, 30.660574, 46.752586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276939, 29.980284, 46.894073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.616089, 30.192221, 46.901878>,  <38.819580, 30.319382, 46.906563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.616089, 30.192221, 46.901878>,  <38.276939, 29.980284, 46.894073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616089, 30.192221, 46.901878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247403, -0.427919, 0.869296,
		0.468939, -0.732225, -0.493905,
		0.847872, 0.529841, 0.019513,
		38.870449, 30.351173, 46.907734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858021, 29.472012, 46.909695>,  <38.276939, 29.980284, 46.894073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858021, 29.472012, 46.909695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.975132, 29.825571, 47.055573>,  <39.045399, 30.037706, 47.143097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.975132, 29.825571, 47.055573>,  <38.858021, 29.472012, 46.909695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975132, 29.825571, 47.055573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162670, -0.421888, 0.891935,
		0.942240, -0.201819, -0.267305,
		0.292783, 0.883900, 0.364690,
		39.062965, 30.090740, 47.164978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499062, 29.313383, 47.338024>,  <38.858021, 29.472012, 46.909695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499062, 29.313383, 47.338024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.439617, 29.693197, 47.448513>,  <39.403950, 29.921085, 47.514809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.439617, 29.693197, 47.448513>,  <39.499062, 29.313383, 47.338024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439617, 29.693197, 47.448513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254320, -0.233234, 0.938575,
		0.955635, 0.209728, -0.206825,
		-0.148607, 0.949535, 0.276224,
		39.395035, 29.978058, 47.531380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047344, 29.458477, 47.678837>,  <39.499062, 29.313383, 47.338024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047344, 29.458477, 47.678837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.750614, 29.697079, 47.801392>,  <39.572575, 29.840240, 47.874924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.750614, 29.697079, 47.801392>,  <40.047344, 29.458477, 47.678837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750614, 29.697079, 47.801392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229004, -0.204085, 0.951791,
		0.630278, 0.776228, 0.014793,
		-0.741827, 0.596506, 0.306390,
		39.528065, 29.876030, 47.893307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.236546, 31.227596, 48.252010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602337, 31.065739, 48.251675>,  <33.821812, 30.968624, 48.251472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.602337, 31.065739, 48.251675>,  <33.236546, 31.227596, 48.252010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602337, 31.065739, 48.251675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096969, 0.221147, -0.970408,
		0.392854, 0.887332, 0.241471,
		0.914474, -0.404643, -0.000835,
		33.876678, 30.944345, 48.251423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598915, 31.703602, 47.945423>,  <33.236546, 31.227596, 48.252010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598915, 31.703602, 47.945423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.821041, 31.372847, 47.909920>,  <33.954315, 31.174393, 47.888618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.821041, 31.372847, 47.909920>,  <33.598915, 31.703602, 47.945423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821041, 31.372847, 47.909920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143100, 0.200144, -0.969260,
		0.819236, 0.525543, 0.229471,
		0.555315, -0.826890, -0.088760,
		33.987637, 31.124779, 47.883293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293343, 31.855999, 47.628857>,  <33.598915, 31.703602, 47.945423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293343, 31.855999, 47.628857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225208, 31.471100, 47.543945>,  <34.184330, 31.240160, 47.492996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225208, 31.471100, 47.543945>,  <34.293343, 31.855999, 47.628857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225208, 31.471100, 47.543945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140479, 0.189518, -0.971776,
		0.975322, -0.195346, 0.102895,
		-0.170332, -0.962249, -0.212283,
		34.174110, 31.182425, 47.480259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773632, 31.688696, 47.057022>,  <34.293343, 31.855999, 47.628857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773632, 31.688696, 47.057022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.485371, 31.411499, 47.048901>,  <34.312412, 31.245180, 47.044025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.485371, 31.411499, 47.048901>,  <34.773632, 31.688696, 47.057022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485371, 31.411499, 47.048901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073991, -0.047757, -0.996115,
		0.689331, -0.719360, 0.085692,
		-0.720658, -0.692994, -0.020306,
		34.269173, 31.203602, 47.042809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017853, 31.320927, 46.627876>,  <34.773632, 31.688696, 47.057022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017853, 31.320927, 46.627876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641075, 31.187614, 46.644192>,  <34.415009, 31.107628, 46.653980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641075, 31.187614, 46.644192>,  <35.017853, 31.320927, 46.627876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641075, 31.187614, 46.644192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046274, 0.008538, -0.998892,
		0.332564, -0.942789, -0.023464,
		-0.941945, -0.333282, 0.040787,
		34.358490, 31.087631, 46.656429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995270, 30.855494, 46.150440>,  <35.017853, 31.320927, 46.627876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995270, 30.855494, 46.150440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611565, 30.955511, 46.203041>,  <34.381340, 31.015522, 46.234600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611565, 30.955511, 46.203041>,  <34.995270, 30.855494, 46.150440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611565, 30.955511, 46.203041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059605, 0.275872, -0.959345,
		-0.276157, -0.928102, -0.249730,
		-0.959262, 0.250045, 0.131504,
		34.323788, 31.030525, 46.242493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641502, 30.485098, 45.636620>,  <34.995270, 30.855494, 46.150440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641502, 30.485098, 45.636620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410286, 30.792162, 45.747307>,  <34.271557, 30.976400, 45.813717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410286, 30.792162, 45.747307>,  <34.641502, 30.485098, 45.636620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410286, 30.792162, 45.747307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146148, 0.236229, -0.960644,
		-0.802816, -0.595729, -0.024357,
		-0.578037, 0.767660, 0.276713,
		34.236874, 31.022461, 45.830322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121944, 30.505121, 45.137466>,  <34.641502, 30.485098, 45.636620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121944, 30.505121, 45.137466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.104710, 30.872761, 45.294128>,  <34.094368, 31.093346, 45.388126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.104710, 30.872761, 45.294128>,  <34.121944, 30.505121, 45.137466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104710, 30.872761, 45.294128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170982, 0.379455, -0.909274,
		-0.984331, -0.106148, 0.140798,
		-0.043091, 0.919101, 0.391659,
		34.091782, 31.148491, 45.411625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602917, 30.762768, 44.767387>,  <34.121944, 30.505121, 45.137466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602917, 30.762768, 44.767387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788486, 31.084429, 44.916039>,  <33.899830, 31.277426, 45.005230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788486, 31.084429, 44.916039>,  <33.602917, 30.762768, 44.767387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788486, 31.084429, 44.916039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054344, 0.444553, -0.894103,
		-0.884206, 0.394600, 0.249940,
		0.463924, 0.804154, 0.371632,
		33.927666, 31.325674, 45.027527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182640, 31.439072, 44.622364>,  <33.602917, 30.762768, 44.767387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182640, 31.439072, 44.622364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.561104, 31.543585, 44.698792>,  <33.788181, 31.606293, 44.744648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.561104, 31.543585, 44.698792>,  <33.182640, 31.439072, 44.622364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561104, 31.543585, 44.698792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033536, 0.666224, -0.744997,
		-0.321947, 0.698482, 0.639119,
		0.946164, 0.261283, 0.191065,
		33.844952, 31.621969, 44.756111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188072, 32.154854, 44.660786>,  <33.182640, 31.439072, 44.622364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188072, 32.154854, 44.660786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554928, 32.038521, 44.551765>,  <33.775040, 31.968721, 44.486355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554928, 32.038521, 44.551765>,  <33.188072, 32.154854, 44.660786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554928, 32.038521, 44.551765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029182, 0.632974, -0.773623,
		0.397509, 0.717470, 0.572035,
		0.917134, -0.290829, -0.272550,
		33.830067, 31.951273, 44.470001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633530, 32.755081, 44.719379>,  <33.188072, 32.154854, 44.660786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633530, 32.755081, 44.719379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814877, 32.503422, 44.466831>,  <33.923687, 32.352425, 44.315304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814877, 32.503422, 44.466831>,  <33.633530, 32.755081, 44.719379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814877, 32.503422, 44.466831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167198, 0.755806, -0.633089,
		0.875500, 0.181460, 0.447853,
		0.453371, -0.629149, -0.631369,
		33.950890, 32.314678, 44.277420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043766, 33.194462, 44.309216>,  <33.633530, 32.755081, 44.719379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043766, 33.194462, 44.309216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.101078, 32.855045, 44.105469>,  <34.135468, 32.651398, 43.983223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.101078, 32.855045, 44.105469>,  <34.043766, 33.194462, 44.309216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101078, 32.855045, 44.105469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211684, 0.529040, -0.821770,
		0.966778, 0.009921, 0.255424,
		0.143282, -0.848539, -0.509364,
		34.144062, 32.600483, 43.952660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642471, 33.139309, 43.705780>,  <34.043766, 33.194462, 44.309216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642471, 33.139309, 43.705780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353191, 32.883781, 43.600792>,  <34.179623, 32.730465, 43.537800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353191, 32.883781, 43.600792>,  <34.642471, 33.139309, 43.705780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353191, 32.883781, 43.600792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054627, 0.325934, -0.943813,
		0.688476, -0.696902, -0.200818,
		-0.723199, -0.638822, -0.262467,
		34.136230, 32.692135, 43.522053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121441, 33.513519, 43.870743>,  <34.642471, 33.139309, 43.705780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121441, 33.513519, 43.870743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.327293, 33.856129, 43.855114>,  <35.450806, 34.061695, 43.845737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.327293, 33.856129, 43.855114>,  <35.121441, 33.513519, 43.870743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327293, 33.856129, 43.855114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209319, -0.081320, 0.974460,
		0.831469, -0.509665, -0.221136,
		0.514632, 0.856521, -0.039067,
		35.481682, 34.113087, 43.843395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752956, 33.426670, 44.238445>,  <35.121441, 33.513519, 43.870743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752956, 33.426670, 44.238445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.724480, 33.825569, 44.230240>,  <35.707394, 34.064911, 44.225319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.724480, 33.825569, 44.230240>,  <35.752956, 33.426670, 44.238445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724480, 33.825569, 44.230240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378850, 0.046055, 0.924311,
		0.922715, 0.058034, -0.381088,
		-0.071193, 0.997252, -0.020509,
		35.703121, 34.124744, 44.224087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417675, 33.680248, 44.407173>,  <35.752956, 33.426670, 44.238445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417675, 33.680248, 44.407173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145824, 33.964336, 44.480598>,  <35.982716, 34.134789, 44.524654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145824, 33.964336, 44.480598>,  <36.417675, 33.680248, 44.407173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145824, 33.964336, 44.480598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400848, 0.149993, 0.903782,
		0.614354, 0.687812, -0.386631,
		-0.679625, 0.710223, 0.183559,
		35.941936, 34.177402, 44.535667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803448, 34.346130, 44.727848>,  <36.417675, 33.680248, 44.407173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803448, 34.346130, 44.727848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413136, 34.311497, 44.808208>,  <36.178947, 34.290718, 44.856426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413136, 34.311497, 44.808208>,  <36.803448, 34.346130, 44.727848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413136, 34.311497, 44.808208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188205, 0.135898, 0.972682,
		-0.111521, 0.986932, -0.116310,
		-0.975778, -0.086585, 0.200901,
		36.120403, 34.285522, 44.868477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652058, 34.842960, 45.341972>,  <36.803448, 34.346130, 44.727848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652058, 34.842960, 45.341972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.343075, 34.589371, 45.356895>,  <36.157684, 34.437218, 45.365849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.343075, 34.589371, 45.356895>,  <36.652058, 34.842960, 45.341972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343075, 34.589371, 45.356895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107103, 0.187945, 0.976323,
		-0.625976, 0.750168, -0.213079,
		-0.772453, -0.633976, 0.037304,
		36.111340, 34.399178, 45.368088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263599, 35.273106, 45.795525>,  <36.652058, 34.842960, 45.341972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263599, 35.273106, 45.795525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.128727, 34.896732, 45.807812>,  <36.047802, 34.670906, 45.815182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.128727, 34.896732, 45.807812>,  <36.263599, 35.273106, 45.795525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128727, 34.896732, 45.807812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015582, 0.038199, 0.999149,
		-0.941310, 0.336419, -0.027542,
		-0.337185, -0.940937, 0.030715,
		36.027573, 34.614452, 45.817028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725113, 35.181316, 46.431896>,  <36.263599, 35.273106, 45.795525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725113, 35.181316, 46.431896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.750248, 34.789810, 46.353844>,  <35.765331, 34.554909, 46.307014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.750248, 34.789810, 46.353844>,  <35.725113, 35.181316, 46.431896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750248, 34.789810, 46.353844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158277, -0.183267, 0.970238,
		-0.985393, -0.091856, 0.143398,
		0.062842, -0.978762, -0.195129,
		35.769100, 34.496181, 46.295303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271957, 34.843029, 46.945160>,  <35.725113, 35.181316, 46.431896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271957, 34.843029, 46.945160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518089, 34.559616, 46.806969>,  <35.665768, 34.389568, 46.724052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518089, 34.559616, 46.806969>,  <35.271957, 34.843029, 46.945160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518089, 34.559616, 46.806969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190455, -0.291657, 0.937370,
		-0.764918, -0.642587, -0.044521,
		0.615327, -0.708532, -0.345478,
		35.702686, 34.347057, 46.703327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064037, 34.101185, 47.200333>,  <35.271957, 34.843029, 46.945160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064037, 34.101185, 47.200333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.455654, 34.093861, 47.119202>,  <35.690624, 34.089466, 47.070522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.455654, 34.093861, 47.119202>,  <35.064037, 34.101185, 47.200333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455654, 34.093861, 47.119202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187782, -0.304321, 0.933877,
		-0.078828, -0.952393, -0.294504,
		0.979042, -0.018313, -0.202831,
		35.749367, 34.088367, 47.058353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299934, 33.435970, 47.461731>,  <35.064037, 34.101185, 47.200333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299934, 33.435970, 47.461731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630306, 33.660507, 47.440804>,  <35.828529, 33.795231, 47.428249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630306, 33.660507, 47.440804>,  <35.299934, 33.435970, 47.461731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630306, 33.660507, 47.440804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309737, -0.374271, 0.874062,
		0.471067, -0.738117, -0.482990,
		0.825929, 0.561341, -0.052316,
		35.878086, 33.828911, 47.425110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760094, 32.900959, 47.656727>,  <35.299934, 33.435970, 47.461731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760094, 32.900959, 47.656727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969978, 33.235863, 47.718269>,  <36.095909, 33.436806, 47.755196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969978, 33.235863, 47.718269>,  <35.760094, 32.900959, 47.656727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969978, 33.235863, 47.718269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332517, -0.367956, 0.868355,
		0.783653, -0.404476, -0.471474,
		0.524711, 0.837262, 0.153854,
		36.127392, 33.487041, 47.764427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571545, 32.722645, 47.641205>,  <35.760094, 32.900959, 47.656727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571545, 32.722645, 47.641205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.491280, 33.043823, 47.865707>,  <36.443119, 33.236530, 48.000408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.491280, 33.043823, 47.865707>,  <36.571545, 32.722645, 47.641205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491280, 33.043823, 47.865707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404138, -0.454038, 0.794054,
		0.892416, 0.386161, -0.233394,
		-0.200663, 0.802950, 0.561254,
		36.431080, 33.284710, 48.034084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279850, 32.918846, 47.847466>,  <36.571545, 32.722645, 47.641205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279850, 32.918846, 47.847466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.976349, 33.062405, 48.064899>,  <36.794247, 33.148540, 48.195358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.976349, 33.062405, 48.064899>,  <37.279850, 32.918846, 47.847466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976349, 33.062405, 48.064899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435811, -0.340512, 0.833139,
		0.484107, 0.869049, 0.101954,
		-0.758755, 0.358896, 0.543585,
		36.748722, 33.170074, 48.227974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612598, 33.241920, 48.424667>,  <37.279850, 32.918846, 47.847466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612598, 33.241920, 48.424667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228294, 33.202633, 48.528427>,  <36.997711, 33.179062, 48.590683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228294, 33.202633, 48.528427>,  <37.612598, 33.241920, 48.424667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228294, 33.202633, 48.528427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275059, -0.216921, 0.936636,
		-0.035724, 0.971236, 0.235425,
		-0.960763, -0.098216, 0.259398,
		36.940063, 33.173168, 48.606247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086540, 33.564564, 48.865028>,  <37.612598, 33.241920, 48.424667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086540, 33.564564, 48.865028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.483894, 33.525902, 48.889816>,  <38.722305, 33.502705, 48.904690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.483894, 33.525902, 48.889816>,  <38.086540, 33.564564, 48.865028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483894, 33.525902, 48.889816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111214, 0.675863, -0.728588,
		0.028535, 0.730662, 0.682143,
		0.993387, -0.096654, 0.061974,
		38.781910, 33.496906, 48.908409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411060, 34.213673, 48.841190>,  <38.086540, 33.564564, 48.865028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411060, 34.213673, 48.841190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687935, 33.960148, 48.703114>,  <38.854061, 33.808033, 48.620266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.687935, 33.960148, 48.703114>,  <38.411060, 34.213673, 48.841190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687935, 33.960148, 48.703114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221678, 0.641886, -0.734058,
		0.686830, 0.431583, 0.584808,
		0.692187, -0.633812, -0.345194,
		38.895592, 33.770004, 48.599556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798531, 34.725819, 48.387978>,  <38.411060, 34.213673, 48.841190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798531, 34.725819, 48.387978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979877, 34.382412, 48.292141>,  <39.088684, 34.176369, 48.234638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979877, 34.382412, 48.292141>,  <38.798531, 34.725819, 48.387978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979877, 34.382412, 48.292141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032324, 0.284460, -0.958143,
		0.890738, 0.426645, 0.156715,
		0.453366, -0.858520, -0.239588,
		39.115887, 34.124855, 48.220264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385654, 34.829723, 47.897671>,  <38.798531, 34.725819, 48.387978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385654, 34.829723, 47.897671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.254097, 34.455795, 47.844101>,  <39.175163, 34.231438, 47.811958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.254097, 34.455795, 47.844101>,  <39.385654, 34.829723, 47.897671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254097, 34.455795, 47.844101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082700, 0.169778, -0.982006,
		0.940740, -0.311897, -0.133149,
		-0.328890, -0.934824, -0.133923,
		39.155430, 34.175346, 47.803925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779453, 34.678986, 47.261292>,  <39.385654, 34.829723, 47.897671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779453, 34.678986, 47.261292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.477951, 34.421604, 47.314678>,  <39.297050, 34.267174, 47.346710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.477951, 34.421604, 47.314678>,  <39.779453, 34.678986, 47.261292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477951, 34.421604, 47.314678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274571, 0.123850, -0.953558,
		0.597043, -0.755398, -0.270027,
		-0.753758, -0.643456, 0.133466,
		39.251823, 34.228569, 47.354717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912609, 34.163059, 46.744987>,  <39.779453, 34.678986, 47.261292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912609, 34.163059, 46.744987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.532291, 34.151817, 46.868408>,  <39.304100, 34.145073, 46.942459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.532291, 34.151817, 46.868408>,  <39.912609, 34.163059, 46.744987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532291, 34.151817, 46.868408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306213, -0.066409, -0.949644,
		0.047178, -0.997397, 0.054535,
		-0.950793, -0.028103, 0.308549,
		39.247055, 34.143387, 46.960972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696308, 33.561008, 46.376823>,  <39.912609, 34.163059, 46.744987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696308, 33.561008, 46.376823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391735, 33.801357, 46.474129>,  <39.208992, 33.945568, 46.532513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391735, 33.801357, 46.474129>,  <39.696308, 33.561008, 46.376823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391735, 33.801357, 46.474129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187893, 0.154578, -0.969949,
		-0.620420, -0.784255, -0.004800,
		-0.761429, 0.600874, 0.243259,
		39.163307, 33.981621, 46.547108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255089, 33.416039, 45.873096>,  <39.696308, 33.561008, 46.376823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255089, 33.416039, 45.873096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.127399, 33.770885, 46.006435>,  <39.050785, 33.983795, 46.086441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.127399, 33.770885, 46.006435>,  <39.255089, 33.416039, 45.873096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127399, 33.770885, 46.006435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253103, 0.259168, -0.932079,
		-0.913256, -0.381912, 0.141799,
		-0.319223, 0.887116, 0.333349,
		39.031631, 34.037022, 46.106441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682224, 33.640022, 45.418976>,  <39.255089, 33.416039, 45.873096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682224, 33.640022, 45.418976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.815025, 33.984272, 45.573433>,  <38.894707, 34.190823, 45.666107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.815025, 33.984272, 45.573433>,  <38.682224, 33.640022, 45.418976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815025, 33.984272, 45.573433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146433, 0.451422, -0.880213,
		-0.931844, 0.235686, 0.275895,
		0.331999, 0.860622, 0.386143,
		38.914623, 34.242458, 45.689278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224617, 34.113510, 45.124565>,  <38.682224, 33.640022, 45.418976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224617, 34.113510, 45.124565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.524281, 34.350098, 45.243851>,  <38.704079, 34.492050, 45.315422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.524281, 34.350098, 45.243851>,  <38.224617, 34.113510, 45.124565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524281, 34.350098, 45.243851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084269, 0.531650, -0.842761,
		-0.657009, 0.606231, 0.448132,
		0.749158, 0.591466, 0.298213,
		38.749027, 34.527538, 45.333313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092552, 34.653088, 44.783173>,  <38.224617, 34.113510, 45.124565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092552, 34.653088, 44.783173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.463329, 34.739967, 44.905552>,  <38.685795, 34.792095, 44.978981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.463329, 34.739967, 44.905552>,  <38.092552, 34.653088, 44.783173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463329, 34.739967, 44.905552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154631, 0.521821, -0.838923,
		-0.341863, 0.824942, 0.450112,
		0.926941, 0.217196, 0.305953,
		38.741413, 34.805126, 44.997337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174332, 35.352512, 44.859692>,  <38.092552, 34.653088, 44.783173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174332, 35.352512, 44.859692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545380, 35.228481, 44.776390>,  <38.768009, 35.154060, 44.726410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545380, 35.228481, 44.776390>,  <38.174332, 35.352512, 44.859692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545380, 35.228481, 44.776390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020877, 0.599712, -0.799943,
		0.372942, 0.737696, 0.562779,
		0.927620, -0.310081, -0.208257,
		38.823666, 35.135456, 44.713913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604385, 35.975853, 44.665081>,  <38.174332, 35.352512, 44.859692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604385, 35.975853, 44.665081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.818466, 35.677052, 44.507320>,  <38.946915, 35.497772, 44.412666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.818466, 35.677052, 44.507320>,  <38.604385, 35.975853, 44.665081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818466, 35.677052, 44.507320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077286, 0.508239, -0.857741,
		0.841183, 0.428580, 0.329742,
		0.535198, -0.747002, -0.394399,
		38.979027, 35.452950, 44.389000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056217, 36.176777, 44.154705>,  <38.604385, 35.975853, 44.665081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056217, 36.176777, 44.154705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.086357, 35.787853, 44.066219>,  <39.104443, 35.554501, 44.013126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.086357, 35.787853, 44.066219>,  <39.056217, 36.176777, 44.154705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086357, 35.787853, 44.066219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032699, 0.224138, -0.974008,
		0.996620, 0.066161, 0.048683,
		0.075353, -0.972309, -0.221218,
		39.108963, 35.496162, 43.999855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.284412, 42.989536, 35.920383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.964697, 43.011475, 35.681007>,  <26.772867, 43.024639, 35.537384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.964697, 43.011475, 35.681007>,  <27.284412, 42.989536, 35.920383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964697, 43.011475, 35.681007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010814, -0.996978, -0.076932,
		-0.600848, -0.055019, 0.797468,
		-0.799290, 0.054848, -0.598437,
		26.724911, 43.027927, 35.501476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726007, 42.583908, 36.188442>,  <27.284412, 42.989536, 35.920383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726007, 42.583908, 36.188442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.709093, 42.575027, 35.788898>,  <26.698944, 42.569698, 35.549171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.709093, 42.575027, 35.788898>,  <26.726007, 42.583908, 36.188442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709093, 42.575027, 35.788898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062048, -0.997765, 0.024800,
		-0.997177, 0.063026, 0.040814,
		-0.042286, -0.022197, -0.998859,
		26.696407, 42.568367, 35.489243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131989, 42.096771, 36.045547>,  <26.726007, 42.583908, 36.188442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131989, 42.096771, 36.045547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338175, 42.115978, 35.703323>,  <26.461885, 42.127502, 35.497990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338175, 42.115978, 35.703323>,  <26.131989, 42.096771, 36.045547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338175, 42.115978, 35.703323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042964, -0.995724, -0.081774,
		-0.855834, 0.078910, -0.511197,
		0.515464, 0.048022, -0.855565,
		26.492813, 42.130386, 35.446655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712252, 41.736855, 35.500599>,  <26.131989, 42.096771, 36.045547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712252, 41.736855, 35.500599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.099110, 41.730175, 35.399124>,  <26.331224, 41.726170, 35.338242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.099110, 41.730175, 35.399124>,  <25.712252, 41.736855, 35.500599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099110, 41.730175, 35.399124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080667, -0.966431, -0.243933,
		-0.241095, 0.256382, -0.936024,
		0.967143, -0.016696, -0.253683,
		26.389252, 41.725166, 35.323021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694351, 41.201305, 35.002193>,  <25.712252, 41.736855, 35.500599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694351, 41.201305, 35.002193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.085581, 41.263992, 35.057056>,  <26.320318, 41.301605, 35.089973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.085581, 41.263992, 35.057056>,  <25.694351, 41.201305, 35.002193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085581, 41.263992, 35.057056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183472, -0.960030, -0.211377,
		0.098547, 0.231906, -0.967733,
		0.978073, 0.156722, 0.137156,
		26.379004, 41.311008, 35.098202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070009, 40.793541, 34.436996>,  <25.694351, 41.201305, 35.002193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070009, 40.793541, 34.436996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.328434, 40.862011, 34.734535>,  <26.483490, 40.903091, 34.913059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.328434, 40.862011, 34.734535>,  <26.070009, 40.793541, 34.436996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328434, 40.862011, 34.734535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283036, -0.958778, -0.025199,
		0.708866, 0.226814, -0.667880,
		0.646064, 0.171171, 0.743842,
		26.522253, 40.913361, 34.957687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770493, 40.532810, 34.307796>,  <26.070009, 40.793541, 34.436996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770493, 40.532810, 34.307796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.752033, 40.524429, 34.707283>,  <26.740957, 40.519402, 34.946976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.752033, 40.524429, 34.707283>,  <26.770493, 40.532810, 34.307796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752033, 40.524429, 34.707283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392471, -0.919764, -0.001160,
		0.918606, 0.391913, 0.050669,
		-0.046149, -0.020952, 0.998715,
		26.738188, 40.518143, 35.006897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298269, 40.129562, 34.430782>,  <26.770493, 40.532810, 34.307796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298269, 40.129562, 34.430782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.076771, 40.135948, 34.763794>,  <26.943871, 40.139778, 34.963600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.076771, 40.135948, 34.763794>,  <27.298269, 40.129562, 34.430782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076771, 40.135948, 34.763794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308179, -0.924891, 0.222718,
		0.773556, 0.379899, 0.507236,
		-0.553748, 0.015965, 0.832531,
		26.910646, 40.140739, 35.013554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707470, 39.831177, 34.948872>,  <27.298269, 40.129562, 34.430782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707470, 39.831177, 34.948872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.341211, 39.801872, 35.106976>,  <27.121456, 39.784290, 35.201836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.341211, 39.801872, 35.106976>,  <27.707470, 39.831177, 34.948872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341211, 39.801872, 35.106976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237634, -0.891704, 0.385219,
		0.324230, 0.446650, 0.833894,
		-0.915644, -0.073262, 0.395257,
		27.066519, 39.779892, 35.225552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768721, 39.637569, 35.582809>,  <27.707470, 39.831177, 34.948872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768721, 39.637569, 35.582809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.387861, 39.527718, 35.529156>,  <27.159346, 39.461807, 35.496964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.387861, 39.527718, 35.529156>,  <27.768721, 39.637569, 35.582809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387861, 39.527718, 35.529156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197664, -0.888039, 0.415109,
		-0.233116, 0.368733, 0.899830,
		-0.952148, -0.274632, -0.134131,
		27.102217, 39.445328, 35.488918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536446, 39.118519, 36.046051>,  <27.768721, 39.637569, 35.582809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536446, 39.118519, 36.046051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.266872, 39.058025, 35.756790>,  <27.105129, 39.021729, 35.583233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.266872, 39.058025, 35.756790>,  <27.536446, 39.118519, 36.046051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266872, 39.058025, 35.756790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070374, -0.987515, 0.140933,
		-0.735434, 0.044088, 0.676161,
		-0.673932, -0.151231, -0.723149,
		27.064693, 39.012657, 35.539845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985495, 38.680256, 36.384506>,  <27.536446, 39.118519, 36.046051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985495, 38.680256, 36.384506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.958353, 38.634018, 35.988117>,  <26.942068, 38.606277, 35.750282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.958353, 38.634018, 35.988117>,  <26.985495, 38.680256, 36.384506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958353, 38.634018, 35.988117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029969, -0.993054, 0.113782,
		-0.997245, -0.021978, 0.070846,
		-0.067854, -0.115591, -0.990976,
		26.937998, 38.599342, 35.690823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647203, 38.056629, 36.319183>,  <26.985495, 38.680256, 36.384506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647203, 38.056629, 36.319183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.790960, 38.114639, 35.950443>,  <26.877214, 38.149445, 35.729198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.790960, 38.114639, 35.950443>,  <26.647203, 38.056629, 36.319183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790960, 38.114639, 35.950443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168748, -0.981665, -0.088644,
		-0.917802, -0.123702, -0.377275,
		0.359393, 0.145022, -0.921849,
		26.898779, 38.158146, 35.673889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235222, 37.632473, 35.749207>,  <26.647203, 38.056629, 36.319183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235222, 37.632473, 35.749207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.597239, 37.707920, 35.596722>,  <26.814447, 37.753189, 35.505230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.597239, 37.707920, 35.596722>,  <26.235222, 37.632473, 35.749207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597239, 37.707920, 35.596722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169123, -0.981980, -0.084342,
		-0.390254, 0.011860, -0.920631,
		0.905041, 0.188615, -0.381216,
		26.868752, 37.764503, 35.482357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328035, 37.077587, 35.285328>,  <26.235222, 37.632473, 35.749207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328035, 37.077587, 35.285328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.692522, 37.238564, 35.320496>,  <26.911213, 37.335148, 35.341599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.692522, 37.238564, 35.320496>,  <26.328035, 37.077587, 35.285328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692522, 37.238564, 35.320496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407312, -0.912107, -0.046439,
		0.061507, 0.078128, -0.995044,
		0.911215, 0.402437, 0.087924,
		26.965887, 37.359295, 35.346874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856050, 36.812275, 34.799698>,  <26.328035, 37.077587, 35.285328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856050, 36.812275, 34.799698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108210, 36.979416, 35.061382>,  <27.259504, 37.079700, 35.218395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108210, 36.979416, 35.061382>,  <26.856050, 36.812275, 34.799698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108210, 36.979416, 35.061382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562342, -0.826790, -0.013787,
		0.535138, 0.376584, -0.756182,
		0.630396, 0.417855, 0.654216,
		27.297329, 37.104771, 35.257648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549814, 36.624165, 34.540020>,  <26.856050, 36.812275, 34.799698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549814, 36.624165, 34.540020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574492, 36.722408, 34.926983>,  <27.589298, 36.781353, 35.159161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574492, 36.722408, 34.926983>,  <27.549814, 36.624165, 34.540020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574492, 36.722408, 34.926983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508611, -0.841700, 0.181260,
		0.858783, 0.480850, -0.176845,
		0.061692, 0.245608, 0.967404,
		27.592999, 36.796089, 35.217205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312696, 36.646915, 34.809544>,  <27.549814, 36.624165, 34.540020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312696, 36.646915, 34.809544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.080713, 36.571190, 35.126480>,  <27.941523, 36.525753, 35.316643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.080713, 36.571190, 35.126480>,  <28.312696, 36.646915, 34.809544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080713, 36.571190, 35.126480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587492, -0.770995, 0.245804,
		0.564359, 0.608052, 0.558365,
		-0.579958, -0.189314, 0.792344,
		27.906725, 36.514397, 35.364182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752815, 36.642960, 35.389103>,  <28.312696, 36.646915, 34.809544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752815, 36.642960, 35.389103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442158, 36.402859, 35.465538>,  <28.255762, 36.258797, 35.511398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442158, 36.402859, 35.465538>,  <28.752815, 36.642960, 35.389103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442158, 36.402859, 35.465538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628914, -0.756137, 0.180900,
		0.035901, 0.260672, 0.964760,
		-0.776645, -0.600256, 0.191087,
		28.209164, 36.222782, 35.522865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073994, 36.128105, 35.614162>,  <28.752815, 36.642960, 35.389103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073994, 36.128105, 35.614162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.710489, 35.961262, 35.608887>,  <28.492386, 35.861156, 35.605721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.710489, 35.961262, 35.608887>,  <29.073994, 36.128105, 35.614162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710489, 35.961262, 35.608887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414233, -0.905432, 0.092758,
		-0.050636, 0.078829, 0.995601,
		-0.908761, -0.417108, -0.013193,
		28.437860, 35.836128, 35.604927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074116, 35.550095, 36.100788>,  <29.073994, 36.128105, 35.614162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074116, 35.550095, 36.100788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.804888, 35.501244, 35.809017>,  <28.643351, 35.471931, 35.633957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.804888, 35.501244, 35.809017>,  <29.074116, 35.550095, 36.100788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804888, 35.501244, 35.809017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256439, -0.963624, -0.075287,
		-0.693695, -0.237726, 0.679907,
		-0.673072, -0.122128, -0.729423,
		28.602966, 35.464603, 35.590191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849840, 35.751072, 36.091282>,  <29.074116, 35.550095, 36.100788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849840, 35.751072, 36.091282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.195332, 35.791649, 36.288742>,  <30.402626, 35.815994, 36.407219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.195332, 35.791649, 36.288742>,  <29.849840, 35.751072, 36.091282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195332, 35.791649, 36.288742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087728, 0.994841, -0.050933,
		-0.496267, 0.000686, 0.868170,
		0.863726, 0.101439, 0.493646,
		30.454449, 35.822083, 36.436836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617617, 36.101669, 36.698608>,  <29.849840, 35.751072, 36.091282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617617, 36.101669, 36.698608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997292, 36.188728, 36.607685>,  <30.225096, 36.240963, 36.553131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997292, 36.188728, 36.607685>,  <29.617617, 36.101669, 36.698608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997292, 36.188728, 36.607685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217282, 0.975736, 0.026965,
		0.227666, 0.023796, 0.973448,
		0.949187, 0.217652, -0.227313,
		30.282047, 36.254025, 36.539490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790621, 36.770576, 37.131168>,  <29.617617, 36.101669, 36.698608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790621, 36.770576, 37.131168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.106276, 36.747784, 36.886539>,  <30.295668, 36.734108, 36.739761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.106276, 36.747784, 36.886539>,  <29.790621, 36.770576, 37.131168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106276, 36.747784, 36.886539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080478, 0.996696, 0.010977,
		0.608923, -0.057881, 0.791114,
		0.789136, -0.056983, -0.611570,
		30.343016, 36.730690, 36.703068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284889, 37.241272, 37.378323>,  <29.790621, 36.770576, 37.131168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284889, 37.241272, 37.378323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.375340, 37.191566, 36.991867>,  <30.429609, 37.161743, 36.759995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.375340, 37.191566, 36.991867>,  <30.284889, 37.241272, 37.378323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375340, 37.191566, 36.991867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044633, 0.992110, -0.117154,
		0.973074, -0.016630, 0.229890,
		0.226128, -0.124261, -0.966139,
		30.443178, 37.154289, 36.702026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959198, 37.684849, 37.242474>,  <30.284889, 37.241272, 37.378323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959198, 37.684849, 37.242474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.727255, 37.612190, 36.924789>,  <30.588089, 37.568596, 36.734180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.727255, 37.612190, 36.924789>,  <30.959198, 37.684849, 37.242474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727255, 37.612190, 36.924789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120466, 0.944997, -0.304087,
		0.805762, -0.272003, -0.526082,
		-0.579859, -0.181647, -0.794209,
		30.553297, 37.557697, 36.686527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287638, 38.009796, 36.673088>,  <30.959198, 37.684849, 37.242474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287638, 38.009796, 36.673088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910664, 37.950466, 36.553211>,  <30.684479, 37.914867, 36.481285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910664, 37.950466, 36.553211>,  <31.287638, 38.009796, 36.673088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910664, 37.950466, 36.553211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026970, 0.859605, -0.510246,
		0.333294, -0.488958, -0.806124,
		-0.942437, -0.148321, -0.299689,
		30.627932, 37.905972, 36.463306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224463, 38.159554, 35.951485>,  <31.287638, 38.009796, 36.673088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224463, 38.159554, 35.951485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.861782, 38.200676, 36.115105>,  <30.644173, 38.225349, 36.213276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.861782, 38.200676, 36.115105>,  <31.224463, 38.159554, 35.951485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861782, 38.200676, 36.115105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095473, 0.894640, -0.436467,
		-0.410824, -0.434799, -0.801357,
		-0.906702, 0.102803, 0.409051,
		30.589771, 38.231518, 36.237820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979723, 38.546471, 35.353836>,  <31.224463, 38.159554, 35.951485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979723, 38.546471, 35.353836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.752022, 38.603790, 35.677666>,  <30.615400, 38.638180, 35.871964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.752022, 38.603790, 35.677666>,  <30.979723, 38.546471, 35.353836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752022, 38.603790, 35.677666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292223, 0.885131, -0.362145,
		-0.768477, -0.442730, -0.461988,
		-0.569252, 0.143297, 0.809579,
		30.581245, 38.646778, 35.920540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255352, 38.851238, 35.188129>,  <30.979723, 38.546471, 35.353836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255352, 38.851238, 35.188129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.267338, 38.901447, 35.584785>,  <30.274529, 38.931572, 35.822777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.267338, 38.901447, 35.584785>,  <30.255352, 38.851238, 35.188129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267338, 38.901447, 35.584785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567559, 0.818777, -0.086495,
		-0.822787, -0.560221, 0.095779,
		0.029966, 0.125527, 0.991638,
		30.276327, 38.939106, 35.882278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603300, 39.119900, 35.337116>,  <30.255352, 38.851238, 35.188129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603300, 39.119900, 35.337116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852201, 39.213840, 35.635818>,  <30.001541, 39.270206, 35.815041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852201, 39.213840, 35.635818>,  <29.603300, 39.119900, 35.337116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852201, 39.213840, 35.635818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368638, 0.929454, 0.014867,
		-0.690586, -0.284535, 0.664929,
		0.622251, 0.234851, 0.746759,
		30.038877, 39.284294, 35.859844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200943, 39.509933, 35.767483>,  <29.603300, 39.119900, 35.337116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200943, 39.509933, 35.767483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573406, 39.604340, 35.878651>,  <29.796885, 39.660984, 35.945351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573406, 39.604340, 35.878651>,  <29.200943, 39.509933, 35.767483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573406, 39.604340, 35.878651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209528, 0.970178, -0.121871,
		-0.298395, 0.055250, 0.952842,
		0.931160, 0.236013, 0.277920,
		29.852755, 39.675144, 35.962025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158638, 39.883053, 36.355057>,  <29.200943, 39.509933, 35.767483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158638, 39.883053, 36.355057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.518841, 39.991337, 36.218933>,  <29.734962, 40.056305, 36.137260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.518841, 39.991337, 36.218933>,  <29.158638, 39.883053, 36.355057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518841, 39.991337, 36.218933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238191, 0.961816, 0.134813,
		0.363806, -0.040342, 0.930601,
		0.900506, 0.270707, -0.340306,
		29.788992, 40.072548, 36.116840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345848, 40.547894, 36.737823>,  <29.158638, 39.883053, 36.355057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345848, 40.547894, 36.737823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573887, 40.553707, 36.409245>,  <29.710711, 40.557198, 36.212097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573887, 40.553707, 36.409245>,  <29.345848, 40.547894, 36.737823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573887, 40.553707, 36.409245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178320, 0.978198, -0.106447,
		0.801991, 0.207166, 0.560261,
		0.570098, 0.014537, -0.821448,
		29.744917, 40.558067, 36.162811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493610, 41.156540, 36.622437>,  <29.345848, 40.547894, 36.737823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493610, 41.156540, 36.622437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.633688, 41.054714, 36.261868>,  <29.717733, 40.993618, 36.045525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.633688, 41.054714, 36.261868>,  <29.493610, 41.156540, 36.622437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633688, 41.054714, 36.261868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187440, 0.923850, -0.333718,
		0.917732, 0.285828, 0.275809,
		0.350192, -0.254566, -0.901422,
		29.738745, 40.978344, 35.991440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059450, 41.590786, 36.454426>,  <29.493610, 41.156540, 36.622437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059450, 41.590786, 36.454426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.931841, 41.475811, 36.093182>,  <29.855274, 41.406826, 35.876434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.931841, 41.475811, 36.093182>,  <30.059450, 41.590786, 36.454426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931841, 41.475811, 36.093182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050410, 0.946405, -0.319024,
		0.946405, -0.147302, -0.287436,
		0.319024, 0.287436, 0.903108,
		29.836134, 41.389580, 35.822250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443108, 41.996078, 36.069923>,  <30.059450, 41.590786, 36.454426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443108, 41.996078, 36.069923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.135160, 41.881672, 35.841717>,  <29.950392, 41.813026, 35.704792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.135160, 41.881672, 35.841717>,  <30.443108, 41.996078, 36.069923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135160, 41.881672, 35.841717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018842, 0.903749, -0.427648,
		0.637923, -0.318483, -0.701158,
		-0.769869, -0.286018, -0.570521,
		29.904200, 41.795868, 35.670559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574232, 42.219307, 35.429806>,  <30.443108, 41.996078, 36.069923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574232, 42.219307, 35.429806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.177166, 42.170948, 35.430298>,  <29.938927, 42.141933, 35.430592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.177166, 42.170948, 35.430298>,  <30.574232, 42.219307, 35.429806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177166, 42.170948, 35.430298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110156, 0.900167, -0.421384,
		0.049842, -0.418428, -0.906881,
		-0.992664, -0.120901, 0.001226,
		29.879366, 42.134678, 35.430664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439596, 42.520790, 34.876072>,  <30.574232, 42.219307, 35.429806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439596, 42.520790, 34.876072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.089853, 42.538673, 35.069359>,  <29.880007, 42.549404, 35.185333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.089853, 42.538673, 35.069359>,  <30.439596, 42.520790, 34.876072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089853, 42.538673, 35.069359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125628, 0.940948, -0.314378,
		-0.468741, -0.335585, -0.817107,
		-0.874357, 0.044710, 0.483220,
		29.827547, 42.552086, 35.214325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003262, 42.744064, 34.374805>,  <30.439596, 42.520790, 34.876072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003262, 42.744064, 34.374805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779356, 42.789761, 34.703102>,  <29.645012, 42.817177, 34.900078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779356, 42.789761, 34.703102>,  <30.003262, 42.744064, 34.374805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779356, 42.789761, 34.703102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363350, 0.856321, -0.367003,
		-0.744742, -0.503651, -0.437830,
		-0.559765, 0.114237, 0.820740,
		29.611427, 42.824032, 34.949326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420332, 43.205406, 34.099388>,  <30.003262, 42.744064, 34.374805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420332, 43.205406, 34.099388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413612, 43.238480, 34.497963>,  <29.409580, 43.258324, 34.737106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413612, 43.238480, 34.497963>,  <29.420332, 43.205406, 34.099388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413612, 43.238480, 34.497963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349945, 0.933057, -0.083329,
		-0.936620, -0.350097, 0.013261,
		-0.016800, 0.082688, 0.996434,
		29.408573, 43.263287, 34.796894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746862, 43.389332, 34.286621>,  <29.420332, 43.205406, 34.099388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746862, 43.389332, 34.286621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.953735, 43.490147, 34.613792>,  <29.077860, 43.550636, 34.810093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.953735, 43.490147, 34.613792>,  <28.746862, 43.389332, 34.286621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953735, 43.490147, 34.613792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301647, 0.948013, -0.101391,
		-0.800957, -0.194287, 0.566322,
		0.517182, 0.252039, 0.817924,
		29.108891, 43.565758, 34.859169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.367001, 30.094006, 48.223660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.975254, 30.056019, 48.295021>,  <39.740208, 30.033226, 48.337837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.975254, 30.056019, 48.295021>,  <40.367001, 30.094006, 48.223660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975254, 30.056019, 48.295021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179968, -0.008063, 0.983639,
		-0.091975, 0.995448, 0.024988,
		-0.979363, -0.094968, 0.178407,
		39.681446, 30.027529, 48.348541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367554, 30.554403, 48.788601>,  <40.367001, 30.094006, 48.223660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367554, 30.554403, 48.788601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.067482, 30.290741, 48.767670>,  <39.887440, 30.132544, 48.755112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.067482, 30.290741, 48.767670>,  <40.367554, 30.554403, 48.788601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067482, 30.290741, 48.767670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016507, -0.060448, 0.998035,
		-0.661026, 0.749571, 0.034466,
		-0.750181, -0.659158, -0.052331,
		39.842426, 30.092993, 48.751972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739292, 30.722002, 49.213421>,  <40.367554, 30.554403, 48.788601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739292, 30.722002, 49.213421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.691025, 30.330317, 49.148209>,  <39.662064, 30.095304, 49.109081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.691025, 30.330317, 49.148209>,  <39.739292, 30.722002, 49.213421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691025, 30.330317, 49.148209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225437, -0.186973, 0.956148,
		-0.966757, 0.078619, 0.243312,
		-0.120664, -0.979214, -0.163034,
		39.654827, 30.036552, 49.099297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330162, 30.504829, 49.826504>,  <39.739292, 30.722002, 49.213421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330162, 30.504829, 49.826504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.488445, 30.171259, 49.672626>,  <39.583416, 29.971117, 49.580299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.488445, 30.171259, 49.672626>,  <39.330162, 30.504829, 49.826504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488445, 30.171259, 49.672626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388264, -0.227698, 0.892975,
		-0.832268, -0.502715, 0.233682,
		0.395703, -0.833925, -0.384692,
		39.607155, 29.921082, 49.557220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189831, 30.042336, 50.370670>,  <39.330162, 30.504829, 49.826504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189831, 30.042336, 50.370670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.464802, 29.858717, 50.145561>,  <39.629784, 29.748547, 50.010494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.464802, 29.858717, 50.145561>,  <39.189831, 30.042336, 50.370670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464802, 29.858717, 50.145561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324811, -0.498749, 0.803584,
		-0.649565, -0.735204, -0.193752,
		0.687432, -0.459047, -0.562772,
		39.671032, 29.721003, 49.976730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149826, 29.200928, 50.491089>,  <39.189831, 30.042336, 50.370670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149826, 29.200928, 50.491089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.513962, 29.291676, 50.352638>,  <39.732445, 29.346125, 50.269566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.513962, 29.291676, 50.352638>,  <39.149826, 29.200928, 50.491089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513962, 29.291676, 50.352638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395794, -0.721624, 0.567983,
		-0.120919, -0.654056, -0.746719,
		0.910344, 0.226867, -0.346130,
		39.787064, 29.359735, 50.248798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494503, 28.550995, 50.334991>,  <39.149826, 29.200928, 50.491089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494503, 28.550995, 50.334991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.795761, 28.812428, 50.364948>,  <39.976517, 28.969288, 50.382923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.795761, 28.812428, 50.364948>,  <39.494503, 28.550995, 50.334991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795761, 28.812428, 50.364948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461990, -0.606511, 0.647077,
		0.468341, -0.452741, -0.758737,
		0.753141, 0.653582, 0.074892,
		40.021702, 29.008503, 50.387417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181366, 28.184467, 50.195988>,  <39.494503, 28.550995, 50.334991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181366, 28.184467, 50.195988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.218987, 28.503241, 50.434666>,  <40.241558, 28.694506, 50.577873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.218987, 28.503241, 50.434666>,  <40.181366, 28.184467, 50.195988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218987, 28.503241, 50.434666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446551, -0.569450, 0.690158,
		0.889801, 0.201546, -0.409430,
		0.094052, 0.796935, 0.596698,
		40.247204, 28.742321, 50.613674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886967, 28.097021, 50.445271>,  <40.181366, 28.184467, 50.195988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886967, 28.097021, 50.445271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.718502, 28.343018, 50.711926>,  <40.617424, 28.490616, 50.871918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.718502, 28.343018, 50.711926>,  <40.886967, 28.097021, 50.445271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718502, 28.343018, 50.711926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473836, -0.477537, 0.739890,
		0.773371, 0.627491, -0.090285,
		-0.421160, 0.614990, 0.666642,
		40.592155, 28.527515, 50.911919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326134, 28.066513, 51.124260>,  <40.886967, 28.097021, 50.445271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326134, 28.066513, 51.124260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.016724, 28.273315, 51.270882>,  <40.831078, 28.397396, 51.358852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.016724, 28.273315, 51.270882>,  <41.326134, 28.066513, 51.124260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016724, 28.273315, 51.270882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323357, -0.175468, 0.929866,
		0.545063, 0.837805, -0.031448,
		-0.773529, 0.517005, 0.366551,
		40.784664, 28.428417, 51.380848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669891, 28.459551, 51.657185>,  <41.326134, 28.066513, 51.124260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669891, 28.459551, 51.657185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.277256, 28.408157, 51.713730>,  <41.041676, 28.377321, 51.747658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.277256, 28.408157, 51.713730>,  <41.669891, 28.459551, 51.657185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277256, 28.408157, 51.713730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176382, -0.325422, 0.928972,
		-0.073353, 0.936799, 0.342091,
		-0.981585, -0.128482, 0.141364,
		40.982780, 28.369614, 51.756138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401917, 28.902653, 52.204258>,  <41.669891, 28.459551, 51.657185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401917, 28.902653, 52.204258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.113384, 28.626860, 52.178020>,  <40.940266, 28.461384, 52.162277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.113384, 28.626860, 52.178020>,  <41.401917, 28.902653, 52.204258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113384, 28.626860, 52.178020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097752, -0.195109, 0.975898,
		-0.685662, 0.697529, 0.208136,
		-0.721327, -0.689482, -0.065594,
		40.896988, 28.420015, 52.158344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897808, 29.080004, 52.666775>,  <41.401917, 28.902653, 52.204258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897808, 29.080004, 52.666775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.818783, 28.694885, 52.593021>,  <40.771370, 28.463814, 52.548771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.818783, 28.694885, 52.593021>,  <40.897808, 29.080004, 52.666775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818783, 28.694885, 52.593021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073866, -0.202177, 0.976560,
		-0.977504, 0.179310, 0.111060,
		-0.197561, -0.962794, -0.184384,
		40.759514, 28.406048, 52.537704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321602, 28.860636, 53.011753>,  <40.897808, 29.080004, 52.666775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321602, 28.860636, 53.011753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.538197, 28.530994, 52.945255>,  <40.668156, 28.333210, 52.905357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.538197, 28.530994, 52.945255>,  <40.321602, 28.860636, 53.011753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538197, 28.530994, 52.945255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050593, -0.165444, 0.984921,
		-0.839183, -0.541737, -0.047892,
		0.541491, -0.824106, -0.166246,
		40.700645, 28.283762, 52.895382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347984, 29.599390, 52.920254>,  <40.321602, 28.860636, 53.011753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347984, 29.599390, 52.920254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.097816, 29.876570, 53.063740>,  <39.947716, 30.042877, 53.149830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.097816, 29.876570, 53.063740>,  <40.347984, 29.599390, 52.920254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097816, 29.876570, 53.063740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022092, 0.443805, -0.895851,
		-0.779979, -0.568203, -0.262254,
		-0.625415, 0.692951, 0.358711,
		39.910191, 30.084455, 53.171352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979248, 29.759089, 52.340832>,  <40.347984, 29.599390, 52.920254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979248, 29.759089, 52.340832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.965481, 30.047626, 52.617519>,  <39.957222, 30.220749, 52.783531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.965481, 30.047626, 52.617519>,  <39.979248, 29.759089, 52.340832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965481, 30.047626, 52.617519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128601, 0.683179, -0.718838,
		-0.991099, -0.113697, 0.069252,
		-0.034418, 0.721345, 0.691720,
		39.955154, 30.264030, 52.825035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341801, 30.127148, 52.319313>,  <39.979248, 29.759089, 52.340832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341801, 30.127148, 52.319313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600533, 30.378368, 52.492359>,  <39.755772, 30.529100, 52.596188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600533, 30.378368, 52.492359>,  <39.341801, 30.127148, 52.319313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600533, 30.378368, 52.492359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278407, 0.722581, -0.632745,
		-0.709999, 0.288835, 0.642243,
		0.646832, 0.628053, 0.432618,
		39.794582, 30.566784, 52.622143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005508, 30.754488, 52.433407>,  <39.341801, 30.127148, 52.319313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005508, 30.754488, 52.433407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387611, 30.872549, 52.441166>,  <39.616871, 30.943386, 52.445820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387611, 30.872549, 52.441166>,  <39.005508, 30.754488, 52.433407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387611, 30.872549, 52.441166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231031, 0.785458, -0.574178,
		-0.184702, 0.544006, 0.818501,
		0.955254, 0.295151, 0.019393,
		39.674187, 30.961094, 52.446983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003513, 31.418566, 52.559387>,  <39.005508, 30.754488, 52.433407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003513, 31.418566, 52.559387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360794, 31.385263, 52.382633>,  <39.575161, 31.365282, 52.276581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360794, 31.385263, 52.382633>,  <39.003513, 31.418566, 52.559387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360794, 31.385263, 52.382633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199651, 0.807100, -0.555634,
		0.402903, 0.584515, 0.704280,
		0.893201, -0.083256, -0.441882,
		39.628754, 31.360287, 52.250069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064632, 32.047226, 52.323292>,  <39.003513, 31.418566, 52.559387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064632, 32.047226, 52.323292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.329803, 31.823797, 52.123882>,  <39.488907, 31.689739, 52.004238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.329803, 31.823797, 52.123882>,  <39.064632, 32.047226, 52.323292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329803, 31.823797, 52.123882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086683, 0.604118, -0.792166,
		0.743650, 0.568360, 0.352067,
		0.662926, -0.558576, -0.498520,
		39.528683, 31.656225, 51.974327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518116, 32.455261, 52.088078>,  <39.064632, 32.047226, 52.323292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518116, 32.455261, 52.088078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.553574, 32.142349, 51.841442>,  <39.574848, 31.954603, 51.693462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.553574, 32.142349, 51.841442>,  <39.518116, 32.455261, 52.088078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553574, 32.142349, 51.841442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004290, 0.618721, -0.785599,
		0.996054, 0.072286, 0.051492,
		0.088647, -0.782278, -0.616590,
		39.580166, 31.907665, 51.656464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036636, 32.730858, 51.622528>,  <39.518116, 32.455261, 52.088078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036636, 32.730858, 51.622528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.813984, 32.429283, 51.482967>,  <39.680393, 32.248337, 51.399231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.813984, 32.429283, 51.482967>,  <40.036636, 32.730858, 51.622528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813984, 32.429283, 51.482967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240814, 0.548386, -0.800800,
		0.795089, -0.361731, -0.486810,
		-0.556634, -0.753939, -0.348906,
		39.646992, 32.203102, 51.378296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218983, 32.708141, 50.989044>,  <40.036636, 32.730858, 51.622528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218983, 32.708141, 50.989044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.870388, 32.513237, 50.966835>,  <39.661232, 32.396294, 50.953510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.870388, 32.513237, 50.966835>,  <40.218983, 32.708141, 50.989044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870388, 32.513237, 50.966835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195860, 0.449607, -0.871489,
		0.449607, -0.748618, -0.487262,
		0.871489, 0.487262, 0.055522,
		39.608940, 32.367058, 50.950180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178967, 32.460514, 50.247635>,  <40.218983, 32.708141, 50.989044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178967, 32.460514, 50.247635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.809925, 32.471680, 50.401527>,  <39.588501, 32.478378, 50.493862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.809925, 32.471680, 50.401527>,  <40.178967, 32.460514, 50.247635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809925, 32.471680, 50.401527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376233, 0.154975, -0.913472,
		-0.085123, -0.987524, -0.132478,
		-0.922607, 0.027915, 0.384731,
		39.533142, 32.480053, 50.516945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820393, 32.098454, 49.778202>,  <40.178967, 32.460514, 50.247635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820393, 32.098454, 49.778202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.574894, 32.340317, 49.981262>,  <39.427597, 32.485435, 50.103100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.574894, 32.340317, 49.981262>,  <39.820393, 32.098454, 49.778202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574894, 32.340317, 49.981262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461146, 0.247362, -0.852148,
		-0.640829, -0.757102, 0.127017,
		-0.613744, 0.604655, 0.507652,
		39.390770, 32.521713, 50.133556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103939, 31.975552, 49.540733>,  <39.820393, 32.098454, 49.778202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103939, 31.975552, 49.540733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.111397, 32.344631, 49.694759>,  <39.115871, 32.566078, 49.787174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.111397, 32.344631, 49.694759>,  <39.103939, 31.975552, 49.540733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111397, 32.344631, 49.694759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351731, 0.366566, -0.861345,
		-0.935915, -0.119380, 0.331377,
		0.018644, 0.922701, 0.385065,
		39.116989, 32.621441, 49.810280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542557, 32.261387, 49.249016>,  <39.103939, 31.975552, 49.540733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542557, 32.261387, 49.249016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.748466, 32.566288, 49.405979>,  <38.872013, 32.749229, 49.500156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.748466, 32.566288, 49.405979>,  <38.542557, 32.261387, 49.249016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748466, 32.566288, 49.405979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186163, 0.546175, -0.816723,
		-0.836870, 0.347376, 0.423059,
		0.514774, 0.762249, 0.392409,
		38.902897, 32.794964, 49.523701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229725, 32.852547, 48.888714>,  <38.542557, 32.261387, 49.249016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229725, 32.852547, 48.888714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.542786, 33.030636, 49.062714>,  <38.730621, 33.137489, 49.167114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.542786, 33.030636, 49.062714>,  <38.229725, 32.852547, 48.888714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542786, 33.030636, 49.062714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054972, 0.646675, -0.760782,
		-0.620024, 0.619342, 0.481649,
		0.782655, 0.445226, 0.435000,
		38.777580, 33.164204, 49.193214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608265, 33.251545, 49.280033>,  <38.229725, 32.852547, 48.888714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608265, 33.251545, 49.280033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247677, 33.110443, 49.179703>,  <37.031322, 33.025784, 49.119503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247677, 33.110443, 49.179703>,  <37.608265, 33.251545, 49.280033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247677, 33.110443, 49.179703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077300, -0.438969, 0.895171,
		-0.425879, 0.826361, 0.368450,
		-0.901472, -0.352753, -0.250825,
		36.977234, 33.004616, 49.104454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170425, 33.381901, 49.768639>,  <37.608265, 33.251545, 49.280033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170425, 33.381901, 49.768639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.958351, 33.076653, 49.620831>,  <36.831108, 32.893501, 49.532146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.958351, 33.076653, 49.620831>,  <37.170425, 33.381901, 49.768639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958351, 33.076653, 49.620831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232964, -0.287936, 0.928881,
		-0.815250, 0.578563, -0.025122,
		-0.530183, -0.763124, -0.369525,
		36.799297, 32.847717, 49.509972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556252, 33.378448, 50.176838>,  <37.170425, 33.381901, 49.768639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556252, 33.378448, 50.176838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657417, 33.028664, 50.011265>,  <36.718117, 32.818790, 49.911919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657417, 33.028664, 50.011265>,  <36.556252, 33.378448, 50.176838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657417, 33.028664, 50.011265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124616, -0.453726, 0.882385,
		-0.959431, -0.171581, -0.223725,
		0.252910, -0.874467, -0.413937,
		36.733292, 32.766323, 49.887085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012939, 32.968391, 50.402565>,  <36.556252, 33.378448, 50.176838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012939, 32.968391, 50.402565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297070, 32.708496, 50.294285>,  <36.467548, 32.552559, 50.229317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297070, 32.708496, 50.294285>,  <36.012939, 32.968391, 50.402565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297070, 32.708496, 50.294285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213734, -0.565529, 0.796552,
		-0.670639, -0.507953, -0.540580,
		0.710325, -0.649739, -0.270699,
		36.510166, 32.513577, 50.213074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698975, 32.295422, 50.412914>,  <36.012939, 32.968391, 50.402565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698975, 32.295422, 50.412914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095325, 32.248928, 50.440186>,  <36.333138, 32.221031, 50.456547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095325, 32.248928, 50.440186>,  <35.698975, 32.295422, 50.412914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095325, 32.248928, 50.440186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119488, -0.523957, 0.843322,
		-0.062300, -0.843777, -0.533066,
		0.990879, -0.116233, 0.068179,
		36.392590, 32.214058, 50.460640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833122, 31.652739, 50.555927>,  <35.698975, 32.295422, 50.412914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833122, 31.652739, 50.555927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183891, 31.801308, 50.677944>,  <36.394352, 31.890450, 50.751156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183891, 31.801308, 50.677944>,  <35.833122, 31.652739, 50.555927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183891, 31.801308, 50.677944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050025, -0.701758, 0.710657,
		0.478019, -0.607932, -0.633969,
		0.876924, 0.371422, 0.305042,
		36.446968, 31.912735, 50.769455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276543, 31.076309, 50.606869>,  <35.833122, 31.652739, 50.555927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276543, 31.076309, 50.606869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432007, 31.359421, 50.842831>,  <36.525288, 31.529287, 50.984409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432007, 31.359421, 50.842831>,  <36.276543, 31.076309, 50.606869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432007, 31.359421, 50.842831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065928, -0.617241, 0.784007,
		0.919018, -0.343606, -0.193237,
		0.388663, 0.707777, 0.589908,
		36.548607, 31.571754, 51.019802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692860, 30.565195, 50.979656>,  <36.276543, 31.076309, 50.606869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692860, 30.565195, 50.979656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315536, 30.434332, 50.957249>,  <35.089142, 30.355814, 50.943806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315536, 30.434332, 50.957249>,  <35.692860, 30.565195, 50.979656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315536, 30.434332, 50.957249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037666, 0.273188, -0.961223,
		0.329774, -0.904620, -0.270023,
		-0.943308, -0.327157, -0.056017,
		35.032543, 30.336185, 50.940445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660294, 30.178501, 50.371449>,  <35.692860, 30.565195, 50.979656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660294, 30.178501, 50.371449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268501, 30.244194, 50.418182>,  <35.033428, 30.283609, 50.446224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268501, 30.244194, 50.418182>,  <35.660294, 30.178501, 50.371449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268501, 30.244194, 50.418182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093029, 0.145862, -0.984921,
		-0.178798, -0.975578, -0.127591,
		-0.979478, 0.164232, 0.116837,
		34.974659, 30.293463, 50.453232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376053, 30.110825, 49.643177>,  <35.660294, 30.178501, 50.371449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376053, 30.110825, 49.643177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063740, 30.262873, 49.841522>,  <34.876350, 30.354101, 49.960529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063740, 30.262873, 49.841522>,  <35.376053, 30.110825, 49.643177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063740, 30.262873, 49.841522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421878, 0.264654, -0.867166,
		-0.460861, -0.886265, -0.046274,
		-0.780786, 0.380121, 0.495864,
		34.829502, 30.376909, 49.990280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758736, 29.670450, 49.510109>,  <35.376053, 30.110825, 49.643177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758736, 29.670450, 49.510109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.652931, 30.042072, 49.613560>,  <34.589447, 30.265045, 49.675632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.652931, 30.042072, 49.613560>,  <34.758736, 29.670450, 49.510109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652931, 30.042072, 49.613560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416901, 0.131668, -0.899365,
		-0.869613, -0.345716, 0.352496,
		-0.264512, 0.929055, 0.258630,
		34.573578, 30.320789, 49.691147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111370, 29.707081, 49.327820>,  <34.758736, 29.670450, 49.510109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111370, 29.707081, 49.327820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209461, 30.090565, 49.385422>,  <34.268318, 30.320656, 49.419983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209461, 30.090565, 49.385422>,  <34.111370, 29.707081, 49.327820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209461, 30.090565, 49.385422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251742, 0.206419, -0.945525,
		-0.936209, 0.195621, 0.291968,
		0.245232, 0.958709, 0.144005,
		34.283031, 30.378178, 49.428623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490597, 30.144451, 49.285439>,  <34.111370, 29.707081, 49.327820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490597, 30.144451, 49.285439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788136, 30.390228, 49.180252>,  <33.966660, 30.537695, 49.117142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788136, 30.390228, 49.180252>,  <33.490597, 30.144451, 49.285439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788136, 30.390228, 49.180252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531068, 0.304507, -0.790723,
		-0.405782, 0.727827, 0.552819,
		0.743847, 0.614445, -0.262962,
		34.011288, 30.574562, 49.101364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210194, 30.612804, 48.839840>,  <33.490597, 30.144451, 49.285439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210194, 30.612804, 48.839840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.595608, 30.680609, 48.757019>,  <33.826855, 30.721291, 48.707329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.595608, 30.680609, 48.757019>,  <33.210194, 30.612804, 48.839840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595608, 30.680609, 48.757019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229503, 0.125652, -0.965163,
		-0.137588, 0.977486, 0.159973,
		0.963534, 0.169509, -0.207048,
		33.884666, 30.731461, 48.694904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.961239, 26.865341, 51.159973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.048885, 26.726641, 51.524776>,  <37.101471, 26.643421, 51.743656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.048885, 26.726641, 51.524776>,  <36.961239, 26.865341, 51.159973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048885, 26.726641, 51.524776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975163, 0.108809, -0.192919,
		-0.032340, 0.931625, 0.361978,
		0.219114, -0.346749, 0.912005,
		37.114620, 26.622616, 51.798378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615540, 26.913677, 51.497520>,  <36.961239, 26.865341, 51.159973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615540, 26.913677, 51.497520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.986675, 26.988556, 51.368477>,  <38.209354, 27.033484, 51.291050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.986675, 26.988556, 51.368477>,  <37.615540, 26.913677, 51.497520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986675, 26.988556, 51.368477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372742, 0.496665, -0.783828,
		0.013496, 0.847515, 0.530601,
		0.927837, 0.187199, -0.322608,
		38.265026, 27.044716, 51.271694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637962, 27.607586, 51.189327>,  <37.615540, 26.913677, 51.497520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637962, 27.607586, 51.189327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.982124, 27.451706, 51.057980>,  <38.188622, 27.358177, 50.979172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.982124, 27.451706, 51.057980>,  <37.637962, 27.607586, 51.189327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982124, 27.451706, 51.057980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074385, 0.541427, -0.837451,
		0.504147, 0.744976, 0.436860,
		0.860409, -0.389702, -0.328374,
		38.240246, 27.334795, 50.959469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990620, 28.263367, 50.956619>,  <37.637962, 27.607586, 51.189327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990620, 28.263367, 50.956619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.110962, 27.934835, 50.762753>,  <38.183167, 27.737717, 50.646431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.110962, 27.934835, 50.762753>,  <37.990620, 28.263367, 50.956619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110962, 27.934835, 50.762753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092335, 0.480737, -0.871989,
		0.949188, 0.307097, 0.068796,
		0.300858, -0.821330, -0.484666,
		38.201218, 27.688437, 50.617352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387230, 28.512817, 50.280109>,  <37.990620, 28.263367, 50.956619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387230, 28.512817, 50.280109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.321503, 28.126667, 50.199070>,  <38.282066, 27.894976, 50.150444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.321503, 28.126667, 50.199070>,  <38.387230, 28.512817, 50.280109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321503, 28.126667, 50.199070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190461, 0.232578, -0.953747,
		0.967846, -0.118126, -0.222082,
		-0.164313, -0.965378, -0.202601,
		38.272209, 27.837053, 50.138290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736576, 28.330994, 49.675457>,  <38.387230, 28.512817, 50.280109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736576, 28.330994, 49.675457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.467079, 28.039719, 49.725754>,  <38.305382, 27.864954, 49.755932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.467079, 28.039719, 49.725754>,  <38.736576, 28.330994, 49.675457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467079, 28.039719, 49.725754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212962, 0.028397, -0.976648,
		0.707611, -0.684790, -0.174208,
		-0.673746, -0.728186, 0.125740,
		38.264954, 27.821262, 49.763477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907005, 27.794100, 49.147861>,  <38.736576, 28.330994, 49.675457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907005, 27.794100, 49.147861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.521824, 27.722710, 49.228729>,  <38.290714, 27.679876, 49.277252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.521824, 27.722710, 49.228729>,  <38.907005, 27.794100, 49.147861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521824, 27.722710, 49.228729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188428, -0.091054, -0.977857,
		0.192933, -0.979722, 0.054051,
		-0.962950, -0.178476, 0.202174,
		38.232941, 27.669167, 49.289383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647808, 27.257345, 48.714687>,  <38.907005, 27.794100, 49.147861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647808, 27.257345, 48.714687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.310295, 27.430946, 48.840973>,  <38.107788, 27.535107, 48.916744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.310295, 27.430946, 48.840973>,  <38.647808, 27.257345, 48.714687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310295, 27.430946, 48.840973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349915, 0.001159, -0.936781,
		-0.406930, -0.900911, 0.150886,
		-0.843781, 0.434002, 0.315714,
		38.057159, 27.561146, 48.935688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014332, 26.837362, 48.445759>,  <38.647808, 27.257345, 48.714687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014332, 26.837362, 48.445759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.886078, 27.211130, 48.507793>,  <37.809124, 27.435390, 48.545013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.886078, 27.211130, 48.507793>,  <38.014332, 26.837362, 48.445759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886078, 27.211130, 48.507793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381623, 0.022417, -0.924046,
		-0.866922, -0.355471, 0.349408,
		-0.320639, 0.934418, 0.155089,
		37.789886, 27.491455, 48.554321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499214, 26.876455, 47.945057>,  <38.014332, 26.837362, 48.445759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499214, 26.876455, 47.945057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.552544, 27.258268, 48.051708>,  <37.584541, 27.487356, 48.115700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.552544, 27.258268, 48.051708>,  <37.499214, 26.876455, 47.945057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552544, 27.258268, 48.051708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231637, 0.291592, -0.928073,
		-0.963623, 0.061971, 0.259980,
		0.133322, 0.954533, 0.266630,
		37.592541, 27.544628, 48.131699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989429, 27.194546, 47.680393>,  <37.499214, 26.876455, 47.945057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989429, 27.194546, 47.680393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.218452, 27.504896, 47.786369>,  <37.355865, 27.691107, 47.849953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.218452, 27.504896, 47.786369>,  <36.989429, 27.194546, 47.680393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218452, 27.504896, 47.786369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307273, 0.502669, -0.808027,
		-0.760105, 0.381235, 0.526213,
		0.572559, 0.775876, 0.264937,
		37.390221, 27.737659, 47.865852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610935, 27.836163, 47.704468>,  <36.989429, 27.194546, 47.680393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610935, 27.836163, 47.704468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.995354, 27.921995, 47.634781>,  <37.226006, 27.973495, 47.592968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.995354, 27.921995, 47.634781>,  <36.610935, 27.836163, 47.704468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995354, 27.921995, 47.634781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251052, 0.414001, -0.874972,
		-0.115627, 0.884623, 0.451744,
		0.961043, 0.214582, -0.174217,
		37.283665, 27.986370, 47.582516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855976, 28.136536, 47.859013>,  <36.610935, 27.836163, 47.704468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855976, 28.136536, 47.859013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.503033, 27.965511, 47.780392>,  <35.291267, 27.862896, 47.733219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.503033, 27.965511, 47.780392>,  <35.855976, 28.136536, 47.859013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503033, 27.965511, 47.780392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060553, -0.311047, 0.948463,
		-0.466663, 0.848788, 0.248566,
		-0.882360, -0.427561, -0.196551,
		35.238323, 27.837242, 47.721428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276035, 28.464075, 48.216030>,  <35.855976, 28.136536, 47.859013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276035, 28.464075, 48.216030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.158127, 28.087549, 48.150261>,  <35.087379, 27.861633, 48.110798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.158127, 28.087549, 48.150261>,  <35.276035, 28.464075, 48.216030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158127, 28.087549, 48.150261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084638, -0.145675, 0.985705,
		-0.951811, 0.304477, -0.036730,
		-0.294774, -0.941314, -0.164425,
		35.069695, 27.805155, 48.100933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689476, 28.359758, 48.643799>,  <35.276035, 28.464075, 48.216030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689476, 28.359758, 48.643799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.826778, 27.988892, 48.583748>,  <34.909161, 27.766371, 48.547718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.826778, 27.988892, 48.583748>,  <34.689476, 28.359758, 48.643799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826778, 27.988892, 48.583748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016825, -0.165886, 0.986001,
		-0.939092, -0.335922, -0.072540,
		0.343253, -0.927167, -0.150130,
		34.929756, 27.710741, 48.538708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264992, 27.995052, 49.104687>,  <34.689476, 28.359758, 48.643799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264992, 27.995052, 49.104687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.575508, 27.763910, 49.003929>,  <34.761818, 27.625225, 48.943474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.575508, 27.763910, 49.003929>,  <34.264992, 27.995052, 49.104687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575508, 27.763910, 49.003929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031148, -0.434274, 0.900242,
		-0.629603, -0.691005, -0.355123,
		0.776293, -0.577856, -0.251897,
		34.808395, 27.590553, 48.928360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017570, 27.297247, 49.313438>,  <34.264992, 27.995052, 49.104687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017570, 27.297247, 49.313438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.416725, 27.284462, 49.290810>,  <34.656219, 27.276791, 49.277233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.416725, 27.284462, 49.290810>,  <34.017570, 27.297247, 49.313438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416725, 27.284462, 49.290810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033673, -0.490246, 0.870933,
		-0.055571, -0.870998, -0.488134,
		0.997887, -0.031961, -0.056572,
		34.716091, 27.274874, 49.273838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273373, 26.590849, 49.420422>,  <34.017570, 27.297247, 49.313438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273373, 26.590849, 49.420422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.593746, 26.807077, 49.523411>,  <34.785969, 26.936813, 49.585205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.593746, 26.807077, 49.523411>,  <34.273373, 26.590849, 49.420422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593746, 26.807077, 49.523411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063361, -0.504124, 0.861304,
		0.595395, -0.673530, -0.438020,
		0.800930, 0.540570, 0.257477,
		34.834026, 26.969248, 49.600655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559933, 26.190973, 49.946236>,  <34.273373, 26.590849, 49.420422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559933, 26.190973, 49.946236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.761024, 26.533484, 49.993649>,  <34.881680, 26.738991, 50.022099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.761024, 26.533484, 49.993649>,  <34.559933, 26.190973, 49.946236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761024, 26.533484, 49.993649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201520, -0.249436, 0.947191,
		0.840626, -0.452295, -0.297956,
		0.502730, 0.856278, 0.118535,
		34.911842, 26.790367, 50.029209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148998, 25.891348, 50.168438>,  <34.559933, 26.190973, 49.946236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148998, 25.891348, 50.168438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.067879, 26.269402, 50.270885>,  <35.019207, 26.496233, 50.332355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.067879, 26.269402, 50.270885>,  <35.148998, 25.891348, 50.168438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067879, 26.269402, 50.270885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202210, -0.215500, 0.955338,
		0.958116, 0.245528, -0.147413,
		-0.202795, 0.945133, 0.256122,
		35.007042, 26.552942, 50.347721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680920, 26.068653, 50.613777>,  <35.148998, 25.891348, 50.168438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680920, 26.068653, 50.613777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.391266, 26.332325, 50.694881>,  <35.217472, 26.490528, 50.743546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.391266, 26.332325, 50.694881>,  <35.680920, 26.068653, 50.613777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391266, 26.332325, 50.694881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137656, -0.149935, 0.979066,
		0.675781, 0.736887, 0.017833,
		-0.724134, 0.659180, 0.202760,
		35.174026, 26.530079, 50.755711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070667, 26.654852, 50.877335>,  <35.680920, 26.068653, 50.613777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070667, 26.654852, 50.877335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.696579, 26.645475, 51.018650>,  <35.472126, 26.639849, 51.103439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.696579, 26.645475, 51.018650>,  <36.070667, 26.654852, 50.877335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696579, 26.645475, 51.018650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349039, -0.228496, 0.908824,
		0.059419, 0.973262, 0.221877,
		-0.935222, -0.023442, 0.353284,
		35.416012, 26.638443, 51.124634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042645, 26.702324, 51.674763>,  <36.070667, 26.654852, 50.877335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042645, 26.702324, 51.674763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.650459, 26.637106, 51.630764>,  <35.415146, 26.597975, 51.604366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.650459, 26.637106, 51.630764>,  <36.042645, 26.702324, 51.674763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650459, 26.637106, 51.630764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047093, -0.348389, 0.936166,
		-0.190960, 0.923060, 0.333906,
		-0.980467, -0.163045, -0.109998,
		35.356319, 26.588192, 51.597763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608212, 26.919487, 52.324379>,  <36.042645, 26.702324, 51.674763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608212, 26.919487, 52.324379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.377903, 26.663422, 52.120937>,  <35.239719, 26.509783, 51.998875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.377903, 26.663422, 52.120937>,  <35.608212, 26.919487, 52.324379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377903, 26.663422, 52.120937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197952, -0.494403, 0.846393,
		-0.793285, 0.588008, 0.157941,
		-0.575773, -0.640165, -0.508600,
		35.205170, 26.471373, 51.968357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895233, 26.907804, 52.569706>,  <35.608212, 26.919487, 52.324379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895233, 26.907804, 52.569706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.036373, 26.574530, 52.399391>,  <35.121056, 26.374565, 52.297203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.036373, 26.574530, 52.399391>,  <34.895233, 26.907804, 52.569706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036373, 26.574530, 52.399391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300748, -0.531900, 0.791602,
		-0.886030, -0.151259, -0.438259,
		0.352847, -0.833189, -0.425788,
		35.142227, 26.324574, 52.271656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208599, 27.622629, 52.639236>,  <34.895233, 26.907804, 52.569706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208599, 27.622629, 52.639236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.112831, 27.856777, 52.949081>,  <35.055370, 27.997267, 53.134987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.112831, 27.856777, 52.949081>,  <35.208599, 27.622629, 52.639236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112831, 27.856777, 52.949081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219666, 0.744469, -0.630486,
		-0.945741, -0.321105, -0.049653,
		-0.239417, 0.585370, 0.774611,
		35.041004, 28.032389, 53.181465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674252, 28.010267, 52.454796>,  <35.208599, 27.622629, 52.639236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674252, 28.010267, 52.454796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.814251, 28.217525, 52.766956>,  <34.898251, 28.341881, 52.954254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.814251, 28.217525, 52.766956>,  <34.674252, 28.010267, 52.454796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814251, 28.217525, 52.766956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140250, 0.852690, -0.503240,
		-0.926192, 0.066682, 0.371109,
		0.349998, 0.518145, 0.780402,
		34.919250, 28.372969, 53.001076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195805, 28.370251, 52.533993>,  <34.674252, 28.010267, 52.454796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195805, 28.370251, 52.533993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.515179, 28.554258, 52.689369>,  <34.706802, 28.664663, 52.782597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.515179, 28.554258, 52.689369>,  <34.195805, 28.370251, 52.533993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515179, 28.554258, 52.689369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220936, 0.824010, -0.521723,
		-0.560082, 0.330740, 0.759552,
		0.798433, 0.460020, 0.388441,
		34.754707, 28.692265, 52.805901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968365, 29.043179, 52.727314>,  <34.195805, 28.370251, 52.533993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968365, 29.043179, 52.727314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.364964, 29.067350, 52.681221>,  <34.602924, 29.081854, 52.653564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.364964, 29.067350, 52.681221>,  <33.968365, 29.043179, 52.727314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364964, 29.067350, 52.681221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120731, 0.757508, -0.641566,
		0.048516, 0.650023, 0.758364,
		0.991499, 0.060431, -0.115229,
		34.662415, 29.085480, 52.646652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170601, 29.743860, 52.754284>,  <33.968365, 29.043179, 52.727314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170601, 29.743860, 52.754284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.470406, 29.561766, 52.562038>,  <34.650288, 29.452509, 52.446693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.470406, 29.561766, 52.562038>,  <34.170601, 29.743860, 52.754284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470406, 29.561766, 52.562038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002626, 0.723962, -0.689835,
		0.661981, 0.518304, 0.541425,
		0.749516, -0.455236, -0.480610,
		34.695259, 29.425194, 52.417854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357025, 30.307022, 52.409855>,  <34.170601, 29.743860, 52.754284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357025, 30.307022, 52.409855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.574348, 30.026184, 52.225735>,  <34.704742, 29.857681, 52.115265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.574348, 30.026184, 52.225735>,  <34.357025, 30.307022, 52.409855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574348, 30.026184, 52.225735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059130, 0.514914, -0.855200,
		0.837446, 0.491857, 0.238244,
		0.543312, -0.702097, -0.460296,
		34.737343, 29.815556, 52.087646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898945, 30.593733, 52.138355>,  <34.357025, 30.307022, 52.409855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898945, 30.593733, 52.138355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.865742, 30.274508, 51.899624>,  <34.845818, 30.082972, 51.756386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.865742, 30.274508, 51.899624>,  <34.898945, 30.593733, 52.138355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865742, 30.274508, 51.899624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151513, 0.581825, -0.799076,
		0.984964, -0.156759, 0.072620,
		-0.083010, -0.798064, -0.596828,
		34.840839, 30.035088, 51.720577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381290, 30.727022, 51.623638>,  <34.898945, 30.593733, 52.138355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381290, 30.727022, 51.623638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.122829, 30.460592, 51.474602>,  <34.967751, 30.300734, 51.385178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.122829, 30.460592, 51.474602>,  <35.381290, 30.727022, 51.623638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122829, 30.460592, 51.474602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153243, 0.365025, -0.918299,
		0.747663, -0.650461, -0.133791,
		-0.646155, -0.666076, -0.372595,
		34.928982, 30.260769, 51.362823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885628, 30.410080, 52.116852>,  <35.381290, 30.727022, 51.623638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885628, 30.410080, 52.116852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.960728, 30.802910, 52.110195>,  <36.005787, 31.038609, 52.106201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.960728, 30.802910, 52.110195>,  <35.885628, 30.410080, 52.116852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960728, 30.802910, 52.110195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316125, -0.044377, 0.947679,
		0.929955, -0.183184, -0.318791,
		0.187747, 0.982077, -0.016640,
		36.017052, 31.097532, 52.105202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513351, 30.436287, 52.261158>,  <35.885628, 30.410080, 52.116852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513351, 30.436287, 52.261158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.390774, 30.808371, 52.341961>,  <36.317226, 31.031620, 52.390442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.390774, 30.808371, 52.341961>,  <36.513351, 30.436287, 52.261158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390774, 30.808371, 52.341961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401196, -0.066236, 0.913594,
		0.863213, 0.361008, -0.352898,
		-0.306440, 0.930208, 0.202011,
		36.298843, 31.087433, 52.402565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139763, 30.886049, 52.504204>,  <36.513351, 30.436287, 52.261158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139763, 30.886049, 52.504204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.795959, 31.023335, 52.655704>,  <36.589680, 31.105705, 52.746605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.795959, 31.023335, 52.655704>,  <37.139763, 30.886049, 52.504204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795959, 31.023335, 52.655704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354675, -0.133090, 0.925469,
		0.368041, 0.929781, -0.007337,
		-0.859506, 0.343213, 0.378753,
		36.538109, 31.126299, 52.769329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295284, 31.336838, 53.063663>,  <37.139763, 30.886049, 52.504204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295284, 31.336838, 53.063663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.914154, 31.233896, 53.128017>,  <36.685474, 31.172131, 53.166630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.914154, 31.233896, 53.128017>,  <37.295284, 31.336838, 53.063663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914154, 31.233896, 53.128017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205375, -0.156403, 0.966105,
		-0.223469, 0.953575, 0.201880,
		-0.952829, -0.257356, 0.160889,
		36.628304, 31.156689, 53.176285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117218, 31.705931, 53.752846>,  <37.295284, 31.336838, 53.063663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117218, 31.705931, 53.752846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.836090, 31.426716, 53.698025>,  <36.667412, 31.259186, 53.665131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.836090, 31.426716, 53.698025>,  <37.117218, 31.705931, 53.752846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836090, 31.426716, 53.698025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133763, -0.318906, 0.938300,
		-0.698677, 0.641125, 0.317505,
		-0.702821, -0.698039, -0.137054,
		36.625244, 31.217304, 53.656910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702805, 31.737036, 54.359627>,  <37.117218, 31.705931, 53.752846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702805, 31.737036, 54.359627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.647690, 31.377522, 54.193161>,  <36.614620, 31.161812, 54.093281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.647690, 31.377522, 54.193161>,  <36.702805, 31.737036, 54.359627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647690, 31.377522, 54.193161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286305, -0.438381, 0.851969,
		-0.948179, -0.001759, 0.317731,
		-0.137789, -0.898788, -0.416167,
		36.606354, 31.107885, 54.068310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369343, 31.446598, 54.789906>,  <36.702805, 31.737036, 54.359627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369343, 31.446598, 54.789906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.496723, 31.129745, 54.581631>,  <36.573151, 30.939634, 54.456665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.496723, 31.129745, 54.581631>,  <36.369343, 31.446598, 54.789906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496723, 31.129745, 54.581631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102563, -0.517267, 0.849656,
		-0.942374, -0.323978, -0.083481,
		0.318452, -0.792132, -0.520687,
		36.592258, 30.892105, 54.425426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986996, 30.807030, 55.078110>,  <36.369343, 31.446598, 54.789906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986996, 30.807030, 55.078110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.299965, 30.653831, 54.881695>,  <36.487747, 30.561913, 54.763844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.299965, 30.653831, 54.881695>,  <35.986996, 30.807030, 55.078110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299965, 30.653831, 54.881695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205570, -0.585460, 0.784205,
		-0.587892, -0.714498, -0.379311,
		0.782384, -0.383052, -0.491067,
		36.534695, 30.538933, 54.734383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925880, 30.129150, 55.163094>,  <35.986996, 30.807030, 55.078110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925880, 30.129150, 55.163094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.313492, 30.190180, 55.085419>,  <36.546059, 30.226797, 55.038815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.313492, 30.190180, 55.085419>,  <35.925880, 30.129150, 55.163094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313492, 30.190180, 55.085419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241225, -0.416412, 0.876591,
		0.052884, -0.896282, -0.440319,
		0.969027, 0.152574, -0.194184,
		36.604198, 30.235952, 55.027164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.397785, 33.800724, 39.240929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777126, 33.895458, 39.156517>,  <36.004730, 33.952297, 39.105869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777126, 33.895458, 39.156517>,  <35.397785, 33.800724, 39.240929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777126, 33.895458, 39.156517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168802, 0.186476, 0.967849,
		0.268571, -0.953487, 0.136868,
		0.948354, 0.236833, -0.211033,
		36.061634, 33.966507, 39.093208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756756, 33.418377, 39.665501>,  <35.397785, 33.800724, 39.240929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756756, 33.418377, 39.665501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974052, 33.741879, 39.575336>,  <36.104431, 33.935978, 39.521236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974052, 33.741879, 39.575336>,  <35.756756, 33.418377, 39.665501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974052, 33.741879, 39.575336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063921, 0.227866, 0.971592,
		0.837141, -0.542216, 0.072090,
		0.543240, 0.808751, -0.225415,
		36.137024, 33.984505, 39.507713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255428, 33.305332, 40.124035>,  <35.756756, 33.418377, 39.665501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255428, 33.305332, 40.124035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239876, 33.691307, 40.020195>,  <36.230545, 33.922890, 39.957893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239876, 33.691307, 40.020195>,  <36.255428, 33.305332, 40.124035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239876, 33.691307, 40.020195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004547, 0.259618, 0.965701,
		0.999234, 0.038725, -0.005706,
		-0.038879, 0.964935, -0.259595,
		36.228210, 33.980789, 39.942318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572590, 33.606483, 40.668114>,  <36.255428, 33.305332, 40.124035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572590, 33.606483, 40.668114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392197, 33.911983, 40.483372>,  <36.283962, 34.095284, 40.372528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392197, 33.911983, 40.483372>,  <36.572590, 33.606483, 40.668114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392197, 33.911983, 40.483372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148928, 0.445814, 0.882650,
		0.880021, 0.466841, -0.087310,
		-0.450981, 0.763747, -0.461851,
		36.256901, 34.141109, 40.344818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947193, 34.376591, 40.881737>,  <36.572590, 33.606483, 40.668114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947193, 34.376591, 40.881737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563797, 34.437832, 40.785522>,  <36.333759, 34.474575, 40.727795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563797, 34.437832, 40.785522>,  <36.947193, 34.376591, 40.881737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563797, 34.437832, 40.785522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163252, 0.396953, 0.903204,
		0.233761, 0.904980, -0.355482,
		-0.958491, 0.153100, -0.240532,
		36.276249, 34.483761, 40.713364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770805, 34.894722, 41.238571>,  <36.947193, 34.376591, 40.881737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770805, 34.894722, 41.238571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400074, 34.780022, 41.141613>,  <36.177635, 34.711201, 41.083439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400074, 34.780022, 41.141613>,  <36.770805, 34.894722, 41.238571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400074, 34.780022, 41.141613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331537, 0.321958, 0.886807,
		-0.176253, 0.902284, -0.393470,
		-0.926832, -0.286753, -0.242395,
		36.122025, 34.693996, 41.068893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400730, 35.414608, 41.527840>,  <36.770805, 34.894722, 41.238571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400730, 35.414608, 41.527840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124985, 35.131386, 41.466610>,  <35.959538, 34.961452, 41.429874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124985, 35.131386, 41.466610>,  <36.400730, 35.414608, 41.527840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124985, 35.131386, 41.466610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318053, 0.105984, 0.942130,
		-0.650860, 0.698155, -0.298261,
		-0.689364, -0.708058, -0.153070,
		35.918175, 34.918968, 41.420689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688465, 35.673660, 41.825626>,  <36.400730, 35.414608, 41.527840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688465, 35.673660, 41.825626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679798, 35.273876, 41.835442>,  <35.674599, 35.034004, 41.841331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679798, 35.273876, 41.835442>,  <35.688465, 35.673660, 41.825626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679798, 35.273876, 41.835442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363177, 0.030737, 0.931213,
		-0.931468, 0.011267, -0.363648,
		-0.021669, -0.999464, 0.024538,
		35.673298, 34.974037, 41.842804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173458, 35.523125, 42.255249>,  <35.688465, 35.673660, 41.825626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173458, 35.523125, 42.255249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364532, 35.171764, 42.261276>,  <35.479179, 34.960949, 42.264893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364532, 35.171764, 42.261276>,  <35.173458, 35.523125, 42.255249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364532, 35.171764, 42.261276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236164, -0.111875, 0.965251,
		-0.846192, -0.464646, -0.260888,
		0.477688, -0.878401, 0.015065,
		35.507839, 34.908245, 42.265797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774406, 35.107819, 42.710907>,  <35.173458, 35.523125, 42.255249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774406, 35.107819, 42.710907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117138, 34.904488, 42.676388>,  <35.322777, 34.782490, 42.655678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117138, 34.904488, 42.676388>,  <34.774406, 35.107819, 42.710907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117138, 34.904488, 42.676388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001268, -0.165291, 0.986244,
		-0.515598, -0.845152, -0.140981,
		0.856830, -0.508327, -0.086295,
		35.374187, 34.751991, 42.650497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654648, 34.463436, 43.023258>,  <34.774406, 35.107819, 42.710907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654648, 34.463436, 43.023258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054382, 34.466827, 43.009102>,  <35.294224, 34.468861, 43.000607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054382, 34.466827, 43.009102>,  <34.654648, 34.463436, 43.023258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054382, 34.466827, 43.009102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036339, -0.284482, 0.957992,
		-0.001943, -0.958644, -0.284602,
		0.999338, 0.008481, -0.035389,
		35.354183, 34.469372, 42.998486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875557, 33.802906, 43.271229>,  <34.654648, 34.463436, 43.023258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875557, 33.802906, 43.271229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150383, 34.086609, 43.334335>,  <35.315281, 34.256832, 43.372200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150383, 34.086609, 43.334335>,  <34.875557, 33.802906, 43.271229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150383, 34.086609, 43.334335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093320, -0.301471, 0.948898,
		0.720576, -0.637234, -0.273318,
		0.687068, 0.709259, 0.157766,
		35.356503, 34.299385, 43.381664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786854, 33.066406, 43.010429>,  <34.875557, 33.802906, 43.271229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786854, 33.066406, 43.010429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427624, 32.900581, 43.069214>,  <34.212086, 32.801086, 43.104485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427624, 32.900581, 43.069214>,  <34.786854, 33.066406, 43.010429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427624, 32.900581, 43.069214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236223, 0.172765, -0.956217,
		0.371020, -0.893472, -0.253085,
		-0.898078, -0.414560, 0.146959,
		34.158199, 32.776215, 43.113300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709843, 32.545715, 42.505970>,  <34.786854, 33.066406, 43.010429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709843, 32.545715, 42.505970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348289, 32.673058, 42.620262>,  <34.131355, 32.749462, 42.688839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348289, 32.673058, 42.620262>,  <34.709843, 32.545715, 42.505970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348289, 32.673058, 42.620262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280691, 0.062650, -0.957751,
		-0.322805, -0.945900, 0.032730,
		-0.903886, 0.318353, 0.285729,
		34.077126, 32.768562, 42.705982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239410, 32.345207, 41.934399>,  <34.709843, 32.545715, 42.505970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239410, 32.345207, 41.934399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030571, 32.609432, 42.150204>,  <33.905266, 32.767967, 42.279686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030571, 32.609432, 42.150204>,  <34.239410, 32.345207, 41.934399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030571, 32.609432, 42.150204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480799, 0.294521, -0.825887,
		-0.704444, -0.690594, 0.163825,
		-0.522102, 0.660558, 0.539510,
		33.873940, 32.807598, 42.312057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609005, 32.328144, 41.577454>,  <34.239410, 32.345207, 41.934399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609005, 32.328144, 41.577454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594566, 32.667171, 41.789234>,  <33.585903, 32.870590, 41.916302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594566, 32.667171, 41.789234>,  <33.609005, 32.328144, 41.577454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594566, 32.667171, 41.789234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331379, 0.489671, -0.806480,
		-0.942807, -0.204562, 0.263192,
		-0.036098, 0.847571, 0.529452,
		33.583736, 32.921444, 41.948071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904247, 32.527191, 41.661770>,  <33.609005, 32.328144, 41.577454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904247, 32.527191, 41.661770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109512, 32.865898, 41.717842>,  <33.232670, 33.069122, 41.751484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109512, 32.865898, 41.717842>,  <32.904247, 32.527191, 41.661770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109512, 32.865898, 41.717842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482410, 0.419636, -0.768887,
		-0.709894, 0.326936, 0.623829,
		0.513158, 0.846769, 0.140180,
		33.263458, 33.119930, 41.759895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452370, 33.032696, 41.845631>,  <32.904247, 32.527191, 41.661770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452370, 33.032696, 41.845631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768402, 33.221439, 41.689114>,  <32.958023, 33.334686, 41.595203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768402, 33.221439, 41.689114>,  <32.452370, 33.032696, 41.845631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768402, 33.221439, 41.689114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547566, 0.256301, -0.796544,
		-0.275570, 0.843596, 0.460876,
		0.790084, 0.471864, -0.391295,
		33.005428, 33.362999, 41.571724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181530, 33.536621, 41.521412>,  <32.452370, 33.032696, 41.845631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181530, 33.536621, 41.521412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538803, 33.507343, 41.343933>,  <32.753166, 33.489777, 41.237446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538803, 33.507343, 41.343933>,  <32.181530, 33.536621, 41.521412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538803, 33.507343, 41.343933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401791, 0.313220, -0.860498,
		0.201956, 0.946856, 0.250355,
		0.893184, -0.073192, -0.443695,
		32.806759, 33.485386, 41.210823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412891, 34.224941, 41.232059>,  <32.181530, 33.536621, 41.521412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412891, 34.224941, 41.232059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613865, 33.943768, 41.030682>,  <32.734447, 33.775063, 40.909855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613865, 33.943768, 41.030682>,  <32.412891, 34.224941, 41.232059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613865, 33.943768, 41.030682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260951, 0.431835, -0.863379,
		0.824299, 0.565161, 0.033537,
		0.502430, -0.702930, -0.503441,
		32.764595, 33.732887, 40.879650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810005, 34.575241, 40.817642>,  <32.412891, 34.224941, 41.232059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810005, 34.575241, 40.817642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785416, 34.216095, 40.643257>,  <32.770660, 34.000607, 40.538624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785416, 34.216095, 40.643257>,  <32.810005, 34.575241, 40.817642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785416, 34.216095, 40.643257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309913, 0.432372, -0.846764,
		0.948776, 0.083058, -0.304838,
		-0.061473, -0.897862, -0.435965,
		32.766975, 33.946735, 40.512466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996212, 34.745628, 40.128368>,  <32.810005, 34.575241, 40.817642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996212, 34.745628, 40.128368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821728, 34.385769, 40.120926>,  <32.717037, 34.169853, 40.116459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821728, 34.385769, 40.120926>,  <32.996212, 34.745628, 40.128368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821728, 34.385769, 40.120926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441117, 0.231818, -0.866993,
		0.784304, -0.369985, -0.497974,
		-0.436214, -0.899651, -0.018609,
		32.690865, 34.115875, 40.115345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126221, 34.595085, 39.477474>,  <32.996212, 34.745628, 40.128368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126221, 34.595085, 39.477474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835804, 34.355171, 39.612011>,  <32.661552, 34.211224, 39.692734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835804, 34.355171, 39.612011>,  <33.126221, 34.595085, 39.477474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835804, 34.355171, 39.612011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490219, 0.108449, -0.864826,
		0.482230, -0.792781, -0.372763,
		-0.726044, -0.599780, 0.336339,
		32.617992, 34.175236, 39.712914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101208, 34.133148, 38.970104>,  <33.126221, 34.595085, 39.477474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101208, 34.133148, 38.970104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752178, 34.130409, 39.165482>,  <32.542763, 34.128765, 39.282707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752178, 34.130409, 39.165482>,  <33.101208, 34.133148, 38.970104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752178, 34.130409, 39.165482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488268, 0.042352, -0.871666,
		-0.014721, -0.999079, -0.040296,
		-0.872570, -0.006843, 0.488442,
		32.490406, 34.128353, 39.312016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675301, 33.580780, 38.722836>,  <33.101208, 34.133148, 38.970104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675301, 33.580780, 38.722836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434860, 33.862465, 38.873970>,  <32.290596, 34.031475, 38.964653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434860, 33.862465, 38.873970>,  <32.675301, 33.580780, 38.722836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434860, 33.862465, 38.873970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471054, 0.069724, -0.879344,
		-0.645592, -0.706554, 0.289813,
		-0.601098, 0.704216, 0.377838,
		32.254532, 34.073730, 38.987320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025127, 33.286320, 38.726902>,  <32.675301, 33.580780, 38.722836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025127, 33.286320, 38.726902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027653, 33.685814, 38.706936>,  <32.029167, 33.925510, 38.694954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027653, 33.685814, 38.706936>,  <32.025127, 33.286320, 38.726902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027653, 33.685814, 38.706936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583986, -0.036840, -0.810927,
		-0.811739, 0.034272, 0.583014,
		0.006314, 0.998733, -0.049919,
		32.029549, 33.985435, 38.691959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300102, 32.744396, 38.227467>,  <32.025127, 33.286320, 38.726902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300102, 32.744396, 38.227467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460827, 32.465229, 37.990334>,  <32.557262, 32.297729, 37.848053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460827, 32.465229, 37.990334>,  <32.300102, 32.744396, 38.227467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460827, 32.465229, 37.990334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382918, -0.460019, 0.801098,
		-0.831818, -0.548897, 0.082406,
		0.401812, -0.697922, -0.592834,
		32.581371, 32.255852, 37.812485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139332, 32.021835, 38.462017>,  <32.300102, 32.744396, 38.227467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139332, 32.021835, 38.462017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492313, 32.028934, 38.273991>,  <32.704102, 32.033195, 38.161175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492313, 32.028934, 38.273991>,  <32.139332, 32.021835, 38.462017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492313, 32.028934, 38.273991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412788, -0.508405, 0.755731,
		-0.225567, -0.860935, -0.455972,
		0.882454, 0.017752, -0.470063,
		32.757050, 32.034260, 38.132973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263710, 31.419661, 38.254936>,  <32.139332, 32.021835, 38.462017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263710, 31.419661, 38.254936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606079, 31.604309, 38.348145>,  <32.811501, 31.715099, 38.404072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606079, 31.604309, 38.348145>,  <32.263710, 31.419661, 38.254936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606079, 31.604309, 38.348145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158423, -0.663054, 0.731615,
		0.492237, -0.589290, -0.640655,
		0.855923, 0.461623, 0.233022,
		32.862858, 31.742796, 38.418053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822128, 30.833721, 38.252281>,  <32.263710, 31.419661, 38.254936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822128, 30.833721, 38.252281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961178, 31.154158, 38.447178>,  <33.044609, 31.346420, 38.564117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961178, 31.154158, 38.447178>,  <32.822128, 30.833721, 38.252281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961178, 31.154158, 38.447178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276568, -0.584139, 0.763081,
		0.895917, -0.130509, -0.424617,
		0.347624, 0.801093, 0.487245,
		33.065464, 31.394485, 38.593353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526806, 30.740414, 38.447426>,  <32.822128, 30.833721, 38.252281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526806, 30.740414, 38.447426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371105, 31.015404, 38.692657>,  <33.277687, 31.180397, 38.839794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371105, 31.015404, 38.692657>,  <33.526806, 30.740414, 38.447426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371105, 31.015404, 38.692657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284863, -0.543101, 0.789870,
		0.875979, 0.482098, 0.015564,
		-0.389247, 0.687476, 0.613077,
		33.254330, 31.221647, 38.876579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020256, 30.745520, 39.028008>,  <33.526806, 30.740414, 38.447426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020256, 30.745520, 39.028008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706585, 30.936207, 39.186909>,  <33.518383, 31.050619, 39.282249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706585, 30.936207, 39.186909>,  <34.020256, 30.745520, 39.028008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706585, 30.936207, 39.186909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180879, -0.436770, 0.881201,
		0.593590, 0.762872, 0.256277,
		-0.784177, 0.476717, 0.397250,
		33.471333, 31.079222, 39.306084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220757, 31.043777, 39.664402>,  <34.020256, 30.745520, 39.028008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220757, 31.043777, 39.664402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822117, 31.037836, 39.696835>,  <33.582935, 31.034271, 39.716293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822117, 31.037836, 39.696835>,  <34.220757, 31.043777, 39.664402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822117, 31.037836, 39.696835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081224, -0.344380, 0.935310,
		0.014029, 0.938713, 0.344415,
		-0.996597, -0.014853, 0.081078,
		33.523136, 31.033381, 39.721157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083035, 31.154722, 40.323139>,  <34.220757, 31.043777, 39.664402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083035, 31.154722, 40.323139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743416, 30.984406, 40.198032>,  <33.539646, 30.882215, 40.122967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743416, 30.984406, 40.198032>,  <34.083035, 31.154722, 40.323139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743416, 30.984406, 40.198032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141891, -0.386483, 0.911317,
		-0.508911, 0.818128, 0.267725,
		-0.849045, -0.425791, -0.312770,
		33.488701, 30.856668, 40.104202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613194, 31.274612, 40.811523>,  <34.083035, 31.154722, 40.323139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613194, 31.274612, 40.811523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438679, 30.973658, 40.614113>,  <33.333969, 30.793085, 40.495667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438679, 30.973658, 40.614113>,  <33.613194, 31.274612, 40.811523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438679, 30.973658, 40.614113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304754, -0.392509, 0.867791,
		-0.846628, 0.529009, -0.058046,
		-0.436286, -0.752387, -0.493527,
		33.307793, 30.747942, 40.466053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999100, 31.171894, 41.202335>,  <33.613194, 31.274612, 40.811523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999100, 31.171894, 41.202335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060120, 30.845675, 40.979046>,  <33.096733, 30.649942, 40.845074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060120, 30.845675, 40.979046>,  <32.999100, 31.171894, 41.202335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060120, 30.845675, 40.979046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134695, -0.576720, 0.805761,
		-0.979074, -0.047727, -0.197828,
		0.152548, -0.815547, -0.558223,
		33.105885, 30.601011, 40.811581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383842, 30.706211, 41.314976>,  <32.999100, 31.171894, 41.202335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383842, 30.706211, 41.314976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710960, 30.506029, 41.201302>,  <32.907230, 30.385920, 41.133099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710960, 30.506029, 41.201302>,  <32.383842, 30.706211, 41.314976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710960, 30.506029, 41.201302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020522, -0.468121, 0.883426,
		-0.575146, -0.728292, -0.372556,
		0.817793, -0.500454, -0.284184,
		32.956299, 30.355894, 41.116047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359863, 30.076824, 41.659771>,  <32.383842, 30.706211, 41.314976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359863, 30.076824, 41.659771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742264, 30.067314, 41.542812>,  <32.971703, 30.061607, 41.472637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742264, 30.067314, 41.542812>,  <32.359863, 30.076824, 41.659771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742264, 30.067314, 41.542812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209228, -0.643386, 0.736396,
		-0.205632, -0.765173, -0.610103,
		0.956002, -0.023776, -0.292396,
		33.029064, 30.060181, 41.455093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569443, 29.311962, 41.752659>,  <32.359863, 30.076824, 41.659771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569443, 29.311962, 41.752659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887562, 29.554392, 41.747437>,  <33.078434, 29.699850, 41.744305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887562, 29.554392, 41.747437>,  <32.569443, 29.311962, 41.752659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887562, 29.554392, 41.747437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328464, -0.412721, 0.849572,
		0.509515, -0.679954, -0.527311,
		0.795302, 0.606073, -0.013053,
		33.126152, 29.736214, 41.743519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229427, 28.869352, 41.780048>,  <32.569443, 29.311962, 41.752659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229427, 28.869352, 41.780048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314781, 29.233639, 41.921505>,  <33.365993, 29.452211, 42.006378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314781, 29.233639, 41.921505>,  <33.229427, 28.869352, 41.780048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314781, 29.233639, 41.921505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370493, -0.410377, 0.833263,
		0.903993, -0.046782, -0.424981,
		0.213384, 0.910716, 0.353645,
		33.378796, 29.506853, 42.027599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809372, 28.730045, 42.101673>,  <33.229427, 28.869352, 41.780048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809372, 28.730045, 42.101673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714081, 29.089672, 42.248600>,  <33.656906, 29.305449, 42.336758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714081, 29.089672, 42.248600>,  <33.809372, 28.730045, 42.101673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714081, 29.089672, 42.248600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387352, -0.258868, 0.884842,
		0.890621, 0.353076, -0.286587,
		-0.238228, 0.899069, 0.367318,
		33.642612, 29.359392, 42.358795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454826, 29.010271, 42.422241>,  <33.809372, 28.730045, 42.101673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454826, 29.010271, 42.422241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156990, 29.216885, 42.591366>,  <33.978287, 29.340853, 42.692841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156990, 29.216885, 42.591366>,  <34.454826, 29.010271, 42.422241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156990, 29.216885, 42.591366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426146, -0.119702, 0.896700,
		0.513787, 0.847859, -0.130989,
		-0.744595, 0.516533, 0.422813,
		33.933613, 29.371845, 42.718208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748531, 29.565601, 42.818562>,  <34.454826, 29.010271, 42.422241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748531, 29.565601, 42.818562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384876, 29.507336, 42.974636>,  <34.166683, 29.472376, 43.068283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384876, 29.507336, 42.974636>,  <34.748531, 29.565601, 42.818562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384876, 29.507336, 42.974636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373517, 0.129319, 0.918565,
		-0.184261, 0.980846, -0.063161,
		-0.909139, -0.145664, 0.390191,
		34.112133, 29.463636, 43.091694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838913, 29.921934, 43.469070>,  <34.748531, 29.565601, 42.818562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838913, 29.921934, 43.469070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524784, 29.674746, 43.483940>,  <34.336308, 29.526432, 43.492863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524784, 29.674746, 43.483940>,  <34.838913, 29.921934, 43.469070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524784, 29.674746, 43.483940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271415, -0.289701, 0.917827,
		-0.556423, 0.730878, 0.395236,
		-0.785320, -0.617973, 0.037175,
		34.289188, 29.489353, 43.495094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656719, 30.050980, 44.118446>,  <34.838913, 29.921934, 43.469070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656719, 30.050980, 44.118446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491814, 29.705975, 44.001072>,  <34.392868, 29.498972, 43.930645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491814, 29.705975, 44.001072>,  <34.656719, 30.050980, 44.118446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491814, 29.705975, 44.001072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132947, -0.375589, 0.917201,
		-0.901311, 0.339119, 0.269511,
		-0.412266, -0.862514, -0.293438,
		34.368134, 29.447220, 43.913040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366203, 29.879812, 44.777306>,  <34.656719, 30.050980, 44.118446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366203, 29.879812, 44.777306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347004, 29.539141, 44.568562>,  <34.335484, 29.334738, 44.443314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347004, 29.539141, 44.568562>,  <34.366203, 29.879812, 44.777306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347004, 29.539141, 44.568562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110164, -0.523790, 0.844694,
		-0.992754, -0.016950, 0.118963,
		-0.047995, -0.851679, -0.521862,
		34.332607, 29.283638, 44.412003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857758, 29.532576, 45.143410>,  <34.366203, 29.879812, 44.777306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857758, 29.532576, 45.143410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135563, 29.311888, 44.958691>,  <34.302246, 29.179476, 44.847858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135563, 29.311888, 44.958691>,  <33.857758, 29.532576, 45.143410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135563, 29.311888, 44.958691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106937, -0.555561, 0.824570,
		-0.711488, -0.622059, -0.326846,
		0.694514, -0.551720, -0.461796,
		34.343918, 29.146372, 44.820152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615173, 28.797874, 45.182571>,  <33.857758, 29.532576, 45.143410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615173, 28.797874, 45.182571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004715, 28.758141, 45.100853>,  <34.238441, 28.734301, 45.051823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004715, 28.758141, 45.100853>,  <33.615173, 28.797874, 45.182571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004715, 28.758141, 45.100853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098420, -0.626054, 0.773544,
		-0.204742, -0.773427, -0.599909,
		0.973855, -0.099333, -0.204300,
		34.296871, 28.728340, 45.039562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725906, 28.206608, 45.430893>,  <33.615173, 28.797874, 45.182571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725906, 28.206608, 45.430893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110100, 28.315533, 45.407841>,  <34.340614, 28.380888, 45.394009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110100, 28.315533, 45.407841>,  <33.725906, 28.206608, 45.430893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110100, 28.315533, 45.407841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223391, -0.630627, 0.743240,
		0.166050, -0.726743, -0.666538,
		0.960481, 0.272314, -0.057632,
		34.398243, 28.397226, 45.390553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073147, 27.711708, 45.749744>,  <33.725906, 28.206608, 45.430893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073147, 27.711708, 45.749744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361183, 27.988852, 45.764748>,  <34.534004, 28.155138, 45.773750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361183, 27.988852, 45.764748>,  <34.073147, 27.711708, 45.749744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361183, 27.988852, 45.764748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393661, -0.452452, 0.800198,
		0.571396, -0.561454, -0.598561,
		0.720095, 0.692861, 0.037507,
		34.577213, 28.196711, 45.776001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539764, 27.317675, 45.824841>,  <34.073147, 27.711708, 45.749744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539764, 27.317675, 45.824841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652458, 27.676023, 45.962265>,  <34.720074, 27.891033, 46.044720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652458, 27.676023, 45.962265>,  <34.539764, 27.317675, 45.824841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652458, 27.676023, 45.962265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420861, -0.437167, 0.794834,
		0.862266, -0.079336, -0.500202,
		0.281731, 0.895874, 0.343565,
		34.736977, 27.944786, 46.065334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206760, 27.248404, 46.107521>,  <34.539764, 27.317675, 45.824841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206760, 27.248404, 46.107521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006702, 27.551346, 46.275459>,  <34.886669, 27.733110, 46.376221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006702, 27.551346, 46.275459>,  <35.206760, 27.248404, 46.107521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006702, 27.551346, 46.275459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268898, -0.325041, 0.906665,
		0.823135, 0.566358, -0.041084,
		-0.500143, 0.757355, 0.419845,
		34.856659, 27.778553, 46.401413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667484, 27.397146, 46.695889>,  <35.206760, 27.248404, 46.107521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667484, 27.397146, 46.695889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338516, 27.603691, 46.791382>,  <35.141136, 27.727617, 46.848679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338516, 27.603691, 46.791382>,  <35.667484, 27.397146, 46.695889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338516, 27.603691, 46.791382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297399, 0.032514, 0.954199,
		0.484951, 0.855753, -0.180306,
		-0.822421, 0.516362, 0.238733,
		35.091789, 27.758600, 46.863003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939087, 27.989166, 47.154850>,  <35.667484, 27.397146, 46.695889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939087, 27.989166, 47.154850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550121, 27.914820, 47.211220>,  <35.316742, 27.870211, 47.245041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550121, 27.914820, 47.211220>,  <35.939087, 27.989166, 47.154850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550121, 27.914820, 47.211220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163272, -0.110923, 0.980326,
		-0.166579, 0.976294, 0.138210,
		-0.972416, -0.185868, 0.140924,
		35.258396, 27.859058, 47.253498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526772, 28.479116, 47.396587>,  <35.939087, 27.989166, 47.154850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526772, 28.479116, 47.396587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894669, 28.363104, 47.290798>,  <37.115406, 28.293495, 47.227325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894669, 28.363104, 47.290798>,  <36.526772, 28.479116, 47.396587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894669, 28.363104, 47.290798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095289, 0.488655, -0.867258,
		0.380770, 0.822859, 0.421802,
		0.919747, -0.290033, -0.264475,
		37.170593, 28.276094, 47.211456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765247, 29.011076, 47.134644>,  <36.526772, 28.479116, 47.396587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765247, 29.011076, 47.134644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974911, 28.712109, 46.971367>,  <37.100708, 28.532728, 46.873402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974911, 28.712109, 46.971367>,  <36.765247, 29.011076, 47.134644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974911, 28.712109, 46.971367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058851, 0.446381, -0.892905,
		0.849586, 0.492045, 0.189988,
		0.524157, -0.747419, -0.408196,
		37.132156, 28.487883, 46.848907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088982, 29.406116, 46.722309>,  <36.765247, 29.011076, 47.134644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088982, 29.406116, 46.722309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148869, 29.036154, 46.582520>,  <37.184803, 28.814177, 46.498646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148869, 29.036154, 46.582520>,  <37.088982, 29.406116, 46.722309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148869, 29.036154, 46.582520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132559, 0.369046, -0.919909,
		0.979802, 0.091404, 0.177859,
		0.149722, -0.924906, -0.349476,
		37.193787, 28.758682, 46.477676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725376, 29.467972, 46.444717>,  <37.088982, 29.406116, 46.722309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725376, 29.467972, 46.444717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519958, 29.173330, 46.268677>,  <37.396709, 28.996546, 46.163052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519958, 29.173330, 46.268677>,  <37.725376, 29.467972, 46.444717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519958, 29.173330, 46.268677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048288, 0.487274, -0.871913,
		0.856704, -0.469017, -0.214667,
		-0.513543, -0.736605, -0.440097,
		37.365894, 28.952349, 46.136646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029835, 29.409794, 45.889500>,  <37.725376, 29.467972, 46.444717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029835, 29.409794, 45.889500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676586, 29.237249, 45.815720>,  <37.464638, 29.133722, 45.771454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676586, 29.237249, 45.815720>,  <38.029835, 29.409794, 45.889500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676586, 29.237249, 45.815720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043707, 0.467099, -0.883124,
		0.467099, -0.771846, -0.431360,
		0.883124, 0.431360, 0.184447,
		37.411648, 29.107841, 45.760384>
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
