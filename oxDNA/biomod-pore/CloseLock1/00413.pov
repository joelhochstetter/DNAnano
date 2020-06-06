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
	<24.368612, 34.800278, 34.755440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247955, 34.815708, 35.136497>,  <24.175562, 34.824966, 35.365131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247955, 34.815708, 35.136497>,  <24.368612, 34.800278, 34.755440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.247955, 34.815708, 35.136497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945242, 0.118507, -0.304097,
		-0.124624, -0.992204, 0.000713,
		-0.301641, 0.038572, 0.952641,
		24.157463, 34.827278, 35.422291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.386459, 35.507694, 34.496887>,  <24.368612, 34.800278, 34.755440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.386459, 35.507694, 34.496887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781477, 35.448914, 34.519386>,  <25.018488, 35.413647, 34.532887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781477, 35.448914, 34.519386>,  <24.386459, 35.507694, 34.496887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.781477, 35.448914, 34.519386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113793, 0.913899, 0.389666,
		-0.108668, -0.378411, 0.919237,
		0.987543, -0.146947, 0.056251,
		25.077740, 35.404831, 34.536263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696951, 35.548649, 35.126392>,  <24.386459, 35.507694, 34.496887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696951, 35.548649, 35.126392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967157, 35.651684, 34.850037>,  <25.129280, 35.713505, 34.684223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967157, 35.651684, 34.850037>,  <24.696951, 35.548649, 35.126392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967157, 35.651684, 34.850037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152216, 0.868097, 0.472481,
		0.721464, -0.424332, 0.547204,
		0.675515, 0.257585, -0.690890,
		25.169811, 35.728958, 34.642769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.356457, 35.599850, 35.426304>,  <24.696951, 35.548649, 35.126392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.356457, 35.599850, 35.426304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.311863, 35.869396, 35.134144>,  <25.285107, 36.031124, 34.958847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.311863, 35.869396, 35.134144>,  <25.356457, 35.599850, 35.426304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.311863, 35.869396, 35.134144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328617, 0.718630, 0.612847,
		0.937860, -0.171697, -0.301560,
		-0.111486, 0.673862, -0.730397,
		25.278418, 36.071556, 34.915024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972479, 35.914814, 35.293247>,  <25.356457, 35.599850, 35.426304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972479, 35.914814, 35.293247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678316, 36.171661, 35.206657>,  <25.501818, 36.325768, 35.154701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678316, 36.171661, 35.206657>,  <25.972479, 35.914814, 35.293247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678316, 36.171661, 35.206657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447687, 0.700217, 0.556123,
		0.508676, 0.312064, -0.802412,
		-0.735408, 0.642116, -0.216477,
		25.457693, 36.364296, 35.141716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675060, 35.934654, 34.874603>,  <25.972479, 35.914814, 35.293247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675060, 35.934654, 34.874603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033941, 35.770863, 34.940758>,  <27.249269, 35.672588, 34.980450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033941, 35.770863, 34.940758>,  <26.675060, 35.934654, 34.874603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033941, 35.770863, 34.940758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421232, -0.681037, 0.598960,
		-0.132629, -0.607054, -0.783515,
		0.897204, -0.409480, 0.165385,
		27.303102, 35.648018, 34.990372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642502, 35.214962, 34.800014>,  <26.675060, 35.934654, 34.874603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642502, 35.214962, 34.800014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970322, 35.247078, 35.026958>,  <27.167013, 35.266350, 35.163124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970322, 35.247078, 35.026958>,  <26.642502, 35.214962, 34.800014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970322, 35.247078, 35.026958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322059, -0.754399, 0.571979,
		0.473941, -0.651486, -0.592406,
		0.819547, 0.080295, 0.567358,
		27.216187, 35.271168, 35.197166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976702, 34.481213, 35.006718>,  <26.642502, 35.214962, 34.800014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976702, 34.481213, 35.006718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065037, 34.771305, 35.267570>,  <27.118038, 34.945358, 35.424080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065037, 34.771305, 35.267570>,  <26.976702, 34.481213, 35.006718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065037, 34.771305, 35.267570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497668, -0.491248, 0.714844,
		0.838783, -0.482409, 0.252438,
		0.220838, 0.725229, 0.652130,
		27.131289, 34.988873, 35.463211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224518, 34.162422, 35.642685>,  <26.976702, 34.481213, 35.006718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224518, 34.162422, 35.642685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123419, 34.537682, 35.737331>,  <27.062759, 34.762836, 35.794121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123419, 34.537682, 35.737331>,  <27.224518, 34.162422, 35.642685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123419, 34.537682, 35.737331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316918, -0.311341, 0.895896,
		0.914156, 0.151447, 0.376008,
		-0.252748, 0.938153, 0.236618,
		27.047594, 34.819126, 35.808315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330679, 34.186554, 36.263706>,  <27.224518, 34.162422, 35.642685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330679, 34.186554, 36.263706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113020, 34.520996, 36.235916>,  <26.982424, 34.721661, 36.219242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113020, 34.520996, 36.235916>,  <27.330679, 34.186554, 36.263706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113020, 34.520996, 36.235916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408593, -0.191768, 0.892343,
		0.732772, 0.513955, 0.445978,
		-0.544148, 0.836107, -0.069476,
		26.949776, 34.771828, 36.215073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318203, 34.409191, 36.901173>,  <27.330679, 34.186554, 36.263706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318203, 34.409191, 36.901173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994469, 34.554081, 36.716232>,  <26.800228, 34.641014, 36.605270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994469, 34.554081, 36.716232>,  <27.318203, 34.409191, 36.901173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994469, 34.554081, 36.716232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518305, -0.070169, 0.852313,
		0.276288, 0.929445, 0.244534,
		-0.809336, 0.362227, -0.462349,
		26.751667, 34.662750, 36.577526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075363, 34.968838, 37.265942>,  <27.318203, 34.409191, 36.901173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075363, 34.968838, 37.265942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753410, 34.855553, 37.057346>,  <26.560238, 34.787582, 36.932190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753410, 34.855553, 37.057346>,  <27.075363, 34.968838, 37.265942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753410, 34.855553, 37.057346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542279, -0.005908, 0.840178,
		-0.241033, 0.959038, -0.148827,
		-0.804883, -0.283216, -0.521490,
		26.511946, 34.770588, 36.900898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505112, 35.453430, 37.324852>,  <27.075363, 34.968838, 37.265942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505112, 35.453430, 37.324852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341927, 35.099014, 37.236755>,  <26.244015, 34.886364, 37.183899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341927, 35.099014, 37.236755>,  <26.505112, 35.453430, 37.324852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341927, 35.099014, 37.236755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610518, 0.085386, 0.787386,
		-0.678847, 0.455687, -0.575775,
		-0.407965, -0.886035, -0.220241,
		26.219538, 34.833202, 37.170685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.855278, 35.547115, 37.582340>,  <26.505112, 35.453430, 37.324852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.855278, 35.547115, 37.582340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876913, 35.156815, 37.497505>,  <25.889894, 34.922634, 37.446606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.876913, 35.156815, 37.497505>,  <25.855278, 35.547115, 37.582340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876913, 35.156815, 37.497505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631838, -0.197914, 0.749407,
		-0.773211, 0.093471, -0.627222,
		0.054088, -0.975753, -0.212088,
		25.893139, 34.864090, 37.433880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311472, 35.351101, 37.770447>,  <25.855278, 35.547115, 37.582340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311472, 35.351101, 37.770447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.498558, 34.997551, 37.771954>,  <25.610809, 34.785423, 37.772858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.498558, 34.997551, 37.771954>,  <25.311472, 35.351101, 37.770447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.498558, 34.997551, 37.771954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545124, -0.285101, 0.788389,
		-0.695760, -0.370797, -0.615165,
		0.467716, -0.883871, 0.003768,
		25.638872, 34.732391, 37.773083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799944, 34.874805, 37.811073>,  <25.311472, 35.351101, 37.770447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799944, 34.874805, 37.811073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.121857, 34.682301, 37.950047>,  <25.315004, 34.566799, 38.033432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.121857, 34.682301, 37.950047>,  <24.799944, 34.874805, 37.811073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.121857, 34.682301, 37.950047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532160, -0.325728, 0.781477,
		-0.262922, -0.813813, -0.518247,
		0.804784, -0.481258, 0.347438,
		25.363291, 34.537922, 38.054276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.523409, 34.298897, 38.142735>,  <24.799944, 34.874805, 37.811073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.523409, 34.298897, 38.142735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885965, 34.359673, 38.300404>,  <25.103498, 34.396137, 38.395004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885965, 34.359673, 38.300404>,  <24.523409, 34.298897, 38.142735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.885965, 34.359673, 38.300404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349128, -0.255899, 0.901457,
		0.237833, -0.954689, -0.178899,
		0.906391, 0.151938, 0.394170,
		25.157883, 34.405254, 38.418655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.526707, 33.818409, 38.744766>,  <24.523409, 34.298897, 38.142735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.526707, 33.818409, 38.744766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854887, 34.028458, 38.835194>,  <25.051796, 34.154488, 38.889450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.854887, 34.028458, 38.835194>,  <24.526707, 33.818409, 38.744766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854887, 34.028458, 38.835194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230891, -0.057403, 0.971285,
		0.523021, -0.849088, 0.074150,
		0.820450, 0.525123, 0.226070,
		25.101023, 34.185993, 38.903015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.770452, 33.469650, 39.297775>,  <24.526707, 33.818409, 38.744766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.770452, 33.469650, 39.297775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952251, 33.825363, 39.318207>,  <25.061331, 34.038792, 39.330467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952251, 33.825363, 39.318207>,  <24.770452, 33.469650, 39.297775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952251, 33.825363, 39.318207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092792, -0.009767, 0.995638,
		0.885902, -0.457255, 0.078079,
		0.454498, 0.889282, 0.051082,
		25.088600, 34.092148, 39.333530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298456, 33.397644, 39.784138>,  <24.770452, 33.469650, 39.297775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298456, 33.397644, 39.784138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203579, 33.785442, 39.759449>,  <25.146652, 34.018124, 39.744637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203579, 33.785442, 39.759449>,  <25.298456, 33.397644, 39.784138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203579, 33.785442, 39.759449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141908, 0.097431, 0.985073,
		0.961042, 0.224892, -0.160689,
		-0.237191, 0.969500, -0.061721,
		25.132421, 34.076294, 39.740932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662466, 33.852882, 40.270042>,  <25.298456, 33.397644, 39.784138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662466, 33.852882, 40.270042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396713, 34.135757, 40.173309>,  <25.237261, 34.305481, 40.115269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396713, 34.135757, 40.173309>,  <25.662466, 33.852882, 40.270042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396713, 34.135757, 40.173309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009053, 0.331165, 0.943529,
		0.747339, 0.624674, -0.226422,
		-0.664382, 0.707186, -0.241837,
		25.197399, 34.347912, 40.100758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872835, 34.436337, 40.591141>,  <25.662466, 33.852882, 40.270042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872835, 34.436337, 40.591141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490288, 34.534184, 40.527237>,  <25.260759, 34.592892, 40.488895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.490288, 34.534184, 40.527237>,  <25.872835, 34.436337, 40.591141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.490288, 34.534184, 40.527237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049600, 0.402924, 0.913889,
		0.287926, 0.881937, -0.373210,
		-0.956367, 0.244621, -0.159756,
		25.203377, 34.607571, 40.479309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824604, 35.111794, 40.905418>,  <25.872835, 34.436337, 40.591141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824604, 35.111794, 40.905418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452065, 34.977314, 40.849480>,  <25.228540, 34.896626, 40.815914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452065, 34.977314, 40.849480>,  <25.824604, 35.111794, 40.905418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452065, 34.977314, 40.849480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256998, 0.334847, 0.906548,
		-0.257951, 0.880255, -0.398262,
		-0.931350, -0.336198, -0.139850,
		25.172659, 34.876453, 40.807526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235954, 35.605713, 41.089607>,  <25.824604, 35.111794, 40.905418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235954, 35.605713, 41.089607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060375, 35.249226, 41.135303>,  <24.955029, 35.035332, 41.162724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060375, 35.249226, 41.135303>,  <25.235954, 35.605713, 41.089607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060375, 35.249226, 41.135303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431781, 0.320729, 0.843029,
		-0.787966, 0.320717, -0.525595,
		-0.438948, -0.891220, 0.114244,
		24.928692, 34.981861, 41.169575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.596308, 35.785355, 41.385967>,  <25.235954, 35.605713, 41.089607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.596308, 35.785355, 41.385967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637100, 35.396809, 41.471806>,  <24.661575, 35.163681, 41.523308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637100, 35.396809, 41.471806>,  <24.596308, 35.785355, 41.385967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.637100, 35.396809, 41.471806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474890, 0.142017, 0.868511,
		-0.874117, -0.190481, -0.446808,
		0.101980, -0.971364, 0.214597,
		24.667694, 35.105400, 41.536186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.939627, 35.426731, 41.692738>,  <24.596308, 35.785355, 41.385967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.939627, 35.426731, 41.692738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264563, 35.244823, 41.838772>,  <24.459524, 35.135677, 41.926392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264563, 35.244823, 41.838772>,  <23.939627, 35.426731, 41.692738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.264563, 35.244823, 41.838772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341173, 0.137119, 0.929946,
		-0.472972, -0.879990, -0.043767,
		0.812342, -0.454770, 0.365082,
		24.508265, 35.108391, 41.948296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.848431, 34.910748, 42.157417>,  <23.939627, 35.426731, 41.692738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.848431, 34.910748, 42.157417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.190271, 35.071053, 42.289505>,  <24.395376, 35.167236, 42.368755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.190271, 35.071053, 42.289505>,  <23.848431, 34.910748, 42.157417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.190271, 35.071053, 42.289505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387634, 0.069203, 0.919212,
		0.345531, -0.913566, 0.214489,
		0.854604, 0.400759, 0.330217,
		24.446653, 35.191280, 42.388569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.172874, 34.493340, 42.753784>,  <23.848431, 34.910748, 42.157417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.172874, 34.493340, 42.753784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.260159, 34.882877, 42.779095>,  <24.312529, 35.116600, 42.794281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.260159, 34.882877, 42.779095>,  <24.172874, 34.493340, 42.753784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.260159, 34.882877, 42.779095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326502, 0.011747, 0.945123,
		0.919663, -0.226898, 0.320527,
		0.218212, 0.973848, 0.063279,
		24.325623, 35.175034, 42.798077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.537785, 34.591156, 43.341129>,  <24.172874, 34.493340, 42.753784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.537785, 34.591156, 43.341129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.489355, 34.975086, 43.239868>,  <24.460297, 35.205444, 43.179111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.489355, 34.975086, 43.239868>,  <24.537785, 34.591156, 43.341129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.489355, 34.975086, 43.239868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360608, 0.195072, 0.912091,
		0.924826, 0.201719, 0.322500,
		-0.121076, 0.959821, -0.253149,
		24.453032, 35.263031, 43.163925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.710871, 35.108295, 43.868252>,  <24.537785, 34.591156, 43.341129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.710871, 35.108295, 43.868252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440983, 35.289005, 43.634792>,  <24.279051, 35.397430, 43.494717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440983, 35.289005, 43.634792>,  <24.710871, 35.108295, 43.868252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.440983, 35.289005, 43.634792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526554, 0.259492, 0.809571,
		0.517200, 0.853558, 0.062801,
		-0.674719, 0.451778, -0.583653,
		24.238567, 35.424538, 43.459698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.492777, 35.712868, 44.207031>,  <24.710871, 35.108295, 43.868252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.492777, 35.712868, 44.207031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183647, 35.591671, 43.983982>,  <23.998169, 35.518955, 43.850155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183647, 35.591671, 43.983982>,  <24.492777, 35.712868, 44.207031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.183647, 35.591671, 43.983982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626426, 0.223462, 0.746763,
		-0.101653, 0.926425, -0.362497,
		-0.772824, -0.302989, -0.557621,
		23.951799, 35.500774, 43.816696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.634279, 36.355843, 44.651848>,  <24.492777, 35.712868, 44.207031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.634279, 36.355843, 44.651848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861458, 36.678123, 44.719120>,  <24.997765, 36.871490, 44.759483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861458, 36.678123, 44.719120>,  <24.634279, 36.355843, 44.651848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861458, 36.678123, 44.719120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454995, -0.137063, -0.879883,
		-0.685870, 0.576248, -0.444433,
		0.567946, 0.805700, 0.168183,
		25.031841, 36.919834, 44.769573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.669973, 36.898991, 43.975765>,  <24.634279, 36.355843, 44.651848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.669973, 36.898991, 43.975765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.974953, 36.943031, 44.230812>,  <25.157940, 36.969456, 44.383839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.974953, 36.943031, 44.230812>,  <24.669973, 36.898991, 43.975765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.974953, 36.943031, 44.230812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643328, -0.023449, -0.765232,
		-0.069302, 0.993644, -0.088710,
		0.762448, 0.110102, 0.637614,
		25.203688, 36.976063, 44.422096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167881, 37.482750, 43.741295>,  <24.669973, 36.898991, 43.975765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167881, 37.482750, 43.741295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364841, 37.223713, 43.973904>,  <25.483019, 37.068291, 44.113468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364841, 37.223713, 43.973904>,  <25.167881, 37.482750, 43.741295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364841, 37.223713, 43.973904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592257, -0.240290, -0.769085,
		0.637786, 0.723109, 0.265221,
		0.492403, -0.647591, 0.581520,
		25.512562, 37.029434, 44.148361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009277, 37.486233, 43.867165>,  <25.167881, 37.482750, 43.741295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009277, 37.486233, 43.867165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829895, 37.128815, 43.858593>,  <25.722265, 36.914364, 43.853451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829895, 37.128815, 43.858593>,  <26.009277, 37.486233, 43.867165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.829895, 37.128815, 43.858593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536862, -0.250117, -0.805742,
		0.714608, -0.372848, 0.591878,
		-0.448458, -0.893547, -0.021433,
		25.695358, 36.860752, 43.852161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427168, 36.811440, 44.147697>,  <26.009277, 37.486233, 43.867165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427168, 36.811440, 44.147697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160950, 36.758518, 43.853882>,  <26.001219, 36.726765, 43.677593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160950, 36.758518, 43.853882>,  <26.427168, 36.811440, 44.147697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160950, 36.758518, 43.853882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745384, -0.168030, -0.645111,
		-0.038072, -0.976863, 0.210451,
		-0.665547, -0.132306, -0.734535,
		25.961285, 36.718826, 43.633522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688646, 36.271675, 43.773132>,  <26.427168, 36.811440, 44.147697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688646, 36.271675, 43.773132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419497, 36.431103, 43.523849>,  <26.258007, 36.526760, 43.374279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419497, 36.431103, 43.523849>,  <26.688646, 36.271675, 43.773132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419497, 36.431103, 43.523849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615008, -0.166767, -0.770683,
		-0.411102, -0.901848, -0.132911,
		-0.672874, 0.398571, -0.623203,
		26.217634, 36.550674, 43.336887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642534, 35.864658, 43.168510>,  <26.688646, 36.271675, 43.773132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642534, 35.864658, 43.168510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494011, 36.207191, 43.024944>,  <26.404896, 36.412712, 42.938805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494011, 36.207191, 43.024944>,  <26.642534, 35.864658, 43.168510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494011, 36.207191, 43.024944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389909, -0.207010, -0.897284,
		-0.842674, -0.473114, -0.257028,
		-0.371310, 0.856335, -0.358913,
		26.382618, 36.464092, 42.917271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197153, 35.714149, 42.676434>,  <26.642534, 35.864658, 43.168510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197153, 35.714149, 42.676434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305939, 36.092628, 42.606289>,  <26.371210, 36.319714, 42.564201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305939, 36.092628, 42.606289>,  <26.197153, 35.714149, 42.676434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305939, 36.092628, 42.606289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329881, -0.262857, -0.906689,
		-0.903999, 0.188737, -0.383619,
		0.271963, 0.946195, -0.175362,
		26.387527, 36.376488, 42.553680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822416, 35.955105, 42.070606>,  <26.197153, 35.714149, 42.676434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822416, 35.955105, 42.070606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150324, 36.179028, 42.118935>,  <26.347069, 36.313381, 42.147930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150324, 36.179028, 42.118935>,  <25.822416, 35.955105, 42.070606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150324, 36.179028, 42.118935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288657, -0.221685, -0.931414,
		-0.494625, 0.798421, -0.343322,
		0.819770, 0.559803, 0.120819,
		26.396255, 36.346970, 42.155182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900978, 36.276283, 41.420921>,  <25.822416, 35.955105, 42.070606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900978, 36.276283, 41.420921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268358, 36.310249, 41.575447>,  <26.488787, 36.330627, 41.668163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268358, 36.310249, 41.575447>,  <25.900978, 36.276283, 41.420921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268358, 36.310249, 41.575447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393198, -0.089998, -0.915038,
		-0.042934, 0.992315, -0.116048,
		0.918451, 0.084917, 0.386313,
		26.543894, 36.335724, 41.691341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192192, 36.732075, 40.939316>,  <25.900978, 36.276283, 41.420921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192192, 36.732075, 40.939316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495054, 36.550922, 41.127617>,  <26.676771, 36.442230, 41.240597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495054, 36.550922, 41.127617>,  <26.192192, 36.732075, 40.939316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495054, 36.550922, 41.127617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490620, -0.081536, -0.867550,
		0.431282, 0.887834, 0.160457,
		0.757158, -0.452882, 0.470755,
		26.722202, 36.415058, 41.268845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826389, 36.939663, 40.628830>,  <26.192192, 36.732075, 40.939316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826389, 36.939663, 40.628830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980436, 36.640728, 40.845413>,  <27.072865, 36.461369, 40.975365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980436, 36.640728, 40.845413>,  <26.826389, 36.939663, 40.628830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980436, 36.640728, 40.845413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580468, -0.259963, -0.771671,
		0.717454, 0.611484, 0.333687,
		0.385118, -0.747333, 0.541458,
		27.095972, 36.416527, 41.007851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492683, 37.041187, 40.465794>,  <26.826389, 36.939663, 40.628830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492683, 37.041187, 40.465794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445866, 36.673653, 40.616550>,  <27.417774, 36.453133, 40.707005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445866, 36.673653, 40.616550>,  <27.492683, 37.041187, 40.465794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445866, 36.673653, 40.616550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531214, -0.378569, -0.757957,
		0.839114, 0.111492, 0.532407,
		-0.117046, -0.918834, 0.376888,
		27.410751, 36.398003, 40.729618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179247, 36.679810, 40.342640>,  <27.492683, 37.041187, 40.465794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179247, 36.679810, 40.342640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925606, 36.375687, 40.398991>,  <27.773420, 36.193214, 40.432800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925606, 36.375687, 40.398991>,  <28.179247, 36.679810, 40.342640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925606, 36.375687, 40.398991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384859, -0.468338, -0.795326,
		0.670668, -0.450103, 0.589586,
		-0.634104, -0.760307, 0.140874,
		27.735374, 36.147594, 40.441254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592913, 36.106247, 40.335796>,  <28.179247, 36.679810, 40.342640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592913, 36.106247, 40.335796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230665, 35.968880, 40.236259>,  <28.013317, 35.886459, 40.176537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230665, 35.968880, 40.236259>,  <28.592913, 36.106247, 40.335796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230665, 35.968880, 40.236259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394255, -0.465546, -0.792357,
		0.156263, -0.815679, 0.557001,
		-0.905618, -0.343416, -0.248838,
		27.958981, 35.865856, 40.161610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706478, 35.439423, 39.944870>,  <28.592913, 36.106247, 40.335796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706478, 35.439423, 39.944870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337955, 35.545891, 39.831486>,  <28.116842, 35.609772, 39.763454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337955, 35.545891, 39.831486>,  <28.706478, 35.439423, 39.944870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337955, 35.545891, 39.831486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170255, -0.379256, -0.909493,
		-0.349579, -0.886183, 0.304095,
		-0.921308, 0.266165, -0.283457,
		28.061563, 35.625744, 39.746449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460957, 34.993427, 39.507236>,  <28.706478, 35.439423, 39.944870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460957, 34.993427, 39.507236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208946, 35.282768, 39.394215>,  <28.057739, 35.456371, 39.326401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208946, 35.282768, 39.394215>,  <28.460957, 34.993427, 39.507236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208946, 35.282768, 39.394215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208809, -0.192649, -0.958793,
		-0.747975, -0.663063, -0.029668,
		-0.630025, 0.723349, -0.282551,
		28.019939, 35.499771, 39.309448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919909, 34.703217, 39.056095>,  <28.460957, 34.993427, 39.507236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919909, 34.703217, 39.056095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932861, 35.094349, 38.973347>,  <27.940632, 35.329029, 38.923698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932861, 35.094349, 38.973347>,  <27.919909, 34.703217, 39.056095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932861, 35.094349, 38.973347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161524, -0.209382, -0.964401,
		-0.986337, -0.002187, -0.164724,
		0.032381, 0.977832, -0.206874,
		27.942575, 35.387699, 38.911285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623396, 34.710030, 38.436878>,  <27.919909, 34.703217, 39.056095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623396, 34.710030, 38.436878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827864, 35.052616, 38.465633>,  <27.950544, 35.258167, 38.482887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827864, 35.052616, 38.465633>,  <27.623396, 34.710030, 38.436878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827864, 35.052616, 38.465633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353553, -0.133297, -0.925868,
		-0.783394, 0.498691, -0.370945,
		0.511168, 0.856469, 0.071890,
		27.981215, 35.309555, 38.487202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521030, 35.084396, 37.813972>,  <27.623396, 34.710030, 38.436878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521030, 35.084396, 37.813972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868601, 35.214836, 37.962902>,  <28.077143, 35.293102, 38.052261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868601, 35.214836, 37.962902>,  <27.521030, 35.084396, 37.813972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868601, 35.214836, 37.962902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424103, -0.102757, -0.899765,
		-0.255158, 0.939732, -0.227590,
		0.868925, 0.326104, 0.372324,
		28.129278, 35.312668, 38.074600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839857, 35.459106, 37.234764>,  <27.521030, 35.084396, 37.813972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839857, 35.459106, 37.234764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140263, 35.409981, 37.494270>,  <28.320507, 35.380505, 37.649975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140263, 35.409981, 37.494270>,  <27.839857, 35.459106, 37.234764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140263, 35.409981, 37.494270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643352, -0.084980, -0.760840,
		0.148574, 0.988785, 0.015191,
		0.751016, -0.122814, 0.648762,
		28.365568, 35.373138, 37.688900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347055, 35.906342, 36.956074>,  <27.839857, 35.459106, 37.234764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347055, 35.906342, 36.956074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517050, 35.623447, 37.182068>,  <28.619045, 35.453712, 37.317665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517050, 35.623447, 37.182068>,  <28.347055, 35.906342, 36.956074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517050, 35.623447, 37.182068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657083, -0.188268, -0.729930,
		0.622600, 0.681450, 0.384701,
		0.424984, -0.707235, 0.564985,
		28.644545, 35.411278, 37.351562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051758, 36.005634, 36.731270>,  <28.347055, 35.906342, 36.956074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051758, 36.005634, 36.731270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045826, 35.649521, 36.913334>,  <29.042267, 35.435852, 37.022572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045826, 35.649521, 36.913334>,  <29.051758, 36.005634, 36.731270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045826, 35.649521, 36.913334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670853, -0.346406, -0.655713,
		0.741442, 0.295619, 0.602389,
		-0.014830, -0.890288, 0.455157,
		29.041376, 35.382435, 37.049881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832838, 35.683773, 36.847328>,  <29.051758, 36.005634, 36.731270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832838, 35.683773, 36.847328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597916, 35.363167, 36.892303>,  <29.456963, 35.170803, 36.919289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597916, 35.363167, 36.892303>,  <29.832838, 35.683773, 36.847328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597916, 35.363167, 36.892303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616240, -0.532891, -0.579893,
		0.524709, -0.271288, 0.806897,
		-0.587306, -0.801517, 0.112435,
		29.421724, 35.122711, 36.926033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252947, 35.209190, 36.994362>,  <29.832838, 35.683773, 36.847328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252947, 35.209190, 36.994362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927143, 35.017212, 36.863991>,  <29.731661, 34.902027, 36.785767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927143, 35.017212, 36.863991>,  <30.252947, 35.209190, 36.994362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927143, 35.017212, 36.863991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539488, -0.419971, -0.729779,
		0.213373, -0.770246, 0.600994,
		-0.814509, -0.479944, -0.325928,
		29.682791, 34.873230, 36.766212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585827, 34.519928, 36.760014>,  <30.252947, 35.209190, 36.994362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585827, 34.519928, 36.760014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226223, 34.548565, 36.587200>,  <30.010460, 34.565746, 36.483513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226223, 34.548565, 36.587200>,  <30.585827, 34.519928, 36.760014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226223, 34.548565, 36.587200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368285, -0.410202, -0.834326,
		-0.236950, -0.909181, 0.342412,
		-0.899011, 0.071589, -0.432035,
		29.956520, 34.570042, 36.457588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503374, 33.955017, 36.281483>,  <30.585827, 34.519928, 36.760014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503374, 33.955017, 36.281483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260786, 34.243065, 36.146652>,  <30.115232, 34.415894, 36.065754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260786, 34.243065, 36.146652>,  <30.503374, 33.955017, 36.281483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260786, 34.243065, 36.146652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150859, -0.312024, -0.938020,
		-0.780663, -0.619733, 0.080597,
		-0.606470, 0.720119, -0.337078,
		30.078844, 34.459099, 36.045528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257175, 33.796322, 36.489063>,  <30.503374, 33.955017, 36.281483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257175, 33.796322, 36.489063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407881, 34.147026, 36.369499>,  <31.498304, 34.357449, 36.297760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407881, 34.147026, 36.369499>,  <31.257175, 33.796322, 36.489063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407881, 34.147026, 36.369499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898666, -0.267726, 0.347451,
		0.224606, -0.399524, -0.888782,
		0.376765, 0.876757, -0.298906,
		31.520910, 34.410053, 36.279827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943377, 33.715904, 36.192616>,  <31.257175, 33.796322, 36.489063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943377, 33.715904, 36.192616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904898, 34.084457, 36.343243>,  <31.881811, 34.305588, 36.433620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904898, 34.084457, 36.343243>,  <31.943377, 33.715904, 36.192616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904898, 34.084457, 36.343243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849823, -0.120939, 0.513005,
		0.518215, 0.369368, -0.771376,
		-0.096198, 0.921380, 0.376570,
		31.876038, 34.360870, 36.456215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627048, 33.907562, 36.222878>,  <31.943377, 33.715904, 36.192616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627048, 33.907562, 36.222878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416054, 34.119915, 36.488186>,  <32.289455, 34.247326, 36.647369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416054, 34.119915, 36.488186>,  <32.627048, 33.907562, 36.222878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416054, 34.119915, 36.488186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771684, -0.027135, 0.635427,
		0.355333, 0.847013, -0.395357,
		-0.527487, 0.530879, 0.663269,
		32.257809, 34.279179, 36.687168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936989, 34.547539, 36.390511>,  <32.627048, 33.907562, 36.222878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936989, 34.547539, 36.390511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698593, 34.461468, 36.699963>,  <32.555557, 34.409824, 36.885632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698593, 34.461468, 36.699963>,  <32.936989, 34.547539, 36.390511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698593, 34.461468, 36.699963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795843, -0.029979, 0.604761,
		-0.106940, 0.976114, 0.189115,
		-0.595985, -0.215179, 0.773628,
		32.519798, 34.396915, 36.932053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121025, 35.020790, 36.854839>,  <32.936989, 34.547539, 36.390511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121025, 35.020790, 36.854839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982677, 34.695553, 37.042137>,  <32.899670, 34.500412, 37.154518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982677, 34.695553, 37.042137>,  <33.121025, 35.020790, 36.854839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982677, 34.695553, 37.042137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748317, 0.062016, 0.660436,
		-0.566032, 0.578825, 0.587000,
		-0.345873, -0.813090, 0.468248,
		32.878914, 34.451626, 37.182610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161777, 35.252060, 37.530777>,  <33.121025, 35.020790, 36.854839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161777, 35.252060, 37.530777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186031, 34.854721, 37.491611>,  <33.200584, 34.616318, 37.468113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186031, 34.854721, 37.491611>,  <33.161777, 35.252060, 37.530777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186031, 34.854721, 37.491611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828089, -0.004713, 0.560578,
		-0.557309, -0.115075, 0.822293,
		0.060633, -0.993346, -0.097918,
		33.204220, 34.556717, 37.462234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306038, 35.046837, 38.221371>,  <33.161777, 35.252060, 37.530777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306038, 35.046837, 38.221371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415337, 34.764309, 37.960159>,  <33.480915, 34.594791, 37.803432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415337, 34.764309, 37.960159>,  <33.306038, 35.046837, 38.221371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415337, 34.764309, 37.960159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935679, 0.037615, 0.350840,
		-0.223243, -0.706889, 0.671171,
		0.273251, -0.706324, -0.653024,
		33.497311, 34.552410, 37.764252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535030, 34.468971, 38.540722>,  <33.306038, 35.046837, 38.221371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535030, 34.468971, 38.540722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721523, 34.480976, 38.187061>,  <33.833420, 34.488178, 37.974865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721523, 34.480976, 38.187061>,  <33.535030, 34.468971, 38.540722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721523, 34.480976, 38.187061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876377, 0.120806, 0.466228,
		0.120806, -0.992222, 0.030017,
		-0.466228, -0.030017, 0.884155,
		33.861393, 34.489983, 37.921814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164089, 33.960499, 38.599113>,  <33.535030, 34.468971, 38.540722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164089, 33.960499, 38.599113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261234, 34.175377, 38.276016>,  <34.319523, 34.304302, 38.082157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261234, 34.175377, 38.276016>,  <34.164089, 33.960499, 38.599113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261234, 34.175377, 38.276016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936368, 0.087725, 0.339881,
		0.253439, -0.838887, -0.481703,
		0.242864, 0.537191, -0.807740,
		34.334095, 34.336533, 38.033695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905800, 33.801773, 38.378563>,  <34.164089, 33.960499, 38.599113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905800, 33.801773, 38.378563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835625, 34.163490, 38.222889>,  <34.793518, 34.380520, 38.129482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835625, 34.163490, 38.222889>,  <34.905800, 33.801773, 38.378563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835625, 34.163490, 38.222889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789271, 0.365485, 0.493428,
		0.588449, -0.220609, -0.777856,
		-0.175440, 0.904297, -0.389189,
		34.782993, 34.434780, 38.106133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630383, 34.137150, 38.169209>,  <34.905800, 33.801773, 38.378563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630383, 34.137150, 38.169209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369270, 34.438679, 38.199242>,  <35.212605, 34.619595, 38.217262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369270, 34.438679, 38.199242>,  <35.630383, 34.137150, 38.169209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369270, 34.438679, 38.199242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622971, 0.477777, 0.619384,
		0.431030, 0.451096, -0.781490,
		-0.652779, 0.753818, 0.075083,
		35.173435, 34.664825, 38.221767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994801, 34.799168, 38.121670>,  <35.630383, 34.137150, 38.169209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994801, 34.799168, 38.121670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666191, 34.927090, 38.310486>,  <35.469025, 35.003845, 38.423775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666191, 34.927090, 38.310486>,  <35.994801, 34.799168, 38.121670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666191, 34.927090, 38.310486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570134, 0.470311, 0.673614,
		-0.006576, 0.822515, -0.568706,
		-0.821526, 0.319808, 0.472036,
		35.419735, 35.023033, 38.452095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263664, 35.350285, 38.406059>,  <35.994801, 34.799168, 38.121670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263664, 35.350285, 38.406059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923943, 35.283245, 38.606300>,  <35.720112, 35.243019, 38.726444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923943, 35.283245, 38.606300>,  <36.263664, 35.350285, 38.406059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923943, 35.283245, 38.606300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409704, 0.388740, 0.825242,
		-0.332916, 0.905975, -0.261489,
		-0.849300, -0.167603, 0.500599,
		35.669151, 35.232964, 38.756481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063446, 36.019939, 38.823330>,  <36.263664, 35.350285, 38.406059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063446, 36.019939, 38.823330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890057, 35.713898, 39.013786>,  <35.786022, 35.530273, 39.128059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890057, 35.713898, 39.013786>,  <36.063446, 36.019939, 38.823330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890057, 35.713898, 39.013786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277361, 0.389445, 0.878296,
		-0.857422, 0.512781, 0.043397,
		-0.433472, -0.765107, 0.476144,
		35.760014, 35.484367, 39.156631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643429, 36.291931, 39.311752>,  <36.063446, 36.019939, 38.823330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643429, 36.291931, 39.311752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665337, 35.914906, 39.443550>,  <35.678482, 35.688690, 39.522629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665337, 35.914906, 39.443550>,  <35.643429, 36.291931, 39.311752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665337, 35.914906, 39.443550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302547, 0.330144, 0.894131,
		-0.951559, 0.050715, 0.303254,
		0.054772, -0.942567, 0.329495,
		35.681767, 35.632133, 39.542400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354492, 36.455387, 40.020630>,  <35.643429, 36.291931, 39.311752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354492, 36.455387, 40.020630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538288, 36.102127, 39.982864>,  <35.648563, 35.890171, 39.960205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538288, 36.102127, 39.982864>,  <35.354492, 36.455387, 40.020630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538288, 36.102127, 39.982864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411438, 0.117438, 0.903840,
		-0.787142, -0.454146, 0.417323,
		0.459485, -0.883153, -0.094413,
		35.676132, 35.837181, 39.954540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159782, 36.033665, 40.643383>,  <35.354492, 36.455387, 40.020630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159782, 36.033665, 40.643383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480782, 35.856773, 40.483166>,  <35.673382, 35.750637, 40.387035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480782, 35.856773, 40.483166>,  <35.159782, 36.033665, 40.643383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480782, 35.856773, 40.483166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421464, -0.055042, 0.905173,
		-0.422339, -0.895213, 0.142212,
		0.802495, -0.442227, -0.400546,
		35.721531, 35.724106, 40.363003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259525, 35.311989, 40.946461>,  <35.159782, 36.033665, 40.643383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259525, 35.311989, 40.946461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616486, 35.458542, 40.841099>,  <35.830662, 35.546474, 40.777882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616486, 35.458542, 40.841099>,  <35.259525, 35.311989, 40.946461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616486, 35.458542, 40.841099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376890, -0.284198, 0.881581,
		0.248136, -0.886000, -0.391705,
		0.892403, 0.366382, -0.263405,
		35.884205, 35.568455, 40.762077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756626, 34.758198, 40.982357>,  <35.259525, 35.311989, 40.946461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756626, 34.758198, 40.982357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964890, 35.099438, 40.995808>,  <36.089848, 35.304184, 41.003880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964890, 35.099438, 40.995808>,  <35.756626, 34.758198, 40.982357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964890, 35.099438, 40.995808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460347, -0.313690, 0.830469,
		0.719025, -0.416909, -0.556048,
		0.520657, 0.853104, 0.033628,
		36.121086, 35.355370, 41.005898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454418, 34.643417, 41.081562>,  <35.756626, 34.758198, 40.982357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454418, 34.643417, 41.081562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422314, 35.011810, 41.234062>,  <36.403049, 35.232845, 41.325562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422314, 35.011810, 41.234062>,  <36.454418, 34.643417, 41.081562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422314, 35.011810, 41.234062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443968, -0.309420, 0.840923,
		0.892441, 0.236761, -0.384050,
		-0.080265, 0.920980, 0.381253,
		36.398235, 35.288105, 41.348438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136642, 34.788586, 41.294735>,  <36.454418, 34.643417, 41.081562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136642, 34.788586, 41.294735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922497, 35.076069, 41.472202>,  <36.794010, 35.248558, 41.578682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922497, 35.076069, 41.472202>,  <37.136642, 34.788586, 41.294735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922497, 35.076069, 41.472202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445888, -0.205633, 0.871148,
		0.717336, 0.664207, -0.210376,
		-0.535362, 0.718710, 0.443670,
		36.761887, 35.291683, 41.605305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565170, 35.082703, 41.661358>,  <37.136642, 34.788586, 41.294735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565170, 35.082703, 41.661358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221947, 35.204041, 41.827110>,  <37.016010, 35.276844, 41.926563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221947, 35.204041, 41.827110>,  <37.565170, 35.082703, 41.661358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221947, 35.204041, 41.827110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405843, -0.093878, 0.909108,
		0.314675, 0.948245, -0.042557,
		-0.858062, 0.303346, 0.414380,
		36.964527, 35.295044, 41.951424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811909, 35.426914, 42.252567>,  <37.565170, 35.082703, 41.661358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811909, 35.426914, 42.252567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421959, 35.353714, 42.303368>,  <37.187988, 35.309792, 42.333847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421959, 35.353714, 42.303368>,  <37.811909, 35.426914, 42.252567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421959, 35.353714, 42.303368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151912, -0.129228, 0.979910,
		-0.162914, 0.974582, 0.153782,
		-0.974875, -0.183002, 0.126997,
		37.129498, 35.298813, 42.341465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474403, 35.915756, 42.799656>,  <37.811909, 35.426914, 42.252567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474403, 35.915756, 42.799656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252899, 35.582710, 42.795490>,  <37.119995, 35.382885, 42.792992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252899, 35.582710, 42.795490>,  <37.474403, 35.915756, 42.799656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252899, 35.582710, 42.795490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122370, 0.069003, 0.990083,
		-0.823635, 0.549543, -0.140098,
		-0.553760, -0.832611, -0.010414,
		37.086773, 35.332928, 42.792366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931076, 35.982738, 43.264580>,  <37.474403, 35.915756, 42.799656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931076, 35.982738, 43.264580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941277, 35.583733, 43.238308>,  <36.947395, 35.344330, 43.222546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941277, 35.583733, 43.238308>,  <36.931076, 35.982738, 43.264580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941277, 35.583733, 43.238308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175026, -0.069143, 0.982133,
		-0.984234, -0.013550, -0.176354,
		0.025502, -0.997515, -0.065681,
		36.948929, 35.284477, 43.218605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557968, 35.790104, 43.891434>,  <36.931076, 35.982738, 43.264580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557968, 35.790104, 43.891434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692364, 35.434933, 43.765766>,  <36.772999, 35.221832, 43.690365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692364, 35.434933, 43.765766>,  <36.557968, 35.790104, 43.891434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692364, 35.434933, 43.765766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244738, -0.404409, 0.881225,
		-0.909515, -0.219188, -0.353184,
		0.335985, -0.887924, -0.314172,
		36.793159, 35.168556, 43.671513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949936, 35.299778, 43.987755>,  <36.557968, 35.790104, 43.891434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949936, 35.299778, 43.987755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282650, 35.077923, 43.978699>,  <36.482277, 34.944809, 43.973267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282650, 35.077923, 43.978699>,  <35.949936, 35.299778, 43.987755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282650, 35.077923, 43.978699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197273, -0.333479, 0.921887,
		-0.518866, -0.762342, -0.386797,
		0.831782, -0.554640, -0.022641,
		36.532185, 34.911530, 43.971905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805519, 34.607811, 44.141060>,  <35.949936, 35.299778, 43.987755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805519, 34.607811, 44.141060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194267, 34.613567, 44.235096>,  <36.427517, 34.617020, 44.291519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194267, 34.613567, 44.235096>,  <35.805519, 34.607811, 44.141060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194267, 34.613567, 44.235096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220701, -0.292946, 0.930308,
		0.082254, -0.956021, -0.281529,
		0.971867, 0.014388, 0.235091,
		36.485828, 34.617882, 44.305622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829128, 34.121323, 44.617710>,  <35.805519, 34.607811, 44.141060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829128, 34.121323, 44.617710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180141, 34.304909, 44.673252>,  <36.390751, 34.415062, 44.706577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180141, 34.304909, 44.673252>,  <35.829128, 34.121323, 44.617710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180141, 34.304909, 44.673252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039694, -0.219047, 0.974907,
		0.477865, -0.861027, -0.174003,
		0.877536, 0.458967, 0.138852,
		36.443401, 34.442600, 44.714909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272743, 33.603691, 44.854366>,  <35.829128, 34.121323, 44.617710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272743, 33.603691, 44.854366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362679, 33.975811, 44.970295>,  <36.416641, 34.199081, 45.039852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362679, 33.975811, 44.970295>,  <36.272743, 33.603691, 44.854366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362679, 33.975811, 44.970295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106738, -0.272130, 0.956322,
		0.968532, -0.245952, 0.038113,
		0.224837, 0.930297, 0.289820,
		36.430130, 34.254902, 45.057240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692459, 33.538414, 45.409813>,  <36.272743, 33.603691, 44.854366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692459, 33.538414, 45.409813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597290, 33.923435, 45.461803>,  <36.540188, 34.154446, 45.493000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597290, 33.923435, 45.461803>,  <36.692459, 33.538414, 45.409813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597290, 33.923435, 45.461803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198006, -0.179076, 0.963704,
		0.950888, 0.203547, 0.233196,
		-0.237919, 0.962549, 0.129978,
		36.525913, 34.212200, 45.500797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051231, 33.828831, 45.991474>,  <36.692459, 33.538414, 45.409813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051231, 33.828831, 45.991474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735706, 34.071014, 45.949169>,  <36.546391, 34.216324, 45.923786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735706, 34.071014, 45.949169>,  <37.051231, 33.828831, 45.991474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735706, 34.071014, 45.949169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272746, -0.190624, 0.943012,
		0.550799, 0.772708, 0.315505,
		-0.788815, 0.605463, -0.105758,
		36.499062, 34.252655, 45.917442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175095, 34.272537, 46.489738>,  <37.051231, 33.828831, 45.991474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175095, 34.272537, 46.489738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784580, 34.329750, 46.424740>,  <36.550270, 34.364079, 46.385738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784580, 34.329750, 46.424740>,  <37.175095, 34.272537, 46.489738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784580, 34.329750, 46.424740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170585, -0.046134, 0.984262,
		0.133282, 0.988643, 0.069438,
		-0.976287, 0.143030, -0.162498,
		36.491695, 34.372658, 46.375992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884590, 34.760071, 46.997711>,  <37.175095, 34.272537, 46.489738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884590, 34.760071, 46.997711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552528, 34.586712, 46.857422>,  <36.353291, 34.482697, 46.773247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552528, 34.586712, 46.857422>,  <36.884590, 34.760071, 46.997711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552528, 34.586712, 46.857422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369644, -0.043088, 0.928174,
		-0.417378, 0.900173, -0.124432,
		-0.830156, -0.433395, -0.350728,
		36.303482, 34.456692, 46.752205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371555, 35.133389, 47.348278>,  <36.884590, 34.760071, 46.997711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371555, 35.133389, 47.348278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186153, 34.803837, 47.217812>,  <36.074913, 34.606106, 47.139534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186153, 34.803837, 47.217812>,  <36.371555, 35.133389, 47.348278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186153, 34.803837, 47.217812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358342, -0.162361, 0.919364,
		-0.810402, 0.543010, -0.219975,
		-0.463509, -0.823880, -0.326162,
		36.047100, 34.556671, 47.119965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642124, 35.214256, 47.456562>,  <36.371555, 35.133389, 47.348278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642124, 35.214256, 47.456562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690563, 34.817421, 47.443325>,  <35.719627, 34.579319, 47.435383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690563, 34.817421, 47.443325>,  <35.642124, 35.214256, 47.456562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690563, 34.817421, 47.443325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481117, -0.087822, 0.872247,
		-0.868252, -0.089707, -0.487946,
		0.121099, -0.992089, -0.033092,
		35.726894, 34.519794, 47.433399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982677, 34.902184, 47.527378>,  <35.642124, 35.214256, 47.456562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982677, 34.902184, 47.527378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233730, 34.613987, 47.645344>,  <35.384361, 34.441071, 47.716125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233730, 34.613987, 47.645344>,  <34.982677, 34.902184, 47.527378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233730, 34.613987, 47.645344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535941, -0.125102, 0.834935,
		-0.564667, -0.682089, -0.464657,
		0.627630, -0.720489, 0.294918,
		35.422020, 34.397839, 47.733818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543156, 34.423176, 47.872856>,  <34.982677, 34.902184, 47.527378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543156, 34.423176, 47.872856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909237, 34.347672, 48.015274>,  <35.128887, 34.302368, 48.100723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909237, 34.347672, 48.015274>,  <34.543156, 34.423176, 47.872856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909237, 34.347672, 48.015274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390633, -0.198457, 0.898900,
		-0.099017, -0.961761, -0.255365,
		0.915206, -0.188760, 0.356045,
		35.183800, 34.291042, 48.122086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393116, 33.902912, 48.392490>,  <34.543156, 34.423176, 47.872856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393116, 33.902912, 48.392490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755592, 34.035252, 48.497833>,  <34.973080, 34.114655, 48.561039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755592, 34.035252, 48.497833>,  <34.393116, 33.902912, 48.392490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755592, 34.035252, 48.497833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200788, -0.211457, 0.956541,
		0.372161, -0.919687, -0.125189,
		0.906190, 0.330850, 0.263358,
		35.027451, 34.134506, 48.576839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643097, 33.339760, 48.803848>,  <34.393116, 33.902912, 48.392490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643097, 33.339760, 48.803848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864834, 33.663822, 48.880108>,  <34.997875, 33.858261, 48.925861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864834, 33.663822, 48.880108>,  <34.643097, 33.339760, 48.803848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864834, 33.663822, 48.880108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132523, -0.140219, 0.981212,
		0.821668, -0.569196, 0.029634,
		0.554346, 0.810157, 0.190645,
		35.031139, 33.906868, 48.937302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098148, 33.257175, 49.405186>,  <34.643097, 33.339760, 48.803848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098148, 33.257175, 49.405186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161884, 33.651203, 49.431240>,  <35.200127, 33.887619, 49.446873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161884, 33.651203, 49.431240>,  <35.098148, 33.257175, 49.405186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161884, 33.651203, 49.431240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015514, -0.063475, 0.997863,
		0.987101, -0.160013, 0.005168,
		0.159343, 0.985072, 0.065139,
		35.209686, 33.946724, 49.450783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654636, 33.296749, 49.801315>,  <35.098148, 33.257175, 49.405186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654636, 33.296749, 49.801315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464188, 33.645634, 49.846149>,  <35.349918, 33.854965, 49.873051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464188, 33.645634, 49.846149>,  <35.654636, 33.296749, 49.801315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464188, 33.645634, 49.846149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019611, -0.116902, 0.992950,
		0.879161, 0.474962, 0.038555,
		-0.476121, 0.872207, 0.112090,
		35.321350, 33.907295, 49.879776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977379, 33.646431, 50.376308>,  <35.654636, 33.296749, 49.801315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977379, 33.646431, 50.376308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619541, 33.822567, 50.345863>,  <35.404839, 33.928249, 50.327595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619541, 33.822567, 50.345863>,  <35.977379, 33.646431, 50.376308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619541, 33.822567, 50.345863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070584, 0.028944, 0.997086,
		0.441264, 0.897362, 0.005188,
		-0.894597, 0.440345, -0.076111,
		35.351162, 33.954670, 50.323029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911552, 33.963917, 51.046368>,  <35.977379, 33.646431, 50.376308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911552, 33.963917, 51.046368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541119, 33.980045, 50.896305>,  <35.318859, 33.989723, 50.806267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541119, 33.980045, 50.896305>,  <35.911552, 33.963917, 51.046368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541119, 33.980045, 50.896305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373778, 0.037839, 0.926746,
		0.051561, 0.998470, -0.019972,
		-0.926084, 0.040319, -0.375157,
		35.263294, 33.992142, 50.783756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611706, 34.526585, 51.437706>,  <35.911552, 33.963917, 51.046368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611706, 34.526585, 51.437706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320976, 34.291790, 51.295063>,  <35.146538, 34.150913, 51.209476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320976, 34.291790, 51.295063>,  <35.611706, 34.526585, 51.437706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320976, 34.291790, 51.295063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500225, 0.096637, 0.860486,
		-0.470633, 0.803807, -0.363865,
		-0.726828, -0.586988, -0.356604,
		35.102928, 34.115692, 51.188080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005543, 34.858002, 51.606346>,  <35.611706, 34.526585, 51.437706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005543, 34.858002, 51.606346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919453, 34.473572, 51.537056>,  <34.867798, 34.242912, 51.495483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919453, 34.473572, 51.537056>,  <35.005543, 34.858002, 51.606346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919453, 34.473572, 51.537056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474501, -0.052120, 0.878710,
		-0.853538, 0.271316, -0.444815,
		-0.215225, -0.961078, -0.173226,
		34.854885, 34.185249, 51.485088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297695, 34.768673, 51.762859>,  <35.005543, 34.858002, 51.606346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297695, 34.768673, 51.762859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438549, 34.396156, 51.800163>,  <34.523064, 34.172646, 51.822548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438549, 34.396156, 51.800163>,  <34.297695, 34.768673, 51.762859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438549, 34.396156, 51.800163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574165, -0.136253, 0.807323,
		-0.739144, -0.337837, -0.582694,
		0.352138, -0.931290, 0.093264,
		34.544189, 34.116768, 51.828144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700623, 34.263580, 51.825783>,  <34.297695, 34.768673, 51.762859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700623, 34.263580, 51.825783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020058, 34.104420, 52.006416>,  <34.211720, 34.008923, 52.114796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020058, 34.104420, 52.006416>,  <33.700623, 34.263580, 51.825783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020058, 34.104420, 52.006416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584111, -0.331431, 0.740924,
		-0.145144, -0.855471, -0.497095,
		0.798591, -0.397899, 0.451585,
		34.259636, 33.985050, 52.141891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713764, 33.504868, 51.898235>,  <33.700623, 34.263580, 51.825783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713764, 33.504868, 51.898235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876766, 33.696110, 52.209454>,  <33.974567, 33.810856, 52.396183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876766, 33.696110, 52.209454>,  <33.713764, 33.504868, 51.898235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876766, 33.696110, 52.209454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725282, -0.348259, 0.593870,
		0.554895, -0.806305, 0.204848,
		0.407501, 0.478108, 0.778046,
		33.999016, 33.839542, 52.442867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909225, 33.018867, 52.451241>,  <33.713764, 33.504868, 51.898235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909225, 33.018867, 52.451241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851837, 33.377064, 52.619770>,  <33.817406, 33.591980, 52.720886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851837, 33.377064, 52.619770>,  <33.909225, 33.018867, 52.451241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851837, 33.377064, 52.619770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733485, -0.382021, 0.562192,
		0.664391, -0.228373, 0.711639,
		-0.143471, 0.895492, 0.421319,
		33.808796, 33.645710, 52.746166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083839, 33.036293, 53.092991>,  <33.909225, 33.018867, 52.451241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083839, 33.036293, 53.092991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747547, 33.252117, 53.111118>,  <33.545773, 33.381611, 53.121994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747547, 33.252117, 53.111118>,  <34.083839, 33.036293, 53.092991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747547, 33.252117, 53.111118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337463, -0.587593, 0.735427,
		0.423434, 0.603001, 0.676087,
		-0.840727, 0.539559, 0.045316,
		33.495331, 33.413986, 53.124714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678665, 32.803844, 53.458591>,  <34.083839, 33.036293, 53.092991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678665, 32.803844, 53.458591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292561, 32.796303, 53.562828>,  <34.060898, 32.791779, 53.625370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292561, 32.796303, 53.562828>,  <34.678665, 32.803844, 53.458591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292561, 32.796303, 53.562828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238165, -0.346603, -0.907273,
		0.107430, -0.937822, 0.330073,
		-0.965265, -0.018857, 0.260592,
		34.002979, 32.790646, 53.641006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489239, 32.143093, 53.624489>,  <34.678665, 32.803844, 53.458591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489239, 32.143093, 53.624489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516068, 31.746351, 53.667820>,  <34.532166, 31.508307, 53.693817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516068, 31.746351, 53.667820>,  <34.489239, 32.143093, 53.624489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516068, 31.746351, 53.667820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355997, -0.077637, -0.931257,
		0.932077, 0.101025, 0.347888,
		0.067071, -0.991850, 0.108328,
		34.536190, 31.448795, 53.700317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040470, 31.988359, 53.224194>,  <34.489239, 32.143093, 53.624489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040470, 31.988359, 53.224194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842464, 31.641354, 53.243713>,  <34.723663, 31.433149, 53.255424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842464, 31.641354, 53.243713>,  <35.040470, 31.988359, 53.224194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842464, 31.641354, 53.243713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222800, -0.181016, -0.957911,
		0.839836, -0.463304, 0.282888,
		-0.495011, -0.867516, 0.048800,
		34.693962, 31.381100, 53.258354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503056, 31.482927, 52.913708>,  <35.040470, 31.988359, 53.224194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503056, 31.482927, 52.913708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123363, 31.366493, 52.866001>,  <34.895546, 31.296633, 52.837379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123363, 31.366493, 52.866001>,  <35.503056, 31.482927, 52.913708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123363, 31.366493, 52.866001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161585, -0.125895, -0.978796,
		0.269898, -0.948377, 0.166539,
		-0.949234, -0.291085, -0.119265,
		34.838593, 31.279167, 52.830223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428059, 30.908976, 52.452049>,  <35.503056, 31.482927, 52.913708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428059, 30.908976, 52.452049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072853, 31.092514, 52.463943>,  <34.859730, 31.202637, 52.471081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072853, 31.092514, 52.463943>,  <35.428059, 30.908976, 52.452049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072853, 31.092514, 52.463943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021573, 0.023016, -0.999502,
		-0.459304, -0.888217, -0.010540,
		-0.888017, 0.458848, 0.029733,
		34.806446, 31.230169, 52.472862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106552, 30.592279, 51.980362>,  <35.428059, 30.908976, 52.452049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106552, 30.592279, 51.980362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891357, 30.923912, 52.041290>,  <34.762241, 31.122890, 52.077847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891357, 30.923912, 52.041290>,  <35.106552, 30.592279, 51.980362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891357, 30.923912, 52.041290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223896, 0.033667, -0.974031,
		-0.812678, -0.558116, 0.167515,
		-0.537983, 0.829080, 0.152320,
		34.729961, 31.172636, 52.086987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453136, 30.471254, 51.805801>,  <35.106552, 30.592279, 51.980362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453136, 30.471254, 51.805801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578945, 30.847347, 51.753582>,  <34.654430, 31.073002, 51.722252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578945, 30.847347, 51.753582>,  <34.453136, 30.471254, 51.805801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578945, 30.847347, 51.753582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262192, -0.046128, -0.963913,
		-0.912323, 0.337399, 0.232012,
		0.314521, 0.940231, -0.130547,
		34.673302, 31.129417, 51.714417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172153, 30.657608, 51.197548>,  <34.453136, 30.471254, 51.805801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172153, 30.657608, 51.197548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447891, 30.945070, 51.234062>,  <34.613335, 31.117548, 51.255970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447891, 30.945070, 51.234062>,  <34.172153, 30.657608, 51.197548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447891, 30.945070, 51.234062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096871, 0.216319, -0.971505,
		-0.717926, 0.660861, 0.218736,
		0.689347, 0.718658, 0.091282,
		34.654694, 31.160667, 51.261448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923275, 31.228567, 50.893566>,  <34.172153, 30.657608, 51.197548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923275, 31.228567, 50.893566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323071, 31.241323, 50.892769>,  <34.562946, 31.248978, 50.892292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323071, 31.241323, 50.892769>,  <33.923275, 31.228567, 50.893566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323071, 31.241323, 50.892769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007098, 0.160744, -0.986971,
		-0.031154, 0.986481, 0.160888,
		0.999489, 0.031890, -0.001994,
		34.622917, 31.250891, 50.892170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057060, 31.697981, 50.372028>,  <33.923275, 31.228567, 50.893566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057060, 31.697981, 50.372028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411522, 31.520348, 50.424961>,  <34.624199, 31.413767, 50.456722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411522, 31.520348, 50.424961>,  <34.057060, 31.697981, 50.372028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411522, 31.520348, 50.424961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099964, -0.095652, -0.990383,
		0.452473, 0.890864, -0.040370,
		0.886158, -0.444086, 0.132334,
		34.677368, 31.387121, 50.464661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514091, 32.001968, 49.896255>,  <34.057060, 31.697981, 50.372028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514091, 32.001968, 49.896255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690407, 31.657444, 49.997326>,  <34.796196, 31.450729, 50.057968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690407, 31.657444, 49.997326>,  <34.514091, 32.001968, 49.896255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690407, 31.657444, 49.997326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271030, -0.140645, -0.952240,
		0.855714, 0.488220, 0.171447,
		0.440790, -0.861313, 0.252674,
		34.822643, 31.399050, 50.073128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937447, 32.041416, 49.405182>,  <34.514091, 32.001968, 49.896255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937447, 32.041416, 49.405182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899910, 31.671049, 49.551533>,  <34.877388, 31.448828, 49.639343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899910, 31.671049, 49.551533>,  <34.937447, 32.041416, 49.405182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899910, 31.671049, 49.551533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237217, -0.377710, -0.895021,
		0.966914, 0.002803, 0.255089,
		-0.093841, -0.925920, 0.365878,
		34.871758, 31.393272, 49.661297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460621, 31.727407, 49.063301>,  <34.937447, 32.041416, 49.405182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460621, 31.727407, 49.063301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235523, 31.420538, 49.186436>,  <35.100464, 31.236416, 49.260315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235523, 31.420538, 49.186436>,  <35.460621, 31.727407, 49.063301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235523, 31.420538, 49.186436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083230, -0.423087, -0.902258,
		0.822429, -0.482122, 0.301943,
		-0.562746, -0.767174, 0.307832,
		35.066700, 31.190386, 49.278786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780991, 31.130831, 48.878246>,  <35.460621, 31.727407, 49.063301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780991, 31.130831, 48.878246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391579, 31.042376, 48.901325>,  <35.157932, 30.989302, 48.915173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391579, 31.042376, 48.901325>,  <35.780991, 31.130831, 48.878246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391579, 31.042376, 48.901325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073423, -0.541718, -0.837347,
		0.216426, -0.810950, 0.543618,
		-0.973534, -0.221138, 0.057700,
		35.099518, 30.976034, 48.918636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873405, 30.485327, 48.644012>,  <35.780991, 31.130831, 48.878246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873405, 30.485327, 48.644012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476475, 30.523991, 48.674858>,  <35.238316, 30.547190, 48.693367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476475, 30.523991, 48.674858>,  <35.873405, 30.485327, 48.644012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476475, 30.523991, 48.674858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120127, -0.605732, -0.786548,
		-0.029316, -0.789775, 0.612695,
		-0.992326, 0.096659, 0.077116,
		35.178776, 30.552988, 48.697994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529366, 29.746616, 48.634785>,  <35.873405, 30.485327, 48.644012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529366, 29.746616, 48.634785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282734, 30.028788, 48.494949>,  <35.134754, 30.198090, 48.411049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282734, 30.028788, 48.494949>,  <35.529366, 29.746616, 48.634785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282734, 30.028788, 48.494949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035409, -0.468430, -0.882791,
		-0.786500, -0.531928, 0.313800,
		-0.616574, 0.705427, -0.349585,
		35.097763, 30.240416, 48.390076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062401, 29.373590, 48.110321>,  <35.529366, 29.746616, 48.634785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062401, 29.373590, 48.110321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023495, 29.764019, 48.032528>,  <35.000153, 29.998276, 47.985851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023495, 29.764019, 48.032528>,  <35.062401, 29.373590, 48.110321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023495, 29.764019, 48.032528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156289, -0.207960, -0.965571,
		-0.982911, -0.063519, 0.172777,
		-0.097263, 0.976073, -0.194479,
		34.994316, 30.056841, 47.974186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422031, 29.452339, 47.659267>,  <35.062401, 29.373590, 48.110321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422031, 29.452339, 47.659267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634068, 29.785530, 47.595825>,  <34.761288, 29.985445, 47.557762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634068, 29.785530, 47.595825>,  <34.422031, 29.452339, 47.659267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634068, 29.785530, 47.595825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118401, -0.112500, -0.986572,
		-0.839634, 0.541751, 0.038990,
		0.530090, 0.832977, -0.158603,
		34.793095, 30.035423, 47.548244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028564, 29.939175, 47.230381>,  <34.422031, 29.452339, 47.659267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028564, 29.939175, 47.230381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418541, 30.016024, 47.185520>,  <34.652527, 30.062132, 47.158604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418541, 30.016024, 47.185520>,  <34.028564, 29.939175, 47.230381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418541, 30.016024, 47.185520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090371, -0.118643, -0.988816,
		-0.203278, 0.974173, -0.098308,
		0.974942, 0.192120, -0.112154,
		34.711025, 30.073660, 47.151875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053444, 30.293278, 46.568195>,  <34.028564, 29.939175, 47.230381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053444, 30.293278, 46.568195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441582, 30.222963, 46.634563>,  <34.674465, 30.180775, 46.674385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441582, 30.222963, 46.634563>,  <34.053444, 30.293278, 46.568195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441582, 30.222963, 46.634563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184099, 0.092599, -0.978536,
		0.156648, 0.980064, 0.122215,
		0.970345, -0.175785, 0.165924,
		34.732685, 30.170227, 46.684341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290279, 30.694633, 46.053715>,  <34.053444, 30.293278, 46.568195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290279, 30.694633, 46.053715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603741, 30.460182, 46.136021>,  <34.791817, 30.319511, 46.185406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603741, 30.460182, 46.136021>,  <34.290279, 30.694633, 46.053715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603741, 30.460182, 46.136021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167502, -0.119590, -0.978592,
		0.598186, 0.801345, 0.004460,
		0.783656, -0.586126, 0.205764,
		34.838837, 30.284344, 46.197750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796810, 30.801968, 45.494995>,  <34.290279, 30.694633, 46.053715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796810, 30.801968, 45.494995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916939, 30.457005, 45.657997>,  <34.989017, 30.250027, 45.755798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916939, 30.457005, 45.657997>,  <34.796810, 30.801968, 45.494995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916939, 30.457005, 45.657997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375032, -0.286054, -0.881773,
		0.877017, 0.417642, 0.237522,
		0.300321, -0.862409, 0.407503,
		35.007034, 30.198282, 45.780247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582027, 30.642252, 45.260883>,  <34.796810, 30.801968, 45.494995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582027, 30.642252, 45.260883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391800, 30.312599, 45.383938>,  <35.277664, 30.114807, 45.457771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391800, 30.312599, 45.383938>,  <35.582027, 30.642252, 45.260883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391800, 30.312599, 45.383938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183152, -0.434816, -0.881697,
		0.860402, -0.362961, 0.357726,
		-0.475566, -0.824132, 0.307640,
		35.249130, 30.065359, 45.476231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998657, 30.121874, 44.997265>,  <35.582027, 30.642252, 45.260883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998657, 30.121874, 44.997265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642559, 29.952850, 45.065266>,  <35.428898, 29.851437, 45.106064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642559, 29.952850, 45.065266>,  <35.998657, 30.121874, 44.997265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642559, 29.952850, 45.065266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106735, -0.556386, -0.824040,
		0.442793, -0.715456, 0.540423,
		-0.890248, -0.422561, 0.170000,
		35.375484, 29.826082, 45.116264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100227, 29.400127, 44.677094>,  <35.998657, 30.121874, 44.997265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100227, 29.400127, 44.677094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714397, 29.498552, 44.715145>,  <35.482899, 29.557608, 44.737976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714397, 29.498552, 44.715145>,  <36.100227, 29.400127, 44.677094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714397, 29.498552, 44.715145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186337, -0.380226, -0.905928,
		-0.186742, -0.891562, 0.412607,
		-0.964576, 0.246059, 0.095127,
		35.425026, 29.572371, 44.743683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734047, 28.823818, 44.502285>,  <36.100227, 29.400127, 44.677094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734047, 28.823818, 44.502285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472687, 29.119957, 44.439098>,  <35.315868, 29.297640, 44.401188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472687, 29.119957, 44.439098>,  <35.734047, 28.823818, 44.502285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472687, 29.119957, 44.439098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140239, -0.323435, -0.935801,
		-0.743907, -0.589302, 0.315158,
		-0.653403, 0.740346, -0.157962,
		35.276665, 29.342060, 44.391708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232815, 28.573376, 44.141785>,  <35.734047, 28.823818, 44.502285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232815, 28.573376, 44.141785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164165, 28.963089, 44.083385>,  <35.122978, 29.196917, 44.048347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164165, 28.963089, 44.083385>,  <35.232815, 28.573376, 44.141785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164165, 28.963089, 44.083385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269651, -0.188991, -0.944230,
		-0.947541, -0.122682, 0.295152,
		-0.171621, 0.974285, -0.145996,
		35.112679, 29.255375, 44.039585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560486, 28.640333, 43.806625>,  <35.232815, 28.573376, 44.141785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560486, 28.640333, 43.806625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760006, 28.978035, 43.728207>,  <34.879719, 29.180656, 43.681156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760006, 28.978035, 43.728207>,  <34.560486, 28.640333, 43.806625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760006, 28.978035, 43.728207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236718, -0.084889, -0.967863,
		-0.833764, 0.529178, 0.157507,
		0.498801, 0.844254, -0.196043,
		34.909645, 29.231312, 43.669395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177601, 28.910322, 43.306244>,  <34.560486, 28.640333, 43.806625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177601, 28.910322, 43.306244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540768, 29.076153, 43.281559>,  <34.758667, 29.175652, 43.266747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540768, 29.076153, 43.281559>,  <34.177601, 28.910322, 43.306244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540768, 29.076153, 43.281559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064814, -0.006601, -0.997876,
		-0.414101, 0.909992, 0.020877,
		0.907921, 0.414574, -0.061714,
		34.813145, 29.200525, 43.263046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126026, 29.267895, 42.689278>,  <34.177601, 28.910322, 43.306244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126026, 29.267895, 42.689278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516010, 29.327677, 42.755135>,  <34.750000, 29.363546, 42.794647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516010, 29.327677, 42.755135>,  <34.126026, 29.267895, 42.689278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516010, 29.327677, 42.755135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174179, -0.053038, -0.983285,
		-0.138226, 0.987345, -0.077742,
		0.974964, 0.149457, 0.164643,
		34.808498, 29.372515, 42.804527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269028, 29.911005, 42.414051>,  <34.126026, 29.267895, 42.689278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269028, 29.911005, 42.414051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615902, 29.712503, 42.430622>,  <34.824028, 29.593403, 42.440563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615902, 29.712503, 42.430622>,  <34.269028, 29.911005, 42.414051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615902, 29.712503, 42.430622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220567, 0.308184, -0.925404,
		0.446467, 0.811638, 0.376711,
		0.867190, -0.496252, 0.041426,
		34.876060, 29.563627, 42.443050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835087, 30.313583, 42.138733>,  <34.269028, 29.911005, 42.414051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835087, 30.313583, 42.138733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988407, 29.948458, 42.082378>,  <35.080399, 29.729382, 42.048565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988407, 29.948458, 42.082378>,  <34.835087, 30.313583, 42.138733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988407, 29.948458, 42.082378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244978, 0.247547, -0.937393,
		0.890542, 0.324791, 0.318505,
		0.383302, -0.912815, -0.140885,
		35.103397, 29.674614, 42.040112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418766, 30.488899, 41.793053>,  <34.835087, 30.313583, 42.138733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418766, 30.488899, 41.793053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350239, 30.099787, 41.730644>,  <35.309120, 29.866320, 41.693199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350239, 30.099787, 41.730644>,  <35.418766, 30.488899, 41.793053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350239, 30.099787, 41.730644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412452, 0.073004, -0.908050,
		0.894725, -0.219921, 0.388718,
		-0.171321, -0.972782, -0.156026,
		35.298843, 29.807953, 41.683838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976715, 30.184954, 41.509724>,  <35.418766, 30.488899, 41.793053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976715, 30.184954, 41.509724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666908, 29.966421, 41.382195>,  <35.481026, 29.835302, 41.305676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666908, 29.966421, 41.382195>,  <35.976715, 30.184954, 41.509724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666908, 29.966421, 41.382195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250238, 0.198281, -0.947663,
		0.580956, -0.813761, -0.016858,
		-0.774513, -0.546332, -0.318827,
		35.434555, 29.802521, 41.286545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246742, 29.744371, 40.983143>,  <35.976715, 30.184954, 41.509724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246742, 29.744371, 40.983143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855698, 29.754969, 40.899639>,  <35.621071, 29.761328, 40.849537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855698, 29.754969, 40.899639>,  <36.246742, 29.744371, 40.983143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855698, 29.754969, 40.899639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209681, 0.206321, -0.955754,
		0.017747, -0.978126, -0.207257,
		-0.977609, 0.026496, -0.208757,
		35.562416, 29.762917, 40.837013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232681, 29.479490, 40.305359>,  <36.246742, 29.744371, 40.983143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232681, 29.479490, 40.305359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907246, 29.705912, 40.358509>,  <35.711987, 29.841764, 40.390400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907246, 29.705912, 40.358509>,  <36.232681, 29.479490, 40.305359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907246, 29.705912, 40.358509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149926, 0.425037, -0.892673,
		-0.561781, -0.706345, -0.430671,
		-0.813587, 0.566056, 0.132879,
		35.663170, 29.875729, 40.398373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946026, 29.478912, 39.647129>,  <36.232681, 29.479490, 40.305359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946026, 29.478912, 39.647129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768002, 29.786327, 39.830986>,  <35.661186, 29.970778, 39.941299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768002, 29.786327, 39.830986>,  <35.946026, 29.478912, 39.647129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768002, 29.786327, 39.830986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198233, 0.415992, -0.887499,
		-0.873286, -0.486104, -0.032790,
		-0.445057, 0.768540, 0.459642,
		35.634483, 30.016890, 39.968880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462990, 29.660343, 39.138294>,  <35.946026, 29.478912, 39.647129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462990, 29.660343, 39.138294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431850, 29.969284, 39.390457>,  <35.413166, 30.154648, 39.541756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431850, 29.969284, 39.390457>,  <35.462990, 29.660343, 39.138294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431850, 29.969284, 39.390457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028844, 0.633806, -0.772954,
		-0.996548, -0.041993, -0.071621,
		-0.077853, 0.772351, 0.630407,
		35.408493, 30.200989, 39.579578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841408, 30.126858, 39.010494>,  <35.462990, 29.660343, 39.138294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841408, 30.126858, 39.010494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116367, 30.347898, 39.199013>,  <35.281342, 30.480522, 39.312122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116367, 30.347898, 39.199013>,  <34.841408, 30.126858, 39.010494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116367, 30.347898, 39.199013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021863, 0.664363, -0.747090,
		-0.725954, 0.503243, 0.468761,
		0.687395, 0.552602, 0.471295,
		35.322586, 30.513680, 39.340401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459873, 30.734715, 39.157486>,  <34.841408, 30.126858, 39.010494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459873, 30.734715, 39.157486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852222, 30.811802, 39.168358>,  <35.087631, 30.858055, 39.174881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852222, 30.811802, 39.168358>,  <34.459873, 30.734715, 39.157486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852222, 30.811802, 39.168358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136656, 0.781401, -0.608882,
		-0.138578, 0.593525, 0.792795,
		0.980878, 0.192718, 0.027176,
		35.146484, 30.869617, 39.176510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503738, 31.418768, 39.214409>,  <34.459873, 30.734715, 39.157486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503738, 31.418768, 39.214409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869076, 31.309032, 39.094048>,  <35.088280, 31.243191, 39.021832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869076, 31.309032, 39.094048>,  <34.503738, 31.418768, 39.214409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869076, 31.309032, 39.094048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054980, 0.815294, -0.576431,
		0.403461, 0.509936, 0.759727,
		0.913344, -0.274338, -0.300903,
		35.143078, 31.226730, 39.003777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779354, 32.055340, 39.135139>,  <34.503738, 31.418768, 39.214409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779354, 32.055340, 39.135139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017715, 31.804989, 38.933876>,  <35.160732, 31.654778, 38.813118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017715, 31.804989, 38.933876>,  <34.779354, 32.055340, 39.135139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017715, 31.804989, 38.933876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183541, 0.716121, -0.673412,
		0.781798, 0.308939, 0.541616,
		0.595906, -0.625881, -0.503159,
		35.196487, 31.617224, 38.782928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344822, 32.416187, 38.953583>,  <34.779354, 32.055340, 39.135139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344822, 32.416187, 38.953583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319302, 32.126907, 38.678509>,  <35.303989, 31.953339, 38.513466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319302, 32.126907, 38.678509>,  <35.344822, 32.416187, 38.953583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319302, 32.126907, 38.678509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168782, 0.671341, -0.721674,
		0.983586, -0.162113, 0.079230,
		-0.063803, -0.723201, -0.687684,
		35.300159, 31.909946, 38.472202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892994, 32.498833, 38.460693>,  <35.344822, 32.416187, 38.953583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892994, 32.498833, 38.460693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568855, 32.319069, 38.310299>,  <35.374371, 32.211212, 38.220062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568855, 32.319069, 38.310299>,  <35.892994, 32.498833, 38.460693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568855, 32.319069, 38.310299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017344, 0.659790, -0.751250,
		0.585689, -0.602255, -0.542455,
		-0.810350, -0.449407, -0.375986,
		35.325752, 32.184246, 38.197502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031033, 32.270950, 37.656319>,  <35.892994, 32.498833, 38.460693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031033, 32.270950, 37.656319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640965, 32.303753, 37.738609>,  <35.406925, 32.323433, 37.787983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640965, 32.303753, 37.738609>,  <36.031033, 32.270950, 37.656319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640965, 32.303753, 37.738609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116206, 0.601313, -0.790518,
		-0.188533, -0.794794, -0.576851,
		-0.975167, 0.082005, 0.205727,
		35.348415, 32.328354, 37.800327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435150, 31.972075, 37.134304>,  <36.031033, 32.270950, 37.656319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435150, 31.972075, 37.134304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775841, 31.995947, 36.926075>,  <36.980255, 32.010269, 36.801136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775841, 31.995947, 36.926075>,  <36.435150, 31.972075, 37.134304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775841, 31.995947, 36.926075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477402, 0.321126, 0.817903,
		0.215986, -0.945154, 0.245019,
		0.851726, 0.059683, -0.520577,
		37.031357, 32.013851, 36.769901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835094, 31.576250, 37.636921>,  <36.435150, 31.972075, 37.134304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835094, 31.576250, 37.636921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097214, 31.821064, 37.459835>,  <37.254486, 31.967953, 37.353584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097214, 31.821064, 37.459835>,  <36.835094, 31.576250, 37.636921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097214, 31.821064, 37.459835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645860, -0.150047, 0.748566,
		0.391721, -0.776466, -0.493615,
		0.655301, 0.612035, -0.442711,
		37.293804, 32.004673, 37.327023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442505, 31.307505, 37.545654>,  <36.835094, 31.576250, 37.636921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442505, 31.307505, 37.545654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514862, 31.700249, 37.568378>,  <37.558277, 31.935896, 37.582012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514862, 31.700249, 37.568378>,  <37.442505, 31.307505, 37.545654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514862, 31.700249, 37.568378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665776, -0.164766, 0.727733,
		0.723892, -0.093819, -0.683504,
		0.180893, 0.981861, 0.056810,
		37.569130, 31.994806, 37.585423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131496, 31.383495, 37.605171>,  <37.442505, 31.307505, 37.545654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131496, 31.383495, 37.605171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995308, 31.731644, 37.747456>,  <37.913593, 31.940533, 37.832829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995308, 31.731644, 37.747456>,  <38.131496, 31.383495, 37.605171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995308, 31.731644, 37.747456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765727, 0.037117, 0.642094,
		0.545657, 0.490996, -0.679103,
		-0.340472, 0.870371, 0.355716,
		37.893166, 31.992754, 37.854172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765232, 31.765324, 37.755154>,  <38.131496, 31.383495, 37.605171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765232, 31.765324, 37.755154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486172, 31.987785, 37.935806>,  <38.318733, 32.121262, 38.044197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486172, 31.987785, 37.935806>,  <38.765232, 31.765324, 37.755154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486172, 31.987785, 37.935806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548590, 0.009243, 0.836041,
		0.460792, 0.831029, -0.311548,
		-0.697653, 0.556153, 0.451635,
		38.276875, 32.154633, 38.071297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151920, 32.290741, 38.135971>,  <38.765232, 31.765324, 37.755154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151920, 32.290741, 38.135971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788857, 32.269196, 38.302467>,  <38.571018, 32.256268, 38.402363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788857, 32.269196, 38.302467>,  <39.151920, 32.290741, 38.135971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788857, 32.269196, 38.302467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419303, -0.072888, 0.904916,
		-0.018401, 0.995885, 0.088741,
		-0.907660, -0.053861, 0.416236,
		38.516560, 32.253036, 38.427338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168545, 32.749859, 38.749523>,  <39.151920, 32.290741, 38.135971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168545, 32.749859, 38.749523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838001, 32.531662, 38.805473>,  <38.639675, 32.400742, 38.839043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838001, 32.531662, 38.805473>,  <39.168545, 32.749859, 38.749523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838001, 32.531662, 38.805473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203370, -0.057458, 0.977415,
		-0.525138, 0.836142, 0.158418,
		-0.826360, -0.545495, 0.139873,
		38.590092, 32.368011, 38.847435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811901, 33.014328, 39.295650>,  <39.168545, 32.749859, 38.749523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811901, 33.014328, 39.295650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714130, 32.626560, 39.286877>,  <38.655468, 32.393898, 39.281612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714130, 32.626560, 39.286877>,  <38.811901, 33.014328, 39.295650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714130, 32.626560, 39.286877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166835, -0.064326, 0.983884,
		-0.955207, 0.236829, 0.177457,
		-0.244427, -0.969420, -0.021934,
		38.640800, 32.335735, 39.280296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545647, 32.969021, 40.007156>,  <38.811901, 33.014328, 39.295650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545647, 32.969021, 40.007156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609322, 32.587601, 39.904854>,  <38.647526, 32.358749, 39.843472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609322, 32.587601, 39.904854>,  <38.545647, 32.969021, 40.007156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609322, 32.587601, 39.904854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098017, -0.273043, 0.956996,
		-0.982371, -0.127270, -0.136928,
		0.159185, -0.953546, -0.255754,
		38.657078, 32.301537, 39.828129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952320, 32.565388, 40.188717>,  <38.545647, 32.969021, 40.007156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952320, 32.565388, 40.188717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258999, 32.310162, 40.160297>,  <38.443005, 32.157024, 40.143246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258999, 32.310162, 40.160297>,  <37.952320, 32.565388, 40.188717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258999, 32.310162, 40.160297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210491, -0.354372, 0.911106,
		-0.606525, -0.683585, -0.406003,
		0.766694, -0.638069, -0.071047,
		38.489006, 32.118740, 40.138985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714375, 31.994450, 40.527805>,  <37.952320, 32.565388, 40.188717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714375, 31.994450, 40.527805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110287, 31.937441, 40.526016>,  <38.347836, 31.903236, 40.524944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110287, 31.937441, 40.526016>,  <37.714375, 31.994450, 40.527805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110287, 31.937441, 40.526016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040397, -0.310343, 0.949766,
		-0.136748, -0.939881, -0.312929,
		0.989782, -0.142520, -0.004470,
		38.407223, 31.894684, 40.524673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788246, 31.341042, 40.759247>,  <37.714375, 31.994450, 40.527805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788246, 31.341042, 40.759247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161148, 31.484680, 40.776939>,  <38.384888, 31.570864, 40.787556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161148, 31.484680, 40.776939>,  <37.788246, 31.341042, 40.759247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161148, 31.484680, 40.776939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114603, -0.409042, 0.905290,
		0.343180, -0.838889, -0.422483,
		0.932252, 0.359095, 0.044236,
		38.440823, 31.592409, 40.790211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133984, 30.776896, 41.039333>,  <37.788246, 31.341042, 40.759247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133984, 30.776896, 41.039333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355293, 31.103443, 41.105587>,  <38.488079, 31.299372, 41.145340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355293, 31.103443, 41.105587>,  <38.133984, 30.776896, 41.039333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355293, 31.103443, 41.105587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032417, -0.219794, 0.975008,
		0.832371, -0.534072, -0.148070,
		0.553269, 0.816368, 0.165637,
		38.521275, 31.348354, 41.155277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613976, 30.585915, 41.526215>,  <38.133984, 30.776896, 41.039333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613976, 30.585915, 41.526215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584026, 30.982473, 41.569164>,  <38.566055, 31.220407, 41.594933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584026, 30.982473, 41.569164>,  <38.613976, 30.585915, 41.526215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584026, 30.982473, 41.569164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030929, -0.105316, 0.993958,
		0.996713, 0.077746, -0.022777,
		-0.074877, 0.991395, 0.107374,
		38.561562, 31.279892, 41.601376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011440, 30.611052, 42.040821>,  <38.613976, 30.585915, 41.526215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011440, 30.611052, 42.040821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806969, 30.954622, 42.028606>,  <38.684284, 31.160765, 42.021278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806969, 30.954622, 42.028606>,  <39.011440, 30.611052, 42.040821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806969, 30.954622, 42.028606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027921, 0.052110, 0.998251,
		0.859018, 0.509437, -0.050620,
		-0.511184, 0.858929, -0.030539,
		38.653614, 31.212301, 42.019444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332642, 31.142973, 42.565502>,  <39.011440, 30.611052, 42.040821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332642, 31.142973, 42.565502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945526, 31.237171, 42.529892>,  <38.713257, 31.293690, 42.508526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945526, 31.237171, 42.529892>,  <39.332642, 31.142973, 42.565502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945526, 31.237171, 42.529892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119447, -0.118222, 0.985777,
		0.221622, 0.964658, 0.142543,
		-0.967789, 0.235496, -0.089024,
		38.655190, 31.307819, 42.503185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212044, 31.681665, 43.162628>,  <39.332642, 31.142973, 42.565502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212044, 31.681665, 43.162628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843430, 31.550453, 43.079517>,  <38.622261, 31.471725, 43.029652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843430, 31.550453, 43.079517>,  <39.212044, 31.681665, 43.162628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843430, 31.550453, 43.079517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184341, -0.101371, 0.977621,
		-0.341751, 0.939213, 0.032948,
		-0.921534, -0.328029, -0.207779,
		38.566971, 31.452044, 43.017185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683338, 32.036919, 43.585026>,  <39.212044, 31.681665, 43.162628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683338, 32.036919, 43.585026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481445, 31.713680, 43.463551>,  <38.360310, 31.519737, 43.390663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481445, 31.713680, 43.463551>,  <38.683338, 32.036919, 43.585026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481445, 31.713680, 43.463551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348651, -0.131007, 0.928052,
		-0.789740, 0.574299, -0.215620,
		-0.504731, -0.808095, -0.303692,
		38.330025, 31.471252, 43.372444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995274, 32.142166, 43.921295>,  <38.683338, 32.036919, 43.585026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995274, 32.142166, 43.921295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013424, 31.757776, 43.812138>,  <38.024315, 31.527143, 43.746643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013424, 31.757776, 43.812138>,  <37.995274, 32.142166, 43.921295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013424, 31.757776, 43.812138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470224, -0.261567, 0.842895,
		-0.881380, 0.090077, -0.463741,
		0.045374, -0.960973, -0.272896,
		38.027035, 31.469484, 43.730270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421982, 31.925676, 44.277565>,  <37.995274, 32.142166, 43.921295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421982, 31.925676, 44.277565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634563, 31.598093, 44.190971>,  <37.762112, 31.401543, 44.139015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634563, 31.598093, 44.190971>,  <37.421982, 31.925676, 44.277565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634563, 31.598093, 44.190971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250785, -0.396224, 0.883240,
		-0.809113, -0.415109, -0.415957,
		0.531453, -0.818957, -0.216487,
		37.793999, 31.352406, 44.126026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014866, 31.390427, 44.366165>,  <37.421982, 31.925676, 44.277565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014866, 31.390427, 44.366165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377064, 31.222103, 44.388069>,  <37.594383, 31.121109, 44.401211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377064, 31.222103, 44.388069>,  <37.014866, 31.390427, 44.366165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377064, 31.222103, 44.388069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319120, -0.590201, 0.741502,
		-0.279711, -0.688901, -0.668713,
		0.905496, -0.420806, 0.054756,
		37.648712, 31.095861, 44.404495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902454, 30.619513, 44.351391>,  <37.014866, 31.390427, 44.366165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902454, 30.619513, 44.351391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236122, 30.711950, 44.551693>,  <37.436325, 30.767412, 44.671875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236122, 30.711950, 44.551693>,  <36.902454, 30.619513, 44.351391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236122, 30.711950, 44.551693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272314, -0.616980, 0.738363,
		0.479586, -0.752284, -0.451737,
		0.834172, 0.231094, 0.500752,
		37.486374, 30.781279, 44.701920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079811, 30.032856, 44.681816>,  <36.902454, 30.619513, 44.351391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079811, 30.032856, 44.681816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300201, 30.304453, 44.875881>,  <37.432438, 30.467411, 44.992321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300201, 30.304453, 44.875881>,  <37.079811, 30.032856, 44.681816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300201, 30.304453, 44.875881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232998, -0.433090, 0.870715,
		0.801333, -0.592789, -0.080420,
		0.550979, 0.678995, 0.485168,
		37.465496, 30.508152, 45.021431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208649, 29.711512, 45.341705>,  <37.079811, 30.032856, 44.681816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208649, 29.711512, 45.341705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372131, 30.072535, 45.395885>,  <37.470222, 30.289148, 45.428394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372131, 30.072535, 45.395885>,  <37.208649, 29.711512, 45.341705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372131, 30.072535, 45.395885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165157, -0.219099, 0.961623,
		0.897596, -0.370655, -0.238612,
		0.408710, 0.902558, 0.135446,
		37.494743, 30.343302, 45.436520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791882, 29.600468, 45.758648>,  <37.208649, 29.711512, 45.341705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791882, 29.600468, 45.758648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681919, 29.983627, 45.791763>,  <37.615944, 30.213524, 45.811634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681919, 29.983627, 45.791763>,  <37.791882, 29.600468, 45.758648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681919, 29.983627, 45.791763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010950, -0.089221, 0.995952,
		0.961410, 0.272883, 0.035016,
		-0.274902, 0.957901, 0.082790,
		37.599449, 30.270998, 45.816601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273533, 29.889769, 46.191605>,  <37.791882, 29.600468, 45.758648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273533, 29.889769, 46.191605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926727, 30.086483, 46.223709>,  <37.718643, 30.204512, 46.242970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926727, 30.086483, 46.223709>,  <38.273533, 29.889769, 46.191605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926727, 30.086483, 46.223709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017294, -0.190670, 0.981502,
		0.497990, 0.849584, 0.173818,
		-0.867010, 0.491784, 0.080259,
		37.666626, 30.234018, 46.247787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323608, 30.508614, 46.617516>,  <38.273533, 29.889769, 46.191605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323608, 30.508614, 46.617516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958218, 30.346621, 46.633228>,  <37.738983, 30.249424, 46.642654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958218, 30.346621, 46.633228>,  <38.323608, 30.508614, 46.617516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958218, 30.346621, 46.633228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168093, -0.287701, 0.942853,
		-0.370540, 0.867880, 0.330884,
		-0.913480, -0.404984, 0.039280,
		37.684174, 30.225126, 46.645012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137508, 30.701139, 47.281147>,  <38.323608, 30.508614, 46.617516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137508, 30.701139, 47.281147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839798, 30.444471, 47.207047>,  <37.661171, 30.290470, 47.162586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839798, 30.444471, 47.207047>,  <38.137508, 30.701139, 47.281147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839798, 30.444471, 47.207047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049626, -0.223478, 0.973445,
		-0.666030, 0.733702, 0.134485,
		-0.744272, -0.641670, -0.185254,
		37.616516, 30.251970, 47.151470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738647, 30.897148, 47.800941>,  <38.137508, 30.701139, 47.281147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738647, 30.897148, 47.800941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602905, 30.538101, 47.688427>,  <37.521458, 30.322674, 47.620918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602905, 30.538101, 47.688427>,  <37.738647, 30.897148, 47.800941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602905, 30.538101, 47.688427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285124, -0.186805, 0.940111,
		-0.896404, 0.399235, -0.192538,
		-0.339358, -0.897616, -0.281284,
		37.501099, 30.268816, 47.604042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086739, 30.908531, 48.111626>,  <37.738647, 30.897148, 47.800941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086739, 30.908531, 48.111626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190121, 30.529974, 48.034119>,  <37.252151, 30.302839, 47.987614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190121, 30.529974, 48.034119>,  <37.086739, 30.908531, 48.111626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190121, 30.529974, 48.034119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260193, -0.261365, 0.929510,
		-0.930323, -0.189820, -0.313795,
		0.258454, -0.946391, -0.193764,
		37.267658, 30.246056, 47.975990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564949, 30.496750, 48.422020>,  <37.086739, 30.908531, 48.111626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564949, 30.496750, 48.422020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849628, 30.222975, 48.358734>,  <37.020435, 30.058710, 48.320763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849628, 30.222975, 48.358734>,  <36.564949, 30.496750, 48.422020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849628, 30.222975, 48.358734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183211, -0.398269, 0.898786,
		-0.678177, -0.610675, -0.408843,
		0.711695, -0.684440, -0.158214,
		37.063137, 30.017643, 48.311272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369835, 29.916307, 48.607109>,  <36.564949, 30.496750, 48.422020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369835, 29.916307, 48.607109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757656, 29.822559, 48.635479>,  <36.990349, 29.766310, 48.652500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757656, 29.822559, 48.635479>,  <36.369835, 29.916307, 48.607109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757656, 29.822559, 48.635479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125710, -0.227850, 0.965547,
		-0.210119, -0.945073, -0.250375,
		0.969560, -0.234354, 0.070929,
		37.048523, 29.752249, 48.656757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405037, 29.196022, 48.960796>,  <36.369835, 29.916307, 48.607109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405037, 29.196022, 48.960796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749504, 29.396025, 48.997440>,  <36.956184, 29.516026, 49.019428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749504, 29.396025, 48.997440>,  <36.405037, 29.196022, 48.960796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749504, 29.396025, 48.997440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052022, -0.092586, 0.994345,
		0.505659, -0.861059, -0.053721,
		0.861163, 0.500005, 0.091611,
		37.007854, 29.546026, 49.024925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823200, 28.798981, 49.470909>,  <36.405037, 29.196022, 48.960796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823200, 28.798981, 49.470909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996651, 29.159294, 49.480362>,  <37.100719, 29.375483, 49.486034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996651, 29.159294, 49.480362>,  <36.823200, 28.798981, 49.470909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996651, 29.159294, 49.480362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213997, -0.128418, 0.968356,
		0.875314, -0.414848, -0.248450,
		0.433626, 0.900783, 0.023629,
		37.126740, 29.429529, 49.487450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387608, 28.699900, 49.900539>,  <36.823200, 28.798981, 49.470909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387608, 28.699900, 49.900539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341438, 29.097099, 49.890499>,  <37.313736, 29.335419, 49.884476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341438, 29.097099, 49.890499>,  <37.387608, 28.699900, 49.900539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341438, 29.097099, 49.890499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154101, 0.042865, 0.987125,
		0.981290, 0.110067, -0.157970,
		-0.115421, 0.992999, -0.025101,
		37.306812, 29.394999, 49.882969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986073, 28.964888, 50.277527>,  <37.387608, 28.699900, 49.900539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986073, 28.964888, 50.277527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710861, 29.254942, 50.266277>,  <37.545734, 29.428974, 50.259529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710861, 29.254942, 50.266277>,  <37.986073, 28.964888, 50.277527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710861, 29.254942, 50.266277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029167, 0.066357, 0.997369,
		0.725096, 0.685400, -0.066806,
		-0.688030, 0.725137, -0.028124,
		37.504452, 29.472483, 50.257839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241806, 29.424362, 50.711937>,  <37.986073, 28.964888, 50.277527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241806, 29.424362, 50.711937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854053, 29.521662, 50.698486>,  <37.621403, 29.580042, 50.690418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854053, 29.521662, 50.698486>,  <38.241806, 29.424362, 50.711937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854053, 29.521662, 50.698486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023172, 0.045698, 0.998687,
		0.244467, 0.968887, -0.038662,
		-0.969381, 0.243250, -0.033623,
		37.563240, 29.594637, 50.688400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165428, 30.007507, 51.195950>,  <38.241806, 29.424362, 50.711937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165428, 30.007507, 51.195950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802486, 29.849092, 51.139576>,  <37.584721, 29.754044, 51.105751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802486, 29.849092, 51.139576>,  <38.165428, 30.007507, 51.195950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802486, 29.849092, 51.139576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143041, -0.024366, 0.989417,
		-0.395278, 0.917912, -0.034541,
		-0.907356, -0.396035, -0.140931,
		37.530281, 29.730282, 51.097298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723366, 30.128679, 51.851891>,  <38.165428, 30.007507, 51.195950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723366, 30.128679, 51.851891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993042, 29.911221, 51.651924>,  <39.154846, 29.780745, 51.531944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993042, 29.911221, 51.651924>,  <38.723366, 30.128679, 51.851891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993042, 29.911221, 51.651924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015224, 0.666506, -0.745345,
		0.738402, 0.510114, 0.441074,
		0.674189, -0.543649, -0.499915,
		39.195297, 29.748125, 51.501949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429035, 30.755711, 51.486404>,  <38.723366, 30.128679, 51.851891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429035, 30.755711, 51.486404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619041, 31.057432, 51.667683>,  <38.733044, 31.238466, 51.776447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619041, 31.057432, 51.667683>,  <38.429035, 30.755711, 51.486404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619041, 31.057432, 51.667683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174291, 0.424156, -0.888659,
		-0.862544, 0.501115, 0.070012,
		0.475016, 0.754305, 0.453193,
		38.761547, 31.283724, 51.803642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104446, 31.372501, 51.275925>,  <38.429035, 30.755711, 51.486404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104446, 31.372501, 51.275925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472931, 31.477909, 51.390415>,  <38.694023, 31.541155, 51.459110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472931, 31.477909, 51.390415>,  <38.104446, 31.372501, 51.275925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472931, 31.477909, 51.390415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116506, 0.515070, -0.849193,
		-0.371204, 0.815635, 0.443788,
		0.921213, 0.263520, 0.286223,
		38.749294, 31.556965, 51.476280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165756, 32.004612, 51.071751>,  <38.104446, 31.372501, 51.275925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165756, 32.004612, 51.071751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543888, 31.880238, 51.111088>,  <38.770767, 31.805613, 51.134689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543888, 31.880238, 51.111088>,  <38.165756, 32.004612, 51.071751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543888, 31.880238, 51.111088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250146, 0.497870, -0.830393,
		0.209234, 0.809596, 0.548431,
		0.945330, -0.310934, 0.098346,
		38.827488, 31.786957, 51.140591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486244, 32.571468, 50.905033>,  <38.165756, 32.004612, 51.071751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486244, 32.571468, 50.905033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760395, 32.282673, 50.867119>,  <38.924885, 32.109394, 50.844372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760395, 32.282673, 50.867119>,  <38.486244, 32.571468, 50.905033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760395, 32.282673, 50.867119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304084, 0.402048, -0.863650,
		0.661655, 0.563105, 0.495101,
		0.685380, -0.721990, -0.094786,
		38.966007, 32.066074, 50.838684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967583, 32.896744, 50.573620>,  <38.486244, 32.571468, 50.905033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967583, 32.896744, 50.573620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054180, 32.508862, 50.528355>,  <39.106140, 32.276134, 50.501194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054180, 32.508862, 50.528355>,  <38.967583, 32.896744, 50.573620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054180, 32.508862, 50.528355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240561, 0.165325, -0.956450,
		0.946182, 0.179842, 0.269065,
		0.216493, -0.969703, -0.113165,
		39.119129, 32.217949, 50.494404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679077, 32.934887, 50.363968>,  <38.967583, 32.896744, 50.573620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679077, 32.934887, 50.363968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495590, 32.602249, 50.238728>,  <39.385498, 32.402668, 50.163582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495590, 32.602249, 50.238728>,  <39.679077, 32.934887, 50.363968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495590, 32.602249, 50.238728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362770, 0.146397, -0.920307,
		0.811157, -0.535747, 0.234522,
		-0.458718, -0.831591, -0.313104,
		39.357975, 32.352772, 50.144798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169159, 32.670696, 49.840382>,  <39.679077, 32.934887, 50.363968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169159, 32.670696, 49.840382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843300, 32.460842, 49.741505>,  <39.647785, 32.334930, 49.682178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843300, 32.460842, 49.741505>,  <40.169159, 32.670696, 49.840382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843300, 32.460842, 49.741505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259266, 0.051825, -0.964414,
		0.518773, -0.849750, 0.093799,
		-0.814651, -0.524632, -0.247197,
		39.598904, 32.303452, 49.667347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375156, 32.292187, 49.221859>,  <40.169159, 32.670696, 49.840382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375156, 32.292187, 49.221859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975960, 32.286377, 49.197182>,  <39.736443, 32.282890, 49.182373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975960, 32.286377, 49.197182>,  <40.375156, 32.292187, 49.221859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975960, 32.286377, 49.197182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059184, 0.134836, -0.989099,
		0.022682, -0.990761, -0.133706,
		-0.997989, -0.014522, -0.061696,
		39.676563, 32.282021, 49.178673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323013, 31.919519, 48.678699>,  <40.375156, 32.292187, 49.221859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323013, 31.919519, 48.678699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979332, 32.117214, 48.731606>,  <39.773121, 32.235832, 48.763348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979332, 32.117214, 48.731606>,  <40.323013, 31.919519, 48.678699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979332, 32.117214, 48.731606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049542, 0.176934, -0.982975,
		-0.509225, -0.851131, -0.127537,
		-0.859206, 0.494238, 0.132266,
		39.721569, 32.265484, 48.771286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974430, 31.804235, 48.063931>,  <40.323013, 31.919519, 48.678699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974430, 31.804235, 48.063931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792973, 32.125351, 48.218716>,  <39.684097, 32.318020, 48.311584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792973, 32.125351, 48.218716>,  <39.974430, 31.804235, 48.063931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792973, 32.125351, 48.218716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016854, 0.426401, -0.904377,
		-0.891026, -0.416783, -0.179903,
		-0.453640, 0.802791, 0.386959,
		39.656879, 32.366188, 48.334805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434795, 31.952633, 47.711090>,  <39.974430, 31.804235, 48.063931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434795, 31.952633, 47.711090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529541, 32.305901, 47.873032>,  <39.586388, 32.517860, 47.970196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529541, 32.305901, 47.873032>,  <39.434795, 31.952633, 47.711090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529541, 32.305901, 47.873032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112717, 0.388914, -0.914353,
		-0.964982, 0.262211, -0.007429,
		0.236865, 0.883171, 0.404850,
		39.600601, 32.570850, 47.994488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042564, 32.612160, 47.408352>,  <39.434795, 31.952633, 47.711090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042564, 32.612160, 47.408352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394691, 32.713253, 47.568932>,  <39.605968, 32.773907, 47.665279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394691, 32.713253, 47.568932>,  <39.042564, 32.612160, 47.408352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394691, 32.713253, 47.568932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179685, 0.605558, -0.775250,
		-0.439029, 0.754604, 0.487674,
		0.880322, 0.252730, 0.401449,
		39.658787, 32.789070, 47.689365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026588, 33.363514, 47.535473>,  <39.042564, 32.612160, 47.408352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026588, 33.363514, 47.535473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366013, 33.170410, 47.448849>,  <39.569668, 33.054550, 47.396873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366013, 33.170410, 47.448849>,  <39.026588, 33.363514, 47.535473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366013, 33.170410, 47.448849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005788, 0.417745, -0.908546,
		0.529074, 0.769699, 0.357274,
		0.848556, -0.482756, -0.216563,
		39.620579, 33.025585, 47.383881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422390, 33.873009, 47.291374>,  <39.026588, 33.363514, 47.535473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422390, 33.873009, 47.291374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559998, 33.530937, 47.136288>,  <39.642563, 33.325695, 47.043236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559998, 33.530937, 47.136288>,  <39.422390, 33.873009, 47.291374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559998, 33.530937, 47.136288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014975, 0.417865, -0.908386,
		0.938843, 0.306695, 0.156560,
		0.344019, -0.855177, -0.387717,
		39.663204, 33.274384, 47.019974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802582, 34.099609, 46.790253>,  <39.422390, 33.873009, 47.291374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802582, 34.099609, 46.790253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759144, 33.711933, 46.701824>,  <39.733082, 33.479328, 46.648766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759144, 33.711933, 46.701824>,  <39.802582, 34.099609, 46.790253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759144, 33.711933, 46.701824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064194, 0.228760, -0.971364,
		0.992011, -0.091294, -0.087058,
		-0.108596, -0.969192, -0.221072,
		39.726566, 33.421177, 46.635502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403278, 33.863274, 46.308128>,  <39.802582, 34.099609, 46.790253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403278, 33.863274, 46.308128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073967, 33.639889, 46.267483>,  <39.876381, 33.505859, 46.243095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073967, 33.639889, 46.267483>,  <40.403278, 33.863274, 46.308128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073967, 33.639889, 46.267483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039964, 0.121551, -0.991780,
		0.566223, -0.820577, -0.077753,
		-0.823283, -0.558462, -0.101618,
		39.826981, 33.472351, 46.236996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558113, 33.324116, 45.748959>,  <40.403278, 33.863274, 46.308128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558113, 33.324116, 45.748959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162151, 33.371021, 45.780785>,  <39.924572, 33.399166, 45.799881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162151, 33.371021, 45.780785>,  <40.558113, 33.324116, 45.748959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162151, 33.371021, 45.780785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070932, 0.076034, -0.994579,
		-0.122683, -0.990185, -0.066949,
		-0.989908, 0.117269, 0.079564,
		39.865177, 33.406200, 45.804653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288532, 33.062637, 45.098888>,  <40.558113, 33.324116, 45.748959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288532, 33.062637, 45.098888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936825, 33.208225, 45.221790>,  <39.725800, 33.295578, 45.295532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936825, 33.208225, 45.221790>,  <40.288532, 33.062637, 45.098888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936825, 33.208225, 45.221790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235223, 0.229127, -0.944548,
		-0.414192, -0.902786, -0.115850,
		-0.879270, 0.363974, 0.307259,
		39.673042, 33.317417, 45.313969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674076, 32.681538, 44.747765>,  <40.288532, 33.062637, 45.098888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674076, 32.681538, 44.747765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573502, 33.049107, 44.869331>,  <39.513157, 33.269650, 44.942272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573502, 33.049107, 44.869331>,  <39.674076, 32.681538, 44.747765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573502, 33.049107, 44.869331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315502, 0.219036, -0.923299,
		-0.915008, -0.328033, 0.234849,
		-0.251433, 0.918922, 0.303915,
		39.498074, 33.324783, 44.960506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096912, 32.743172, 44.440563>,  <39.674076, 32.681538, 44.747765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096912, 32.743172, 44.440563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215340, 33.121407, 44.494549>,  <39.286396, 33.348347, 44.526939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215340, 33.121407, 44.494549>,  <39.096912, 32.743172, 44.440563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215340, 33.121407, 44.494549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270550, 0.218536, -0.937573,
		-0.916049, 0.241069, 0.320529,
		0.296067, 0.945583, 0.134968,
		39.304161, 33.405083, 44.535038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556782, 33.049953, 44.101330>,  <39.096912, 32.743172, 44.440563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556782, 33.049953, 44.101330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875900, 33.288422, 44.137341>,  <39.067371, 33.431503, 44.158947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875900, 33.288422, 44.137341>,  <38.556782, 33.049953, 44.101330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875900, 33.288422, 44.137341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013281, 0.166657, -0.985925,
		-0.602786, 0.785368, 0.140876,
		0.797792, 0.596174, 0.090028,
		39.115238, 33.467274, 44.164349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482399, 33.535362, 43.513306>,  <38.556782, 33.049953, 44.101330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482399, 33.535362, 43.513306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860359, 33.590508, 43.632076>,  <39.087135, 33.623592, 43.703339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860359, 33.590508, 43.632076>,  <38.482399, 33.535362, 43.513306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860359, 33.590508, 43.632076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271108, 0.178873, -0.945783,
		-0.183498, 0.974166, 0.131642,
		0.944896, 0.137860, 0.296927,
		39.143829, 33.631866, 43.721153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695641, 34.189808, 43.259171>,  <38.482399, 33.535362, 43.513306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695641, 34.189808, 43.259171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030712, 33.979126, 43.316978>,  <39.231754, 33.852718, 43.351662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030712, 33.979126, 43.316978>,  <38.695641, 34.189808, 43.259171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030712, 33.979126, 43.316978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268101, 0.166009, -0.948980,
		0.475838, 0.833683, 0.280271,
		0.837676, -0.526701, 0.144518,
		39.282013, 33.821117, 43.360332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264229, 34.460423, 42.796803>,  <38.695641, 34.189808, 43.259171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264229, 34.460423, 42.796803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368717, 34.080845, 42.867531>,  <39.431412, 33.853100, 42.909966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368717, 34.080845, 42.867531>,  <39.264229, 34.460423, 42.796803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368717, 34.080845, 42.867531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399204, -0.060574, -0.914859,
		0.878862, 0.309571, 0.362999,
		0.261225, -0.948945, 0.176818,
		39.447086, 33.796162, 42.920578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833054, 34.495163, 42.535870>,  <39.264229, 34.460423, 42.796803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833054, 34.495163, 42.535870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790157, 34.098568, 42.565399>,  <39.764420, 33.860611, 42.583118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790157, 34.098568, 42.565399>,  <39.833054, 34.495163, 42.535870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790157, 34.098568, 42.565399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448308, -0.114500, -0.886515,
		0.887423, -0.061974, 0.456771,
		-0.107242, -0.991488, 0.073827,
		39.757984, 33.801121, 42.587547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547207, 34.198288, 42.357014>,  <39.833054, 34.495163, 42.535870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547207, 34.198288, 42.357014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292881, 33.891533, 42.322079>,  <40.140285, 33.707481, 42.301117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292881, 33.891533, 42.322079>,  <40.547207, 34.198288, 42.357014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292881, 33.891533, 42.322079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376999, -0.209824, -0.902134,
		0.673510, -0.606513, 0.422525,
		-0.635811, -0.766887, -0.087337,
		40.102139, 33.661469, 42.295879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974094, 33.545265, 42.249317>,  <40.547207, 34.198288, 42.357014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974094, 33.545265, 42.249317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609928, 33.509727, 42.087704>,  <40.391426, 33.488403, 41.990734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609928, 33.509727, 42.087704>,  <40.974094, 33.545265, 42.249317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609928, 33.509727, 42.087704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413317, -0.153846, -0.897497,
		0.017581, -0.984092, 0.176787,
		-0.910418, -0.088848, -0.404037,
		40.336803, 33.483074, 41.966492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048740, 33.061962, 41.667595>,  <40.974094, 33.545265, 42.249317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048740, 33.061962, 41.667595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680107, 33.203285, 41.603275>,  <40.458927, 33.288078, 41.564686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680107, 33.203285, 41.603275>,  <41.048740, 33.061962, 41.667595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680107, 33.203285, 41.603275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179430, 0.020399, -0.983559,
		-0.344224, -0.935283, -0.082194,
		-0.921583, 0.353312, -0.160796,
		40.403633, 33.309280, 41.555035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893932, 32.741859, 41.066162>,  <41.048740, 33.061962, 41.667595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893932, 32.741859, 41.066162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653324, 33.057434, 41.116360>,  <40.508961, 33.246780, 41.146481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653324, 33.057434, 41.116360>,  <40.893932, 32.741859, 41.066162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653324, 33.057434, 41.116360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146682, 0.263502, -0.953442,
		-0.785277, -0.555105, -0.274225,
		-0.601519, 0.788939, 0.125498,
		40.472870, 33.294117, 41.154011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277153, 32.730618, 40.509399>,  <40.893932, 32.741859, 41.066162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277153, 32.730618, 40.509399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295280, 33.114830, 40.619190>,  <40.306156, 33.345356, 40.685062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295280, 33.114830, 40.619190>,  <40.277153, 32.730618, 40.509399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295280, 33.114830, 40.619190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037222, 0.276188, -0.960383,
		-0.998279, 0.033303, 0.048268,
		0.045314, 0.960527, 0.274473,
		40.308876, 33.402988, 40.701530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738274, 32.983986, 40.183006>,  <40.277153, 32.730618, 40.509399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738274, 32.983986, 40.183006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974266, 33.296604, 40.264114>,  <40.115860, 33.484173, 40.312778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.974266, 33.296604, 40.264114>,  <39.738274, 32.983986, 40.183006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974266, 33.296604, 40.264114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182558, 0.373752, -0.909385,
		-0.786508, 0.499503, 0.363183,
		0.589981, 0.781541, 0.202771,
		40.151260, 33.531067, 40.324947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529533, 33.550373, 39.814487>,  <39.738274, 32.983986, 40.183006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529533, 33.550373, 39.814487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864983, 33.737076, 39.926811>,  <40.066250, 33.849098, 39.994205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864983, 33.737076, 39.926811>,  <39.529533, 33.550373, 39.814487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864983, 33.737076, 39.926811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071375, 0.416920, -0.906137,
		-0.540019, 0.779948, 0.316323,
		0.838621, 0.466753, 0.280813,
		40.116570, 33.877102, 40.011055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389706, 34.285061, 39.633629>,  <39.529533, 33.550373, 39.814487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389706, 34.285061, 39.633629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775875, 34.182007, 39.649544>,  <40.007576, 34.120174, 39.659092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775875, 34.182007, 39.649544>,  <39.389706, 34.285061, 39.633629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775875, 34.182007, 39.649544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162240, 0.474303, -0.865283,
		0.204057, 0.841819, 0.499702,
		0.965422, -0.257639, 0.039792,
		40.065502, 34.104713, 39.661480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695271, 34.795406, 39.314980>,  <39.389706, 34.285061, 39.633629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695271, 34.795406, 39.314980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985168, 34.520138, 39.328583>,  <40.159107, 34.354977, 39.336746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985168, 34.520138, 39.328583>,  <39.695271, 34.795406, 39.314980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985168, 34.520138, 39.328583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510361, 0.503014, -0.697502,
		0.462895, 0.522871, 0.715775,
		0.724749, -0.688174, 0.034011,
		40.202595, 34.313686, 39.338787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249992, 35.226959, 39.178741>,  <39.695271, 34.795406, 39.314980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249992, 35.226959, 39.178741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319691, 34.842388, 39.093616>,  <40.361511, 34.611645, 39.042542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319691, 34.842388, 39.093616>,  <40.249992, 35.226959, 39.178741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319691, 34.842388, 39.093616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447919, 0.269858, -0.852376,
		0.876930, 0.053202, 0.477665,
		0.174250, -0.961429, -0.212817,
		40.371967, 34.553959, 39.029770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858608, 35.193245, 38.857159>,  <40.249992, 35.226959, 39.178741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858608, 35.193245, 38.857159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676304, 34.857071, 38.739887>,  <40.566921, 34.655369, 38.669525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676304, 34.857071, 38.739887>,  <40.858608, 35.193245, 38.857159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676304, 34.857071, 38.739887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416934, 0.089441, -0.904525,
		0.786416, -0.534483, 0.309641,
		-0.455759, -0.840433, -0.293182,
		40.539577, 34.604942, 38.651932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353542, 34.787266, 38.489388>,  <40.858608, 35.193245, 38.857159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353542, 34.787266, 38.489388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019791, 34.619694, 38.346107>,  <40.819538, 34.519150, 38.260139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019791, 34.619694, 38.346107>,  <41.353542, 34.787266, 38.489388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019791, 34.619694, 38.346107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369616, 0.056827, -0.927445,
		0.408892, -0.906237, 0.107428,
		-0.834381, -0.418932, -0.358196,
		40.769478, 34.494015, 38.238647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541367, 34.247921, 38.072617>,  <41.353542, 34.787266, 38.489388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541367, 34.247921, 38.072617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171768, 34.349876, 37.958588>,  <40.950008, 34.411049, 37.890171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171768, 34.349876, 37.958588>,  <41.541367, 34.247921, 38.072617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171768, 34.349876, 37.958588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368743, 0.396367, -0.840786,
		-0.101309, -0.882002, -0.460228,
		-0.923994, 0.254885, -0.285076,
		40.894569, 34.426342, 37.873066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476021, 34.007008, 37.454422>,  <41.541367, 34.247921, 38.072617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476021, 34.007008, 37.454422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163486, 34.255272, 37.428185>,  <40.975967, 34.404228, 37.412441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163486, 34.255272, 37.428185>,  <41.476021, 34.007008, 37.454422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163486, 34.255272, 37.428185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307788, 0.291758, -0.905618,
		-0.542941, -0.727779, -0.418991,
		-0.781333, 0.620658, -0.065594,
		40.929085, 34.441467, 37.408504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272320, 33.831688, 36.870625>,  <41.476021, 34.007008, 37.454422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272320, 33.831688, 36.870625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128036, 34.197529, 36.943726>,  <41.041466, 34.417034, 36.987587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128036, 34.197529, 36.943726>,  <41.272320, 33.831688, 36.870625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128036, 34.197529, 36.943726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272929, 0.290873, -0.917008,
		-0.891851, -0.280896, -0.354541,
		-0.360710, 0.914599, 0.182750,
		41.019825, 34.471909, 36.998550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967342, 34.010662, 36.241394>,  <41.272320, 33.831688, 36.870625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967342, 34.010662, 36.241394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111000, 34.325737, 36.441624>,  <41.197193, 34.514782, 36.561760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111000, 34.325737, 36.441624>,  <40.967342, 34.010662, 36.241394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111000, 34.325737, 36.441624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618757, 0.200570, -0.759546,
		-0.698682, 0.582518, -0.415352,
		0.359142, 0.787683, 0.500572,
		41.218742, 34.562042, 36.591797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393551, 33.435078, 36.164242>,  <40.967342, 34.010662, 36.241394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393551, 33.435078, 36.164242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552063, 33.178608, 35.901379>,  <41.647171, 33.024727, 35.743660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552063, 33.178608, 35.901379>,  <41.393551, 33.435078, 36.164242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552063, 33.178608, 35.901379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899322, 0.415202, 0.137210,
		0.184880, -0.645375, 0.741155,
		0.396281, -0.641170, -0.657162,
		41.670948, 32.986256, 35.704231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077755, 33.199543, 36.480583>,  <41.393551, 33.435078, 36.164242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077755, 33.199543, 36.480583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099163, 33.167191, 36.082470>,  <42.112007, 33.147778, 35.843601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099163, 33.167191, 36.082470>,  <42.077755, 33.199543, 36.480583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099163, 33.167191, 36.082470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956530, 0.290300, 0.027848,
		0.286679, -0.953511, 0.092903,
		0.053523, -0.080881, -0.995286,
		42.115219, 33.142925, 35.783886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636013, 32.813900, 36.240128>,  <42.077755, 33.199543, 36.480583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636013, 32.813900, 36.240128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507629, 33.098373, 35.989941>,  <42.430599, 33.269058, 35.839828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507629, 33.098373, 35.989941>,  <42.636013, 32.813900, 36.240128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507629, 33.098373, 35.989941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819644, 0.539459, 0.192788,
		0.474521, -0.450783, -0.756059,
		-0.320957, 0.711181, -0.625466,
		42.411343, 33.311729, 35.802299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129307, 32.863834, 35.628887>,  <42.636013, 32.813900, 36.240128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129307, 32.863834, 35.628887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921715, 33.195747, 35.710976>,  <42.797157, 33.394897, 35.760227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921715, 33.195747, 35.710976>,  <43.129307, 32.863834, 35.628887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921715, 33.195747, 35.710976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850907, 0.524359, 0.031680,
		-0.081321, 0.191064, -0.978203,
		-0.518983, 0.829784, 0.205219,
		42.766022, 33.444683, 35.772541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180565, 33.449955, 35.093281>,  <43.129307, 32.863834, 35.628887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180565, 33.449955, 35.093281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131496, 33.562107, 35.474087>,  <43.102055, 33.629398, 35.702572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131496, 33.562107, 35.474087>,  <43.180565, 33.449955, 35.093281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131496, 33.562107, 35.474087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827565, 0.558385, -0.057813,
		-0.547802, 0.780766, -0.300529,
		-0.122673, 0.280377, 0.952019,
		43.094696, 33.646221, 35.759693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003288, 34.153442, 35.266258>,  <43.180565, 33.449955, 35.093281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003288, 34.153442, 35.266258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228935, 34.003426, 35.560501>,  <43.364323, 33.913414, 35.737045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228935, 34.003426, 35.560501>,  <43.003288, 34.153442, 35.266258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228935, 34.003426, 35.560501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590272, 0.806128, -0.041664,
		-0.577365, 0.457710, 0.676129,
		0.564117, -0.375045, 0.735604,
		43.398170, 33.890911, 35.781181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566666, 34.223564, 34.713665>,  <43.003288, 34.153442, 35.266258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566666, 34.223564, 34.713665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888325, 34.327694, 34.499908>,  <44.081322, 34.390171, 34.371655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888325, 34.327694, 34.499908>,  <43.566666, 34.223564, 34.713665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888325, 34.327694, 34.499908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274083, 0.960117, 0.055268,
		0.527469, 0.102025, 0.843426,
		0.804149, 0.260321, -0.534395,
		44.129570, 34.405788, 34.339588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872486, 34.900826, 34.998066>,  <43.566666, 34.223564, 34.713665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872486, 34.900826, 34.998066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981518, 34.864586, 34.614922>,  <44.046936, 34.842842, 34.385036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981518, 34.864586, 34.614922>,  <43.872486, 34.900826, 34.998066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981518, 34.864586, 34.614922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318947, 0.930754, -0.178801,
		0.907731, 0.354243, 0.224803,
		0.272575, -0.090603, -0.957859,
		44.063290, 34.837406, 34.327564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136978, 35.532402, 34.912735>,  <43.872486, 34.900826, 34.998066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136978, 35.532402, 34.912735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081055, 35.422020, 34.532356>,  <44.047501, 35.355789, 34.304131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081055, 35.422020, 34.532356>,  <44.136978, 35.532402, 34.912735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081055, 35.422020, 34.532356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380524, 0.901604, -0.205695,
		0.914142, 0.333101, -0.231059,
		-0.139807, -0.275958, -0.950947,
		44.039112, 35.339233, 34.247070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381123, 36.084644, 34.586349>,  <44.136978, 35.532402, 34.912735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381123, 36.084644, 34.586349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146759, 35.884651, 34.331245>,  <44.006142, 35.764656, 34.178185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146759, 35.884651, 34.331245>,  <44.381123, 36.084644, 34.586349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146759, 35.884651, 34.331245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460394, 0.853014, -0.245773,
		0.666898, 0.149621, -0.729973,
		-0.585905, -0.499981, -0.637758,
		43.970989, 35.734657, 34.139919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319923, 36.584053, 33.920139>,  <44.381123, 36.084644, 34.586349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319923, 36.584053, 33.920139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020947, 36.318378, 33.925732>,  <43.841560, 36.158974, 33.929085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020947, 36.318378, 33.925732>,  <44.319923, 36.584053, 33.920139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020947, 36.318378, 33.925732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640647, 0.715068, -0.279731,
		0.175796, -0.218038, -0.959977,
		-0.747440, -0.664182, 0.013979,
		43.796715, 36.119125, 33.929924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111351, 36.719437, 33.356544>,  <44.319923, 36.584053, 33.920139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111351, 36.719437, 33.356544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815292, 36.529278, 33.546776>,  <43.637657, 36.415184, 33.660915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815292, 36.529278, 33.546776>,  <44.111351, 36.719437, 33.356544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815292, 36.529278, 33.546776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634202, 0.728608, -0.258685,
		-0.223536, -0.493081, -0.840775,
		-0.740148, -0.475396, 0.475583,
		43.593246, 36.386658, 33.689449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612736, 36.722336, 32.900475>,  <44.111351, 36.719437, 33.356544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612736, 36.722336, 32.900475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415279, 36.675575, 33.245186>,  <43.296806, 36.647518, 33.452011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415279, 36.675575, 33.245186>,  <43.612736, 36.722336, 32.900475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415279, 36.675575, 33.245186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515125, 0.837690, -0.181441,
		-0.700690, -0.533488, -0.473734,
		-0.493640, -0.116898, 0.861774,
		43.267189, 36.640507, 33.503719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855354, 36.809364, 32.728901>,  <43.612736, 36.722336, 32.900475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855354, 36.809364, 32.728901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920265, 36.892982, 33.114639>,  <42.959213, 36.943153, 33.346085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920265, 36.892982, 33.114639>,  <42.855354, 36.809364, 32.728901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920265, 36.892982, 33.114639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447718, 0.886510, -0.116828,
		-0.879326, -0.412797, 0.237453,
		0.162278, 0.209041, 0.964348,
		42.968948, 36.955696, 33.403942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234909, 37.099468, 33.050842>,  <42.855354, 36.809364, 32.728901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234909, 37.099468, 33.050842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528206, 37.212860, 33.298065>,  <42.704185, 37.280895, 33.446400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528206, 37.212860, 33.298065>,  <42.234909, 37.099468, 33.050842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528206, 37.212860, 33.298065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419511, 0.903940, 0.083085,
		-0.535131, -0.320202, 0.781732,
		0.733243, 0.283484, 0.618055,
		42.748180, 37.297905, 33.483482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931393, 37.645977, 33.401913>,  <42.234909, 37.099468, 33.050842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931393, 37.645977, 33.401913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303799, 37.686584, 33.542141>,  <42.527245, 37.710949, 33.626278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303799, 37.686584, 33.542141>,  <41.931393, 37.645977, 33.401913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303799, 37.686584, 33.542141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163169, 0.974976, 0.150989,
		-0.326468, -0.197776, 0.924285,
		0.931018, 0.101522, 0.350569,
		42.583103, 37.717041, 33.647312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809608, 37.940826, 33.997726>,  <41.931393, 37.645977, 33.401913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809608, 37.940826, 33.997726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197845, 37.996632, 33.919258>,  <42.430790, 38.030113, 33.872177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197845, 37.996632, 33.919258>,  <41.809608, 37.940826, 33.997726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197845, 37.996632, 33.919258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102449, 0.976845, 0.187824,
		0.217829, -0.162204, 0.962414,
		0.970595, 0.139512, -0.196167,
		42.489025, 38.038486, 33.860409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067307, 38.216053, 34.558792>,  <41.809608, 37.940826, 33.997726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067307, 38.216053, 34.558792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323200, 38.325272, 34.271408>,  <42.476734, 38.390804, 34.098976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323200, 38.325272, 34.271408>,  <42.067307, 38.216053, 34.558792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323200, 38.325272, 34.271408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188911, 0.961954, 0.197375,
		0.745022, 0.009459, 0.666973,
		0.639730, 0.273047, -0.718464,
		42.515118, 38.407185, 34.055870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599113, 38.697475, 34.810528>,  <42.067307, 38.216053, 34.558792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599113, 38.697475, 34.810528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581638, 38.761543, 34.416080>,  <42.571156, 38.799984, 34.179413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581638, 38.761543, 34.416080>,  <42.599113, 38.697475, 34.810528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581638, 38.761543, 34.416080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238474, 0.956859, 0.165985,
		0.970166, 0.242415, -0.003603,
		-0.043685, 0.160173, -0.986122,
		42.568531, 38.809597, 34.120243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817978, 39.444675, 34.589790>,  <42.599113, 38.697475, 34.810528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817978, 39.444675, 34.589790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599262, 39.304390, 34.285679>,  <42.468033, 39.220219, 34.103214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.599262, 39.304390, 34.285679>,  <42.817978, 39.444675, 34.589790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599262, 39.304390, 34.285679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447264, 0.889976, -0.088865,
		0.707794, 0.291453, -0.643493,
		-0.546794, -0.350709, -0.760276,
		42.435223, 39.199177, 34.057594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685032, 40.079426, 34.132053>,  <42.817978, 39.444675, 34.589790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685032, 40.079426, 34.132053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434723, 39.791679, 34.011436>,  <42.284538, 39.619034, 33.939068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434723, 39.791679, 34.011436>,  <42.685032, 40.079426, 34.132053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434723, 39.791679, 34.011436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712329, 0.684556, -0.154828,
		0.317796, 0.117907, -0.940800,
		-0.625775, -0.719362, -0.301538,
		42.246990, 39.575871, 33.920975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555584, 40.288029, 33.492928>,  <42.685032, 40.079426, 34.132053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555584, 40.288029, 33.492928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260567, 40.050404, 33.621376>,  <42.083557, 39.907829, 33.698444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260567, 40.050404, 33.621376>,  <42.555584, 40.288029, 33.492928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260567, 40.050404, 33.621376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669577, 0.705100, -0.233451,
		-0.087741, -0.387198, -0.917812,
		-0.737542, -0.594063, 0.321126,
		42.039303, 39.872185, 33.717712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130615, 40.369663, 33.103348>,  <42.555584, 40.288029, 33.492928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130615, 40.369663, 33.103348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921280, 40.260159, 33.426128>,  <41.795681, 40.194454, 33.619797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921280, 40.260159, 33.426128>,  <42.130615, 40.369663, 33.103348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921280, 40.260159, 33.426128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571075, 0.815535, -0.093683,
		-0.632452, -0.509859, -0.583137,
		-0.523333, -0.273764, 0.806954,
		41.764278, 40.178028, 33.668213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381378, 40.604332, 32.953945>,  <42.130615, 40.369663, 33.103348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381378, 40.604332, 32.953945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365440, 40.523319, 33.345329>,  <41.355877, 40.474712, 33.580162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365440, 40.523319, 33.345329>,  <41.381378, 40.604332, 32.953945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365440, 40.523319, 33.345329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641703, 0.755801, 0.130315,
		-0.765917, -0.622692, -0.160078,
		-0.039841, -0.202533, 0.978465,
		41.353489, 40.462559, 33.638870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752899, 40.869820, 33.186214>,  <41.381378, 40.604332, 32.953945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752899, 40.869820, 33.186214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928261, 40.813915, 33.541351>,  <41.033478, 40.780373, 33.754433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928261, 40.813915, 33.541351>,  <40.752899, 40.869820, 33.186214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928261, 40.813915, 33.541351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472393, 0.804553, 0.359915,
		-0.764621, -0.577200, 0.286697,
		0.438406, -0.139765, 0.887843,
		41.059784, 40.771984, 33.807705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180077, 40.716995, 33.757538>,  <40.752899, 40.869820, 33.186214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180077, 40.716995, 33.757538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517624, 40.892944, 33.880428>,  <40.720154, 40.998516, 33.954163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517624, 40.892944, 33.880428>,  <40.180077, 40.716995, 33.757538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517624, 40.892944, 33.880428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531059, 0.766425, 0.361343,
		-0.076518, -0.468082, 0.880366,
		0.843873, 0.439877, 0.307225,
		40.770786, 41.024906, 33.972595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008961, 41.137238, 34.353039>,  <40.180077, 40.716995, 33.757538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008961, 41.137238, 34.353039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353252, 41.306183, 34.239372>,  <40.559830, 41.407551, 34.171173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353252, 41.306183, 34.239372>,  <40.008961, 41.137238, 34.353039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353252, 41.306183, 34.239372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392919, 0.906131, 0.156657,
		0.323654, -0.023188, 0.945892,
		0.860734, 0.422361, -0.284162,
		40.611473, 41.432892, 34.154125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061008, 41.702690, 34.774517>,  <40.008961, 41.137238, 34.353039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061008, 41.702690, 34.774517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297962, 41.778038, 34.461189>,  <40.440136, 41.823246, 34.273193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297962, 41.778038, 34.461189>,  <40.061008, 41.702690, 34.774517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297962, 41.778038, 34.461189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292467, 0.956236, 0.008773,
		0.750693, 0.223898, 0.621554,
		0.592388, 0.188370, -0.783322,
		40.475677, 41.834549, 34.226192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504829, 42.355751, 34.928497>,  <40.061008, 41.702690, 34.774517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504829, 42.355751, 34.928497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465862, 42.330555, 34.531197>,  <40.442482, 42.315437, 34.292816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465862, 42.330555, 34.531197>,  <40.504829, 42.355751, 34.928497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465862, 42.330555, 34.531197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254628, 0.966357, -0.036312,
		0.962120, 0.249372, -0.110179,
		-0.097417, -0.062991, -0.993248,
		40.436638, 42.311657, 34.233223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924824, 42.908970, 34.627899>,  <40.504829, 42.355751, 34.928497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924824, 42.908970, 34.627899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611053, 42.800850, 34.404610>,  <40.422791, 42.735977, 34.270634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611053, 42.800850, 34.404610>,  <40.924824, 42.908970, 34.627899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611053, 42.800850, 34.404610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241914, 0.962093, -0.125911,
		0.571101, 0.036276, -0.820078,
		-0.784424, -0.270296, -0.558228,
		40.375725, 42.719761, 34.237141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528507, 43.359440, 34.657402>,  <40.924824, 42.908970, 34.627899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528507, 43.359440, 34.657402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808289, 43.560551, 34.454235>,  <41.976158, 43.681217, 34.332336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808289, 43.560551, 34.454235>,  <41.528507, 43.359440, 34.657402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808289, 43.560551, 34.454235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589539, 0.004164, -0.807729,
		-0.403996, 0.864404, 0.299321,
		0.699451, 0.502781, -0.507918,
		42.018124, 43.711384, 34.301861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229717, 43.912350, 34.282291>,  <41.528507, 43.359440, 34.657402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229717, 43.912350, 34.282291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553764, 43.737316, 34.126225>,  <41.748192, 43.632294, 34.032585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553764, 43.737316, 34.126225>,  <41.229717, 43.912350, 34.282291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553764, 43.737316, 34.126225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509882, -0.197412, -0.837286,
		0.289362, 0.877238, -0.383045,
		0.810117, -0.437587, -0.390164,
		41.796799, 43.606041, 34.009174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354935, 44.267944, 33.664391>,  <41.229717, 43.912350, 34.282291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354935, 44.267944, 33.664391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487926, 43.890759, 33.671009>,  <41.567722, 43.664448, 33.674980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487926, 43.890759, 33.671009>,  <41.354935, 44.267944, 33.664391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487926, 43.890759, 33.671009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562525, -0.212363, -0.799042,
		0.756982, 0.256359, -0.601048,
		0.332482, -0.942964, 0.016546,
		41.587669, 43.607868, 33.675972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777241, 44.035942, 33.053131>,  <41.354935, 44.267944, 33.664391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777241, 44.035942, 33.053131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571053, 43.749355, 33.241158>,  <41.447338, 43.577404, 33.353973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571053, 43.749355, 33.241158>,  <41.777241, 44.035942, 33.053131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571053, 43.749355, 33.241158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722440, 0.068353, -0.688046,
		0.460833, -0.694262, -0.552840,
		-0.515473, -0.716469, 0.470063,
		41.416412, 43.534416, 33.382175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195259, 44.540901, 32.721889>,  <41.777241, 44.035942, 33.053131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195259, 44.540901, 32.721889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405964, 44.512665, 33.060722>,  <42.532387, 44.495724, 33.264023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405964, 44.512665, 33.060722>,  <42.195259, 44.540901, 32.721889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405964, 44.512665, 33.060722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402707, -0.856886, -0.321829,
		0.748567, 0.510651, -0.422945,
		0.526758, -0.070588, 0.847079,
		42.563992, 44.491489, 33.314846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843773, 44.391014, 32.602497>,  <42.195259, 44.540901, 32.721889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843773, 44.391014, 32.602497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746452, 44.229897, 32.955441>,  <42.688061, 44.133224, 33.167206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746452, 44.229897, 32.955441>,  <42.843773, 44.391014, 32.602497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746452, 44.229897, 32.955441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289094, -0.898463, -0.330436,
		0.925867, 0.174691, 0.335041,
		-0.243298, -0.402798, 0.882360,
		42.673462, 44.109058, 33.220150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411606, 44.022800, 32.927940>,  <42.843773, 44.391014, 32.602497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411606, 44.022800, 32.927940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094849, 43.850178, 33.100758>,  <42.904793, 43.746605, 33.204449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094849, 43.850178, 33.100758>,  <43.411606, 44.022800, 32.927940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094849, 43.850178, 33.100758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410026, -0.900065, -0.147515,
		0.452530, 0.060334, 0.889706,
		-0.791893, -0.431558, 0.432046,
		42.857281, 43.720711, 33.230370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626328, 43.501480, 33.486027>,  <43.411606, 44.022800, 32.927940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626328, 43.501480, 33.486027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278721, 43.434605, 33.299755>,  <43.070156, 43.394478, 33.187992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278721, 43.434605, 33.299755>,  <43.626328, 43.501480, 33.486027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278721, 43.434605, 33.299755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257480, -0.956511, -0.137083,
		-0.422508, -0.239030, 0.874272,
		-0.869017, -0.167189, -0.465679,
		43.018017, 43.384449, 33.160053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162796, 43.028599, 33.858765>,  <43.626328, 43.501480, 33.486027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162796, 43.028599, 33.858765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130753, 43.006596, 33.460659>,  <43.111526, 42.993393, 33.221794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130753, 43.006596, 33.460659>,  <43.162796, 43.028599, 33.858765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130753, 43.006596, 33.460659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281975, -0.958943, 0.030304,
		-0.956072, -0.278213, 0.092327,
		-0.080105, -0.055007, -0.995268,
		43.106720, 42.990093, 33.162079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708611, 42.464516, 33.717312>,  <43.162796, 43.028599, 33.858765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708611, 42.464516, 33.717312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940430, 42.541100, 33.400459>,  <43.079521, 42.587048, 33.210350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940430, 42.541100, 33.400459>,  <42.708611, 42.464516, 33.717312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940430, 42.541100, 33.400459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358216, -0.932921, 0.036599,
		-0.731987, -0.304964, -0.609256,
		0.579549, 0.191456, -0.792129,
		43.114296, 42.598537, 33.162819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780167, 41.832733, 33.323017>,  <42.708611, 42.464516, 33.717312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780167, 41.832733, 33.323017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093719, 42.036678, 33.181274>,  <43.281849, 42.159046, 33.096230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093719, 42.036678, 33.181274>,  <42.780167, 41.832733, 33.323017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093719, 42.036678, 33.181274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514445, -0.852876, -0.089151,
		-0.347680, -0.112415, -0.930850,
		0.783878, 0.509867, -0.354359,
		43.328884, 42.189640, 33.074966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000366, 41.470875, 32.824017>,  <42.780167, 41.832733, 33.323017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000366, 41.470875, 32.824017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330254, 41.686104, 32.893658>,  <43.528187, 41.815243, 32.935444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330254, 41.686104, 32.893658>,  <43.000366, 41.470875, 32.824017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330254, 41.686104, 32.893658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555803, -0.828037, -0.073738,
		0.104489, 0.157582, -0.981962,
		0.824721, 0.538073, 0.174105,
		43.577671, 41.847527, 32.945889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436317, 41.097221, 32.484375>,  <43.000366, 41.470875, 32.824017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436317, 41.097221, 32.484375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678741, 41.332016, 32.699089>,  <43.824196, 41.472893, 32.827919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678741, 41.332016, 32.699089>,  <43.436317, 41.097221, 32.484375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678741, 41.332016, 32.699089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765122, -0.614693, -0.191677,
		0.217449, 0.526876, -0.821655,
		0.606056, 0.586987, 0.536789,
		43.860558, 41.508114, 32.860126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960056, 41.159637, 32.047207>,  <43.436317, 41.097221, 32.484375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960056, 41.159637, 32.047207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081333, 41.206757, 32.425453>,  <44.154099, 41.235027, 32.652401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081333, 41.206757, 32.425453>,  <43.960056, 41.159637, 32.047207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081333, 41.206757, 32.425453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671763, -0.730243, -0.124415,
		0.675877, 0.672954, -0.300538,
		0.303191, 0.117801, 0.945620,
		44.172291, 41.242096, 32.709141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700249, 41.071301, 32.019211>,  <43.960056, 41.159637, 32.047207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700249, 41.071301, 32.019211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621101, 41.009533, 32.406406>,  <44.573612, 40.972473, 32.638725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621101, 41.009533, 32.406406>,  <44.700249, 41.071301, 32.019211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621101, 41.009533, 32.406406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526140, -0.849936, -0.028036,
		0.827059, 0.503751, 0.249416,
		-0.197864, -0.154415, 0.967991,
		44.561741, 40.963207, 32.696804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381817, 40.930050, 32.375629>,  <44.700249, 41.071301, 32.019211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381817, 40.930050, 32.375629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096718, 40.785088, 32.615849>,  <44.925659, 40.698112, 32.759979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096718, 40.785088, 32.615849>,  <45.381817, 40.930050, 32.375629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096718, 40.785088, 32.615849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414750, -0.908221, -0.055832,
		0.565665, 0.209284, 0.797637,
		-0.712745, -0.362402, 0.600549,
		44.882893, 40.676369, 32.796013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.741482, 40.598396, 32.729801>,  <45.381817, 40.930050, 32.375629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.741482, 40.598396, 32.729801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376232, 40.446674, 32.789585>,  <45.157082, 40.355640, 32.825455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376232, 40.446674, 32.789585>,  <45.741482, 40.598396, 32.729801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376232, 40.446674, 32.789585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404036, -0.890900, 0.207491,
		0.054454, 0.249852, 0.966752,
		-0.913121, -0.379303, 0.149462,
		45.102295, 40.332882, 32.834423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781609, 40.119270, 33.364712>,  <45.741482, 40.598396, 32.729801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781609, 40.119270, 33.364712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.448475, 39.990566, 33.184555>,  <45.248592, 39.913345, 33.076462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.448475, 39.990566, 33.184555>,  <45.781609, 40.119270, 33.364712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.448475, 39.990566, 33.184555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327506, -0.942423, 0.067664,
		-0.446229, -0.091152, 0.890264,
		-0.832838, -0.321761, -0.450390,
		45.198624, 39.894039, 33.049438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561535, 39.675346, 33.791401>,  <45.781609, 40.119270, 33.364712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561535, 39.675346, 33.791401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370182, 39.575947, 33.454494>,  <45.255371, 39.516308, 33.252350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370182, 39.575947, 33.454494>,  <45.561535, 39.675346, 33.791401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370182, 39.575947, 33.454494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259033, -0.956382, 0.135040,
		-0.839080, -0.153573, 0.521881,
		-0.478378, -0.248494, -0.842262,
		45.226669, 39.501400, 33.201817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201199, 39.084328, 33.911896>,  <45.561535, 39.675346, 33.791401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201199, 39.084328, 33.911896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.215759, 39.077599, 33.512218>,  <45.224495, 39.073563, 33.272411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.215759, 39.077599, 33.512218>,  <45.201199, 39.084328, 33.911896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.215759, 39.077599, 33.512218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093134, -0.995450, 0.020153,
		-0.994988, -0.093793, -0.034675,
		0.036407, -0.016823, -0.999195,
		45.226681, 39.072552, 33.212460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.815475, 38.526783, 33.744991>,  <45.201199, 39.084328, 33.911896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.815475, 38.526783, 33.744991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039986, 38.584534, 33.419018>,  <45.174694, 38.619186, 33.223434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039986, 38.584534, 33.419018>,  <44.815475, 38.526783, 33.744991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039986, 38.584534, 33.419018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140146, -0.987026, -0.078345,
		-0.815674, -0.070237, -0.574231,
		0.561279, 0.144380, -0.814936,
		45.208370, 38.627850, 33.174538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475269, 38.060875, 33.228436>,  <44.815475, 38.526783, 33.744991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475269, 38.060875, 33.228436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854805, 38.135166, 33.126293>,  <45.082527, 38.179741, 33.065006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854805, 38.135166, 33.126293>,  <44.475269, 38.060875, 33.228436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854805, 38.135166, 33.126293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170054, -0.981987, -0.082360,
		-0.266056, 0.034721, -0.963332,
		0.948839, 0.185731, -0.255359,
		45.139458, 38.190884, 33.049686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528992, 37.369030, 32.907375>,  <44.475269, 38.060875, 33.228436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528992, 37.369030, 32.907375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903744, 37.503727, 32.945007>,  <45.128597, 37.584545, 32.967587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903744, 37.503727, 32.945007>,  <44.528992, 37.369030, 32.907375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.903744, 37.503727, 32.945007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320409, -0.934596, 0.154497,
		0.139951, -0.114602, -0.983504,
		0.936884, 0.336745, 0.094078,
		45.184811, 37.604752, 32.973232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958736, 36.952728, 32.428391>,  <44.528992, 37.369030, 32.907375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958736, 36.952728, 32.428391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240677, 37.086792, 32.678459>,  <45.409843, 37.167233, 32.828503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.240677, 37.086792, 32.678459>,  <44.958736, 36.952728, 32.428391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240677, 37.086792, 32.678459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419322, -0.907731, 0.013880,
		0.572144, 0.252367, -0.780361,
		0.704855, 0.335164, 0.625176,
		45.452133, 37.187340, 32.866013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628689, 36.632538, 32.348259>,  <44.958736, 36.952728, 32.428391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628689, 36.632538, 32.348259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.706787, 36.778408, 32.712433>,  <45.753647, 36.865929, 32.930939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.706787, 36.778408, 32.712433>,  <45.628689, 36.632538, 32.348259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.706787, 36.778408, 32.712433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464842, -0.851818, 0.241510,
		0.863597, 0.376054, -0.335833,
		0.195248, 0.364677, 0.910433,
		45.765362, 36.887810, 32.985561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.339561, 36.463619, 32.451771>,  <45.628689, 36.632538, 32.348259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.339561, 36.463619, 32.451771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171761, 36.546085, 32.805382>,  <46.071079, 36.595566, 33.017548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171761, 36.546085, 32.805382>,  <46.339561, 36.463619, 32.451771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171761, 36.546085, 32.805382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504694, -0.756500, 0.415923,
		0.754519, 0.620646, 0.213304,
		-0.419506, 0.206168, 0.884030,
		46.045910, 36.607937, 33.070591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.918537, 36.483593, 32.913151>,  <46.339561, 36.463619, 32.451771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.918537, 36.483593, 32.913151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594402, 36.413620, 33.136845>,  <46.399921, 36.371635, 33.271061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.594402, 36.413620, 33.136845>,  <46.918537, 36.483593, 32.913151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594402, 36.413620, 33.136845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518712, -0.658088, 0.545763,
		0.272554, 0.732337, 0.624017,
		-0.810341, -0.174935, 0.559236,
		46.351299, 36.361141, 33.304615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.141335, 36.437664, 33.621742>,  <46.918537, 36.483593, 32.913151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.141335, 36.437664, 33.621742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794212, 36.240139, 33.643852>,  <46.585938, 36.121624, 33.657120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794212, 36.240139, 33.643852>,  <47.141335, 36.437664, 33.621742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794212, 36.240139, 33.643852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453107, -0.740746, 0.495973,
		-0.203973, 0.455456, 0.866577,
		-0.867807, -0.493817, 0.055278,
		46.533871, 36.091995, 33.660435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.020027, 36.291939, 34.330517>,  <47.141335, 36.437664, 33.621742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.020027, 36.291939, 34.330517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819710, 36.024899, 34.110146>,  <46.699520, 35.864674, 33.977924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819710, 36.024899, 34.110146>,  <47.020027, 36.291939, 34.330517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.819710, 36.024899, 34.110146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554054, -0.736248, 0.388539,
		-0.665005, -0.110665, 0.738594,
		-0.500791, -0.667601, -0.550923,
		46.669472, 35.824619, 33.944870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963299, 35.720566, 34.759773>,  <47.020027, 36.291939, 34.330517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963299, 35.720566, 34.759773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.890736, 35.576103, 34.393898>,  <46.847198, 35.489426, 34.174374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.890736, 35.576103, 34.393898>,  <46.963299, 35.720566, 34.759773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.890736, 35.576103, 34.393898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529873, -0.819456, 0.218463,
		-0.828448, -0.445039, 0.340022,
		-0.181408, -0.361154, -0.914691,
		46.836311, 35.467758, 34.119492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.519348, 35.353981, 34.361732>,  <46.963299, 35.720566, 34.759773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.519348, 35.353981, 34.361732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.440762, 34.979832, 34.479359>,  <47.393612, 34.755341, 34.549934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.440762, 34.979832, 34.479359>,  <47.519348, 35.353981, 34.361732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.440762, 34.979832, 34.479359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970173, -0.142007, 0.196463,
		-0.142007, 0.323894, 0.935375,
		-0.196463, -0.935375, 0.294067,
		47.381824, 34.699219, 34.567577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.721489, 35.257313, 35.063004>,  <47.519348, 35.353981, 34.361732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.721489, 35.257313, 35.063004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707615, 34.877647, 34.937851>,  <47.699291, 34.649849, 34.862759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707615, 34.877647, 34.937851>,  <47.721489, 35.257313, 35.063004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.707615, 34.877647, 34.937851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912700, -0.157624, 0.377007,
		-0.407157, -0.272487, 0.871765,
		-0.034681, -0.949160, -0.312877,
		47.697212, 34.592899, 34.843987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.393707, 37.046860, 45.515072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.003990, 37.129044, 45.478127>,  <37.770161, 37.178356, 45.455959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.003990, 37.129044, 45.478127>,  <38.393707, 37.046860, 45.515072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003990, 37.129044, 45.478127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063556, -0.142657, -0.987730,
		-0.216119, -0.968212, 0.125932,
		-0.974296, 0.205464, -0.092366,
		37.711700, 37.190681, 45.450417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209000, 36.526485, 45.201351>,  <38.393707, 37.046860, 45.515072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209000, 36.526485, 45.201351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.886379, 36.748119, 45.118912>,  <37.692806, 36.881100, 45.069450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.886379, 36.748119, 45.118912>,  <38.209000, 36.526485, 45.201351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886379, 36.748119, 45.118912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117942, -0.190800, -0.974518,
		-0.579286, -0.810302, 0.088540,
		-0.806547, 0.554081, -0.206096,
		37.644417, 36.914345, 45.057083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767132, 36.336758, 44.620472>,  <38.209000, 36.526485, 45.201351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767132, 36.336758, 44.620472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.688694, 36.728539, 44.639351>,  <37.641632, 36.963608, 44.650677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.688694, 36.728539, 44.639351>,  <37.767132, 36.336758, 44.620472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688694, 36.728539, 44.639351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017957, 0.044534, -0.998846,
		-0.980421, -0.196715, 0.008855,
		-0.196094, 0.979449, 0.047194,
		37.629868, 37.022373, 44.653507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100349, 36.363007, 44.216724>,  <37.767132, 36.336758, 44.620472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100349, 36.363007, 44.216724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278896, 36.720932, 44.219799>,  <37.386024, 36.935688, 44.221642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278896, 36.720932, 44.219799>,  <37.100349, 36.363007, 44.216724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278896, 36.720932, 44.219799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154526, 0.085536, -0.984279,
		-0.881405, 0.438166, 0.176453,
		0.446371, 0.894815, 0.007684,
		37.412807, 36.989376, 44.222103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821266, 36.709026, 43.704685>,  <37.100349, 36.363007, 44.216724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821266, 36.709026, 43.704685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160255, 36.916092, 43.751717>,  <37.363647, 37.040329, 43.779934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160255, 36.916092, 43.751717>,  <36.821266, 36.709026, 43.704685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160255, 36.916092, 43.751717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002206, 0.218048, -0.975935,
		-0.530840, 0.827334, 0.183647,
		0.847469, 0.517661, 0.117574,
		37.414497, 37.071388, 43.786987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691986, 37.286236, 43.345074>,  <36.821266, 36.709026, 43.704685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691986, 37.286236, 43.345074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091145, 37.263920, 43.358276>,  <37.330639, 37.250530, 43.366199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091145, 37.263920, 43.358276>,  <36.691986, 37.286236, 43.345074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091145, 37.263920, 43.358276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048226, 0.298720, -0.953121,
		0.043314, 0.952709, 0.300782,
		0.997897, -0.055789, 0.033007,
		37.390514, 37.247185, 43.368179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949669, 37.823917, 42.968868>,  <36.691986, 37.286236, 43.345074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949669, 37.823917, 42.968868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278648, 37.596535, 42.977200>,  <37.476036, 37.460106, 42.982201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278648, 37.596535, 42.977200>,  <36.949669, 37.823917, 42.968868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278648, 37.596535, 42.977200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142189, 0.169988, -0.975134,
		0.550778, 0.804962, 0.220635,
		0.822451, -0.568454, 0.020832,
		37.525383, 37.425999, 42.983448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550068, 38.209942, 42.775272>,  <36.949669, 37.823917, 42.968868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550068, 38.209942, 42.775272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644215, 37.833576, 42.677887>,  <37.700703, 37.607758, 42.619453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644215, 37.833576, 42.677887>,  <37.550068, 38.209942, 42.775272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644215, 37.833576, 42.677887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121051, 0.276935, -0.953233,
		0.964338, 0.194891, 0.179081,
		0.235370, -0.940917, -0.243467,
		37.714825, 37.551300, 42.604847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890224, 38.282825, 42.213078>,  <37.550068, 38.209942, 42.775272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890224, 38.282825, 42.213078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.842442, 37.885841, 42.202114>,  <37.813774, 37.647652, 42.195534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.842442, 37.885841, 42.202114>,  <37.890224, 38.282825, 42.213078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842442, 37.885841, 42.202114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235708, -0.001527, -0.971823,
		0.964455, -0.122550, 0.234114,
		-0.119454, -0.992461, -0.027413,
		37.806606, 37.588104, 42.193890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508404, 38.003090, 41.916451>,  <37.890224, 38.282825, 42.213078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508404, 38.003090, 41.916451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233772, 37.717213, 41.863056>,  <38.068993, 37.545685, 41.831020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233772, 37.717213, 41.863056>,  <38.508404, 38.003090, 41.916451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233772, 37.717213, 41.863056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338506, -0.151749, -0.928647,
		0.643444, -0.682776, 0.346116,
		-0.686581, -0.714695, -0.133482,
		38.027798, 37.502804, 41.823013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854263, 37.462139, 41.589630>,  <38.508404, 38.003090, 41.916451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854263, 37.462139, 41.589630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.464310, 37.408367, 41.518608>,  <38.230335, 37.376102, 41.475994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.464310, 37.408367, 41.518608>,  <38.854263, 37.462139, 41.589630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464310, 37.408367, 41.518608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191692, -0.100687, -0.976277,
		0.113366, -0.985794, 0.123928,
		-0.974885, -0.134432, -0.177554,
		38.171844, 37.368038, 41.465343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819271, 36.804916, 41.209255>,  <38.854263, 37.462139, 41.589630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819271, 36.804916, 41.209255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.503773, 37.035168, 41.122959>,  <38.314476, 37.173317, 41.071182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.503773, 37.035168, 41.122959>,  <38.819271, 36.804916, 41.209255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503773, 37.035168, 41.122959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111580, -0.211061, -0.971084,
		-0.604514, -0.790006, 0.102244,
		-0.788741, 0.575625, -0.215738,
		38.267151, 37.207855, 41.058239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473820, 36.572960, 40.638744>,  <38.819271, 36.804916, 41.209255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473820, 36.572960, 40.638744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.332466, 36.947113, 40.633289>,  <38.247654, 37.171604, 40.630016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.332466, 36.947113, 40.633289>,  <38.473820, 36.572960, 40.638744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332466, 36.947113, 40.633289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057275, 0.007082, -0.998334,
		-0.933725, -0.353572, -0.056077,
		-0.353380, 0.935381, -0.013638,
		38.226452, 37.227726, 40.629196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941952, 36.533661, 40.142708>,  <38.473820, 36.572960, 40.638744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941952, 36.533661, 40.142708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021839, 36.923332, 40.184818>,  <38.069771, 37.157135, 40.210083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021839, 36.923332, 40.184818>,  <37.941952, 36.533661, 40.142708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021839, 36.923332, 40.184818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013843, 0.104623, -0.994416,
		-0.979756, 0.200061, 0.007410,
		0.199719, 0.974182, 0.105274,
		38.081757, 37.215588, 40.216400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589058, 36.835159, 39.547119>,  <37.941952, 36.533661, 40.142708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589058, 36.835159, 39.547119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.831093, 37.129208, 39.669415>,  <37.976315, 37.305637, 39.742794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.831093, 37.129208, 39.669415>,  <37.589058, 36.835159, 39.547119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831093, 37.129208, 39.669415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113499, 0.300451, -0.947020,
		-0.788031, 0.607727, 0.098363,
		0.605083, 0.735117, 0.305741,
		38.012619, 37.349743, 39.761135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487129, 37.538811, 39.083622>,  <37.589058, 36.835159, 39.547119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487129, 37.538811, 39.083622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853951, 37.571289, 39.239788>,  <38.074043, 37.590775, 39.333488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853951, 37.571289, 39.239788>,  <37.487129, 37.538811, 39.083622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853951, 37.571289, 39.239788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322108, 0.426356, -0.845262,
		-0.235087, 0.900904, 0.364837,
		0.917050, 0.081193, 0.390419,
		38.129066, 37.595646, 39.356915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693504, 38.101231, 38.770283>,  <37.487129, 37.538811, 39.083622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693504, 38.101231, 38.770283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014397, 37.906723, 38.908829>,  <38.206932, 37.790020, 38.991959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014397, 37.906723, 38.908829>,  <37.693504, 38.101231, 38.770283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014397, 37.906723, 38.908829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501130, 0.233128, -0.833379,
		0.324499, 0.842136, 0.430707,
		0.802228, -0.486270, 0.346369,
		38.255066, 37.760841, 39.012741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175636, 38.483536, 38.450069>,  <37.693504, 38.101231, 38.770283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175636, 38.483536, 38.450069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349819, 38.134781, 38.539688>,  <38.454327, 37.925529, 38.593460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349819, 38.134781, 38.539688>,  <38.175636, 38.483536, 38.450069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349819, 38.134781, 38.539688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469919, 0.007881, -0.882674,
		0.767825, 0.489647, 0.413147,
		0.435455, -0.871885, 0.224043,
		38.480457, 37.873215, 38.606899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847843, 38.620274, 38.288067>,  <38.175636, 38.483536, 38.450069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847843, 38.620274, 38.288067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.865185, 38.220913, 38.302532>,  <38.875591, 37.981297, 38.311211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.865185, 38.220913, 38.302532>,  <38.847843, 38.620274, 38.288067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865185, 38.220913, 38.302532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621639, -0.001375, -0.783302,
		0.782103, 0.056441, 0.620588,
		0.043357, -0.998405, 0.036161,
		38.878193, 37.921391, 38.313381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566982, 38.461166, 38.233681>,  <38.847843, 38.620274, 38.288067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566982, 38.461166, 38.233681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.384151, 38.117279, 38.142487>,  <39.274452, 37.910946, 38.087772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.384151, 38.117279, 38.142487>,  <39.566982, 38.461166, 38.233681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384151, 38.117279, 38.142487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665413, -0.160443, -0.729030,
		0.590179, -0.484923, 0.645398,
		-0.457072, -0.859714, -0.227984,
		39.247028, 37.859364, 38.074093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997486, 38.011395, 38.195484>,  <39.566982, 38.461166, 38.233681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997486, 38.011395, 38.195484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.711559, 37.856426, 37.962608>,  <39.540005, 37.763447, 37.822884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.711559, 37.856426, 37.962608>,  <39.997486, 38.011395, 38.195484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711559, 37.856426, 37.962608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695101, -0.302422, -0.652208,
		0.076610, -0.870890, 0.485470,
		-0.714818, -0.387417, -0.582189,
		39.497112, 37.740200, 37.787952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115986, 37.155598, 37.939087>,  <39.997486, 38.011395, 38.195484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115986, 37.155598, 37.939087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915821, 37.389877, 37.684040>,  <39.795723, 37.530445, 37.531013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915821, 37.389877, 37.684040>,  <40.115986, 37.155598, 37.939087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915821, 37.389877, 37.684040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569727, -0.331772, -0.751889,
		-0.651922, -0.739518, -0.167665,
		-0.500409, 0.585696, -0.637613,
		39.765697, 37.565586, 37.492756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830994, 37.141296, 37.864220>,  <40.115986, 37.155598, 37.939087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830994, 37.141296, 37.864220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.180496, 36.955563, 37.806332>,  <41.390198, 36.844124, 37.771599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.180496, 36.955563, 37.806332>,  <40.830994, 37.141296, 37.864220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180496, 36.955563, 37.806332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119425, -0.083607, 0.989317,
		-0.471473, -0.881705, -0.017598,
		0.873757, -0.464335, -0.144716,
		41.442623, 36.816261, 37.762917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824051, 36.584854, 38.283318>,  <40.830994, 37.141296, 37.864220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824051, 36.584854, 38.283318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.214867, 36.618061, 38.204826>,  <41.449356, 36.637985, 38.157730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.214867, 36.618061, 38.204826>,  <40.824051, 36.584854, 38.283318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214867, 36.618061, 38.204826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208779, -0.189107, 0.959505,
		0.042548, -0.978441, -0.202097,
		0.977037, 0.083019, -0.196232,
		41.507977, 36.642967, 38.145958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238422, 36.010464, 38.484684>,  <40.824051, 36.584854, 38.283318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238422, 36.010464, 38.484684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.516953, 36.297520, 38.489029>,  <41.684071, 36.469753, 38.491634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.516953, 36.297520, 38.489029>,  <41.238422, 36.010464, 38.484684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516953, 36.297520, 38.489029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206446, -0.214759, 0.954599,
		0.687390, -0.662473, -0.297697,
		0.696329, 0.717640, 0.010859,
		41.725853, 36.512814, 38.492287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734814, 35.627201, 38.812618>,  <41.238422, 36.010464, 38.484684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734814, 35.627201, 38.812618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.799198, 36.021637, 38.829159>,  <41.837830, 36.258301, 38.839085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.799198, 36.021637, 38.829159>,  <41.734814, 35.627201, 38.812618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799198, 36.021637, 38.829159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044043, -0.049037, 0.997826,
		0.985978, -0.158787, -0.051323,
		0.160958, 0.986094, 0.041356,
		41.847485, 36.317467, 38.841564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200977, 35.711395, 39.383076>,  <41.734814, 35.627201, 38.812618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200977, 35.711395, 39.383076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.071369, 36.084442, 39.319527>,  <41.993603, 36.308270, 39.281399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.071369, 36.084442, 39.319527>,  <42.200977, 35.711395, 39.383076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071369, 36.084442, 39.319527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027371, 0.177100, 0.983812,
		0.945653, 0.314429, -0.082911,
		-0.324023, 0.932615, -0.158869,
		41.974163, 36.364227, 39.271866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717674, 36.231125, 39.552593>,  <42.200977, 35.711395, 39.383076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717674, 36.231125, 39.552593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.376621, 36.437038, 39.588417>,  <42.171989, 36.560585, 39.609909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.376621, 36.437038, 39.588417>,  <42.717674, 36.231125, 39.552593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376621, 36.437038, 39.588417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108556, 0.006862, 0.994066,
		0.511110, 0.857295, -0.061733,
		-0.852632, 0.514779, 0.089558,
		42.120831, 36.591473, 39.615284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774452, 36.711304, 40.083622>,  <42.717674, 36.231125, 39.552593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774452, 36.711304, 40.083622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.375469, 36.708111, 40.055321>,  <42.136078, 36.706196, 40.038342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.375469, 36.708111, 40.055321>,  <42.774452, 36.711304, 40.083622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375469, 36.708111, 40.055321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068946, -0.139836, 0.987771,
		-0.017782, 0.990143, 0.138931,
		-0.997462, -0.007986, -0.070753,
		42.076229, 36.705715, 40.034096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527622, 37.078308, 40.698246>,  <42.774452, 36.711304, 40.083622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527622, 37.078308, 40.698246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.195305, 36.882870, 40.591614>,  <41.995914, 36.765606, 40.527634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.195305, 36.882870, 40.591614>,  <42.527622, 37.078308, 40.698246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195305, 36.882870, 40.591614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282413, -0.042679, 0.958343,
		-0.479617, 0.871468, -0.102527,
		-0.830789, -0.488593, -0.266583,
		41.946068, 36.736290, 40.511639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984756, 37.486050, 40.941738>,  <42.527622, 37.078308, 40.698246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984756, 37.486050, 40.941738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.883049, 37.100513, 40.909863>,  <41.822025, 36.869190, 40.890736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.883049, 37.100513, 40.909863>,  <41.984756, 37.486050, 40.941738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883049, 37.100513, 40.909863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268013, -0.008947, 0.963374,
		-0.929255, 0.266317, -0.256048,
		-0.254272, -0.963844, -0.079691,
		41.806767, 36.811359, 40.885956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363857, 37.531441, 41.280273>,  <41.984756, 37.486050, 40.941738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363857, 37.531441, 41.280273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.481525, 37.149658, 41.260384>,  <41.552124, 36.920589, 41.248451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.481525, 37.149658, 41.260384>,  <41.363857, 37.531441, 41.280273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481525, 37.149658, 41.260384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256958, -0.129088, 0.957762,
		-0.920564, -0.268966, -0.283230,
		0.294167, -0.954459, -0.049721,
		41.569775, 36.863319, 41.245468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021393, 37.216194, 41.787060>,  <41.363857, 37.531441, 41.280273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021393, 37.216194, 41.787060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.282070, 36.923454, 41.707359>,  <41.438477, 36.747810, 41.659538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.282070, 36.923454, 41.707359>,  <41.021393, 37.216194, 41.787060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282070, 36.923454, 41.707359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023962, -0.282425, 0.958990,
		-0.758106, -0.620191, -0.201590,
		0.651691, -0.731846, -0.199247,
		41.477577, 36.703899, 41.647587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646370, 36.607529, 41.931957>,  <41.021393, 37.216194, 41.787060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646370, 36.607529, 41.931957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.043545, 36.582870, 41.972511>,  <41.281849, 36.568077, 41.996845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.043545, 36.582870, 41.972511>,  <40.646370, 36.607529, 41.931957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043545, 36.582870, 41.972511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115084, -0.292273, 0.949385,
		-0.028891, -0.954346, -0.297302,
		0.992935, -0.061644, 0.101386,
		41.341427, 36.564377, 42.002926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911587, 35.984016, 42.137589>,  <40.646370, 36.607529, 41.931957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911587, 35.984016, 42.137589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.165596, 36.263359, 42.269676>,  <41.318001, 36.430965, 42.348930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.165596, 36.263359, 42.269676>,  <40.911587, 35.984016, 42.137589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165596, 36.263359, 42.269676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244374, -0.223910, 0.943475,
		0.732820, -0.679827, 0.028471,
		0.635025, 0.698355, 0.330218,
		41.356102, 36.472866, 42.368740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229992, 35.600315, 42.641273>,  <40.911587, 35.984016, 42.137589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229992, 35.600315, 42.641273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.320137, 35.984226, 42.708244>,  <41.374226, 36.214573, 42.748428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.320137, 35.984226, 42.708244>,  <41.229992, 35.600315, 42.641273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320137, 35.984226, 42.708244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142524, -0.137527, 0.980191,
		0.963794, -0.244762, 0.105798,
		0.225364, 0.959780, 0.167432,
		41.387745, 36.272160, 42.758472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619541, 35.553638, 43.290485>,  <41.229992, 35.600315, 42.641273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619541, 35.553638, 43.290485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.473080, 35.924744, 43.261692>,  <41.385204, 36.147408, 43.244415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.473080, 35.924744, 43.261692>,  <41.619541, 35.553638, 43.290485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473080, 35.924744, 43.261692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251515, -0.024189, 0.967551,
		0.895921, 0.372374, 0.242205,
		-0.366149, 0.927768, -0.071986,
		41.363235, 36.203075, 43.240097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812630, 35.994530, 43.871567>,  <41.619541, 35.553638, 43.290485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812630, 35.994530, 43.871567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.517708, 36.215565, 43.716118>,  <41.340755, 36.348186, 43.622849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.517708, 36.215565, 43.716118>,  <41.812630, 35.994530, 43.871567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517708, 36.215565, 43.716118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456060, 0.017256, 0.889782,
		0.498385, 0.833279, 0.239288,
		-0.737307, 0.552584, -0.388625,
		41.296516, 36.381340, 43.599529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813538, 36.532684, 44.167473>,  <41.812630, 35.994530, 43.871567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813538, 36.532684, 44.167473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.429779, 36.541111, 44.054962>,  <41.199524, 36.546165, 43.987457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.429779, 36.541111, 44.054962>,  <41.813538, 36.532684, 44.167473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429779, 36.541111, 44.054962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273368, 0.176247, 0.945625,
		0.069495, 0.984120, -0.163331,
		-0.959396, 0.021067, -0.281275,
		41.141960, 36.547432, 43.970581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418755, 37.120262, 44.598679>,  <41.813538, 36.532684, 44.167473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418755, 37.120262, 44.598679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.117279, 36.883453, 44.484509>,  <40.936394, 36.741367, 44.416004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.117279, 36.883453, 44.484509>,  <41.418755, 37.120262, 44.598679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117279, 36.883453, 44.484509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459455, 0.164061, 0.872918,
		-0.469958, 0.789046, -0.395658,
		-0.753684, -0.592022, -0.285429,
		40.891174, 36.705845, 44.398880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.812954, 37.378757, 44.900032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695217, 37.010727, 44.796631>,  <40.624573, 36.789909, 44.734589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695217, 37.010727, 44.796631>,  <40.812954, 37.378757, 44.900032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695217, 37.010727, 44.796631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468184, -0.096988, 0.878292,
		-0.833166, 0.379550, -0.402215,
		-0.294345, -0.920073, -0.258506,
		40.606915, 36.734703, 44.719078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038586, 37.270973, 44.909718>,  <40.812954, 37.378757, 44.900032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038586, 37.270973, 44.909718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.205479, 36.911213, 44.961864>,  <40.305614, 36.695358, 44.993153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.205479, 36.911213, 44.961864>,  <40.038586, 37.270973, 44.909718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205479, 36.911213, 44.961864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529093, -0.123757, 0.839491,
		-0.738905, -0.419238, -0.527502,
		0.417229, -0.899402, 0.130371,
		40.330647, 36.641392, 45.000977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440804, 37.059120, 45.306210>,  <40.038586, 37.270973, 44.909718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440804, 37.059120, 45.306210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.742001, 36.800888, 45.357182>,  <39.922718, 36.645950, 45.387764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.742001, 36.800888, 45.357182>,  <39.440804, 37.059120, 45.306210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742001, 36.800888, 45.357182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420279, -0.322807, 0.848034,
		-0.506336, -0.692116, -0.514392,
		0.752988, -0.645578, 0.127433,
		39.967896, 36.607216, 45.395412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100544, 36.495846, 45.503162>,  <39.440804, 37.059120, 45.306210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100544, 36.495846, 45.503162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.484097, 36.421848, 45.589249>,  <39.714230, 36.377449, 45.640900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.484097, 36.421848, 45.589249>,  <39.100544, 36.495846, 45.503162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484097, 36.421848, 45.589249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279348, -0.481528, 0.830720,
		-0.050049, -0.856684, -0.513408,
		0.958885, -0.184996, 0.215212,
		39.771763, 36.366348, 45.653812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179596, 35.788307, 45.621288>,  <39.100544, 36.495846, 45.503162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179596, 35.788307, 45.621288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.477081, 35.972191, 45.815422>,  <39.655575, 36.082520, 45.931904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.477081, 35.972191, 45.815422>,  <39.179596, 35.788307, 45.621288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477081, 35.972191, 45.815422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368750, -0.323454, 0.871436,
		0.557593, -0.827069, -0.071040,
		0.743716, 0.459711, 0.485337,
		39.700195, 36.110104, 45.961021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491539, 35.304852, 46.174164>,  <39.179596, 35.788307, 45.621288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491539, 35.304852, 46.174164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.625420, 35.663036, 46.291553>,  <39.705750, 35.877945, 46.361988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.625420, 35.663036, 46.291553>,  <39.491539, 35.304852, 46.174164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625420, 35.663036, 46.291553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133477, -0.263242, 0.955451,
		0.932822, -0.358965, 0.031415,
		0.334704, 0.895460, 0.293472,
		39.725830, 35.931675, 46.379597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900528, 35.227417, 46.921387>,  <39.491539, 35.304852, 46.174164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900528, 35.227417, 46.921387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.803894, 35.615540, 46.916683>,  <39.745914, 35.848415, 46.913860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.803894, 35.615540, 46.916683>,  <39.900528, 35.227417, 46.921387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803894, 35.615540, 46.916683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200247, -0.037994, 0.979008,
		0.949494, 0.238865, 0.203481,
		-0.241582, 0.970309, -0.011757,
		39.731419, 35.906631, 46.913155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373013, 35.497807, 47.482433>,  <39.900528, 35.227417, 46.921387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373013, 35.497807, 47.482433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.080040, 35.764408, 47.426838>,  <39.904255, 35.924370, 47.393482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.080040, 35.764408, 47.426838>,  <40.373013, 35.497807, 47.482433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080040, 35.764408, 47.426838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170496, 0.018083, 0.985192,
		0.659149, 0.745282, 0.100392,
		-0.732430, 0.666505, -0.138987,
		39.860310, 35.964359, 47.385143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477264, 36.165054, 47.936100>,  <40.373013, 35.497807, 47.482433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477264, 36.165054, 47.936100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.097313, 36.103783, 47.827091>,  <39.869343, 36.067020, 47.761684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.097313, 36.103783, 47.827091>,  <40.477264, 36.165054, 47.936100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097313, 36.103783, 47.827091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293359, 0.135453, 0.946358,
		-0.108046, 0.978871, -0.173600,
		-0.949877, -0.153177, -0.272525,
		39.812351, 36.057831, 47.745335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127968, 36.644642, 48.170033>,  <40.477264, 36.165054, 47.936100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127968, 36.644642, 48.170033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.833656, 36.382256, 48.102703>,  <39.657070, 36.224823, 48.062305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.833656, 36.382256, 48.102703>,  <40.127968, 36.644642, 48.170033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833656, 36.382256, 48.102703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270694, 0.057046, 0.960974,
		-0.620764, 0.752631, -0.219540,
		-0.735783, -0.655967, -0.168321,
		39.612923, 36.185467, 48.052208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600990, 36.970264, 48.521221>,  <40.127968, 36.644642, 48.170033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600990, 36.970264, 48.521221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.494389, 36.587124, 48.478352>,  <39.430428, 36.357239, 48.452629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.494389, 36.587124, 48.478352>,  <39.600990, 36.970264, 48.521221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494389, 36.587124, 48.478352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134043, -0.073280, 0.988262,
		-0.954466, 0.277747, -0.108864,
		-0.266509, -0.957855, -0.107173,
		39.414436, 36.299767, 48.446201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066456, 36.894424, 48.918633>,  <39.600990, 36.970264, 48.521221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066456, 36.894424, 48.918633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.170650, 36.512054, 48.864445>,  <39.233170, 36.282631, 48.831932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.170650, 36.512054, 48.864445>,  <39.066456, 36.894424, 48.918633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170650, 36.512054, 48.864445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128667, -0.173432, 0.976405,
		-0.956865, -0.236914, -0.168173,
		0.260490, -0.955925, -0.135468,
		39.248798, 36.225277, 48.823803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518276, 36.506573, 49.117775>,  <39.066456, 36.894424, 48.918633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518276, 36.506573, 49.117775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840332, 36.270851, 49.144516>,  <39.033566, 36.129417, 49.160561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840332, 36.270851, 49.144516>,  <38.518276, 36.506573, 49.117775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840332, 36.270851, 49.144516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223666, -0.197306, 0.954486,
		-0.549290, -0.783450, -0.290666,
		0.805143, -0.589302, 0.066853,
		39.081875, 36.094059, 49.164574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372906, 35.945393, 49.465725>,  <38.518276, 36.506573, 49.117775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372906, 35.945393, 49.465725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.769184, 35.923927, 49.515762>,  <39.006950, 35.911049, 49.545784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.769184, 35.923927, 49.515762>,  <38.372906, 35.945393, 49.465725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769184, 35.923927, 49.515762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135837, -0.331130, 0.933757,
		-0.008684, -0.942058, -0.335337,
		0.990693, -0.053660, 0.125091,
		39.066391, 35.907829, 49.553291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373642, 35.458981, 49.877125>,  <38.372906, 35.945393, 49.465725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373642, 35.458981, 49.877125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.742725, 35.609047, 49.912582>,  <38.964176, 35.699085, 49.933857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.742725, 35.609047, 49.912582>,  <38.373642, 35.458981, 49.877125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742725, 35.609047, 49.912582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084745, -0.421737, 0.902749,
		0.376063, -0.825464, -0.420934,
		0.922710, 0.375163, 0.088645,
		39.019539, 35.721596, 49.939175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616699, 35.048096, 50.352657>,  <38.373642, 35.458981, 49.877125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616699, 35.048096, 50.352657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914169, 35.314415, 50.376839>,  <39.092651, 35.474205, 50.391346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914169, 35.314415, 50.376839>,  <38.616699, 35.048096, 50.352657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914169, 35.314415, 50.376839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114055, -0.215456, 0.969830,
		0.658737, -0.714346, -0.236168,
		0.743678, 0.665799, 0.060454,
		39.137272, 35.514156, 50.394974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984074, 34.793709, 50.793785>,  <38.616699, 35.048096, 50.352657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984074, 34.793709, 50.793785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.093784, 35.178242, 50.803638>,  <39.159611, 35.408962, 50.809551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.093784, 35.178242, 50.803638>,  <38.984074, 34.793709, 50.793785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093784, 35.178242, 50.803638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211919, -0.085407, 0.973548,
		0.938010, -0.261800, -0.227150,
		0.274275, 0.961336, 0.024632,
		39.176067, 35.466644, 50.811028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604847, 34.798939, 51.233284>,  <38.984074, 34.793709, 50.793785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604847, 34.798939, 51.233284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388855, 35.135063, 51.214104>,  <39.259258, 35.336739, 51.202595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388855, 35.135063, 51.214104>,  <39.604847, 34.798939, 51.233284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388855, 35.135063, 51.214104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123334, -0.022645, 0.992107,
		0.832590, 0.541635, 0.115866,
		-0.539984, 0.840309, -0.047947,
		39.226860, 35.387157, 51.199718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714317, 35.006615, 51.839672>,  <39.604847, 34.798939, 51.233284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714317, 35.006615, 51.839672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398518, 35.238075, 51.757843>,  <39.209038, 35.376953, 51.708748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398518, 35.238075, 51.757843>,  <39.714317, 35.006615, 51.839672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398518, 35.238075, 51.757843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229171, 0.031263, 0.972884,
		0.569357, 0.814975, 0.107928,
		-0.789502, 0.578653, -0.204569,
		39.161667, 35.411671, 51.696472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779167, 35.716530, 52.238884>,  <39.714317, 35.006615, 51.839672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779167, 35.716530, 52.238884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.395226, 35.684250, 52.131428>,  <39.164860, 35.664883, 52.066956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.395226, 35.684250, 52.131428>,  <39.779167, 35.716530, 52.238884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395226, 35.684250, 52.131428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278692, 0.165938, 0.945936,
		-0.031759, 0.982829, -0.181766,
		-0.959855, -0.080699, -0.268636,
		39.107269, 35.660042, 52.050838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483521, 36.280437, 52.531929>,  <39.779167, 35.716530, 52.238884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483521, 36.280437, 52.531929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.226303, 35.983437, 52.456886>,  <39.071972, 35.805237, 52.411861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.226303, 35.983437, 52.456886>,  <39.483521, 36.280437, 52.531929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226303, 35.983437, 52.456886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214260, -0.060760, 0.974885,
		-0.735249, 0.667086, -0.120017,
		-0.643040, -0.742498, -0.187604,
		39.033390, 35.760689, 52.400604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912830, 36.342434, 52.997242>,  <39.483521, 36.280437, 52.531929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912830, 36.342434, 52.997242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849838, 35.965691, 52.878513>,  <38.812042, 35.739643, 52.807278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849838, 35.965691, 52.878513>,  <38.912830, 36.342434, 52.997242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849838, 35.965691, 52.878513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084612, -0.286598, 0.954307,
		-0.983891, 0.175396, -0.034559,
		-0.157477, -0.941859, -0.296822,
		38.802593, 35.683132, 52.789467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262665, 36.057281, 53.275169>,  <38.912830, 36.342434, 52.997242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262665, 36.057281, 53.275169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525150, 35.765533, 53.197815>,  <38.682644, 35.590485, 53.151402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.525150, 35.765533, 53.197815>,  <38.262665, 36.057281, 53.275169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525150, 35.765533, 53.197815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002166, -0.258103, 0.966115,
		-0.754570, -0.633561, -0.170951,
		0.656216, -0.729372, -0.193385,
		38.722015, 35.546722, 53.139801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652744, 35.546932, 53.137764>,  <38.262665, 36.057281, 53.275169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652744, 35.546932, 53.137764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.319878, 35.327328, 53.168953>,  <37.120155, 35.195564, 53.187668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.319878, 35.327328, 53.168953>,  <37.652744, 35.546932, 53.137764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319878, 35.327328, 53.168953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286733, 0.305668, -0.907938,
		0.474633, -0.777916, -0.411787,
		-0.832170, -0.549011, 0.077974,
		37.070225, 35.162624, 53.192345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491924, 34.983292, 52.596748>,  <37.652744, 35.546932, 53.137764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491924, 34.983292, 52.596748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148148, 35.106609, 52.759876>,  <36.941883, 35.180599, 52.857754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148148, 35.106609, 52.759876>,  <37.491924, 34.983292, 52.596748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148148, 35.106609, 52.759876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356541, 0.210254, -0.910314,
		-0.366390, -0.927765, -0.070781,
		-0.859440, 0.308294, 0.407821,
		36.890316, 35.199097, 52.882221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035255, 34.709015, 52.118618>,  <37.491924, 34.983292, 52.596748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035255, 34.709015, 52.118618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.839439, 35.003803, 52.305050>,  <36.721951, 35.180676, 52.416908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.839439, 35.003803, 52.305050>,  <37.035255, 34.709015, 52.118618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839439, 35.003803, 52.305050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198595, 0.426227, -0.882548,
		-0.849064, -0.524604, -0.062298,
		-0.489541, 0.736968, 0.466077,
		36.692577, 35.224892, 52.444874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479935, 34.927837, 51.598087>,  <37.035255, 34.709015, 52.118618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479935, 34.927837, 51.598087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509502, 35.227478, 51.861412>,  <36.527245, 35.407265, 52.019405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509502, 35.227478, 51.861412>,  <36.479935, 34.927837, 51.598087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509502, 35.227478, 51.861412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178909, 0.659371, -0.730220,
		-0.981085, -0.063801, 0.182763,
		0.073920, 0.749106, 0.658313,
		36.531677, 35.452209, 52.058907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773659, 35.304581, 51.579411>,  <36.479935, 34.927837, 51.598087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773659, 35.304581, 51.579411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049915, 35.543999, 51.741772>,  <36.215668, 35.687649, 51.839188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049915, 35.543999, 51.741772>,  <35.773659, 35.304581, 51.579411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049915, 35.543999, 51.741772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264297, 0.731334, -0.628727,
		-0.673175, 0.326944, 0.663282,
		0.690639, 0.598546, 0.405906,
		36.257107, 35.723564, 51.863544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513435, 36.072765, 51.522110>,  <35.773659, 35.304581, 51.579411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513435, 36.072765, 51.522110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.908733, 36.102158, 51.575722>,  <36.145912, 36.119793, 51.607891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.908733, 36.102158, 51.575722>,  <35.513435, 36.072765, 51.522110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908733, 36.102158, 51.575722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094939, 0.392135, -0.914995,
		-0.119795, 0.916968, 0.380551,
		0.988249, 0.073482, 0.134031,
		36.205208, 36.124203, 51.615932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653709, 36.784328, 51.367981>,  <35.513435, 36.072765, 51.522110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653709, 36.784328, 51.367981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.979469, 36.557892, 51.316910>,  <36.174923, 36.422031, 51.286266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.979469, 36.557892, 51.316910>,  <35.653709, 36.784328, 51.367981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979469, 36.557892, 51.316910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008861, 0.232118, -0.972647,
		0.580243, 0.790988, 0.194052,
		0.814395, -0.566091, -0.127676,
		36.223789, 36.388065, 51.278606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977413, 37.135399, 50.828064>,  <35.653709, 36.784328, 51.367981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977413, 37.135399, 50.828064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.210594, 36.811596, 50.855980>,  <36.350502, 36.617313, 50.872730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.210594, 36.811596, 50.855980>,  <35.977413, 37.135399, 50.828064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210594, 36.811596, 50.855980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195213, 0.056164, -0.979151,
		0.788706, 0.584424, 0.190766,
		0.582954, -0.809503, 0.069790,
		36.385479, 36.568745, 50.876919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316677, 37.293018, 50.258205>,  <35.977413, 37.135399, 50.828064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316677, 37.293018, 50.258205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.390064, 36.905556, 50.325191>,  <36.434097, 36.673077, 50.365383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.390064, 36.905556, 50.325191>,  <36.316677, 37.293018, 50.258205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390064, 36.905556, 50.325191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262501, -0.115890, -0.957947,
		0.947329, 0.219715, 0.233010,
		0.183472, -0.968656, 0.167461,
		36.445107, 36.614960, 50.375431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978027, 37.086143, 50.040276>,  <36.316677, 37.293018, 50.258205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978027, 37.086143, 50.040276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.755981, 36.753433, 50.039387>,  <36.622753, 36.553806, 50.038853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.755981, 36.753433, 50.039387>,  <36.978027, 37.086143, 50.040276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755981, 36.753433, 50.039387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342627, -0.226227, -0.911827,
		0.757930, -0.506927, 0.410569,
		-0.555111, -0.831773, -0.002222,
		36.589447, 36.503902, 50.038719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401249, 36.641487, 49.851807>,  <36.978027, 37.086143, 50.040276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401249, 36.641487, 49.851807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.049015, 36.483265, 49.747414>,  <36.837677, 36.388332, 49.684776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.049015, 36.483265, 49.747414>,  <37.401249, 36.641487, 49.851807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049015, 36.483265, 49.747414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301414, -0.042519, -0.952545,
		0.365689, -0.917457, 0.156668,
		-0.880580, -0.395557, -0.260985,
		36.784840, 36.364597, 49.669117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599854, 36.272903, 49.306549>,  <37.401249, 36.641487, 49.851807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599854, 36.272903, 49.306549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202805, 36.251762, 49.262897>,  <36.964577, 36.239079, 49.236706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202805, 36.251762, 49.262897>,  <37.599854, 36.272903, 49.306549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202805, 36.251762, 49.262897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109723, -0.008376, -0.993927,
		0.051612, -0.998568, 0.014113,
		-0.992621, -0.052847, -0.109134,
		36.905018, 36.235909, 49.230156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427650, 35.692528, 48.868004>,  <37.599854, 36.272903, 49.306549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427650, 35.692528, 48.868004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138229, 35.967884, 48.847664>,  <36.964577, 36.133099, 48.835461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138229, 35.967884, 48.847664>,  <37.427650, 35.692528, 48.868004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138229, 35.967884, 48.847664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054444, -0.016522, -0.998380,
		-0.688121, -0.725147, -0.025524,
		-0.723551, 0.688396, -0.050849,
		36.921165, 36.174404, 48.832409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127232, 35.497223, 48.262661>,  <37.427650, 35.692528, 48.868004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127232, 35.497223, 48.262661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.016621, 35.877701, 48.317455>,  <36.950253, 36.105988, 48.350330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.016621, 35.877701, 48.317455>,  <37.127232, 35.497223, 48.262661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016621, 35.877701, 48.317455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160581, 0.186275, -0.969286,
		-0.947495, -0.246037, -0.204254,
		-0.276528, 0.951192, 0.136986,
		36.933662, 36.163059, 48.358551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929581, 35.721359, 47.559345>,  <37.127232, 35.497223, 48.262661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929581, 35.721359, 47.559345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955318, 36.074764, 47.744930>,  <36.970760, 36.286808, 47.856281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955318, 36.074764, 47.744930>,  <36.929581, 35.721359, 47.559345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955318, 36.074764, 47.744930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074010, 0.459424, -0.885128,
		-0.995180, 0.091288, -0.035829,
		0.064341, 0.883513, 0.463966,
		36.974621, 36.339817, 47.884121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489883, 36.195095, 47.189659>,  <36.929581, 35.721359, 47.559345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489883, 36.195095, 47.189659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.778870, 36.396133, 47.379581>,  <36.952259, 36.516758, 47.493534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.778870, 36.396133, 47.379581>,  <36.489883, 36.195095, 47.189659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778870, 36.396133, 47.379581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301317, 0.389216, -0.870471,
		-0.622298, 0.771951, 0.129753,
		0.722463, 0.502595, 0.474810,
		36.995609, 36.546913, 47.522026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437752, 37.011761, 47.159920>,  <36.489883, 36.195095, 47.189659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437752, 37.011761, 47.159920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819500, 36.929489, 47.246529>,  <37.048550, 36.880127, 47.298492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819500, 36.929489, 47.246529>,  <36.437752, 37.011761, 47.159920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819500, 36.929489, 47.246529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289416, 0.458231, -0.840395,
		0.073632, 0.864709, 0.496846,
		0.954367, -0.205675, 0.216520,
		37.105812, 36.867786, 47.311485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810833, 37.694519, 47.066765>,  <36.437752, 37.011761, 47.159920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810833, 37.694519, 47.066765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082829, 37.401909, 47.046841>,  <37.246025, 37.226341, 47.034885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082829, 37.401909, 47.046841>,  <36.810833, 37.694519, 47.066765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082829, 37.401909, 47.046841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408542, 0.434412, -0.802732,
		0.608859, 0.525500, 0.594256,
		0.679988, -0.731530, -0.049807,
		37.286823, 37.182449, 47.031898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452881, 38.059956, 46.906773>,  <36.810833, 37.694519, 47.066765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452881, 38.059956, 46.906773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481617, 37.677521, 46.793114>,  <37.498859, 37.448059, 46.724918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481617, 37.677521, 46.793114>,  <37.452881, 38.059956, 46.906773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481617, 37.677521, 46.793114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289736, 0.292603, -0.911283,
		0.954406, -0.016860, 0.298033,
		0.071841, -0.956085, -0.284148,
		37.503170, 37.390694, 46.707870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977806, 38.104183, 46.323780>,  <37.452881, 38.059956, 46.906773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977806, 38.104183, 46.323780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772701, 37.761326, 46.304291>,  <37.649639, 37.555611, 46.292595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772701, 37.761326, 46.304291>,  <37.977806, 38.104183, 46.323780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772701, 37.761326, 46.304291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060606, 0.020476, -0.997952,
		0.856387, -0.514668, 0.041449,
		-0.512766, -0.857145, -0.048728,
		37.618870, 37.504181, 46.289673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326118, 37.688351, 45.862919>,  <37.977806, 38.104183, 46.323780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326118, 37.688351, 45.862919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.962479, 37.523201, 45.840729>,  <37.744293, 37.424110, 45.827415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.962479, 37.523201, 45.840729>,  <38.326118, 37.688351, 45.862919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962479, 37.523201, 45.840729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129012, -0.152418, -0.979859,
		0.396102, -0.897945, 0.191828,
		-0.909098, -0.412872, -0.055472,
		37.689751, 37.399338, 45.824085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.767887, 41.935146, 33.816875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.419670, 41.778694, 33.936321>,  <41.210739, 41.684822, 34.007988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.419670, 41.778694, 33.936321>,  <41.767887, 41.935146, 33.816875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419670, 41.778694, 33.936321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395309, -0.917242, -0.048977,
		0.293059, 0.075409, 0.953116,
		-0.870544, -0.391128, 0.298616,
		41.158508, 41.661354, 34.025906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966908, 41.450577, 34.351234>,  <41.767887, 41.935146, 33.816875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966908, 41.450577, 34.351234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.600254, 41.322651, 34.255314>,  <41.380260, 41.245895, 34.197762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.600254, 41.322651, 34.255314>,  <41.966908, 41.450577, 34.351234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600254, 41.322651, 34.255314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308492, -0.947475, 0.084399,
		-0.254194, 0.003387, 0.967147,
		-0.916634, -0.319811, -0.239797,
		41.325264, 41.226707, 34.183376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731354, 40.828800, 34.891724>,  <41.966908, 41.450577, 34.351234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731354, 40.828800, 34.891724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519123, 40.791340, 34.554745>,  <41.391785, 40.768864, 34.352558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519123, 40.791340, 34.554745>,  <41.731354, 40.828800, 34.891724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519123, 40.791340, 34.554745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261540, -0.963472, -0.057610,
		-0.806281, -0.250900, 0.535687,
		-0.530573, -0.093653, -0.842449,
		41.359951, 40.763245, 34.302010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546860, 40.197578, 34.856800>,  <41.731354, 40.828800, 34.891724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546860, 40.197578, 34.856800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466301, 40.296375, 34.477657>,  <41.417965, 40.355652, 34.250172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466301, 40.296375, 34.477657>,  <41.546860, 40.197578, 34.856800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466301, 40.296375, 34.477657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300175, -0.905563, -0.299751,
		-0.932382, -0.344891, 0.108233,
		-0.201393, 0.246993, -0.947858,
		41.405884, 40.370472, 34.193298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042759, 39.673294, 34.586468>,  <41.546860, 40.197578, 34.856800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042759, 39.673294, 34.586468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272224, 39.838360, 34.303452>,  <41.409904, 39.937401, 34.133640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.272224, 39.838360, 34.303452>,  <41.042759, 39.673294, 34.586468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272224, 39.838360, 34.303452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480736, -0.869016, -0.117068,
		-0.663176, -0.272983, -0.696905,
		0.573664, 0.412664, -0.707543,
		41.444324, 39.962158, 34.091190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026436, 39.132549, 34.197289>,  <41.042759, 39.673294, 34.586468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026436, 39.132549, 34.197289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.328274, 39.360928, 34.067917>,  <41.509377, 39.497955, 33.990295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.328274, 39.360928, 34.067917>,  <41.026436, 39.132549, 34.197289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328274, 39.360928, 34.067917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547476, -0.819510, -0.169332,
		-0.361731, -0.049291, -0.930979,
		0.754599, 0.570941, -0.323428,
		41.554653, 39.532211, 33.970890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249222, 38.788120, 33.672855>,  <41.026436, 39.132549, 34.197289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249222, 38.788120, 33.672855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.565968, 39.012959, 33.768356>,  <41.756016, 39.147861, 33.825657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.565968, 39.012959, 33.768356>,  <41.249222, 38.788120, 33.672855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565968, 39.012959, 33.768356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610685, -0.726250, -0.315633,
		-0.004022, 0.395741, -0.918354,
		0.791863, 0.562094, 0.238752,
		41.803528, 39.181587, 33.839981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664875, 38.738510, 33.087955>,  <41.249222, 38.788120, 33.672855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664875, 38.738510, 33.087955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.910881, 38.888741, 33.365284>,  <42.058487, 38.978878, 33.531681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.910881, 38.888741, 33.365284>,  <41.664875, 38.738510, 33.087955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910881, 38.888741, 33.365284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671293, -0.710672, -0.210502,
		0.413664, 0.594884, -0.689199,
		0.615018, 0.375577, 0.693321,
		42.095387, 39.001415, 33.573280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362755, 38.853985, 32.762730>,  <41.664875, 38.738510, 33.087955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362755, 38.853985, 32.762730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422592, 38.848454, 33.158192>,  <42.458496, 38.845135, 33.395470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422592, 38.848454, 33.158192>,  <42.362755, 38.853985, 32.762730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422592, 38.848454, 33.158192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668487, -0.735328, -0.111435,
		0.728523, 0.677571, -0.100759,
		0.149596, -0.013827, 0.988651,
		42.467472, 38.844307, 33.454788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185123, 38.772247, 32.972019>,  <42.362755, 38.853985, 32.762730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185123, 38.772247, 32.972019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.961151, 38.650288, 33.280178>,  <42.826767, 38.577114, 33.465073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.961151, 38.650288, 33.280178>,  <43.185123, 38.772247, 32.972019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961151, 38.650288, 33.280178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655714, -0.731461, 0.187092,
		0.506474, 0.609921, 0.609492,
		-0.559931, -0.304895, 0.770400,
		42.793171, 38.558819, 33.511299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632870, 38.364834, 33.315365>,  <43.185123, 38.772247, 32.972019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632870, 38.364834, 33.315365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.284874, 38.261265, 33.483212>,  <43.076077, 38.199123, 33.583920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.284874, 38.261265, 33.483212>,  <43.632870, 38.364834, 33.315365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284874, 38.261265, 33.483212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399373, -0.869132, 0.291737,
		0.289163, 0.421391, 0.859543,
		-0.869992, -0.258919, 0.419613,
		43.023876, 38.183590, 33.609097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748169, 38.102627, 34.034241>,  <43.632870, 38.364834, 33.315365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748169, 38.102627, 34.034241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.392262, 37.949596, 33.934677>,  <43.178719, 37.857780, 33.874939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.392262, 37.949596, 33.934677>,  <43.748169, 38.102627, 34.034241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392262, 37.949596, 33.934677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304209, -0.903649, 0.301455,
		-0.340256, 0.192504, 0.920417,
		-0.889766, -0.382571, -0.248910,
		43.125332, 37.834824, 33.860004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576626, 37.571739, 34.467041>,  <43.748169, 38.102627, 34.034241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576626, 37.571739, 34.467041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321239, 37.496521, 34.168510>,  <43.168007, 37.451389, 33.989391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321239, 37.496521, 34.168510>,  <43.576626, 37.571739, 34.467041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321239, 37.496521, 34.168510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011562, -0.967240, 0.253601,
		-0.769567, 0.170543, 0.615371,
		-0.638461, -0.188048, -0.746328,
		43.129700, 37.440105, 33.944611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066708, 37.078941, 34.712681>,  <43.576626, 37.571739, 34.467041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066708, 37.078941, 34.712681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.003197, 37.029377, 34.320877>,  <42.965092, 36.999638, 34.085796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.003197, 37.029377, 34.320877>,  <43.066708, 37.078941, 34.712681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003197, 37.029377, 34.320877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207826, -0.974059, 0.089537,
		-0.965194, -0.189352, 0.180407,
		-0.158774, -0.123914, -0.979508,
		42.955566, 36.992203, 34.027023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646263, 36.547005, 34.618145>,  <43.066708, 37.078941, 34.712681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646263, 36.547005, 34.618145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851715, 36.556229, 34.275066>,  <42.974987, 36.561764, 34.069218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851715, 36.556229, 34.275066>,  <42.646263, 36.547005, 34.618145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851715, 36.556229, 34.275066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298930, -0.941817, 0.153692,
		-0.804253, -0.335333, -0.490642,
		0.513633, 0.023060, -0.857700,
		43.005806, 36.563148, 34.017757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566097, 35.929203, 34.317112>,  <42.646263, 36.547005, 34.618145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566097, 35.929203, 34.317112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891163, 36.054272, 34.120415>,  <43.086205, 36.129311, 34.002396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891163, 36.054272, 34.120415>,  <42.566097, 35.929203, 34.317112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891163, 36.054272, 34.120415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425953, -0.894598, 0.135123,
		-0.397662, -0.319269, -0.860194,
		0.812668, 0.312669, -0.491741,
		43.134964, 36.148071, 33.972893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769203, 35.334908, 33.886154>,  <42.566097, 35.929203, 34.317112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769203, 35.334908, 33.886154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.081459, 35.584858, 33.881664>,  <43.268814, 35.734829, 33.878971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.081459, 35.584858, 33.881664>,  <42.769203, 35.334908, 33.886154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081459, 35.584858, 33.881664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623019, -0.779493, -0.065098,
		-0.049424, 0.043828, -0.997816,
		0.780644, 0.624875, -0.011220,
		43.315651, 35.772320, 33.878300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099670, 35.134125, 33.328419>,  <42.769203, 35.334908, 33.886154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099670, 35.134125, 33.328419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.354675, 35.315269, 33.577736>,  <43.507679, 35.423958, 33.727325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.354675, 35.315269, 33.577736>,  <43.099670, 35.134125, 33.328419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354675, 35.315269, 33.577736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634278, -0.767738, -0.090936,
		0.437343, 0.453313, -0.776684,
		0.637512, 0.452864, 0.623292,
		43.545929, 35.451130, 33.764725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699623, 35.039452, 33.012890>,  <43.099670, 35.134125, 33.328419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699623, 35.039452, 33.012890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.787914, 35.097652, 33.398659>,  <43.840889, 35.132572, 33.630119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.787914, 35.097652, 33.398659>,  <43.699623, 35.039452, 33.012890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787914, 35.097652, 33.398659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621180, -0.783300, -0.023992,
		0.751940, 0.604374, -0.263284,
		0.220730, 0.145507, 0.964420,
		43.854134, 35.141304, 33.687984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408634, 34.897606, 33.068676>,  <43.699623, 35.039452, 33.012890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408634, 34.897606, 33.068676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.276787, 34.852928, 33.443668>,  <44.197678, 34.826122, 33.668663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.276787, 34.852928, 33.443668>,  <44.408634, 34.897606, 33.068676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276787, 34.852928, 33.443668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477126, -0.876551, 0.063319,
		0.814680, 0.468169, 0.342220,
		-0.329617, -0.111697, 0.937484,
		44.177902, 34.819420, 33.724915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037750, 34.686993, 33.449516>,  <44.408634, 34.897606, 33.068676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037750, 34.686993, 33.449516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742970, 34.590759, 33.702187>,  <44.566101, 34.533020, 33.853790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742970, 34.590759, 33.702187>,  <45.037750, 34.686993, 33.449516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742970, 34.590759, 33.702187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433670, -0.885113, 0.168834,
		0.518489, 0.398363, 0.756621,
		-0.736953, -0.240585, 0.631680,
		44.521885, 34.518585, 33.891689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.436623, 35.350712, 33.682583>,  <45.037750, 34.686993, 33.449516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.436623, 35.350712, 33.682583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.748436, 35.597618, 33.725128>,  <45.935524, 35.745762, 33.750656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.748436, 35.597618, 33.725128>,  <45.436623, 35.350712, 33.682583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748436, 35.597618, 33.725128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585384, 0.778367, -0.226874,
		-0.222833, 0.114591, 0.968099,
		0.779533, 0.617264, 0.106366,
		45.982296, 35.782799, 33.757038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364246, 36.038074, 34.078278>,  <45.436623, 35.350712, 33.682583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364246, 36.038074, 34.078278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.651482, 36.150047, 33.823406>,  <45.823822, 36.217232, 33.670483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.651482, 36.150047, 33.823406>,  <45.364246, 36.038074, 34.078278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651482, 36.150047, 33.823406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563405, 0.771303, -0.296086,
		0.408569, 0.571602, 0.711578,
		0.718085, 0.279935, -0.637174,
		45.866905, 36.234028, 33.632256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386379, 36.724495, 34.224663>,  <45.364246, 36.038074, 34.078278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386379, 36.724495, 34.224663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590157, 36.692707, 33.881931>,  <45.712421, 36.673634, 33.676292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590157, 36.692707, 33.881931>,  <45.386379, 36.724495, 34.224663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590157, 36.692707, 33.881931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320420, 0.906602, -0.274598,
		0.798625, 0.414436, 0.436397,
		0.509441, -0.079471, -0.856828,
		45.742989, 36.668865, 33.624882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826206, 37.271324, 34.210636>,  <45.386379, 36.724495, 34.224663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826206, 37.271324, 34.210636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.815788, 37.162365, 33.825905>,  <45.809536, 37.096989, 33.595066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.815788, 37.162365, 33.825905>,  <45.826206, 37.271324, 34.210636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815788, 37.162365, 33.825905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271581, 0.927900, -0.255431,
		0.962063, 0.254562, -0.098147,
		-0.026047, -0.272395, -0.961833,
		45.807976, 37.080647, 33.537354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159752, 37.780521, 33.806595>,  <45.826206, 37.271324, 34.210636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159752, 37.780521, 33.806595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.943520, 37.592751, 33.527336>,  <45.813782, 37.480087, 33.359779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.943520, 37.592751, 33.527336>,  <46.159752, 37.780521, 33.806595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943520, 37.592751, 33.527336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292482, 0.882954, -0.367216,
		0.788814, 0.005687, -0.614606,
		-0.540580, -0.469426, -0.698149,
		45.781345, 37.451923, 33.317890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.428551, 37.997341, 33.125473>,  <46.159752, 37.780521, 33.806595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.428551, 37.997341, 33.125473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.046452, 37.888870, 33.078209>,  <45.817192, 37.823788, 33.049850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.046452, 37.888870, 33.078209>,  <46.428551, 37.997341, 33.125473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.046452, 37.888870, 33.078209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216630, 0.913333, -0.344810,
		0.201427, -0.303781, -0.931206,
		-0.955248, -0.271181, -0.118162,
		45.759876, 37.807514, 33.042759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333164, 38.213913, 32.549465>,  <46.428551, 37.997341, 33.125473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333164, 38.213913, 32.549465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.971214, 38.220955, 32.719585>,  <45.754044, 38.225182, 32.821659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.971214, 38.220955, 32.719585>,  <46.333164, 38.213913, 32.549465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971214, 38.220955, 32.719585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166153, 0.905275, -0.390985,
		-0.391901, -0.424460, -0.816240,
		-0.904879, 0.017606, 0.425304,
		45.699749, 38.226238, 32.847176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754990, 38.568703, 32.054817>,  <46.333164, 38.213913, 32.549465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754990, 38.568703, 32.054817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614094, 38.596066, 32.428181>,  <45.529556, 38.612484, 32.652199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614094, 38.596066, 32.428181>,  <45.754990, 38.568703, 32.054817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614094, 38.596066, 32.428181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339909, 0.919874, -0.195686,
		-0.872004, -0.386201, -0.300761,
		-0.352237, 0.068408, 0.933407,
		45.508423, 38.616589, 32.708202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160877, 38.935497, 31.897213>,  <45.754990, 38.568703, 32.054817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160877, 38.935497, 31.897213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181961, 38.977974, 32.294392>,  <45.194611, 39.003460, 32.532700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.181961, 38.977974, 32.294392>,  <45.160877, 38.935497, 31.897213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181961, 38.977974, 32.294392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451522, 0.889419, -0.071147,
		-0.890701, -0.444587, 0.094832,
		0.052714, 0.106190, 0.992948,
		45.197777, 39.009830, 32.592278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557941, 39.328506, 32.065609>,  <45.160877, 38.935497, 31.897213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557941, 39.328506, 32.065609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.752316, 39.352814, 32.414360>,  <44.868938, 39.367397, 32.623611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.752316, 39.352814, 32.414360>,  <44.557941, 39.328506, 32.065609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752316, 39.352814, 32.414360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462437, 0.864378, 0.197491,
		-0.741633, -0.499157, 0.448133,
		0.485936, 0.060768, 0.871880,
		44.898098, 39.371044, 32.675922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057220, 39.545731, 32.499199>,  <44.557941, 39.328506, 32.065609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057220, 39.545731, 32.499199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.414928, 39.655006, 32.640991>,  <44.629551, 39.720573, 32.726067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.414928, 39.655006, 32.640991>,  <44.057220, 39.545731, 32.499199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414928, 39.655006, 32.640991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323506, 0.941916, 0.090215,
		-0.309244, -0.195352, 0.930702,
		0.894266, 0.273189, 0.354479,
		44.683208, 39.736961, 32.747334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879162, 39.900230, 33.085251>,  <44.057220, 39.545731, 32.499199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879162, 39.900230, 33.085251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.252926, 39.996159, 32.979904>,  <44.477184, 40.053715, 32.916695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.252926, 39.996159, 32.979904>,  <43.879162, 39.900230, 33.085251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252926, 39.996159, 32.979904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192596, 0.962148, 0.192818,
		0.299642, -0.129447, 0.945229,
		0.934410, 0.239823, -0.263369,
		44.533249, 40.068104, 32.900894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031689, 40.234524, 33.677631>,  <43.879162, 39.900230, 33.085251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031689, 40.234524, 33.677631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.281895, 40.364975, 33.394119>,  <44.432018, 40.443245, 33.224010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.281895, 40.364975, 33.394119>,  <44.031689, 40.234524, 33.677631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281895, 40.364975, 33.394119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219785, 0.945311, 0.241000,
		0.748617, 0.005031, 0.662984,
		0.625514, 0.326130, -0.708782,
		44.469547, 40.462814, 33.181484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354874, 40.757973, 34.013409>,  <44.031689, 40.234524, 33.677631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354874, 40.757973, 34.013409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.379475, 40.792480, 33.615662>,  <44.394238, 40.813187, 33.377014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.379475, 40.792480, 33.615662>,  <44.354874, 40.757973, 34.013409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379475, 40.792480, 33.615662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350045, 0.934844, 0.059454,
		0.934711, 0.344418, 0.087701,
		0.061510, 0.086271, -0.994371,
		44.397926, 40.818363, 33.317348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601868, 41.437420, 33.941406>,  <44.354874, 40.757973, 34.013409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601868, 41.437420, 33.941406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475449, 41.368958, 33.568134>,  <44.399597, 41.327881, 33.344173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475449, 41.368958, 33.568134>,  <44.601868, 41.437420, 33.941406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475449, 41.368958, 33.568134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235879, 0.966883, -0.097455,
		0.918952, 0.189316, -0.345957,
		-0.316051, -0.171160, -0.933175,
		44.380634, 41.317608, 33.288181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681705, 42.135780, 33.681053>,  <44.601868, 41.437420, 33.941406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681705, 42.135780, 33.681053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.430141, 41.951950, 33.430206>,  <44.279205, 41.841652, 33.279697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.430141, 41.951950, 33.430206>,  <44.681705, 42.135780, 33.681053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430141, 41.951950, 33.430206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441158, 0.875111, -0.198896,
		0.640200, 0.151569, -0.753107,
		-0.628906, -0.459573, -0.627113,
		44.241470, 41.814079, 33.242073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624519, 42.545341, 33.094009>,  <44.681705, 42.135780, 33.681053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624519, 42.545341, 33.094009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.292244, 42.324440, 33.065796>,  <44.092880, 42.191898, 33.048866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.292244, 42.324440, 33.065796>,  <44.624519, 42.545341, 33.094009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292244, 42.324440, 33.065796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511375, 0.806949, -0.295514,
		0.220113, -0.209412, -0.952731,
		-0.830690, -0.552250, -0.070532,
		44.043037, 42.158764, 33.044636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262310, 42.926811, 32.590313>,  <44.624519, 42.545341, 33.094009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262310, 42.926811, 32.590313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.969547, 42.705898, 32.749962>,  <43.793888, 42.573353, 32.845753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.969547, 42.705898, 32.749962>,  <44.262310, 42.926811, 32.590313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969547, 42.705898, 32.749962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665723, 0.704499, -0.245955,
		-0.145349, -0.445723, -0.883292,
		-0.731906, -0.552278, 0.399126,
		43.749977, 42.540215, 32.869701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814346, 42.828621, 32.050343>,  <44.262310, 42.926811, 32.590313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814346, 42.828621, 32.050343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.610668, 42.777950, 32.390854>,  <43.488461, 42.747547, 32.595161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.610668, 42.777950, 32.390854>,  <43.814346, 42.828621, 32.050343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610668, 42.777950, 32.390854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654355, 0.699476, -0.287319,
		-0.559050, -0.703339, -0.439065,
		-0.509198, -0.126679, 0.851276,
		43.457909, 42.739948, 32.646236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050575, 42.701180, 31.930843>,  <43.814346, 42.828621, 32.050343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050575, 42.701180, 31.930843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.124630, 42.854927, 32.292614>,  <43.169064, 42.947174, 32.509674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.124630, 42.854927, 32.292614>,  <43.050575, 42.701180, 31.930843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124630, 42.854927, 32.292614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454669, 0.849410, -0.267915,
		-0.871206, -0.361613, 0.332020,
		0.185140, 0.384368, 0.904425,
		43.180172, 42.970238, 32.563942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428627, 42.860683, 32.399563>,  <43.050575, 42.701180, 31.930843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428627, 42.860683, 32.399563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.738213, 43.112110, 32.430244>,  <42.923965, 43.262966, 32.448654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.738213, 43.112110, 32.430244>,  <42.428627, 42.860683, 32.399563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738213, 43.112110, 32.430244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606373, 0.770590, -0.196221,
		-0.182445, 0.105358, 0.977555,
		0.773967, 0.628563, 0.076704,
		42.970402, 43.300678, 32.453255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.602673, 36.204811, 42.121220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227715, 36.336391, 42.075470>,  <42.002739, 36.415340, 42.048019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227715, 36.336391, 42.075470>,  <42.602673, 36.204811, 42.121220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227715, 36.336391, 42.075470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093203, -0.079468, -0.992471,
		-0.335568, -0.940996, 0.043833,
		-0.937394, 0.328956, -0.114371,
		41.946495, 36.435078, 42.041157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359741, 35.786404, 41.557167>,  <42.602673, 36.204811, 42.121220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359741, 35.786404, 41.557167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086651, 36.077572, 41.582504>,  <41.922794, 36.252274, 41.597706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086651, 36.077572, 41.582504>,  <42.359741, 35.786404, 41.557167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086651, 36.077572, 41.582504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009419, 0.077911, -0.996916,
		-0.730610, -0.681221, -0.046336,
		-0.682730, 0.727920, 0.063339,
		41.881832, 36.295948, 41.601505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932369, 35.621113, 41.012737>,  <42.359741, 35.786404, 41.557167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932369, 35.621113, 41.012737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826214, 35.995716, 41.104404>,  <41.762520, 36.220478, 41.159405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826214, 35.995716, 41.104404>,  <41.932369, 35.621113, 41.012737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826214, 35.995716, 41.104404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212702, 0.174967, -0.961324,
		-0.940386, -0.303873, 0.152763,
		-0.265392, 0.936508, 0.229171,
		41.746597, 36.276669, 41.173157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178959, 35.708061, 40.726254>,  <41.932369, 35.621113, 41.012737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178959, 35.708061, 40.726254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389095, 36.043941, 40.781269>,  <41.515179, 36.245468, 40.814278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389095, 36.043941, 40.781269>,  <41.178959, 35.708061, 40.726254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389095, 36.043941, 40.781269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011823, 0.168833, -0.985574,
		-0.850807, 0.516140, 0.098624,
		0.525345, 0.839699, 0.137542,
		41.546700, 36.295853, 40.822533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948540, 36.028633, 40.139366>,  <41.178959, 35.708061, 40.726254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948540, 36.028633, 40.139366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250668, 36.257706, 40.266823>,  <41.431946, 36.395149, 40.343296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250668, 36.257706, 40.266823>,  <40.948540, 36.028633, 40.139366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250668, 36.257706, 40.266823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136802, 0.337719, -0.931253,
		-0.640921, 0.746983, 0.176741,
		0.755319, 0.572680, 0.318640,
		41.477264, 36.429508, 40.362415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811573, 36.608940, 39.900288>,  <40.948540, 36.028633, 40.139366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811573, 36.608940, 39.900288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203796, 36.652119, 39.965824>,  <41.439133, 36.678024, 40.005146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203796, 36.652119, 39.965824>,  <40.811573, 36.608940, 39.900288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203796, 36.652119, 39.965824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128672, 0.276614, -0.952328,
		-0.148122, 0.954899, 0.257348,
		0.980563, 0.107947, 0.163842,
		41.497967, 36.684502, 40.014977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919857, 37.139374, 39.457684>,  <40.811573, 36.608940, 39.900288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919857, 37.139374, 39.457684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273602, 36.965118, 39.524773>,  <41.485847, 36.860565, 39.565025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273602, 36.965118, 39.524773>,  <40.919857, 37.139374, 39.457684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273602, 36.965118, 39.524773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254810, 0.149454, -0.955372,
		0.391129, 0.887628, 0.243175,
		0.884359, -0.435637, 0.167721,
		41.538910, 36.834427, 39.575089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507702, 37.520233, 39.205921>,  <40.919857, 37.139374, 39.457684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507702, 37.520233, 39.205921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630104, 37.139503, 39.213871>,  <41.703545, 36.911068, 39.218643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630104, 37.139503, 39.213871>,  <41.507702, 37.520233, 39.205921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630104, 37.139503, 39.213871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337104, 0.088806, -0.937269,
		0.890348, 0.293514, 0.348038,
		0.306009, -0.951821, 0.019877,
		41.721909, 36.853958, 39.219833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841026, 37.585789, 38.565235>,  <41.507702, 37.520233, 39.205921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841026, 37.585789, 38.565235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859909, 37.201057, 38.673054>,  <41.871239, 36.970219, 38.737747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859909, 37.201057, 38.673054>,  <41.841026, 37.585789, 38.565235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859909, 37.201057, 38.673054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493411, -0.212178, -0.843520,
		0.868514, 0.172819, 0.464561,
		0.047206, -0.961828, 0.269551,
		41.874069, 36.912510, 38.753918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485191, 37.425907, 38.256367>,  <41.841026, 37.585789, 38.565235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485191, 37.425907, 38.256367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275139, 37.095333, 38.337601>,  <42.149105, 36.896988, 38.386341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275139, 37.095333, 38.337601>,  <42.485191, 37.425907, 38.256367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275139, 37.095333, 38.337601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002374, -0.240054, -0.970757,
		0.851017, -0.509295, 0.128022,
		-0.525134, -0.826434, 0.203081,
		42.117599, 36.847404, 38.398525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762077, 36.923630, 37.883228>,  <42.485191, 37.425907, 38.256367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762077, 36.923630, 37.883228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378429, 36.834141, 37.952564>,  <42.148243, 36.780449, 37.994164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378429, 36.834141, 37.952564>,  <42.762077, 36.923630, 37.883228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378429, 36.834141, 37.952564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161466, -0.070455, -0.984360,
		0.232434, -0.972103, 0.031451,
		-0.959115, -0.223720, 0.173337,
		42.090694, 36.767025, 38.004566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629093, 36.314289, 37.446629>,  <42.762077, 36.923630, 37.883228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629093, 36.314289, 37.446629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278114, 36.476898, 37.548473>,  <42.067528, 36.574463, 37.609581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278114, 36.476898, 37.548473>,  <42.629093, 36.314289, 37.446629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278114, 36.476898, 37.548473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314610, -0.087057, -0.945220,
		-0.362084, -0.909485, 0.204282,
		-0.877448, 0.406519, 0.254611,
		42.014881, 36.598854, 37.624855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045521, 35.943558, 37.180775>,  <42.629093, 36.314289, 37.446629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045521, 35.943558, 37.180775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914448, 36.319489, 37.219437>,  <41.835804, 36.545048, 37.242634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914448, 36.319489, 37.219437>,  <42.045521, 35.943558, 37.180775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914448, 36.319489, 37.219437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322114, -0.014965, -0.946583,
		-0.888181, -0.341314, 0.307636,
		-0.327685, 0.939830, 0.096650,
		41.816143, 36.601437, 37.248432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328884, 35.557266, 37.383873>,  <42.045521, 35.943558, 37.180775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328884, 35.557266, 37.383873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138996, 35.370136, 37.085670>,  <41.025063, 35.257858, 36.906750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138996, 35.370136, 37.085670>,  <41.328884, 35.557266, 37.383873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138996, 35.370136, 37.085670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620330, -0.423040, 0.660476,
		-0.624366, 0.776002, -0.089380,
		-0.474719, -0.467823, -0.745509,
		40.996582, 35.229790, 36.862019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609779, 35.685555, 37.285328>,  <41.328884, 35.557266, 37.383873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609779, 35.685555, 37.285328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738316, 35.319744, 37.187031>,  <40.815437, 35.100258, 37.128052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738316, 35.319744, 37.187031>,  <40.609779, 35.685555, 37.285328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738316, 35.319744, 37.187031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601240, -0.397524, 0.693171,
		-0.731611, -0.074989, -0.677586,
		0.321336, -0.914523, -0.245746,
		40.834717, 35.045387, 37.113308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030174, 35.358318, 37.540508>,  <40.609779, 35.685555, 37.285328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030174, 35.358318, 37.540508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302010, 35.070629, 37.482700>,  <40.465111, 34.898018, 37.448017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302010, 35.070629, 37.482700>,  <40.030174, 35.358318, 37.540508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302010, 35.070629, 37.482700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435600, -0.554133, 0.709359,
		-0.590268, -0.419117, -0.689873,
		0.679586, -0.719220, -0.144520,
		40.505886, 34.854862, 37.439342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671356, 34.782436, 37.649490>,  <40.030174, 35.358318, 37.540508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671356, 34.782436, 37.649490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045292, 34.654243, 37.710640>,  <40.269653, 34.577328, 37.747330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045292, 34.654243, 37.710640>,  <39.671356, 34.782436, 37.649490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045292, 34.654243, 37.710640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315989, -0.554495, 0.769861,
		-0.161958, -0.768002, -0.619631,
		0.934837, -0.320482, 0.152875,
		40.325745, 34.558098, 37.756504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640484, 33.984806, 37.971973>,  <39.671356, 34.782436, 37.649490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640484, 33.984806, 37.971973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993057, 34.154194, 38.055630>,  <40.204601, 34.255825, 38.105824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993057, 34.154194, 38.055630>,  <39.640484, 33.984806, 37.971973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993057, 34.154194, 38.055630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040246, -0.373862, 0.926611,
		0.470582, -0.825167, -0.312494,
		0.881438, 0.423469, 0.209142,
		40.257488, 34.281235, 38.118374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068665, 33.486061, 38.314346>,  <39.640484, 33.984806, 37.971973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068665, 33.486061, 38.314346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230656, 33.835281, 38.422997>,  <40.327850, 34.044811, 38.488186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230656, 33.835281, 38.422997>,  <40.068665, 33.486061, 38.314346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230656, 33.835281, 38.422997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162762, -0.361174, 0.918184,
		0.899724, -0.327632, -0.288366,
		0.404976, 0.873047, 0.271630,
		40.352150, 34.097195, 38.504486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628895, 33.274155, 38.710018>,  <40.068665, 33.486061, 38.314346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628895, 33.274155, 38.710018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542271, 33.652729, 38.805820>,  <40.490295, 33.879875, 38.863300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542271, 33.652729, 38.805820>,  <40.628895, 33.274155, 38.710018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542271, 33.652729, 38.805820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033655, -0.237942, 0.970696,
		0.975689, 0.218277, 0.019676,
		-0.216562, 0.946435, 0.239503,
		40.477303, 33.936661, 38.877670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163208, 33.414539, 39.142025>,  <40.628895, 33.274155, 38.710018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163208, 33.414539, 39.142025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864292, 33.672394, 39.206528>,  <40.684944, 33.827106, 39.245228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864292, 33.672394, 39.206528>,  <41.163208, 33.414539, 39.142025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864292, 33.672394, 39.206528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018371, -0.262620, 0.964725,
		0.664244, 0.717966, 0.208096,
		-0.747290, 0.644636, 0.161254,
		40.640106, 33.865784, 39.254906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329567, 33.682415, 39.765751>,  <41.163208, 33.414539, 39.142025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329567, 33.682415, 39.765751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951607, 33.799805, 39.707748>,  <40.724831, 33.870239, 39.672947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951607, 33.799805, 39.707748>,  <41.329567, 33.682415, 39.765751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951607, 33.799805, 39.707748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151782, -0.000318, 0.988414,
		0.290032, 0.955966, 0.044845,
		-0.944904, 0.293478, -0.145006,
		40.668137, 33.887848, 39.664246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316132, 34.349922, 40.096706>,  <41.329567, 33.682415, 39.765751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316132, 34.349922, 40.096706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953773, 34.181190, 40.081635>,  <40.736359, 34.079952, 40.072594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953773, 34.181190, 40.081635>,  <41.316132, 34.349922, 40.096706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953773, 34.181190, 40.081635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010236, -0.067126, 0.997692,
		-0.423385, 0.904187, 0.056491,
		-0.905892, -0.421830, -0.037675,
		40.682007, 34.054642, 40.070332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952946, 34.542854, 40.606819>,  <41.316132, 34.349922, 40.096706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952946, 34.542854, 40.606819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703259, 34.246407, 40.507950>,  <40.553444, 34.068539, 40.448627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703259, 34.246407, 40.507950>,  <40.952946, 34.542854, 40.606819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703259, 34.246407, 40.507950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159528, -0.188805, 0.968970,
		-0.764786, 0.644284, -0.000372,
		-0.624222, -0.741115, -0.247177,
		40.515991, 34.024071, 40.433796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337292, 34.611591, 41.096218>,  <40.952946, 34.542854, 40.606819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337292, 34.611591, 41.096218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332497, 34.230728, 40.974068>,  <40.329620, 34.002209, 40.900776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332497, 34.230728, 40.974068>,  <40.337292, 34.611591, 41.096218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332497, 34.230728, 40.974068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323752, -0.285252, 0.902117,
		-0.946066, 0.109678, -0.304844,
		-0.011985, -0.952157, -0.305376,
		40.328899, 33.945080, 40.882454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654369, 34.271084, 41.218231>,  <40.337292, 34.611591, 41.096218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654369, 34.271084, 41.218231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918858, 33.971317, 41.204556>,  <40.077549, 33.791458, 41.196350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918858, 33.971317, 41.204556>,  <39.654369, 34.271084, 41.218231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918858, 33.971317, 41.204556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303116, -0.308582, 0.901609,
		-0.686228, -0.585798, -0.431199,
		0.661220, -0.749412, -0.034193,
		40.117226, 33.746494, 41.194298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253967, 33.821049, 41.214386>,  <39.654369, 34.271084, 41.218231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253967, 33.821049, 41.214386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603832, 33.663563, 41.327496>,  <39.813751, 33.569073, 41.395363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603832, 33.663563, 41.327496>,  <39.253967, 33.821049, 41.214386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603832, 33.663563, 41.327496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395482, -0.242289, 0.885940,
		-0.280293, -0.886728, -0.367627,
		0.874659, -0.393713, 0.282773,
		39.866230, 33.545448, 41.412327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161255, 33.079708, 41.492317>,  <39.253967, 33.821049, 41.214386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161255, 33.079708, 41.492317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488827, 33.251934, 41.644085>,  <39.685371, 33.355270, 41.735146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488827, 33.251934, 41.644085>,  <39.161255, 33.079708, 41.492317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488827, 33.251934, 41.644085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317157, -0.211450, 0.924500,
		0.478290, -0.877439, -0.036606,
		0.818933, 0.430569, 0.379420,
		39.734509, 33.381104, 41.757912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243019, 32.341522, 41.557823>,  <39.161255, 33.079708, 41.492317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243019, 32.341522, 41.557823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014858, 32.043327, 41.419899>,  <38.877960, 31.864410, 41.337143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014858, 32.043327, 41.419899>,  <39.243019, 32.341522, 41.557823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014858, 32.043327, 41.419899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317117, 0.187374, -0.929692,
		0.757680, -0.639643, 0.129528,
		-0.570401, -0.745485, -0.344811,
		38.843739, 31.819681, 41.316456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649654, 32.125332, 40.966274>,  <39.243019, 32.341522, 41.557823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649654, 32.125332, 40.966274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282948, 31.970263, 40.927826>,  <39.062923, 31.877220, 40.904758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282948, 31.970263, 40.927826>,  <39.649654, 32.125332, 40.966274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282948, 31.970263, 40.927826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082467, 0.051745, -0.995249,
		0.390810, -0.920341, -0.015468,
		-0.916770, -0.387678, -0.096121,
		39.007915, 31.853960, 40.898991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714584, 31.699255, 40.373043>,  <39.649654, 32.125332, 40.966274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714584, 31.699255, 40.373043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318790, 31.729277, 40.422485>,  <39.081314, 31.747290, 40.452148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318790, 31.729277, 40.422485>,  <39.714584, 31.699255, 40.373043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318790, 31.729277, 40.422485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120189, 0.048440, -0.991569,
		-0.080412, -0.996002, -0.038910,
		-0.989489, 0.075058, 0.123604,
		39.021942, 31.751793, 40.459568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428329, 31.225883, 39.928638>,  <39.714584, 31.699255, 40.373043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428329, 31.225883, 39.928638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142319, 31.495689, 40.002148>,  <38.970715, 31.657574, 40.046253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142319, 31.495689, 40.002148>,  <39.428329, 31.225883, 39.928638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142319, 31.495689, 40.002148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135635, 0.124028, -0.982965,
		-0.685817, -0.727769, 0.002805,
		-0.715023, 0.674514, 0.183771,
		38.927811, 31.698044, 40.057278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921043, 31.054893, 39.407391>,  <39.428329, 31.225883, 39.928638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921043, 31.054893, 39.407391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804222, 31.417784, 39.528481>,  <38.734127, 31.635519, 39.601135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804222, 31.417784, 39.528481>,  <38.921043, 31.054893, 39.407391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804222, 31.417784, 39.528481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313868, 0.208077, -0.926386,
		-0.903433, -0.365572, 0.223980,
		-0.292056, 0.907227, 0.302724,
		38.716606, 31.689953, 39.619297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252567, 31.034590, 39.097301>,  <38.921043, 31.054893, 39.407391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252567, 31.034590, 39.097301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363071, 31.412102, 39.169922>,  <38.429375, 31.638609, 39.213493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363071, 31.412102, 39.169922>,  <38.252567, 31.034590, 39.097301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363071, 31.412102, 39.169922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448993, 0.293759, -0.843867,
		-0.849757, 0.151608, 0.504904,
		0.276257, 0.943780, 0.181553,
		38.445950, 31.695236, 39.224388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738731, 31.440563, 39.058994>,  <38.252567, 31.034590, 39.097301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738731, 31.440563, 39.058994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997646, 31.738203, 38.992855>,  <38.152996, 31.916786, 38.953171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997646, 31.738203, 38.992855>,  <37.738731, 31.440563, 39.058994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997646, 31.738203, 38.992855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599026, 0.362428, -0.714013,
		-0.471369, 0.561217, 0.680328,
		0.647286, 0.744098, -0.165347,
		38.191833, 31.961432, 38.943253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368713, 32.026913, 39.014637>,  <37.738731, 31.440563, 39.058994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368713, 32.026913, 39.014637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712578, 32.117527, 38.831486>,  <37.918896, 32.171898, 38.721596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712578, 32.117527, 38.831486>,  <37.368713, 32.026913, 39.014637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712578, 32.117527, 38.831486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510776, 0.397238, -0.762437,
		0.009167, 0.889315, 0.457202,
		0.859665, 0.226539, -0.457882,
		37.970478, 32.185490, 38.694122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434799, 32.700375, 38.854046>,  <37.368713, 32.026913, 39.014637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434799, 32.700375, 38.854046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691204, 32.534489, 38.595707>,  <37.845047, 32.434956, 38.440704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691204, 32.534489, 38.595707>,  <37.434799, 32.700375, 38.854046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691204, 32.534489, 38.595707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502106, 0.409844, -0.761523,
		0.580511, 0.812428, 0.054484,
		0.641012, -0.414716, -0.645844,
		37.883507, 32.410072, 38.401955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420139, 33.104683, 38.250763>,  <37.434799, 32.700375, 38.854046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420139, 33.104683, 38.250763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568130, 32.754715, 38.125778>,  <37.656925, 32.544735, 38.050789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568130, 32.754715, 38.125778>,  <37.420139, 33.104683, 38.250763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568130, 32.754715, 38.125778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340605, 0.185167, -0.921793,
		0.864354, 0.447464, -0.229496,
		0.369974, -0.874923, -0.312458,
		37.679123, 32.492237, 38.032040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836514, 33.330662, 37.648102>,  <37.420139, 33.104683, 38.250763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836514, 33.330662, 37.648102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751858, 32.940411, 37.624916>,  <37.701065, 32.706261, 37.611004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751858, 32.940411, 37.624916>,  <37.836514, 33.330662, 37.648102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751858, 32.940411, 37.624916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256634, 0.112704, -0.959915,
		0.943052, -0.188281, -0.274232,
		-0.211640, -0.975627, -0.057966,
		37.688366, 32.647724, 37.607525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022366, 33.026718, 37.017414>,  <37.836514, 33.330662, 37.648102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022366, 33.026718, 37.017414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781784, 32.715847, 37.091446>,  <37.637436, 32.529324, 37.135864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781784, 32.715847, 37.091446>,  <38.022366, 33.026718, 37.017414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781784, 32.715847, 37.091446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499035, 0.184570, -0.846698,
		0.623872, -0.601611, -0.498847,
		-0.601455, -0.777174, 0.185077,
		37.601349, 32.482697, 37.146969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.697117, 30.938980, 45.074440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.311085, 30.907188, 44.974606>,  <38.079464, 30.888113, 44.914703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.311085, 30.907188, 44.974606>,  <38.697117, 30.938980, 45.074440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311085, 30.907188, 44.974606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203376, 0.373136, -0.905211,
		0.165074, -0.924366, -0.343944,
		-0.965085, -0.079477, -0.249589,
		38.021561, 30.883345, 44.899731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805141, 30.537987, 44.548088>,  <38.697117, 30.938980, 45.074440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805141, 30.537987, 44.548088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.446438, 30.711863, 44.514942>,  <38.231216, 30.816187, 44.495056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.446438, 30.711863, 44.514942>,  <38.805141, 30.537987, 44.548088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446438, 30.711863, 44.514942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199384, 0.229732, -0.952612,
		-0.395053, -0.870787, -0.292684,
		-0.896760, 0.434688, -0.082864,
		38.177410, 30.842270, 44.490082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563713, 30.319731, 43.853203>,  <38.805141, 30.537987, 44.548088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563713, 30.319731, 43.853203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.337696, 30.629984, 43.965717>,  <38.202087, 30.816135, 44.033226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.337696, 30.629984, 43.965717>,  <38.563713, 30.319731, 43.853203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337696, 30.629984, 43.965717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016486, 0.351474, -0.936052,
		-0.824896, -0.524273, -0.211385,
		-0.565043, 0.775631, 0.281287,
		38.168182, 30.862673, 44.050102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018353, 30.172323, 43.465065>,  <38.563713, 30.319731, 43.853203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018353, 30.172323, 43.465065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.037216, 30.565271, 43.537422>,  <38.048534, 30.801041, 43.580837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.037216, 30.565271, 43.537422>,  <38.018353, 30.172323, 43.465065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037216, 30.565271, 43.537422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088859, 0.176250, -0.980326,
		-0.994927, 0.062310, -0.078980,
		0.047164, 0.982371, 0.180893,
		38.051365, 30.859983, 43.591690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650944, 30.456753, 42.910484>,  <38.018353, 30.172323, 43.465065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650944, 30.456753, 42.910484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.866512, 30.760645, 43.056019>,  <37.995853, 30.942980, 43.143337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.866512, 30.760645, 43.056019>,  <37.650944, 30.456753, 42.910484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866512, 30.760645, 43.056019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051153, 0.401609, -0.914381,
		-0.840802, 0.511391, 0.177573,
		0.538921, 0.759730, 0.363833,
		38.028187, 30.988564, 43.165169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361862, 31.076284, 42.724327>,  <37.650944, 30.456753, 42.910484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361862, 31.076284, 42.724327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742435, 31.160101, 42.814541>,  <37.970779, 31.210392, 42.868668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742435, 31.160101, 42.814541>,  <37.361862, 31.076284, 42.724327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742435, 31.160101, 42.814541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167996, 0.260512, -0.950742,
		-0.257975, 0.942457, 0.212658,
		0.951434, 0.209542, 0.225534,
		38.027866, 31.222963, 42.882202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480743, 31.811455, 42.454216>,  <37.361862, 31.076284, 42.724327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480743, 31.811455, 42.454216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.854263, 31.669867, 42.475082>,  <38.078377, 31.584913, 42.487602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.854263, 31.669867, 42.475082>,  <37.480743, 31.811455, 42.454216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854263, 31.669867, 42.475082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127141, 0.191998, -0.973125,
		0.334444, 0.915336, 0.224292,
		0.933800, -0.353972, 0.052164,
		38.134403, 31.563675, 42.490730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893826, 32.282520, 42.052200>,  <37.480743, 31.811455, 42.454216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893826, 32.282520, 42.052200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158264, 31.983240, 42.074638>,  <38.316925, 31.803671, 42.088100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158264, 31.983240, 42.074638>,  <37.893826, 32.282520, 42.052200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158264, 31.983240, 42.074638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281604, 0.178134, -0.942851,
		0.695454, 0.639107, 0.328460,
		0.661093, -0.748205, 0.056091,
		38.356590, 31.758780, 42.091465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518566, 32.505001, 41.821835>,  <37.893826, 32.282520, 42.052200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518566, 32.505001, 41.821835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.549976, 32.112194, 41.753174>,  <38.568825, 31.876509, 41.711975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.549976, 32.112194, 41.753174>,  <38.518566, 32.505001, 41.821835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549976, 32.112194, 41.753174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209446, 0.184597, -0.960238,
		0.974662, 0.039453, 0.220176,
		0.078528, -0.982022, -0.171656,
		38.573536, 31.817587, 41.701675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226143, 32.724178, 42.211048>,  <38.518566, 32.505001, 41.821835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226143, 32.724178, 42.211048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509037, 33.006153, 42.232513>,  <39.678776, 33.175339, 42.245392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509037, 33.006153, 42.232513>,  <39.226143, 32.724178, 42.211048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509037, 33.006153, 42.232513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185528, 0.111813, 0.976257,
		0.682195, -0.700405, 0.209863,
		0.707240, 0.704933, 0.053666,
		39.721210, 33.217632, 42.248611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651943, 32.526516, 42.697773>,  <39.226143, 32.724178, 42.211048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651943, 32.526516, 42.697773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.675896, 32.923679, 42.656681>,  <39.690266, 33.161976, 42.632027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.675896, 32.923679, 42.656681>,  <39.651943, 32.526516, 42.697773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675896, 32.923679, 42.656681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168888, 0.111513, 0.979307,
		0.983815, -0.041291, 0.174367,
		0.059881, 0.992905, -0.102734,
		39.693859, 33.221550, 42.625862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027676, 32.704643, 43.254639>,  <39.651943, 32.526516, 42.697773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027676, 32.704643, 43.254639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.812145, 33.022709, 43.143364>,  <39.682827, 33.213547, 43.076599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.812145, 33.022709, 43.143364>,  <40.027676, 32.704643, 43.254639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812145, 33.022709, 43.143364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218049, 0.187329, 0.957790,
		0.813709, 0.576740, 0.072446,
		-0.538825, 0.795159, -0.278189,
		39.650497, 33.261257, 43.059906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386696, 33.179916, 43.551178>,  <40.027676, 32.704643, 43.254639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386696, 33.179916, 43.551178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.035706, 33.365341, 43.501949>,  <39.825111, 33.476597, 43.472412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.035706, 33.365341, 43.501949>,  <40.386696, 33.179916, 43.551178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035706, 33.365341, 43.501949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035835, 0.319241, 0.946996,
		0.478284, 0.826554, -0.296737,
		-0.877474, 0.463567, -0.123069,
		39.772465, 33.504410, 43.465027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445305, 33.717537, 43.994526>,  <40.386696, 33.179916, 43.551178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445305, 33.717537, 43.994526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050236, 33.721363, 43.932030>,  <39.813194, 33.723660, 43.894531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.050236, 33.721363, 43.932030>,  <40.445305, 33.717537, 43.994526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050236, 33.721363, 43.932030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148809, 0.252227, 0.956158,
		0.048556, 0.967621, -0.247694,
		-0.987673, 0.009569, -0.156238,
		39.753933, 33.724236, 43.885159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183918, 34.225010, 44.439430>,  <40.445305, 33.717537, 43.994526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183918, 34.225010, 44.439430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.862053, 34.019146, 44.321014>,  <39.668934, 33.895626, 44.249966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.862053, 34.019146, 44.321014>,  <40.183918, 34.225010, 44.439430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862053, 34.019146, 44.321014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332988, -0.021626, 0.942683,
		-0.491562, 0.857122, -0.153973,
		-0.804665, -0.514659, -0.296042,
		39.620655, 33.864750, 44.232201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642124, 34.602459, 44.710621>,  <40.183918, 34.225010, 44.439430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642124, 34.602459, 44.710621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.524517, 34.225277, 44.648140>,  <39.453953, 33.998970, 44.610653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.524517, 34.225277, 44.648140>,  <39.642124, 34.602459, 44.710621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524517, 34.225277, 44.648140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181782, -0.105274, 0.977688,
		-0.938356, 0.315847, -0.140460,
		-0.294013, -0.942952, -0.156200,
		39.436314, 33.942390, 44.601280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180218, 34.563648, 45.263409>,  <39.642124, 34.602459, 44.710621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180218, 34.563648, 45.263409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.277351, 34.187584, 45.167801>,  <39.335632, 33.961945, 45.110435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.277351, 34.187584, 45.167801>,  <39.180218, 34.563648, 45.263409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277351, 34.187584, 45.167801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173207, -0.284458, 0.942912,
		-0.954481, -0.187567, -0.231917,
		0.242830, -0.940161, -0.239022,
		39.350201, 33.905537, 45.096096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717506, 34.143425, 45.590034>,  <39.180218, 34.563648, 45.263409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717506, 34.143425, 45.590034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.013321, 33.885418, 45.513050>,  <39.190811, 33.730614, 45.466858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.013321, 33.885418, 45.513050>,  <38.717506, 34.143425, 45.590034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013321, 33.885418, 45.513050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038865, -0.326365, 0.944444,
		-0.671994, -0.690971, -0.266427,
		0.739536, -0.645015, -0.192461,
		39.235184, 33.691914, 45.455311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599308, 33.433990, 45.864449>,  <38.717506, 34.143425, 45.590034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599308, 33.433990, 45.864449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998383, 33.444298, 45.839279>,  <39.237827, 33.450481, 45.824177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998383, 33.444298, 45.839279>,  <38.599308, 33.433990, 45.864449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998383, 33.444298, 45.839279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067781, -0.450233, 0.890335,
		-0.005393, -0.892539, -0.450938,
		0.997685, 0.025764, -0.062925,
		39.297688, 33.452026, 45.820400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724586, 32.781395, 46.202049>,  <38.599308, 33.433990, 45.864449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724586, 32.781395, 46.202049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.062515, 32.993961, 46.177128>,  <39.265270, 33.121502, 46.162174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.062515, 32.993961, 46.177128>,  <38.724586, 32.781395, 46.202049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062515, 32.993961, 46.177128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253910, -0.295682, 0.920925,
		0.470971, -0.793833, -0.384729,
		0.844817, 0.531416, -0.062304,
		39.315960, 33.153385, 46.158436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364685, 32.282211, 46.308750>,  <38.724586, 32.781395, 46.202049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364685, 32.282211, 46.308750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.511002, 32.643543, 46.398357>,  <39.598793, 32.860344, 46.452122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.511002, 32.643543, 46.398357>,  <39.364685, 32.282211, 46.308750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511002, 32.643543, 46.398357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307657, -0.344531, 0.886930,
		0.878376, -0.255511, -0.403944,
		0.365791, 0.903334, 0.224018,
		39.620739, 32.914543, 46.465561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029350, 32.145554, 46.472687>,  <39.364685, 32.282211, 46.308750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029350, 32.145554, 46.472687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.919727, 32.490788, 46.642387>,  <39.853954, 32.697926, 46.744205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.919727, 32.490788, 46.642387>,  <40.029350, 32.145554, 46.472687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919727, 32.490788, 46.642387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199252, -0.380609, 0.903015,
		0.940847, 0.332006, -0.067663,
		-0.274053, 0.863081, 0.424247,
		39.837513, 32.749710, 46.769661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556808, 32.215496, 46.844818>,  <40.029350, 32.145554, 46.472687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556808, 32.215496, 46.844818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.246494, 32.409458, 47.006325>,  <40.060307, 32.525837, 47.103230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.246494, 32.409458, 47.006325>,  <40.556808, 32.215496, 46.844818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246494, 32.409458, 47.006325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351068, -0.200008, 0.914739,
		0.524318, 0.851389, -0.015072,
		-0.775785, 0.484905, 0.403763,
		40.013760, 32.554932, 47.127453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.244495, 34.538830, 46.016212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623672, 34.502380, 46.138264>,  <35.851177, 34.480511, 46.211494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623672, 34.502380, 46.138264>,  <35.244495, 34.538830, 46.016212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623672, 34.502380, 46.138264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318446, 0.274463, -0.907338,
		-0.001069, 0.957270, 0.289193,
		0.947940, -0.091123, 0.305132,
		35.908054, 34.475044, 46.229805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539944, 35.091080, 45.759293>,  <35.244495, 34.538830, 46.016212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539944, 35.091080, 45.759293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.836563, 34.829147, 45.817677>,  <36.014534, 34.671989, 45.852707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.836563, 34.829147, 45.817677>,  <35.539944, 35.091080, 45.759293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836563, 34.829147, 45.817677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435487, 0.304324, -0.847194,
		0.510348, 0.691800, 0.510841,
		0.741549, -0.654828, 0.145959,
		36.059029, 34.632698, 45.861465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170856, 35.458084, 45.596355>,  <35.539944, 35.091080, 45.759293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170856, 35.458084, 45.596355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300419, 35.079941, 45.581478>,  <36.378155, 34.853054, 45.572552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300419, 35.079941, 45.581478>,  <36.170856, 35.458084, 45.596355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300419, 35.079941, 45.581478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417667, 0.178160, -0.890962,
		0.848905, 0.273050, 0.452552,
		0.323904, -0.945358, -0.037197,
		36.397591, 34.796333, 45.570320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897758, 35.442650, 45.302158>,  <36.170856, 35.458084, 45.596355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897758, 35.442650, 45.302158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.770992, 35.065651, 45.259720>,  <36.694935, 34.839451, 45.234257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.770992, 35.065651, 45.259720>,  <36.897758, 35.442650, 45.302158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770992, 35.065651, 45.259720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465204, -0.056979, -0.883368,
		0.826530, -0.329308, 0.456513,
		-0.316912, -0.942502, -0.106101,
		36.675919, 34.782902, 45.227890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494961, 35.133095, 44.980400>,  <36.897758, 35.442650, 45.302158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494961, 35.133095, 44.980400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.168407, 34.915260, 44.903519>,  <36.972477, 34.784561, 44.857391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.168407, 34.915260, 44.903519>,  <37.494961, 35.133095, 44.980400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168407, 34.915260, 44.903519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283724, -0.088332, -0.954829,
		0.503009, -0.834040, 0.226625,
		-0.816384, -0.544587, -0.192205,
		36.923492, 34.751884, 44.845856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702957, 34.535660, 44.688137>,  <37.494961, 35.133095, 44.980400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702957, 34.535660, 44.688137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.331387, 34.615360, 44.563305>,  <37.108444, 34.663181, 44.488407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.331387, 34.615360, 44.563305>,  <37.702957, 34.535660, 44.688137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331387, 34.615360, 44.563305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313446, -0.025483, -0.949264,
		-0.197094, -0.979617, -0.038782,
		-0.928927, 0.199251, -0.312079,
		37.052708, 34.675137, 44.469681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673950, 34.272285, 44.009281>,  <37.702957, 34.535660, 44.688137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673950, 34.272285, 44.009281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.345524, 34.500412, 43.999622>,  <37.148468, 34.637287, 43.993828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.345524, 34.500412, 43.999622>,  <37.673950, 34.272285, 44.009281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345524, 34.500412, 43.999622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007789, -0.053496, -0.998538,
		-0.570775, -0.819681, 0.048366,
		-0.821069, 0.570317, -0.024150,
		37.099201, 34.671509, 43.992378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393314, 34.009018, 43.482090>,  <37.673950, 34.272285, 44.009281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393314, 34.009018, 43.482090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.187000, 34.349083, 43.524406>,  <37.063213, 34.553123, 43.549797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.187000, 34.349083, 43.524406>,  <37.393314, 34.009018, 43.482090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187000, 34.349083, 43.524406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146255, 0.034289, -0.988652,
		-0.844143, -0.525402, 0.106655,
		-0.515783, 0.850163, 0.105787,
		37.032265, 34.604134, 43.556141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921120, 33.942936, 42.973804>,  <37.393314, 34.009018, 43.482090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921120, 33.942936, 42.973804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.934216, 34.334919, 43.052399>,  <36.942074, 34.570110, 43.099556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.934216, 34.334919, 43.052399>,  <36.921120, 33.942936, 42.973804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934216, 34.334919, 43.052399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173264, 0.199180, -0.964524,
		-0.984331, -0.002466, 0.176312,
		0.032740, 0.979960, 0.196486,
		36.944038, 34.628906, 43.111343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386234, 34.295204, 42.787590>,  <36.921120, 33.942936, 42.973804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386234, 34.295204, 42.787590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.618366, 34.620613, 42.772621>,  <36.757645, 34.815857, 42.763641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.618366, 34.620613, 42.772621>,  <36.386234, 34.295204, 42.787590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618366, 34.620613, 42.772621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505073, 0.323492, -0.800159,
		-0.638839, 0.483260, 0.598619,
		0.580333, 0.813519, -0.037423,
		36.792465, 34.864670, 42.761395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943775, 34.772217, 42.519596>,  <36.386234, 34.295204, 42.787590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943775, 34.772217, 42.519596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.303276, 34.940632, 42.470638>,  <36.518974, 35.041679, 42.441261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.303276, 34.940632, 42.470638>,  <35.943775, 34.772217, 42.519596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303276, 34.940632, 42.470638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280403, 0.337304, -0.898665,
		-0.337085, 0.841994, 0.421211,
		0.898748, 0.421036, -0.122398,
		36.572899, 35.066944, 42.433918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826679, 35.462330, 42.475960>,  <35.943775, 34.772217, 42.519596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826679, 35.462330, 42.475960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.197845, 35.440125, 42.328506>,  <36.420544, 35.426804, 42.240032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.197845, 35.440125, 42.328506>,  <35.826679, 35.462330, 42.475960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197845, 35.440125, 42.328506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316834, 0.403655, -0.858300,
		0.196446, 0.913226, 0.356970,
		0.927914, -0.055509, -0.368638,
		36.476219, 35.423473, 42.217915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020515, 36.175514, 42.221497>,  <35.826679, 35.462330, 42.475960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020515, 36.175514, 42.221497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.258625, 35.912823, 42.036301>,  <36.401489, 35.755207, 41.925182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.258625, 35.912823, 42.036301>,  <36.020515, 36.175514, 42.221497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258625, 35.912823, 42.036301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230860, 0.412125, -0.881395,
		0.769646, 0.631556, 0.093714,
		0.595272, -0.656727, -0.462991,
		36.437206, 35.715805, 41.897404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352917, 36.577759, 41.617043>,  <36.020515, 36.175514, 42.221497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352917, 36.577759, 41.617043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340927, 36.184258, 41.546249>,  <36.333733, 35.948154, 41.503773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340927, 36.184258, 41.546249>,  <36.352917, 36.577759, 41.617043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340927, 36.184258, 41.546249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346048, 0.176330, -0.921498,
		0.937738, 0.033624, -0.345713,
		-0.029975, -0.983757, -0.176987,
		36.331936, 35.889130, 41.493153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197083, 36.567451, 41.606438>,  <36.352917, 36.577759, 41.617043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197083, 36.567451, 41.606438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.434631, 36.882820, 41.670559>,  <37.577160, 37.072041, 41.709030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.434631, 36.882820, 41.670559>,  <37.197083, 36.567451, 41.606438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434631, 36.882820, 41.670559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190214, -0.331181, 0.924196,
		0.781748, -0.518366, -0.346650,
		0.593876, 0.788426, 0.160300,
		37.612793, 37.119347, 41.718647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664318, 36.322071, 42.074459>,  <37.197083, 36.567451, 41.606438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664318, 36.322071, 42.074459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.702126, 36.718273, 42.114395>,  <37.724808, 36.955994, 42.138355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.702126, 36.718273, 42.114395>,  <37.664318, 36.322071, 42.074459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702126, 36.718273, 42.114395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149798, -0.113297, 0.982204,
		0.984189, -0.077877, -0.159084,
		0.094515, 0.990504, 0.099839,
		37.730480, 37.015423, 42.144348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173298, 36.371422, 42.537426>,  <37.664318, 36.322071, 42.074459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173298, 36.371422, 42.537426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.983410, 36.723339, 42.547291>,  <37.869476, 36.934490, 42.553211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.983410, 36.723339, 42.547291>,  <38.173298, 36.371422, 42.537426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983410, 36.723339, 42.547291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130829, 0.042825, 0.990480,
		0.870358, 0.473430, -0.135432,
		-0.474722, 0.879790, 0.024665,
		37.840992, 36.987278, 42.554691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565010, 36.737503, 43.119717>,  <38.173298, 36.371422, 42.537426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565010, 36.737503, 43.119717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228680, 36.939835, 43.042625>,  <38.026882, 37.061234, 42.996372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228680, 36.939835, 43.042625>,  <38.565010, 36.737503, 43.119717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228680, 36.939835, 43.042625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023549, 0.321519, 0.946610,
		0.540792, 0.800474, -0.258430,
		-0.840827, 0.505833, -0.192725,
		37.976433, 37.091583, 42.984810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660416, 37.305073, 43.554230>,  <38.565010, 36.737503, 43.119717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660416, 37.305073, 43.554230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.266037, 37.272408, 43.495945>,  <38.029408, 37.252808, 43.460976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.266037, 37.272408, 43.495945>,  <38.660416, 37.305073, 43.554230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266037, 37.272408, 43.495945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160367, 0.218821, 0.962497,
		-0.046715, 0.972342, -0.228842,
		-0.985951, -0.081662, -0.145709,
		37.970253, 37.247910, 43.452232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405117, 37.884232, 43.830570>,  <38.660416, 37.305073, 43.554230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405117, 37.884232, 43.830570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.100063, 37.625717, 43.819973>,  <37.917030, 37.470608, 43.813614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.100063, 37.625717, 43.819973>,  <38.405117, 37.884232, 43.830570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100063, 37.625717, 43.819973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236805, 0.240846, 0.941231,
		-0.601925, 0.724089, -0.336722,
		-0.762634, -0.646288, -0.026496,
		37.871273, 37.431831, 43.812023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760094, 38.221119, 44.179379>,  <38.405117, 37.884232, 43.830570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760094, 38.221119, 44.179379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681393, 37.830231, 44.211205>,  <37.634174, 37.595699, 44.230301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681393, 37.830231, 44.211205>,  <37.760094, 38.221119, 44.179379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681393, 37.830231, 44.211205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145152, 0.109291, 0.983355,
		-0.969650, 0.181924, -0.163348,
		-0.196748, -0.977220, 0.079568,
		37.622368, 37.537064, 44.235073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273037, 38.238472, 44.711521>,  <37.760094, 38.221119, 44.179379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273037, 38.238472, 44.711521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.372643, 37.851665, 44.690094>,  <37.432404, 37.619579, 44.677238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.372643, 37.851665, 44.690094>,  <37.273037, 38.238472, 44.711521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372643, 37.851665, 44.690094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406804, -0.154625, 0.900334,
		-0.878922, -0.202403, -0.431890,
		0.249012, -0.967018, -0.053565,
		37.447346, 37.561562, 44.674023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584053, 37.796326, 44.891594>,  <37.273037, 38.238472, 44.711521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584053, 37.796326, 44.891594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921135, 37.588524, 44.948112>,  <37.123383, 37.463844, 44.982021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921135, 37.588524, 44.948112>,  <36.584053, 37.796326, 44.891594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921135, 37.588524, 44.948112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249715, -0.144667, 0.957452,
		-0.476961, -0.842131, -0.251640,
		0.842704, -0.519506, 0.141292,
		37.173946, 37.432671, 44.990501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436066, 37.416607, 45.379440>,  <36.584053, 37.796326, 44.891594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436066, 37.416607, 45.379440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826176, 37.334404, 45.411949>,  <37.060242, 37.285084, 45.431454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.826176, 37.334404, 45.411949>,  <36.436066, 37.416607, 45.379440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826176, 37.334404, 45.411949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083572, -0.002537, 0.996498,
		-0.204580, -0.978653, -0.019649,
		0.975276, -0.205505, 0.081269,
		37.118759, 37.272751, 45.436329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475281, 36.938084, 45.896465>,  <36.436066, 37.416607, 45.379440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475281, 36.938084, 45.896465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864567, 37.025524, 45.867989>,  <37.098137, 37.077988, 45.850903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864567, 37.025524, 45.867989>,  <36.475281, 36.938084, 45.896465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864567, 37.025524, 45.867989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092676, -0.089658, 0.991651,
		0.210393, -0.971687, -0.107515,
		0.973214, 0.218600, -0.071189,
		37.156532, 37.091103, 45.846630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904312, 36.399284, 46.259079>,  <36.475281, 36.938084, 45.896465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904312, 36.399284, 46.259079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.123043, 36.734154, 46.263630>,  <37.254280, 36.935074, 46.266361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.123043, 36.734154, 46.263630>,  <36.904312, 36.399284, 46.259079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123043, 36.734154, 46.263630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232673, -0.164999, 0.958457,
		0.804268, -0.521460, -0.285012,
		0.546823, 0.837171, 0.011374,
		37.287090, 36.985306, 46.267040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559994, 36.148323, 46.428326>,  <36.904312, 36.399284, 46.259079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559994, 36.148323, 46.428326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534447, 36.536049, 46.523270>,  <37.519119, 36.768684, 46.580238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.534447, 36.536049, 46.523270>,  <37.559994, 36.148323, 46.428326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534447, 36.536049, 46.523270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241352, -0.215785, 0.946143,
		0.968334, 0.117718, -0.220165,
		-0.063869, 0.969319, 0.237363,
		37.515285, 36.826843, 46.594479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230747, 36.307854, 46.758846>,  <37.559994, 36.148323, 46.428326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230747, 36.307854, 46.758846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.922455, 36.533157, 46.877983>,  <37.737480, 36.668339, 46.949463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.922455, 36.533157, 46.877983>,  <38.230747, 36.307854, 46.758846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922455, 36.533157, 46.877983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225628, -0.195883, 0.954317,
		0.595874, 0.802723, 0.023885,
		-0.770731, 0.563264, 0.297838,
		37.691235, 36.702137, 46.967335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756927, 36.700779, 47.110207>,  <38.230747, 36.307854, 46.758846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756927, 36.700779, 47.110207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.072067, 36.468029, 47.190922>,  <39.261150, 36.328381, 47.239349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.072067, 36.468029, 47.190922>,  <38.756927, 36.700779, 47.110207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072067, 36.468029, 47.190922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314138, 0.097861, -0.944320,
		0.529726, 0.807372, 0.259887,
		0.787850, -0.581871, 0.201787,
		39.308422, 36.293468, 47.251457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364471, 37.136127, 46.865627>,  <38.756927, 36.700779, 47.110207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364471, 37.136127, 46.865627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.483212, 36.754948, 46.890194>,  <39.554455, 36.526241, 46.904934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.483212, 36.754948, 46.890194>,  <39.364471, 37.136127, 46.865627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483212, 36.754948, 46.890194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295093, 0.030374, -0.954985,
		0.908185, 0.301612, 0.290224,
		0.296851, -0.952947, 0.061418,
		39.572266, 36.469063, 46.908619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103230, 37.101189, 46.747356>,  <39.364471, 37.136127, 46.865627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103230, 37.101189, 46.747356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.987854, 36.737568, 46.627071>,  <39.918629, 36.519394, 46.554901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.987854, 36.737568, 46.627071>,  <40.103230, 37.101189, 46.747356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987854, 36.737568, 46.627071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627878, 0.057538, -0.776182,
		0.722892, -0.412694, 0.554176,
		-0.288440, -0.909051, -0.300715,
		39.901321, 36.464851, 46.536858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661041, 36.846760, 46.512882>,  <40.103230, 37.101189, 46.747356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661041, 36.846760, 46.512882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.366623, 36.631264, 46.348930>,  <40.189972, 36.501965, 46.250561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.366623, 36.631264, 46.348930>,  <40.661041, 36.846760, 46.512882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366623, 36.631264, 46.348930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513232, -0.049304, -0.856833,
		0.441401, -0.841028, 0.312789,
		-0.736042, -0.538740, -0.409880,
		40.145809, 36.469643, 46.225967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066780, 36.445362, 46.017529>,  <40.661041, 36.846760, 46.512882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066780, 36.445362, 46.017529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.684235, 36.398579, 45.910435>,  <40.454708, 36.370510, 45.846180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.684235, 36.398579, 45.910435>,  <41.066780, 36.445362, 46.017529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684235, 36.398579, 45.910435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269241, 0.003013, -0.963068,
		0.113448, -0.993132, 0.028609,
		-0.956367, -0.116961, -0.267733,
		40.397324, 36.363491, 45.830116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939644, 35.750919, 45.727005>,  <41.066780, 36.445362, 46.017529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939644, 35.750919, 45.727005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.658562, 36.002098, 45.593204>,  <40.489914, 36.152805, 45.512924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.658562, 36.002098, 45.593204>,  <40.939644, 35.750919, 45.727005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658562, 36.002098, 45.593204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277308, -0.191231, -0.941558,
		-0.655214, -0.754397, -0.039756,
		-0.702705, 0.627946, -0.334497,
		40.447750, 36.190483, 45.492855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647610, 35.435925, 45.186527>,  <40.939644, 35.750919, 45.727005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647610, 35.435925, 45.186527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563896, 35.821880, 45.123043>,  <40.513668, 36.053455, 45.084953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563896, 35.821880, 45.123043>,  <40.647610, 35.435925, 45.186527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563896, 35.821880, 45.123043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219693, -0.111756, -0.969146,
		-0.952856, -0.237696, -0.188591,
		-0.209286, 0.964889, -0.158708,
		40.501110, 36.111347, 45.075432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241058, 35.498009, 44.606983>,  <40.647610, 35.435925, 45.186527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241058, 35.498009, 44.606983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.394207, 35.866859, 44.629192>,  <40.486095, 36.088169, 44.642517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.394207, 35.866859, 44.629192>,  <40.241058, 35.498009, 44.606983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394207, 35.866859, 44.629192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189529, -0.019584, -0.981680,
		-0.904148, 0.386385, -0.182269,
		0.382876, 0.922129, 0.055524,
		40.509071, 36.143497, 44.645851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977043, 35.917416, 44.059135>,  <40.241058, 35.498009, 44.606983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977043, 35.917416, 44.059135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.293404, 36.140221, 44.160496>,  <40.483219, 36.273903, 44.221313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.293404, 36.140221, 44.160496>,  <39.977043, 35.917416, 44.059135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293404, 36.140221, 44.160496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200509, 0.155347, -0.967297,
		-0.578161, 0.815847, 0.011179,
		0.790902, 0.557011, 0.253400,
		40.530674, 36.307323, 44.236515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883255, 36.467003, 43.621368>,  <39.977043, 35.917416, 44.059135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883255, 36.467003, 43.621368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.267433, 36.509678, 43.724258>,  <40.497940, 36.535282, 43.785992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.267433, 36.509678, 43.724258>,  <39.883255, 36.467003, 43.621368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267433, 36.509678, 43.724258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272290, -0.166282, -0.947739,
		-0.058336, 0.980290, -0.188753,
		0.960445, 0.106683, 0.257223,
		40.555565, 36.541683, 43.801426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225513, 36.975033, 43.195572>,  <39.883255, 36.467003, 43.621368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225513, 36.975033, 43.195572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.561119, 36.794147, 43.316605>,  <40.762482, 36.685616, 43.389225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.561119, 36.794147, 43.316605>,  <40.225513, 36.975033, 43.195572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561119, 36.794147, 43.316605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443308, 0.245684, -0.862043,
		0.315486, 0.857405, 0.406602,
		0.839015, -0.452212, 0.302584,
		40.812824, 36.658485, 43.407379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778877, 37.343300, 43.095905>,  <40.225513, 36.975033, 43.195572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778877, 37.343300, 43.095905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.959110, 36.986454, 43.109188>,  <41.067249, 36.772346, 43.117157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.959110, 36.986454, 43.109188>,  <40.778877, 37.343300, 43.095905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959110, 36.986454, 43.109188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545921, 0.245916, -0.800935,
		0.706362, 0.379014, 0.597831,
		0.450581, -0.892118, 0.033206,
		41.094284, 36.718819, 43.119148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503342, 37.507549, 43.009121>,  <40.778877, 37.343300, 43.095905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503342, 37.507549, 43.009121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.484680, 37.114491, 42.937321>,  <41.473484, 36.878654, 42.894241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.484680, 37.114491, 42.937321>,  <41.503342, 37.507549, 43.009121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484680, 37.114491, 42.937321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552539, 0.124318, -0.824164,
		0.832181, -0.137630, 0.537153,
		-0.046652, -0.982651, -0.179501,
		41.470684, 36.819695, 42.883469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222698, 37.290234, 43.058163>,  <41.503342, 37.507549, 43.009121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222698, 37.290234, 43.058163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.001366, 37.049236, 42.828091>,  <41.868568, 36.904636, 42.690048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.001366, 37.049236, 42.828091>,  <42.222698, 37.290234, 43.058163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001366, 37.049236, 42.828091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598722, 0.192392, -0.777507,
		0.579102, -0.774589, 0.254269,
		-0.553329, -0.602492, -0.575179,
		41.835365, 36.868488, 42.655537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.959990, 33.889168, 41.676479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.816013, 34.259277, 41.628624>,  <24.729628, 34.481342, 41.599911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.816013, 34.259277, 41.628624>,  <24.959990, 33.889168, 41.676479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.816013, 34.259277, 41.628624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217274, -0.041577, -0.975225,
		-0.907323, -0.377016, -0.186072,
		-0.359940, 0.925273, -0.119639,
		24.708031, 34.536858, 41.592731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.338455, 33.890125, 41.153759>,  <24.959990, 33.889168, 41.676479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.338455, 33.890125, 41.153759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.504795, 34.253590, 41.168724>,  <24.604599, 34.471668, 41.177704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.504795, 34.253590, 41.168724>,  <24.338455, 33.890125, 41.153759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.504795, 34.253590, 41.168724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040164, 0.022750, -0.998934,
		-0.908545, 0.416910, -0.027035,
		0.415851, 0.908663, 0.037414,
		24.629551, 34.526188, 41.179947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.940992, 34.288498, 40.791832>,  <24.338455, 33.890125, 41.153759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.940992, 34.288498, 40.791832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.295994, 34.472744, 40.796974>,  <24.508995, 34.583294, 40.800060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.295994, 34.472744, 40.796974>,  <23.940992, 34.288498, 40.791832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295994, 34.472744, 40.796974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005339, 0.017612, -0.999831,
		-0.460767, 0.887423, 0.013171,
		0.887505, 0.460619, 0.012853,
		24.562244, 34.610931, 40.800831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.967415, 34.930393, 40.371403>,  <23.940992, 34.288498, 40.791832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.967415, 34.930393, 40.371403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.337107, 34.779053, 40.392002>,  <24.558922, 34.688248, 40.404362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.337107, 34.779053, 40.392002>,  <23.967415, 34.930393, 40.371403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.337107, 34.779053, 40.392002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030719, -0.060751, -0.997680,
		0.380602, 0.923666, -0.044526,
		0.924229, -0.378351, 0.051496,
		24.614376, 34.665546, 40.407452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.291407, 35.238365, 39.794319>,  <23.967415, 34.930393, 40.371403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.291407, 35.238365, 39.794319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.562515, 34.958092, 39.883465>,  <24.725182, 34.789928, 39.936951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.562515, 34.958092, 39.883465>,  <24.291407, 35.238365, 39.794319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.562515, 34.958092, 39.883465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260933, -0.054164, -0.963836,
		0.687414, 0.711415, 0.146120,
		0.677773, -0.700682, 0.222865,
		24.765846, 34.747887, 39.950325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.877592, 35.394646, 39.510380>,  <24.291407, 35.238365, 39.794319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.877592, 35.394646, 39.510380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.963921, 35.008633, 39.569897>,  <25.015718, 34.777027, 39.605606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.963921, 35.008633, 39.569897>,  <24.877592, 35.394646, 39.510380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963921, 35.008633, 39.569897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509232, -0.018776, -0.860425,
		0.833129, 0.261467, 0.487372,
		0.215822, -0.965030, 0.148790,
		25.028667, 34.719124, 39.614532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620562, 35.271248, 39.370060>,  <24.877592, 35.394646, 39.510380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620562, 35.271248, 39.370060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.438658, 34.915409, 39.353077>,  <25.329515, 34.701904, 39.342888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.438658, 34.915409, 39.353077>,  <25.620562, 35.271248, 39.370060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438658, 34.915409, 39.353077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421896, -0.173201, -0.889947,
		0.784345, -0.422625, 0.454084,
		-0.454761, -0.889601, -0.042454,
		25.302229, 34.648529, 39.340340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080267, 34.958710, 38.963001>,  <25.620562, 35.271248, 39.370060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080267, 34.958710, 38.963001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.788813, 34.684807, 38.957321>,  <25.613939, 34.520466, 38.953915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.788813, 34.684807, 38.957321>,  <26.080267, 34.958710, 38.963001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788813, 34.684807, 38.957321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225028, -0.219768, -0.949244,
		0.646879, -0.694848, 0.314220,
		-0.728636, -0.684754, -0.014197,
		25.570223, 34.479382, 38.953060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426901, 34.306149, 38.889923>,  <26.080267, 34.958710, 38.963001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426901, 34.306149, 38.889923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.062031, 34.321442, 38.726719>,  <25.843109, 34.330620, 38.628796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.062031, 34.321442, 38.726719>,  <26.426901, 34.306149, 38.889923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062031, 34.321442, 38.726719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408135, -0.004785, -0.912909,
		-0.036864, -0.999257, -0.011243,
		-0.912177, 0.038242, -0.408008,
		25.788378, 34.332912, 38.604317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354124, 33.788143, 38.420570>,  <26.426901, 34.306149, 38.889923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354124, 33.788143, 38.420570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.051964, 34.026875, 38.312370>,  <25.870668, 34.170113, 38.247448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.051964, 34.026875, 38.312370>,  <26.354124, 33.788143, 38.420570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051964, 34.026875, 38.312370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242413, -0.128992, -0.961560,
		-0.608775, -0.791935, -0.047237,
		-0.755400, 0.596825, -0.270503,
		25.825344, 34.205921, 38.231220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178024, 33.551140, 37.750000>,  <26.354124, 33.788143, 38.420570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178024, 33.551140, 37.750000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.017824, 33.917320, 37.765766>,  <25.921705, 34.137028, 37.775227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.017824, 33.917320, 37.765766>,  <26.178024, 33.551140, 37.750000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017824, 33.917320, 37.765766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299771, 0.171557, -0.938459,
		-0.865874, -0.364035, -0.343133,
		-0.400499, 0.915449, 0.039419,
		25.897675, 34.191956, 37.777592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007505, 33.627613, 37.073814>,  <26.178024, 33.551140, 37.750000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007505, 33.627613, 37.073814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.941181, 34.007046, 37.181671>,  <25.901386, 34.234703, 37.246384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.941181, 34.007046, 37.181671>,  <26.007505, 33.627613, 37.073814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941181, 34.007046, 37.181671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185485, 0.298546, -0.936198,
		-0.968557, -0.105218, -0.225450,
		-0.165812, 0.948578, 0.269642,
		25.891438, 34.291618, 37.262566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.606770, 33.866970, 36.594482>,  <26.007505, 33.627613, 37.073814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.606770, 33.866970, 36.594482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.823343, 34.163326, 36.753445>,  <25.953287, 34.341141, 36.848824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.823343, 34.163326, 36.753445>,  <25.606770, 33.866970, 36.594482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823343, 34.163326, 36.753445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229047, 0.324817, -0.917623,
		-0.808942, 0.587857, 0.006168,
		0.541434, 0.740890, 0.397405,
		25.985773, 34.385593, 36.872665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441069, 34.445236, 36.215405>,  <25.606770, 33.866970, 36.594482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441069, 34.445236, 36.215405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778372, 34.525707, 36.414780>,  <25.980753, 34.573990, 36.534405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778372, 34.525707, 36.414780>,  <25.441069, 34.445236, 36.215405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778372, 34.525707, 36.414780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386694, 0.417034, -0.822527,
		-0.373344, 0.886346, 0.273871,
		0.843257, 0.201182, 0.498441,
		26.031349, 34.586063, 36.564312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672787, 35.183846, 36.021885>,  <25.441069, 34.445236, 36.215405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672787, 35.183846, 36.021885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.004477, 35.043030, 36.195530>,  <26.203491, 34.958542, 36.299717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.004477, 35.043030, 36.195530>,  <25.672787, 35.183846, 36.021885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004477, 35.043030, 36.195530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547515, 0.355579, -0.757490,
		0.112301, 0.865815, 0.487599,
		0.829226, -0.352035, 0.434115,
		26.253244, 34.937420, 36.325764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177174, 35.777493, 35.997757>,  <25.672787, 35.183846, 36.021885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177174, 35.777493, 35.997757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405266, 35.461658, 36.088440>,  <26.542122, 35.272160, 36.142849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405266, 35.461658, 36.088440>,  <26.177174, 35.777493, 35.997757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405266, 35.461658, 36.088440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703219, 0.326528, -0.631555,
		0.424640, 0.519556, 0.741447,
		0.570231, -0.789583, 0.226705,
		26.576336, 35.224785, 36.156452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855700, 36.054756, 36.200344>,  <26.177174, 35.777493, 35.997757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855700, 36.054756, 36.200344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.914370, 35.678699, 36.077309>,  <26.949572, 35.453064, 36.003487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.914370, 35.678699, 36.077309>,  <26.855700, 36.054756, 36.200344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914370, 35.678699, 36.077309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737654, 0.311131, -0.599219,
		0.659055, -0.139004, 0.739138,
		0.146675, -0.940146, -0.307590,
		26.958372, 35.396656, 35.985031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670877, 35.823143, 36.265057>,  <26.855700, 36.054756, 36.200344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670877, 35.823143, 36.265057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.468651, 35.586254, 36.014080>,  <27.347315, 35.444122, 35.863495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.468651, 35.586254, 36.014080>,  <27.670877, 35.823143, 36.265057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468651, 35.586254, 36.014080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687505, 0.162856, -0.707682,
		0.521287, -0.789146, 0.324821,
		-0.505566, -0.592222, -0.627437,
		27.316980, 35.408588, 35.825848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217041, 35.447132, 35.955872>,  <27.670877, 35.823143, 36.265057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217041, 35.447132, 35.955872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.890003, 35.412754, 35.728134>,  <27.693781, 35.392128, 35.591492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.890003, 35.412754, 35.728134>,  <28.217041, 35.447132, 35.955872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890003, 35.412754, 35.728134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525750, 0.291765, -0.799037,
		0.234785, -0.952621, -0.193362,
		-0.817595, -0.085942, -0.569343,
		27.644724, 35.386971, 35.557331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554058, 35.190857, 35.246597>,  <28.217041, 35.447132, 35.955872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554058, 35.190857, 35.246597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188063, 35.347027, 35.205868>,  <27.968466, 35.440727, 35.181431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188063, 35.347027, 35.205868>,  <28.554058, 35.190857, 35.246597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188063, 35.347027, 35.205868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322537, 0.556125, -0.765960,
		-0.242423, -0.733685, -0.634774,
		-0.914987, 0.390424, -0.101823,
		27.913567, 35.464153, 35.175320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804621, 34.708401, 35.843132>,  <28.554058, 35.190857, 35.246597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804621, 34.708401, 35.843132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145603, 34.646412, 36.042854>,  <29.350193, 34.609219, 36.162685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145603, 34.646412, 36.042854>,  <28.804621, 34.708401, 35.843132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145603, 34.646412, 36.042854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439455, 0.304937, 0.844922,
		-0.283199, -0.939679, 0.191840,
		0.852454, -0.154976, 0.499304,
		29.401339, 34.599918, 36.192646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586552, 34.320610, 36.375927>,  <28.804621, 34.708401, 35.843132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586552, 34.320610, 36.375927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936026, 34.480366, 36.487041>,  <29.145710, 34.576221, 36.553711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936026, 34.480366, 36.487041>,  <28.586552, 34.320610, 36.375927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936026, 34.480366, 36.487041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397316, 0.256271, 0.881173,
		0.280760, -0.880227, 0.382589,
		0.873678, 0.399407, 0.277778,
		29.198130, 34.600185, 36.570377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645018, 34.086079, 37.162045>,  <28.586552, 34.320610, 36.375927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645018, 34.086079, 37.162045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.865017, 34.409813, 37.079605>,  <28.997017, 34.604053, 37.030140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.865017, 34.409813, 37.079605>,  <28.645018, 34.086079, 37.162045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865017, 34.409813, 37.079605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219104, 0.377963, 0.899521,
		0.805912, -0.449578, 0.385208,
		0.550000, 0.809335, -0.206101,
		29.030018, 34.652615, 37.017776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114733, 34.192585, 37.741512>,  <28.645018, 34.086079, 37.162045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114733, 34.192585, 37.741512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086113, 34.537556, 37.541073>,  <29.068941, 34.744537, 37.420811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.086113, 34.537556, 37.541073>,  <29.114733, 34.192585, 37.741512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086113, 34.537556, 37.541073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367047, 0.444367, 0.817199,
		0.927447, 0.242395, 0.284758,
		-0.071548, 0.862428, -0.501097,
		29.064648, 34.796284, 37.390743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278711, 34.626160, 38.233009>,  <29.114733, 34.192585, 37.741512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278711, 34.626160, 38.233009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110342, 34.868546, 37.963009>,  <29.009321, 35.013977, 37.801006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110342, 34.868546, 37.963009>,  <29.278711, 34.626160, 38.233009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110342, 34.868546, 37.963009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549520, 0.421704, 0.721245,
		0.721702, 0.674515, 0.155486,
		-0.420922, 0.605966, -0.675004,
		28.984066, 35.050335, 37.760509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339800, 35.326363, 38.494450>,  <29.278711, 34.626160, 38.233009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339800, 35.326363, 38.494450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.033489, 35.352486, 38.238537>,  <28.849703, 35.368160, 38.084988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.033489, 35.352486, 38.238537>,  <29.339800, 35.326363, 38.494450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033489, 35.352486, 38.238537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555960, 0.432818, 0.709631,
		0.323255, 0.899112, -0.295132,
		-0.765777, 0.065311, -0.639782,
		28.803757, 35.372078, 38.046604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182650, 36.012924, 38.449429>,  <29.339800, 35.326363, 38.494450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182650, 36.012924, 38.449429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.874910, 35.773808, 38.359322>,  <28.690268, 35.630337, 38.305256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.874910, 35.773808, 38.359322>,  <29.182650, 36.012924, 38.449429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874910, 35.773808, 38.359322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577567, 0.500203, 0.645146,
		-0.272982, 0.626451, -0.730096,
		-0.769349, -0.597792, -0.225271,
		28.644106, 35.594471, 38.291740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630243, 36.433144, 38.677086>,  <29.182650, 36.012924, 38.449429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630243, 36.433144, 38.677086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.434483, 36.093269, 38.598576>,  <28.317026, 35.889347, 38.551468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.434483, 36.093269, 38.598576>,  <28.630243, 36.433144, 38.677086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434483, 36.093269, 38.598576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623911, 0.183905, 0.759549,
		-0.609278, 0.494186, -0.620129,
		-0.489404, -0.849682, -0.196279,
		28.287661, 35.838364, 38.539692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919590, 36.646770, 38.702408>,  <28.630243, 36.433144, 38.677086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919590, 36.646770, 38.702408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962706, 36.256924, 38.780907>,  <27.988575, 36.023018, 38.828007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962706, 36.256924, 38.780907>,  <27.919590, 36.646770, 38.702408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962706, 36.256924, 38.780907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610123, 0.091002, 0.787063,
		-0.784940, -0.204568, -0.584825,
		0.107787, -0.974613, 0.196243,
		27.995043, 35.964539, 38.839779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235779, 36.402321, 38.840218>,  <27.919590, 36.646770, 38.702408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235779, 36.402321, 38.840218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475170, 36.117317, 38.986725>,  <27.618805, 35.946316, 39.074631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475170, 36.117317, 38.986725>,  <27.235779, 36.402321, 38.840218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475170, 36.117317, 38.986725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431494, 0.098531, 0.896719,
		-0.675009, -0.694711, -0.248474,
		0.598478, -0.712509, 0.366272,
		27.654713, 35.903564, 39.096607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952530, 36.181694, 39.463634>,  <27.235779, 36.402321, 38.840218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952530, 36.181694, 39.463634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.299332, 35.990475, 39.519871>,  <27.507414, 35.875744, 39.553612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.299332, 35.990475, 39.519871>,  <26.952530, 36.181694, 39.463634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299332, 35.990475, 39.519871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165937, -0.010954, 0.986075,
		-0.469856, -0.878263, -0.088824,
		0.867007, -0.478053, 0.140590,
		27.559433, 35.847057, 39.562046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711361, 35.610256, 39.904484>,  <26.952530, 36.181694, 39.463634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711361, 35.610256, 39.904484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.094696, 35.646484, 40.012844>,  <27.324697, 35.668221, 40.077862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.094696, 35.646484, 40.012844>,  <26.711361, 35.610256, 39.904484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094696, 35.646484, 40.012844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285629, 0.295398, 0.911678,
		0.002550, -0.951071, 0.308961,
		0.958336, 0.090573, 0.270900,
		27.382196, 35.673656, 40.094112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758492, 35.243435, 40.508865>,  <26.711361, 35.610256, 39.904484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758492, 35.243435, 40.508865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.049177, 35.517792, 40.493664>,  <27.223589, 35.682404, 40.484543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.049177, 35.517792, 40.493664>,  <26.758492, 35.243435, 40.508865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049177, 35.517792, 40.493664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276825, 0.343035, 0.897605,
		0.628694, -0.641781, 0.439160,
		0.726713, 0.685889, -0.038003,
		27.267191, 35.723557, 40.482262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335430, 35.128159, 41.060154>,  <26.758492, 35.243435, 40.508865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335430, 35.128159, 41.060154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.389065, 35.511467, 40.959171>,  <27.421246, 35.741451, 40.898582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.389065, 35.511467, 40.959171>,  <27.335430, 35.128159, 41.060154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389065, 35.511467, 40.959171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113051, 0.267889, 0.956794,
		0.984500, -0.099754, 0.144254,
		0.134088, 0.958272, -0.252459,
		27.429291, 35.798950, 40.883434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590054, 35.395840, 41.676884>,  <27.335430, 35.128159, 41.060154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590054, 35.395840, 41.676884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.452084, 35.706287, 41.465729>,  <27.369301, 35.892555, 41.339035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.452084, 35.706287, 41.465729>,  <27.590054, 35.395840, 41.676884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452084, 35.706287, 41.465729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426411, 0.371446, 0.824743,
		0.836181, 0.509571, 0.202826,
		-0.344926, 0.776122, -0.527883,
		27.348606, 35.939125, 41.307365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787640, 35.989620, 42.031498>,  <27.590054, 35.395840, 41.676884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787640, 35.989620, 42.031498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.463045, 36.093014, 41.821861>,  <27.268288, 36.155052, 41.696079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.463045, 36.093014, 41.821861>,  <27.787640, 35.989620, 42.031498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463045, 36.093014, 41.821861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326296, 0.543588, 0.773332,
		0.484787, 0.798558, -0.356771,
		-0.811488, 0.258488, -0.524091,
		27.219599, 36.170559, 41.664635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653992, 36.601360, 42.274113>,  <27.787640, 35.989620, 42.031498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653992, 36.601360, 42.274113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.311760, 36.517204, 42.084919>,  <27.106421, 36.466709, 41.971401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.311760, 36.517204, 42.084919>,  <27.653992, 36.601360, 42.274113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311760, 36.517204, 42.084919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514511, 0.446386, 0.732132,
		0.057102, 0.869756, -0.490168,
		-0.855580, -0.210391, -0.472989,
		27.055086, 36.454086, 41.943024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331030, 37.238949, 42.256920>,  <27.653992, 36.601360, 42.274113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331030, 37.238949, 42.256920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046520, 36.961201, 42.213211>,  <26.875814, 36.794552, 42.186985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046520, 36.961201, 42.213211>,  <27.331030, 37.238949, 42.256920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046520, 36.961201, 42.213211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543245, 0.444372, 0.712333,
		-0.446067, 0.566023, -0.693284,
		-0.711272, -0.694371, -0.109270,
		26.833138, 36.752888, 42.180431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706253, 37.650555, 42.362686>,  <27.331030, 37.238949, 42.256920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706253, 37.650555, 42.362686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.613106, 37.265339, 42.416843>,  <26.557217, 37.034210, 42.449337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.613106, 37.265339, 42.416843>,  <26.706253, 37.650555, 42.362686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613106, 37.265339, 42.416843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634887, 0.256006, 0.728958,
		-0.736675, 0.083791, -0.671036,
		-0.232870, -0.963037, 0.135396,
		26.543245, 36.976429, 42.457462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970301, 37.580959, 42.412609>,  <26.706253, 37.650555, 42.362686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970301, 37.580959, 42.412609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.112036, 37.243382, 42.573704>,  <26.197077, 37.040833, 42.670361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.112036, 37.243382, 42.573704>,  <25.970301, 37.580959, 42.412609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112036, 37.243382, 42.573704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664172, 0.076042, 0.743702,
		-0.658272, -0.531006, -0.533583,
		0.354335, -0.843949, 0.402736,
		26.218336, 36.990196, 42.694523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.368887, 37.227283, 42.638344>,  <25.970301, 37.580959, 42.412609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.368887, 37.227283, 42.638344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632832, 36.993530, 42.827267>,  <25.791199, 36.853279, 42.940620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632832, 36.993530, 42.827267>,  <25.368887, 37.227283, 42.638344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632832, 36.993530, 42.827267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702387, -0.256456, 0.663990,
		-0.266922, -0.769866, -0.579706,
		0.659853, -0.584412, 0.472289,
		25.830790, 36.818214, 42.968960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.031940, 36.488113, 42.788174>,  <25.368887, 37.227283, 42.638344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.031940, 36.488113, 42.788174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.327255, 36.578472, 43.042389>,  <25.504444, 36.632687, 43.194916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.327255, 36.578472, 43.042389>,  <25.031940, 36.488113, 42.788174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.327255, 36.578472, 43.042389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628414, -0.111901, 0.769789,
		0.245009, -0.967703, 0.059341,
		0.738287, 0.225895, 0.635534,
		25.548742, 36.646240, 43.233047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.478962, 33.165600, 48.277035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.110119, 33.178028, 48.122761>,  <39.888813, 33.185486, 48.030197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.110119, 33.178028, 48.122761>,  <40.478962, 33.165600, 48.277035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110119, 33.178028, 48.122761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353828, -0.471133, 0.807985,
		-0.156602, 0.881514, 0.445430,
		-0.922107, 0.031073, -0.385685,
		39.833488, 33.187351, 48.007057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908001, 33.569225, 48.719753>,  <40.478962, 33.165600, 48.277035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908001, 33.569225, 48.719753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.778549, 33.268574, 48.489861>,  <39.700878, 33.088181, 48.351925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.778549, 33.268574, 48.489861>,  <39.908001, 33.569225, 48.719753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778549, 33.268574, 48.489861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365488, -0.460966, 0.808658,
		-0.872745, 0.471760, -0.125532,
		-0.323627, -0.751633, -0.574728,
		39.681461, 33.043083, 48.317444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173508, 33.439648, 48.909794>,  <39.908001, 33.569225, 48.719753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173508, 33.439648, 48.909794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.324665, 33.112221, 48.736752>,  <39.415359, 32.915764, 48.632927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.324665, 33.112221, 48.736752>,  <39.173508, 33.439648, 48.909794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324665, 33.112221, 48.736752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242730, -0.538499, 0.806908,
		-0.893466, -0.199918, -0.402184,
		0.377891, -0.818567, -0.432605,
		39.438034, 32.866650, 48.606972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654732, 32.979626, 48.921085>,  <39.173508, 33.439648, 48.909794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654732, 32.979626, 48.921085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.979797, 32.753132, 48.866009>,  <39.174835, 32.617237, 48.832962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.979797, 32.753132, 48.866009>,  <38.654732, 32.979626, 48.921085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979797, 32.753132, 48.866009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208488, -0.503168, 0.838663,
		-0.544163, -0.652842, -0.526958,
		0.812662, -0.566234, -0.137695,
		39.223598, 32.583263, 48.824699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406349, 32.276901, 49.115459>,  <38.654732, 32.979626, 48.921085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406349, 32.276901, 49.115459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.805553, 32.280991, 49.140366>,  <39.045074, 32.283443, 49.155312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.805553, 32.280991, 49.140366>,  <38.406349, 32.276901, 49.115459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805553, 32.280991, 49.140366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046811, -0.541788, 0.839211,
		0.042319, -0.840453, -0.540229,
		0.998007, 0.010226, 0.062270,
		39.104954, 32.284058, 49.159046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569721, 31.611717, 49.356647>,  <38.406349, 32.276901, 49.115459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569721, 31.611717, 49.356647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881592, 31.843105, 49.452549>,  <39.068714, 31.981939, 49.510090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881592, 31.843105, 49.452549>,  <38.569721, 31.611717, 49.356647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881592, 31.843105, 49.452549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017711, -0.403091, 0.914989,
		0.625937, -0.709145, -0.324524,
		0.779673, 0.578472, 0.239749,
		39.115494, 32.016647, 49.524475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915276, 31.171314, 49.780773>,  <38.569721, 31.611717, 49.356647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915276, 31.171314, 49.780773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.057579, 31.533468, 49.873478>,  <39.142960, 31.750761, 49.929100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.057579, 31.533468, 49.873478>,  <38.915276, 31.171314, 49.780773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057579, 31.533468, 49.873478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240583, -0.328348, 0.913404,
		0.903083, -0.269190, -0.334632,
		0.355755, 0.905387, 0.231763,
		39.164307, 31.805084, 49.943008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531685, 31.053091, 50.138664>,  <38.915276, 31.171314, 49.780773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531685, 31.053091, 50.138664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.394173, 31.404663, 50.270905>,  <39.311665, 31.615606, 50.350250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.394173, 31.404663, 50.270905>,  <39.531685, 31.053091, 50.138664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394173, 31.404663, 50.270905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198303, -0.276169, 0.940429,
		0.917874, 0.388859, -0.079353,
		-0.343780, 0.878931, 0.330600,
		39.291039, 31.668343, 50.370083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927032, 31.216131, 50.784557>,  <39.531685, 31.053091, 50.138664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927032, 31.216131, 50.784557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.610901, 31.460102, 50.807762>,  <39.421223, 31.606485, 50.821686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.610901, 31.460102, 50.807762>,  <39.927032, 31.216131, 50.784557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610901, 31.460102, 50.807762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050438, -0.159132, 0.985968,
		0.610600, 0.776315, 0.156530,
		-0.790331, 0.609928, 0.058010,
		39.373802, 31.643080, 50.825165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056828, 31.580288, 51.376278>,  <39.927032, 31.216131, 50.784557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056828, 31.580288, 51.376278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.665874, 31.645567, 51.322483>,  <39.431301, 31.684734, 51.290207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.665874, 31.645567, 51.322483>,  <40.056828, 31.580288, 51.376278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665874, 31.645567, 51.322483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168258, -0.214907, 0.962031,
		0.128098, 0.962903, 0.237506,
		-0.977384, 0.163197, -0.134487,
		39.372658, 31.694527, 51.282139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917816, 31.904503, 51.975212>,  <40.056828, 31.580288, 51.376278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917816, 31.904503, 51.975212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.553917, 31.826099, 51.828823>,  <39.335579, 31.779057, 51.740990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.553917, 31.826099, 51.828823>,  <39.917816, 31.904503, 51.975212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553917, 31.826099, 51.828823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363907, -0.047798, 0.930208,
		-0.199821, 0.979437, -0.027845,
		-0.909749, -0.196008, -0.365975,
		39.280991, 31.767298, 51.719032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370083, 32.335598, 52.290520>,  <39.917816, 31.904503, 51.975212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370083, 32.335598, 52.290520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.176834, 32.013035, 52.154106>,  <39.060883, 31.819498, 52.072258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.176834, 32.013035, 52.154106>,  <39.370083, 32.335598, 52.290520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176834, 32.013035, 52.154106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395533, -0.146477, 0.906696,
		-0.781116, 0.572938, -0.248192,
		-0.483126, -0.806404, -0.341031,
		39.031895, 31.771114, 52.051796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928902, 32.892998, 52.556843>,  <39.370083, 32.335598, 52.290520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928902, 32.892998, 52.556843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.834267, 33.080547, 52.897236>,  <38.777485, 33.193077, 53.101471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.834267, 33.080547, 52.897236>,  <38.928902, 32.892998, 52.556843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834267, 33.080547, 52.897236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801342, 0.589449, -0.101986,
		-0.549432, 0.657803, -0.515190,
		-0.236591, 0.468877, 0.850987,
		38.763290, 33.221210, 53.152531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695126, 33.645069, 52.626415>,  <38.928902, 32.892998, 52.556843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695126, 33.645069, 52.626415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.889584, 33.491028, 52.940193>,  <39.006256, 33.398602, 53.128460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.889584, 33.491028, 52.940193>,  <38.695126, 33.645069, 52.626415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889584, 33.491028, 52.940193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834733, 0.470299, -0.286424,
		-0.258622, 0.794048, 0.550093,
		0.486143, -0.385106, 0.784448,
		39.035427, 33.375496, 53.175529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727287, 34.446365, 52.444153>,  <38.695126, 33.645069, 52.626415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727287, 34.446365, 52.444153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.704361, 34.831841, 52.548477>,  <38.690605, 35.063126, 52.611073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.704361, 34.831841, 52.548477>,  <38.727287, 34.446365, 52.444153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704361, 34.831841, 52.548477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098811, 0.254477, -0.962018,
		-0.993454, -0.080913, 0.080636,
		-0.057320, 0.963688, 0.260806,
		38.687164, 35.120949, 52.626720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183907, 34.754593, 52.058884>,  <38.727287, 34.446365, 52.444153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183907, 34.754593, 52.058884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418522, 35.058910, 52.169991>,  <38.559292, 35.241501, 52.236656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418522, 35.058910, 52.169991>,  <38.183907, 34.754593, 52.058884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418522, 35.058910, 52.169991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005809, 0.346900, -0.937884,
		-0.809897, 0.548495, 0.207891,
		0.586543, 0.760798, 0.277767,
		38.594486, 35.287151, 52.253319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945629, 35.291115, 51.621529>,  <38.183907, 34.754593, 52.058884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945629, 35.291115, 51.621529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.315140, 35.378510, 51.747322>,  <38.536846, 35.430946, 51.822796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.315140, 35.378510, 51.747322>,  <37.945629, 35.291115, 51.621529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315140, 35.378510, 51.747322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249869, 0.278384, -0.927398,
		-0.290172, 0.935289, 0.202572,
		0.923778, 0.218489, 0.314479,
		38.592274, 35.444057, 51.841667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088463, 36.086739, 51.424294>,  <37.945629, 35.291115, 51.621529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088463, 36.086739, 51.424294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.424217, 35.880634, 51.493507>,  <38.625671, 35.756973, 51.535034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.424217, 35.880634, 51.493507>,  <38.088463, 36.086739, 51.424294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424217, 35.880634, 51.493507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363545, 0.295558, -0.883448,
		0.404066, 0.804457, 0.435407,
		0.839384, -0.515261, 0.173031,
		38.676033, 35.726055, 51.545418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630028, 36.560078, 51.165714>,  <38.088463, 36.086739, 51.424294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630028, 36.560078, 51.165714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823380, 36.210484, 51.185719>,  <38.939392, 36.000729, 51.197720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823380, 36.210484, 51.185719>,  <38.630028, 36.560078, 51.165714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823380, 36.210484, 51.185719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415152, 0.178566, -0.892055,
		0.770710, 0.451962, 0.449150,
		0.483378, -0.873982, 0.050011,
		38.968391, 35.948288, 51.200722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226719, 36.730362, 50.875706>,  <38.630028, 36.560078, 51.165714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226719, 36.730362, 50.875706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.260845, 36.331989, 50.864063>,  <39.281322, 36.092968, 50.857079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.260845, 36.331989, 50.864063>,  <39.226719, 36.730362, 50.875706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260845, 36.331989, 50.864063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338163, 0.056427, -0.939394,
		0.937212, 0.070301, 0.341601,
		0.085315, -0.995929, -0.029111,
		39.286438, 36.033211, 50.855331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876705, 36.567696, 50.598606>,  <39.226719, 36.730362, 50.875706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876705, 36.567696, 50.598606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.673515, 36.228207, 50.539772>,  <39.551601, 36.024513, 50.504471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.673515, 36.228207, 50.539772>,  <39.876705, 36.567696, 50.598606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673515, 36.228207, 50.539772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227634, 0.032419, -0.973207,
		0.830749, -0.527847, 0.176729,
		-0.507975, -0.848720, -0.147088,
		39.521122, 35.973591, 50.495644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224770, 36.175026, 50.170059>,  <39.876705, 36.567696, 50.598606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224770, 36.175026, 50.170059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.854927, 36.040710, 50.098118>,  <39.633022, 35.960121, 50.054955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.854927, 36.040710, 50.098118>,  <40.224770, 36.175026, 50.170059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854927, 36.040710, 50.098118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117449, 0.197849, -0.973171,
		0.362361, -0.920926, -0.143495,
		-0.924608, -0.335786, -0.179854,
		39.577545, 35.939976, 50.044163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321381, 35.683456, 49.644840>,  <40.224770, 36.175026, 50.170059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321381, 35.683456, 49.644840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.927917, 35.750519, 49.618565>,  <39.691841, 35.790756, 49.602798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.927917, 35.750519, 49.618565>,  <40.321381, 35.683456, 49.644840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927917, 35.750519, 49.618565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086002, 0.116914, -0.989411,
		-0.158200, -0.978888, -0.129422,
		-0.983654, 0.167656, -0.065690,
		39.632820, 35.800816, 49.598858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091766, 35.227631, 49.145275>,  <40.321381, 35.683456, 49.644840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091766, 35.227631, 49.145275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.789177, 35.487110, 49.178596>,  <39.607624, 35.642799, 49.198589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.789177, 35.487110, 49.178596>,  <40.091766, 35.227631, 49.145275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789177, 35.487110, 49.178596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100313, 0.010780, -0.994898,
		-0.646289, -0.760968, 0.056918,
		-0.756471, 0.648701, 0.083301,
		39.562237, 35.681721, 49.203587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626431, 35.004658, 48.692360>,  <40.091766, 35.227631, 49.145275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626431, 35.004658, 48.692360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498417, 35.380993, 48.736900>,  <39.421608, 35.606792, 48.763626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498417, 35.380993, 48.736900>,  <39.626431, 35.004658, 48.692360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498417, 35.380993, 48.736900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098088, 0.083998, -0.991626,
		-0.942314, -0.328278, 0.065403,
		-0.320035, 0.940839, 0.111353,
		39.402405, 35.663246, 48.770306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033016, 35.051296, 48.269928>,  <39.626431, 35.004658, 48.692360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033016, 35.051296, 48.269928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.181023, 35.420338, 48.313541>,  <39.269829, 35.641762, 48.339710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.181023, 35.420338, 48.313541>,  <39.033016, 35.051296, 48.269928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181023, 35.420338, 48.313541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039798, 0.133002, -0.990317,
		-0.928171, 0.362098, 0.085931,
		0.370021, 0.922603, 0.109037,
		39.292030, 35.697117, 48.346252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737740, 35.319519, 47.670364>,  <39.033016, 35.051296, 48.269928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737740, 35.319519, 47.670364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.000469, 35.588081, 47.807648>,  <39.158108, 35.749218, 47.890018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.000469, 35.588081, 47.807648>,  <38.737740, 35.319519, 47.670364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000469, 35.588081, 47.807648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173363, 0.308507, -0.935291,
		-0.733842, 0.673824, 0.086239,
		0.656827, 0.671404, 0.343212,
		39.197517, 35.789501, 47.910610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578415, 36.016907, 47.375790>,  <38.737740, 35.319519, 47.670364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578415, 36.016907, 47.375790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.963348, 35.995762, 47.482460>,  <39.194309, 35.983074, 47.546463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.963348, 35.995762, 47.482460>,  <38.578415, 36.016907, 47.375790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963348, 35.995762, 47.482460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266871, 0.370899, -0.889502,
		-0.051890, 0.927168, 0.371036,
		0.962334, -0.052862, 0.266681,
		39.252048, 35.979904, 47.562466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213860, 36.606483, 47.740292>,  <38.578415, 36.016907, 47.375790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213860, 36.606483, 47.740292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.865540, 36.752232, 47.608269>,  <37.656548, 36.839680, 47.529057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.865540, 36.752232, 47.608269>,  <38.213860, 36.606483, 47.740292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865540, 36.752232, 47.608269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431708, -0.245500, 0.867962,
		0.235235, 0.898310, 0.371085,
		-0.870800, 0.364375, -0.330057,
		37.604298, 36.861546, 47.509251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865288, 37.161537, 48.244530>,  <38.213860, 36.606483, 47.740292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865288, 37.161537, 48.244530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.586754, 36.974411, 48.026806>,  <37.419636, 36.862137, 47.896172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.586754, 36.974411, 48.026806>,  <37.865288, 37.161537, 48.244530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586754, 36.974411, 48.026806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501289, -0.225745, 0.835313,
		-0.513646, 0.854511, -0.077316,
		-0.696331, -0.467814, -0.544310,
		37.377853, 36.834068, 47.863514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180557, 37.440647, 48.444061>,  <37.865288, 37.161537, 48.244530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180557, 37.440647, 48.444061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127041, 37.076046, 48.288486>,  <37.094933, 36.857285, 48.195141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.127041, 37.076046, 48.288486>,  <37.180557, 37.440647, 48.444061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127041, 37.076046, 48.288486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496833, -0.277890, 0.822152,
		-0.857472, 0.303230, -0.415685,
		-0.133787, -0.911498, -0.388938,
		37.086906, 36.802597, 48.171806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522572, 37.343376, 48.556137>,  <37.180557, 37.440647, 48.444061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522572, 37.343376, 48.556137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680466, 36.979374, 48.505432>,  <36.775204, 36.760971, 48.475010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680466, 36.979374, 48.505432>,  <36.522572, 37.343376, 48.556137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680466, 36.979374, 48.505432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453587, -0.312995, 0.834441,
		-0.799025, -0.271886, -0.536319,
		0.394738, -0.910007, -0.126766,
		36.798885, 36.706371, 48.467403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898811, 36.985672, 48.740036>,  <36.522572, 37.343376, 48.556137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898811, 36.985672, 48.740036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199066, 36.722218, 48.760979>,  <36.379219, 36.564144, 48.773544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199066, 36.722218, 48.760979>,  <35.898811, 36.985672, 48.740036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199066, 36.722218, 48.760979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341936, -0.319444, 0.883762,
		-0.565357, -0.681284, -0.464998,
		0.750634, -0.658641, 0.052356,
		36.424255, 36.524624, 48.776684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626301, 36.400696, 49.013634>,  <35.898811, 36.985672, 48.740036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626301, 36.400696, 49.013634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.016045, 36.342052, 49.081909>,  <36.249889, 36.306866, 49.122875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.016045, 36.342052, 49.081909>,  <35.626301, 36.400696, 49.013634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016045, 36.342052, 49.081909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209757, -0.317248, 0.924854,
		-0.081439, -0.936942, -0.339865,
		0.974356, -0.146609, 0.170694,
		36.308350, 36.298069, 49.133118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704189, 35.770584, 49.388531>,  <35.626301, 36.400696, 49.013634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704189, 35.770584, 49.388531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028625, 35.981602, 49.489586>,  <36.223289, 36.108212, 49.550220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028625, 35.981602, 49.489586>,  <35.704189, 35.770584, 49.388531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028625, 35.981602, 49.489586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071328, -0.339492, 0.937901,
		0.580551, -0.778746, -0.237731,
		0.811094, 0.527542, 0.252639,
		36.271954, 36.139866, 49.565376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717556, 35.071419, 49.102615>,  <35.704189, 35.770584, 49.388531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717556, 35.071419, 49.102615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524452, 34.721718, 49.082146>,  <35.408588, 34.511898, 49.069862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524452, 34.721718, 49.082146>,  <35.717556, 35.071419, 49.102615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524452, 34.721718, 49.082146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464941, -0.206340, -0.860961,
		0.742139, -0.439435, 0.506089,
		-0.482763, -0.874254, -0.051179,
		35.379623, 34.459442, 49.066792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222008, 34.457787, 49.050011>,  <35.717556, 35.071419, 49.102615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222008, 34.457787, 49.050011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864498, 34.365349, 48.896248>,  <35.649994, 34.309887, 48.803989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864498, 34.365349, 48.896248>,  <36.222008, 34.457787, 49.050011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864498, 34.365349, 48.896248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412903, -0.089189, -0.906398,
		0.175177, -0.968835, 0.175134,
		-0.893770, -0.231094, -0.384411,
		35.596367, 34.296021, 48.780926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354126, 33.988289, 48.551247>,  <36.222008, 34.457787, 49.050011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354126, 33.988289, 48.551247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987701, 34.054630, 48.405190>,  <35.767849, 34.094437, 48.317554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987701, 34.054630, 48.405190>,  <36.354126, 33.988289, 48.551247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987701, 34.054630, 48.405190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350721, -0.110295, -0.929962,
		-0.194514, -0.979962, 0.042868,
		-0.916057, 0.165857, -0.365147,
		35.712883, 34.104385, 48.295647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167736, 33.401974, 48.085217>,  <36.354126, 33.988289, 48.551247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167736, 33.401974, 48.085217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939125, 33.711754, 47.976711>,  <35.801960, 33.897621, 47.911610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939125, 33.711754, 47.976711>,  <36.167736, 33.401974, 48.085217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939125, 33.711754, 47.976711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269275, -0.135266, -0.953517,
		-0.775144, -0.618005, -0.131232,
		-0.571527, 0.774450, -0.271264,
		35.767666, 33.944088, 47.895332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863579, 33.259991, 47.360172>,  <36.167736, 33.401974, 48.085217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863579, 33.259991, 47.360172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806351, 33.655796, 47.368164>,  <35.772015, 33.893280, 47.372959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806351, 33.655796, 47.368164>,  <35.863579, 33.259991, 47.360172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806351, 33.655796, 47.368164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321944, 0.065620, -0.944482,
		-0.935887, -0.128690, -0.327955,
		-0.143066, 0.989511, 0.019982,
		35.763432, 33.952648, 47.374157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501923, 33.438324, 46.790012>,  <35.863579, 33.259991, 47.360172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501923, 33.438324, 46.790012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684566, 33.778152, 46.895641>,  <35.794151, 33.982048, 46.959019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684566, 33.778152, 46.895641>,  <35.501923, 33.438324, 46.790012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684566, 33.778152, 46.895641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287144, 0.140208, -0.947571,
		-0.842055, 0.508496, -0.179930,
		0.456608, 0.849572, 0.264075,
		35.821548, 34.033024, 46.974865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221123, 33.879272, 46.345539>,  <35.501923, 33.438324, 46.790012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221123, 33.879272, 46.345539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544830, 34.077732, 46.471348>,  <35.739056, 34.196808, 46.546833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544830, 34.077732, 46.471348>,  <35.221123, 33.879272, 46.345539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544830, 34.077732, 46.471348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247790, 0.197129, -0.948546,
		-0.532624, 0.845561, 0.036589,
		0.809266, 0.496152, 0.314518,
		35.787609, 34.226578, 46.565704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.802341, 28.715708, 51.383282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.909325, 29.099558, 51.418118>,  <36.973515, 29.329868, 51.439018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.909325, 29.099558, 51.418118>,  <36.802341, 28.715708, 51.383282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909325, 29.099558, 51.418118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191928, 0.035512, -0.980767,
		-0.944261, 0.279032, -0.174681,
		0.267462, 0.959625, 0.087087,
		36.989563, 29.387445, 51.444244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328873, 29.235319, 51.067444>,  <36.802341, 28.715708, 51.383282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328873, 29.235319, 51.067444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.675770, 29.434095, 51.079746>,  <36.883907, 29.553362, 51.087128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.675770, 29.434095, 51.079746>,  <36.328873, 29.235319, 51.067444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675770, 29.434095, 51.079746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019850, 0.096231, -0.995161,
		-0.497496, 0.862432, 0.093319,
		0.867239, 0.496941, 0.030755,
		36.935940, 29.583178, 51.088974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267467, 29.898613, 50.643627>,  <36.328873, 29.235319, 51.067444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267467, 29.898613, 50.643627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.655315, 29.801838, 50.658115>,  <36.888023, 29.743773, 50.666809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.655315, 29.801838, 50.658115>,  <36.267467, 29.898613, 50.643627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655315, 29.801838, 50.658115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077882, 0.164949, -0.983222,
		0.231903, 0.956169, 0.178780,
		0.969616, -0.241936, 0.036216,
		36.946201, 29.729258, 50.668980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640129, 30.420824, 50.397491>,  <36.267467, 29.898613, 50.643627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640129, 30.420824, 50.397491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.882675, 30.107838, 50.340824>,  <37.028202, 29.920046, 50.306824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.882675, 30.107838, 50.340824>,  <36.640129, 30.420824, 50.397491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882675, 30.107838, 50.340824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078430, 0.236133, -0.968550,
		0.791308, 0.576186, 0.204552,
		0.606367, -0.782465, -0.141664,
		37.064587, 29.873098, 50.298325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160942, 30.726917, 49.981567>,  <36.640129, 30.420824, 50.397491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160942, 30.726917, 49.981567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.188534, 30.329494, 49.945599>,  <37.205090, 30.091042, 49.924019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.188534, 30.329494, 49.945599>,  <37.160942, 30.726917, 49.981567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188534, 30.329494, 49.945599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203998, 0.102278, -0.973614,
		0.976538, 0.048811, 0.209738,
		0.068975, -0.993558, -0.089921,
		37.209225, 30.031427, 49.918621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688446, 30.652140, 49.553005>,  <37.160942, 30.726917, 49.981567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688446, 30.652140, 49.553005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.520370, 30.290310, 49.524200>,  <37.419525, 30.073212, 49.506916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.520370, 30.290310, 49.524200>,  <37.688446, 30.652140, 49.553005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520370, 30.290310, 49.524200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197991, -0.013945, -0.980105,
		0.885574, -0.426086, 0.184957,
		-0.420188, -0.904575, -0.072012,
		37.394314, 30.018938, 49.502598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191772, 30.088579, 49.316032>,  <37.688446, 30.652140, 49.553005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191772, 30.088579, 49.316032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.826576, 29.951502, 49.227482>,  <37.607456, 29.869255, 49.174351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.826576, 29.951502, 49.227482>,  <38.191772, 30.088579, 49.316032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826576, 29.951502, 49.227482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267408, -0.092858, -0.959099,
		0.308119, -0.934848, 0.176417,
		-0.912993, -0.342691, -0.221374,
		37.552677, 29.848694, 49.161068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304363, 29.588779, 48.730343>,  <38.191772, 30.088579, 49.316032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304363, 29.588779, 48.730343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.910622, 29.654825, 48.705711>,  <37.674377, 29.694452, 48.690933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.910622, 29.654825, 48.705711>,  <38.304363, 29.588779, 48.730343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910622, 29.654825, 48.705711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052082, -0.061251, -0.996763,
		-0.168350, -0.984371, 0.051693,
		-0.984351, 0.165112, -0.061579,
		37.615318, 29.704359, 48.687237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096558, 29.238977, 48.201748>,  <38.304363, 29.588779, 48.730343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096558, 29.238977, 48.201748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.780430, 29.481747, 48.235321>,  <37.590755, 29.627409, 48.255463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.780430, 29.481747, 48.235321>,  <38.096558, 29.238977, 48.201748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780430, 29.481747, 48.235321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099347, 0.008231, -0.995019,
		-0.604590, -0.794718, 0.053791,
		-0.790317, 0.606923, 0.083929,
		37.543335, 29.663824, 48.260498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545467, 28.963238, 47.787560>,  <38.096558, 29.238977, 48.201748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545467, 28.963238, 47.787560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.443600, 29.343273, 47.859650>,  <37.382481, 29.571295, 47.902905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.443600, 29.343273, 47.859650>,  <37.545467, 28.963238, 47.787560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443600, 29.343273, 47.859650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145826, 0.146508, -0.978402,
		-0.955971, -0.275447, 0.101237,
		-0.254666, 0.950086, 0.180224,
		37.367199, 29.628300, 47.913715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179195, 29.057283, 47.137703>,  <37.545467, 28.963238, 47.787560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179195, 29.057283, 47.137703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.234848, 29.429558, 47.273033>,  <37.268238, 29.652924, 47.354233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.234848, 29.429558, 47.273033>,  <37.179195, 29.057283, 47.137703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234848, 29.429558, 47.273033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086900, 0.351804, -0.932031,
		-0.986454, 0.100273, 0.129824,
		0.139130, 0.930688, 0.338324,
		37.276588, 29.708765, 47.374531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639027, 29.492313, 46.903503>,  <37.179195, 29.057283, 47.137703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639027, 29.492313, 46.903503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.979137, 29.693443, 46.965717>,  <37.183205, 29.814121, 47.003048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.979137, 29.693443, 46.965717>,  <36.639027, 29.492313, 46.903503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979137, 29.693443, 46.965717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109328, 0.457800, -0.882308,
		-0.514851, 0.733203, 0.444231,
		0.850280, 0.502824, 0.155539,
		37.234222, 29.844290, 47.012379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917351, 29.768227, 46.994839>,  <36.639027, 29.492313, 46.903503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917351, 29.768227, 46.994839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.585457, 29.931959, 46.843056>,  <35.386318, 30.030199, 46.751987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.585457, 29.931959, 46.843056>,  <35.917351, 29.768227, 46.994839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585457, 29.931959, 46.843056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135226, 0.512163, 0.848176,
		0.541526, 0.755076, -0.369609,
		-0.829737, 0.409329, -0.379456,
		35.336536, 30.054758, 46.729218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920967, 30.600397, 46.992321>,  <35.917351, 29.768227, 46.994839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920967, 30.600397, 46.992321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577568, 30.400192, 47.036980>,  <35.371529, 30.280069, 47.063774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577568, 30.400192, 47.036980>,  <35.920967, 30.600397, 46.992321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577568, 30.400192, 47.036980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185957, 0.506740, 0.841804,
		-0.477907, 0.701929, -0.528111,
		-0.858501, -0.500510, 0.111646,
		35.320019, 30.250040, 47.070473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540703, 31.050667, 47.293781>,  <35.920967, 30.600397, 46.992321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540703, 31.050667, 47.293781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.310326, 30.732307, 47.368435>,  <35.172100, 30.541292, 47.413227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.310326, 30.732307, 47.368435>,  <35.540703, 31.050667, 47.293781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310326, 30.732307, 47.368435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265734, 0.398179, 0.877975,
		-0.773094, 0.456069, -0.440826,
		-0.575944, -0.795899, 0.186637,
		35.137543, 30.493538, 47.424427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982796, 31.310160, 47.647648>,  <35.540703, 31.050667, 47.293781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982796, 31.310160, 47.647648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.003685, 30.926586, 47.759155>,  <35.016220, 30.696442, 47.826061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.003685, 30.926586, 47.759155>,  <34.982796, 31.310160, 47.647648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003685, 30.926586, 47.759155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218355, 0.261433, 0.940199,
		-0.974471, -0.109973, -0.195735,
		0.052225, -0.958936, 0.278773,
		35.019352, 30.638905, 47.842789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307804, 31.156487, 47.982616>,  <34.982796, 31.310160, 47.647648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307804, 31.156487, 47.982616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.537334, 30.858837, 48.119442>,  <34.675053, 30.680248, 48.201538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.537334, 30.858837, 48.119442>,  <34.307804, 31.156487, 47.982616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537334, 30.858837, 48.119442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128743, 0.330516, 0.934978,
		-0.808794, -0.580553, 0.093858,
		0.573826, -0.744122, 0.342062,
		34.709484, 30.635601, 48.222061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873661, 30.884674, 48.499344>,  <34.307804, 31.156487, 47.982616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873661, 30.884674, 48.499344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.262299, 30.807755, 48.554512>,  <34.495483, 30.761602, 48.587612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.262299, 30.807755, 48.554512>,  <33.873661, 30.884674, 48.499344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262299, 30.807755, 48.554512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054215, 0.386422, 0.920727,
		-0.230351, -0.902052, 0.365021,
		0.971596, -0.192301, 0.137918,
		34.553776, 30.750065, 48.595886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903786, 30.515785, 49.147991>,  <33.873661, 30.884674, 48.499344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903786, 30.515785, 49.147991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.273296, 30.643976, 49.064144>,  <34.495003, 30.720890, 49.013836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.273296, 30.643976, 49.064144>,  <33.903786, 30.515785, 49.147991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273296, 30.643976, 49.064144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218989, 0.006961, 0.975702,
		0.314149, -0.947231, -0.063751,
		0.923772, 0.320477, -0.209620,
		34.550426, 30.740118, 49.001259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213745, 30.266935, 49.627636>,  <33.903786, 30.515785, 49.147991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213745, 30.266935, 49.627636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.470680, 30.551361, 49.513237>,  <34.624840, 30.722015, 49.444595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.470680, 30.551361, 49.513237>,  <34.213745, 30.266935, 49.627636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470680, 30.551361, 49.513237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374678, 0.034197, 0.926524,
		0.668597, -0.702297, -0.244453,
		0.642335, 0.711062, -0.285999,
		34.663380, 30.764679, 49.427437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764206, 30.120214, 49.961048>,  <34.213745, 30.266935, 49.627636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764206, 30.120214, 49.961048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.814869, 30.507961, 49.876873>,  <34.845268, 30.740610, 49.826366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.814869, 30.507961, 49.876873>,  <34.764206, 30.120214, 49.961048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814869, 30.507961, 49.876873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264780, 0.171410, 0.948952,
		0.955954, -0.175915, -0.234958,
		0.126661, 0.969367, -0.210439,
		34.852867, 30.798771, 49.813740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308842, 30.241549, 50.356087>,  <34.764206, 30.120214, 49.961048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308842, 30.241549, 50.356087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.150040, 30.596001, 50.260456>,  <35.054756, 30.808672, 50.203079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.150040, 30.596001, 50.260456>,  <35.308842, 30.241549, 50.356087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150040, 30.596001, 50.260456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186630, 0.332982, 0.924279,
		0.898640, 0.322327, -0.297574,
		-0.397007, 0.886131, -0.239075,
		35.030937, 30.861839, 50.188732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764069, 30.673477, 50.657120>,  <35.308842, 30.241549, 50.356087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764069, 30.673477, 50.657120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433376, 30.892717, 50.606361>,  <35.234962, 31.024261, 50.575905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433376, 30.892717, 50.606361>,  <35.764069, 30.673477, 50.657120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433376, 30.892717, 50.606361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061223, 0.311862, 0.948153,
		0.559256, 0.776099, -0.291382,
		-0.826731, 0.548099, -0.126896,
		35.185356, 31.057148, 50.568295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918316, 31.304670, 50.916317>,  <35.764069, 30.673477, 50.657120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918316, 31.304670, 50.916317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.518845, 31.284975, 50.910530>,  <35.279160, 31.273159, 50.907059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.518845, 31.284975, 50.910530>,  <35.918316, 31.304670, 50.916317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518845, 31.284975, 50.910530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030759, 0.348643, 0.936751,
		-0.041078, 0.935962, -0.349698,
		-0.998682, -0.049236, -0.014468,
		35.219238, 31.270205, 50.906189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666065, 31.942364, 51.182701>,  <35.918316, 31.304670, 50.916317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666065, 31.942364, 51.182701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.352436, 31.698582, 51.229671>,  <35.164257, 31.552313, 51.257854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.352436, 31.698582, 51.229671>,  <35.666065, 31.942364, 51.182701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352436, 31.698582, 51.229671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150218, 0.369911, 0.916843,
		-0.602213, 0.701234, -0.381589,
		-0.784076, -0.609456, 0.117427,
		35.117214, 31.515745, 51.264900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232761, 32.265324, 51.627605>,  <35.666065, 31.942364, 51.182701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232761, 32.265324, 51.627605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.093555, 31.890594, 51.641788>,  <35.010033, 31.665758, 51.650299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.093555, 31.890594, 51.641788>,  <35.232761, 32.265324, 51.627605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093555, 31.890594, 51.641788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303580, 0.148398, 0.941178,
		-0.886976, 0.316778, -0.336044,
		-0.348013, -0.936819, 0.035458,
		34.989151, 31.609549, 51.652428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037674, 32.905514, 51.882969>,  <35.232761, 32.265324, 51.627605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037674, 32.905514, 51.882969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.876217, 33.270504, 51.856270>,  <34.779343, 33.489498, 51.840252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.876217, 33.270504, 51.856270>,  <35.037674, 32.905514, 51.882969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876217, 33.270504, 51.856270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249143, 0.039426, -0.967664,
		-0.880341, -0.407221, -0.243252,
		-0.403643, 0.912478, -0.066748,
		34.755123, 33.544247, 51.836246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572151, 32.913971, 51.331219>,  <35.037674, 32.905514, 51.882969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572151, 32.913971, 51.331219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.646938, 33.304256, 51.376884>,  <34.691811, 33.538425, 51.404285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.646938, 33.304256, 51.376884>,  <34.572151, 32.913971, 51.331219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646938, 33.304256, 51.376884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114470, 0.093786, -0.988990,
		-0.975675, 0.197973, -0.094155,
		0.186963, 0.975710, 0.114167,
		34.703026, 33.596970, 51.411133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174953, 33.268017, 50.848206>,  <34.572151, 32.913971, 51.331219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174953, 33.268017, 50.848206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.453934, 33.534874, 50.952881>,  <34.621323, 33.694988, 51.015686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.453934, 33.534874, 50.952881>,  <34.174953, 33.268017, 50.848206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453934, 33.534874, 50.952881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128743, 0.242574, -0.961552,
		-0.704970, 0.704329, 0.083294,
		0.697454, 0.667142, 0.261685,
		34.663170, 33.735016, 51.031387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016575, 33.959709, 50.455894>,  <34.174953, 33.268017, 50.848206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016575, 33.959709, 50.455894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.408199, 33.929905, 50.531670>,  <34.643173, 33.912022, 50.577137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.408199, 33.929905, 50.531670>,  <34.016575, 33.959709, 50.455894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408199, 33.929905, 50.531670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203566, 0.355477, -0.912248,
		0.000626, 0.931711, 0.363200,
		0.979061, -0.074506, 0.189442,
		34.701920, 33.907555, 50.588501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227642, 34.488754, 50.123894>,  <34.016575, 33.959709, 50.455894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227642, 34.488754, 50.123894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.571674, 34.290592, 50.172607>,  <34.778095, 34.171696, 50.201836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.571674, 34.290592, 50.172607>,  <34.227642, 34.488754, 50.123894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571674, 34.290592, 50.172607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289134, 0.276683, -0.916432,
		0.420307, 0.823421, 0.381208,
		0.860083, -0.495403, 0.121788,
		34.829700, 34.141972, 50.209145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619621, 35.028923, 49.986698>,  <34.227642, 34.488754, 50.123894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619621, 35.028923, 49.986698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.820755, 34.684647, 49.954765>,  <34.941437, 34.478081, 49.935608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.820755, 34.684647, 49.954765>,  <34.619621, 35.028923, 49.986698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820755, 34.684647, 49.954765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321259, 0.271826, -0.907140,
		0.802465, 0.430496, 0.413188,
		0.502835, -0.860688, -0.079830,
		34.971607, 34.426441, 49.930817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234997, 35.200699, 49.631363>,  <34.619621, 35.028923, 49.986698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234997, 35.200699, 49.631363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.203632, 34.806782, 49.569344>,  <35.184814, 34.570431, 49.532131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.203632, 34.806782, 49.569344>,  <35.234997, 35.200699, 49.631363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203632, 34.806782, 49.569344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466071, 0.101272, -0.878932,
		0.881266, -0.141186, 0.451040,
		-0.078416, -0.984789, -0.155051,
		35.180107, 34.511345, 49.522827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771130, 35.510250, 50.060066>,  <35.234997, 35.200699, 49.631363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771130, 35.510250, 50.060066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.034187, 35.811172, 50.044415>,  <36.192024, 35.991726, 50.035023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.034187, 35.811172, 50.044415>,  <35.771130, 35.510250, 50.060066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034187, 35.811172, 50.044415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084014, 0.124864, 0.988610,
		0.748628, -0.646868, 0.145321,
		0.657646, 0.752310, -0.039130,
		36.231480, 36.036865, 50.032677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356068, 35.343674, 50.505196>,  <35.771130, 35.510250, 50.060066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356068, 35.343674, 50.505196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.432949, 35.735367, 50.479374>,  <36.479080, 35.970383, 50.463882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.432949, 35.735367, 50.479374>,  <36.356068, 35.343674, 50.505196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432949, 35.735367, 50.479374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144059, 0.036909, 0.988881,
		0.970723, -0.199369, -0.133973,
		0.192208, 0.979229, -0.064550,
		36.490612, 36.029137, 50.460011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013412, 35.426094, 50.904877>,  <36.356068, 35.343674, 50.505196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013412, 35.426094, 50.904877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.800503, 35.764175, 50.885612>,  <36.672756, 35.967022, 50.874054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.800503, 35.764175, 50.885612>,  <37.013412, 35.426094, 50.904877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800503, 35.764175, 50.885612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089078, 0.112493, 0.989652,
		0.841873, 0.522475, -0.135165,
		-0.532274, 0.845201, -0.048164,
		36.640820, 36.017735, 50.871162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416965, 35.895992, 51.191837>,  <37.013412, 35.426094, 50.904877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416965, 35.895992, 51.191837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.034222, 36.001358, 51.240875>,  <36.804577, 36.064579, 51.270298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.034222, 36.001358, 51.240875>,  <37.416965, 35.895992, 51.191837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034222, 36.001358, 51.240875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128510, 0.005289, 0.991694,
		0.260582, 0.964667, -0.038913,
		-0.956860, 0.263418, 0.122591,
		36.747162, 36.080383, 51.277653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457592, 36.243954, 51.818981>,  <37.416965, 35.895992, 51.191837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457592, 36.243954, 51.818981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.069695, 36.180149, 51.745068>,  <36.836956, 36.141865, 51.700722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.069695, 36.180149, 51.745068>,  <37.457592, 36.243954, 51.818981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069695, 36.180149, 51.745068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148718, -0.214204, 0.965401,
		-0.193576, 0.963676, 0.184001,
		-0.969748, -0.159514, -0.184780,
		36.778770, 36.132294, 51.689632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168377, 36.464249, 52.433830>,  <37.457592, 36.243954, 51.818981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168377, 36.464249, 52.433830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.901352, 36.230057, 52.249844>,  <36.741135, 36.089542, 52.139450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.901352, 36.230057, 52.249844>,  <37.168377, 36.464249, 52.433830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901352, 36.230057, 52.249844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237153, -0.418397, 0.876757,
		-0.705773, 0.694374, 0.140459,
		-0.667565, -0.585481, -0.459966,
		36.701084, 36.054413, 52.111855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605167, 36.471272, 52.903587>,  <37.168377, 36.464249, 52.433830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605167, 36.471272, 52.903587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590172, 36.154774, 52.659447>,  <36.581173, 35.964874, 52.512962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590172, 36.154774, 52.659447>,  <36.605167, 36.471272, 52.903587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590172, 36.154774, 52.659447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162104, -0.597872, 0.785030,
		-0.986061, 0.128369, -0.105852,
		-0.037488, -0.791246, -0.610347,
		36.578926, 35.917400, 52.476341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095928, 36.191902, 53.155537>,  <36.605167, 36.471272, 52.903587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095928, 36.191902, 53.155537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.307316, 35.919182, 52.953205>,  <36.434147, 35.755550, 52.831806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.307316, 35.919182, 52.953205>,  <36.095928, 36.191902, 53.155537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307316, 35.919182, 52.953205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034259, -0.612471, 0.789750,
		-0.848264, -0.400026, -0.347027,
		0.528465, -0.681806, -0.505832,
		36.465855, 35.714642, 52.801456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713615, 35.584003, 53.253342>,  <36.095928, 36.191902, 53.155537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713615, 35.584003, 53.253342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.082638, 35.465446, 53.154518>,  <36.304050, 35.394314, 53.095226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.082638, 35.465446, 53.154518>,  <35.713615, 35.584003, 53.253342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082638, 35.465446, 53.154518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081142, -0.476940, 0.875183,
		-0.377223, -0.827456, -0.415957,
		0.922561, -0.296388, -0.247054,
		36.359406, 35.376530, 53.080402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.529316, 37.885876, 37.214245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871220, 37.679062, 37.196041>,  <39.076363, 37.554974, 37.185120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871220, 37.679062, 37.196041>,  <38.529316, 37.885876, 37.214245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871220, 37.679062, 37.196041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157341, -0.341672, 0.926555,
		-0.494610, -0.784816, -0.373396,
		0.854754, -0.517034, -0.045511,
		39.127647, 37.523952, 37.182388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491226, 37.175358, 37.242661>,  <38.529316, 37.885876, 37.214245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491226, 37.175358, 37.242661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834064, 37.294872, 37.410522>,  <39.039768, 37.366581, 37.511242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834064, 37.294872, 37.410522>,  <38.491226, 37.175358, 37.242661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834064, 37.294872, 37.410522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379437, -0.184851, 0.906563,
		0.348445, -0.936246, -0.045064,
		0.857096, 0.298788, 0.419657,
		39.091194, 37.384510, 37.536419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663448, 36.750286, 37.685619>,  <38.491226, 37.175358, 37.242661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663448, 36.750286, 37.685619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847748, 37.084366, 37.805721>,  <38.958328, 37.284813, 37.877781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847748, 37.084366, 37.805721>,  <38.663448, 36.750286, 37.685619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847748, 37.084366, 37.805721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444282, -0.075820, 0.892673,
		0.768327, -0.544692, 0.336131,
		0.460747, 0.835202, 0.300252,
		38.985973, 37.334927, 37.895798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921204, 36.627174, 38.278912>,  <38.663448, 36.750286, 37.685619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921204, 36.627174, 38.278912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910053, 37.026791, 38.292450>,  <38.903362, 37.266560, 38.300575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910053, 37.026791, 38.292450>,  <38.921204, 36.627174, 38.278912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910053, 37.026791, 38.292450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537461, -0.043528, 0.842164,
		0.842828, 0.005282, 0.538158,
		-0.027874, 0.999038, 0.033848,
		38.901691, 37.326504, 38.302605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029781, 36.719231, 38.978355>,  <38.921204, 36.627174, 38.278912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029781, 36.719231, 38.978355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869419, 37.069244, 38.869839>,  <38.773201, 37.279251, 38.804729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869419, 37.069244, 38.869839>,  <39.029781, 36.719231, 38.978355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869419, 37.069244, 38.869839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413361, 0.091490, 0.905959,
		0.817562, 0.475344, 0.325024,
		-0.400906, 0.875030, -0.271287,
		38.749146, 37.331753, 38.788452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277988, 37.117294, 39.420601>,  <39.029781, 36.719231, 38.978355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277988, 37.117294, 39.420601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955204, 37.311878, 39.286636>,  <38.761532, 37.428631, 39.206257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955204, 37.311878, 39.286636>,  <39.277988, 37.117294, 39.420601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955204, 37.311878, 39.286636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325006, 0.107721, 0.939557,
		0.493136, 0.867036, 0.071177,
		-0.806962, 0.486462, -0.334913,
		38.713116, 37.457817, 39.186161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197758, 37.647186, 39.962856>,  <39.277988, 37.117294, 39.420601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197758, 37.647186, 39.962856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859676, 37.588707, 39.757233>,  <38.656826, 37.553619, 39.633858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859676, 37.588707, 39.757233>,  <39.197758, 37.647186, 39.962856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859676, 37.588707, 39.757233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505102, -0.095820, 0.857724,
		-0.174655, 0.984604, 0.007142,
		-0.845203, -0.146199, -0.514060,
		38.606117, 37.544846, 39.603016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810902, 38.104279, 40.369953>,  <39.197758, 37.647186, 39.962856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810902, 38.104279, 40.369953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600945, 37.853981, 40.139156>,  <38.474968, 37.703800, 40.000679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600945, 37.853981, 40.139156>,  <38.810902, 38.104279, 40.369953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600945, 37.853981, 40.139156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716577, -0.040968, 0.696303,
		-0.459349, 0.778949, -0.426892,
		-0.524896, -0.625748, -0.576996,
		38.443478, 37.666256, 39.966057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219044, 38.540783, 40.355270>,  <38.810902, 38.104279, 40.369953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219044, 38.540783, 40.355270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154438, 38.146969, 40.328110>,  <38.115673, 37.910683, 40.311813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154438, 38.146969, 40.328110>,  <38.219044, 38.540783, 40.355270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154438, 38.146969, 40.328110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477098, 0.017672, 0.878673,
		-0.863881, 0.174314, -0.472572,
		-0.161516, -0.984531, -0.067898,
		38.105984, 37.851608, 40.307739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619938, 38.388611, 40.725677>,  <38.219044, 38.540783, 40.355270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619938, 38.388611, 40.725677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788681, 38.027256, 40.694893>,  <37.889927, 37.810444, 40.676422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788681, 38.027256, 40.694893>,  <37.619938, 38.388611, 40.725677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788681, 38.027256, 40.694893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401484, -0.262243, 0.877519,
		-0.812924, -0.339290, -0.473326,
		0.421860, -0.903389, -0.076963,
		37.915237, 37.756241, 40.671803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145370, 37.837055, 40.878750>,  <37.619938, 38.388611, 40.725677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145370, 37.837055, 40.878750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515762, 37.706249, 40.954250>,  <37.737995, 37.627766, 40.999550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515762, 37.706249, 40.954250>,  <37.145370, 37.837055, 40.878750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515762, 37.706249, 40.954250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320922, -0.418246, 0.849752,
		-0.198934, -0.847427, -0.492232,
		0.925978, -0.327013, 0.188755,
		37.793556, 37.608147, 41.010876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913712, 37.216450, 41.201939>,  <37.145370, 37.837055, 40.878750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913712, 37.216450, 41.201939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300491, 37.283707, 41.278606>,  <37.532558, 37.324062, 41.324608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300491, 37.283707, 41.278606>,  <36.913712, 37.216450, 41.201939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300491, 37.283707, 41.278606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128777, -0.326746, 0.936298,
		0.220059, -0.930035, -0.294294,
		0.966949, 0.168143, 0.191671,
		37.590576, 37.334148, 41.336109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875751, 36.431347, 40.886108>,  <36.913712, 37.216450, 41.201939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875751, 36.431347, 40.886108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662670, 36.096397, 40.935158>,  <36.534821, 35.895428, 40.964588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662670, 36.096397, 40.935158>,  <36.875751, 36.431347, 40.886108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662670, 36.096397, 40.935158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082129, -0.093058, -0.992267,
		0.842309, -0.538653, -0.019200,
		-0.532701, -0.837373, 0.122623,
		36.502861, 35.845184, 40.971943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054817, 35.884666, 40.369713>,  <36.875751, 36.431347, 40.886108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054817, 35.884666, 40.369713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678387, 35.810791, 40.483040>,  <36.452530, 35.766468, 40.551037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678387, 35.810791, 40.483040>,  <37.054817, 35.884666, 40.369713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678387, 35.810791, 40.483040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263802, -0.123329, -0.956660,
		0.211621, -0.975029, 0.067342,
		-0.941077, -0.184685, 0.283314,
		36.396065, 35.755386, 40.568035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911514, 35.229301, 40.088226>,  <37.054817, 35.884666, 40.369713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911514, 35.229301, 40.088226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541790, 35.368324, 40.151291>,  <36.319954, 35.451736, 40.189129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541790, 35.368324, 40.151291>,  <36.911514, 35.229301, 40.088226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541790, 35.368324, 40.151291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293923, -0.384756, -0.874970,
		-0.243435, -0.855085, 0.457787,
		-0.924310, 0.347552, 0.157666,
		36.264496, 35.472591, 40.198589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324593, 34.711849, 40.022331>,  <36.911514, 35.229301, 40.088226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324593, 34.711849, 40.022331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124550, 35.053749, 39.966763>,  <36.004524, 35.258888, 39.933422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124550, 35.053749, 39.966763>,  <36.324593, 34.711849, 40.022331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124550, 35.053749, 39.966763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477160, -0.405874, -0.779477,
		-0.722641, -0.323533, 0.610832,
		-0.500107, 0.854747, -0.138924,
		35.974518, 35.310173, 39.925087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663017, 34.374115, 39.924683>,  <36.324593, 34.711849, 40.022331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663017, 34.374115, 39.924683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689053, 34.751640, 39.795078>,  <35.704674, 34.978153, 39.717316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689053, 34.751640, 39.795078>,  <35.663017, 34.374115, 39.924683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689053, 34.751640, 39.795078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589872, -0.225509, -0.775368,
		-0.804869, 0.241591, 0.542051,
		0.065084, 0.943811, -0.324013,
		35.708576, 35.034782, 39.697876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050095, 34.488415, 39.611301>,  <35.663017, 34.374115, 39.924683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050095, 34.488415, 39.611301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247894, 34.812031, 39.484222>,  <35.366573, 35.006199, 39.407974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247894, 34.812031, 39.484222>,  <35.050095, 34.488415, 39.611301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247894, 34.812031, 39.484222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604072, 0.057074, -0.794883,
		-0.624957, 0.584981, 0.516939,
		0.494495, 0.809036, -0.317702,
		35.396244, 35.054741, 39.388912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568478, 35.055599, 39.488598>,  <35.050095, 34.488415, 39.611301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568478, 35.055599, 39.488598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887978, 35.110527, 39.254284>,  <35.079678, 35.143482, 39.113693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887978, 35.110527, 39.254284>,  <34.568478, 35.055599, 39.488598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887978, 35.110527, 39.254284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593428, 0.019228, -0.804657,
		-0.099231, 0.990340, 0.096848,
		0.798746, 0.137319, -0.585788,
		35.127602, 35.151722, 39.078548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433632, 35.624744, 38.968304>,  <34.568478, 35.055599, 39.488598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433632, 35.624744, 38.968304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715393, 35.389866, 38.808792>,  <34.884449, 35.248940, 38.713085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715393, 35.389866, 38.808792>,  <34.433632, 35.624744, 38.968304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715393, 35.389866, 38.808792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550471, -0.097240, -0.829172,
		0.448107, 0.803585, -0.391729,
		0.704401, -0.587193, -0.398777,
		34.926712, 35.213707, 38.689159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336739, 35.675297, 38.265099>,  <34.433632, 35.624744, 38.968304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336739, 35.675297, 38.265099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580151, 35.358097, 38.253494>,  <34.726196, 35.167778, 38.246532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580151, 35.358097, 38.253494>,  <34.336739, 35.675297, 38.265099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580151, 35.358097, 38.253494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541938, -0.388608, -0.745176,
		0.579654, 0.469180, -0.666237,
		0.608526, -0.793003, -0.029009,
		34.762707, 35.120197, 38.244793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517590, 35.605305, 37.544804>,  <34.336739, 35.675297, 38.265099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517590, 35.605305, 37.544804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570206, 35.250340, 37.721523>,  <34.601776, 35.037361, 37.827557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570206, 35.250340, 37.721523>,  <34.517590, 35.605305, 37.544804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570206, 35.250340, 37.721523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510056, -0.442739, -0.737445,
		0.850024, -0.128342, -0.510869,
		0.131537, -0.887417, 0.441801,
		34.609665, 34.984116, 37.854065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497559, 35.120632, 37.022831>,  <34.517590, 35.605305, 37.544804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497559, 35.120632, 37.022831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467812, 34.890518, 37.348656>,  <34.449963, 34.752449, 37.544151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467812, 34.890518, 37.348656>,  <34.497559, 35.120632, 37.022831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467812, 34.890518, 37.348656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791983, -0.462299, -0.398802,
		0.605997, -0.674779, -0.421237,
		-0.074366, -0.575285, 0.814565,
		34.445503, 34.717934, 37.593025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447586, 34.419189, 36.769474>,  <34.497559, 35.120632, 37.022831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447586, 34.419189, 36.769474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275284, 34.427357, 37.130371>,  <34.171902, 34.432255, 37.346909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275284, 34.427357, 37.130371>,  <34.447586, 34.419189, 36.769474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275284, 34.427357, 37.130371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823990, -0.416668, -0.383965,
		0.368096, -0.908829, 0.196301,
		-0.430751, 0.020414, 0.902240,
		34.146057, 34.433479, 37.401043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089005, 33.768017, 36.817711>,  <34.447586, 34.419189, 36.769474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089005, 33.768017, 36.817711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927795, 34.018398, 37.084770>,  <33.831070, 34.168629, 37.245007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927795, 34.018398, 37.084770>,  <34.089005, 33.768017, 36.817711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927795, 34.018398, 37.084770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914231, -0.308739, -0.262415,
		0.041868, -0.716142, 0.696698,
		-0.403024, 0.625956, 0.667645,
		33.806889, 34.206184, 37.285065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537804, 33.393620, 37.164223>,  <34.089005, 33.768017, 36.817711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537804, 33.393620, 37.164223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426334, 33.753139, 37.299568>,  <33.359451, 33.968853, 37.380775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426334, 33.753139, 37.299568>,  <33.537804, 33.393620, 37.164223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426334, 33.753139, 37.299568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947931, -0.313980, 0.053322,
		0.154167, -0.305888, 0.939503,
		-0.278675, 0.898804, 0.338366,
		33.342731, 34.022781, 37.401077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205791, 33.351616, 37.894611>,  <33.537804, 33.393620, 37.164223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205791, 33.351616, 37.894611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075718, 33.638779, 37.648403>,  <32.997673, 33.811077, 37.500679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075718, 33.638779, 37.648403>,  <33.205791, 33.351616, 37.894611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075718, 33.638779, 37.648403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939131, -0.321470, 0.121204,
		-0.110858, 0.617467, 0.778746,
		-0.325183, 0.717908, -0.615520,
		32.978165, 33.854153, 37.463749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906216, 33.147274, 37.737289>,  <33.205791, 33.351616, 37.894611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906216, 33.147274, 37.737289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631386, 32.958805, 37.516045>,  <33.466488, 32.845726, 37.383297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631386, 32.958805, 37.516045>,  <33.906216, 33.147274, 37.737289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631386, 32.958805, 37.516045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682851, -0.158606, -0.713133,
		0.248279, -0.867666, 0.430712,
		-0.687074, -0.471168, -0.553109,
		33.425262, 32.817455, 37.350113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236767, 32.574402, 37.499538>,  <33.906216, 33.147274, 37.737289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236767, 32.574402, 37.499538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942741, 32.604698, 37.230038>,  <33.766327, 32.622875, 37.068336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942741, 32.604698, 37.230038>,  <34.236767, 32.574402, 37.499538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942741, 32.604698, 37.230038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663050, -0.127200, -0.737689,
		-0.141574, -0.988981, 0.043281,
		-0.735066, 0.075740, -0.673752,
		33.722221, 32.627419, 37.027912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717514, 32.041058, 37.276360>,  <34.236767, 32.574402, 37.499538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717514, 32.041058, 37.276360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082088, 32.058205, 37.440044>,  <35.300831, 32.068493, 37.538254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082088, 32.058205, 37.440044>,  <34.717514, 32.041058, 37.276360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082088, 32.058205, 37.440044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240531, -0.751401, 0.614444,
		0.333821, -0.658452, -0.674540,
		0.911432, 0.042867, 0.409211,
		35.355518, 32.071064, 37.562809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871037, 31.337975, 37.433578>,  <34.717514, 32.041058, 37.276360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871037, 31.337975, 37.433578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124367, 31.551899, 37.657318>,  <35.276367, 31.680254, 37.791561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124367, 31.551899, 37.657318>,  <34.871037, 31.337975, 37.433578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124367, 31.551899, 37.657318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022309, -0.709865, 0.703984,
		0.773561, -0.458332, -0.437648,
		0.633330, 0.534811, 0.559349,
		35.314365, 31.712341, 37.825123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458389, 30.918484, 37.660515>,  <34.871037, 31.337975, 37.433578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458389, 30.918484, 37.660515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425449, 31.222513, 37.918354>,  <35.405685, 31.404932, 38.073055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425449, 31.222513, 37.918354>,  <35.458389, 30.918484, 37.660515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425449, 31.222513, 37.918354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160260, -0.628276, 0.761306,
		0.983633, 0.165999, -0.070070,
		-0.082353, 0.760075, 0.644596,
		35.400745, 31.450535, 38.111732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979824, 30.869448, 38.082657>,  <35.458389, 30.918484, 37.660515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979824, 30.869448, 38.082657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779354, 31.106728, 38.334671>,  <35.659073, 31.249096, 38.485878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779354, 31.106728, 38.334671>,  <35.979824, 30.869448, 38.082657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779354, 31.106728, 38.334671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176254, -0.642831, 0.745455,
		0.847208, 0.484647, 0.217615,
		-0.501172, 0.593200, 0.630032,
		35.629002, 31.284687, 38.523682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356049, 30.969212, 38.722519>,  <35.979824, 30.869448, 38.082657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356049, 30.969212, 38.722519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986565, 31.077385, 38.831059>,  <35.764874, 31.142288, 38.896183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986565, 31.077385, 38.831059>,  <36.356049, 30.969212, 38.722519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986565, 31.077385, 38.831059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046404, -0.624102, 0.779964,
		0.380278, 0.733050, 0.563938,
		-0.923707, 0.270434, 0.271349,
		35.709454, 31.158516, 38.912464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411182, 31.148199, 39.409569>,  <36.356049, 30.969212, 38.722519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411182, 31.148199, 39.409569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023777, 31.079746, 39.337246>,  <35.791332, 31.038675, 39.293854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023777, 31.079746, 39.337246>,  <36.411182, 31.148199, 39.409569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023777, 31.079746, 39.337246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050043, -0.577622, 0.814769,
		-0.243870, 0.798165, 0.550872,
		-0.968516, -0.171130, -0.180807,
		35.733223, 31.028408, 39.283005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105835, 31.323793, 40.001095>,  <36.411182, 31.148199, 39.409569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105835, 31.323793, 40.001095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853958, 31.083132, 39.804523>,  <35.702831, 30.938734, 39.686581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853958, 31.083132, 39.804523>,  <36.105835, 31.323793, 40.001095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853958, 31.083132, 39.804523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121095, -0.548838, 0.827111,
		-0.767350, 0.580334, 0.272740,
		-0.629691, -0.601656, -0.491426,
		35.665051, 30.902636, 39.657097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612392, 31.170731, 40.466946>,  <36.105835, 31.323793, 40.001095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612392, 31.170731, 40.466946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556534, 30.879520, 40.198475>,  <35.523018, 30.704794, 40.037392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556534, 30.879520, 40.198475>,  <35.612392, 31.170731, 40.466946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556534, 30.879520, 40.198475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332593, -0.603949, 0.724311,
		-0.932673, 0.324378, -0.157795,
		-0.139651, -0.728028, -0.671173,
		35.514637, 30.661112, 39.997124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909943, 30.853859, 40.603977>,  <35.612392, 31.170731, 40.466946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909943, 30.853859, 40.603977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144836, 30.601938, 40.400604>,  <35.285774, 30.450785, 40.278580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144836, 30.601938, 40.400604>,  <34.909943, 30.853859, 40.603977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144836, 30.601938, 40.400604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194070, -0.719379, 0.666956,
		-0.785807, -0.292988, -0.544670,
		0.587234, -0.629803, -0.508433,
		35.321007, 30.412998, 40.248074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454254, 30.275379, 40.521194>,  <34.909943, 30.853859, 40.603977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454254, 30.275379, 40.521194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826054, 30.131975, 40.486568>,  <35.049133, 30.045933, 40.465794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826054, 30.131975, 40.486568>,  <34.454254, 30.275379, 40.521194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826054, 30.131975, 40.486568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121726, -0.519771, 0.845589,
		-0.348145, -0.775441, -0.526769,
		0.929504, -0.358509, -0.086565,
		35.104904, 30.024422, 40.460598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295723, 29.552473, 40.564270>,  <34.454254, 30.275379, 40.521194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295723, 29.552473, 40.564270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674961, 29.623943, 40.669483>,  <34.902504, 29.666826, 40.732613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674961, 29.623943, 40.669483>,  <34.295723, 29.552473, 40.564270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674961, 29.623943, 40.669483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148216, -0.483526, 0.862690,
		0.281328, -0.856900, -0.431947,
		0.948096, 0.178677, 0.263035,
		34.959389, 29.677546, 40.748394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550617, 28.957979, 40.938255>,  <34.295723, 29.552473, 40.564270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550617, 28.957979, 40.938255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842266, 29.213747, 41.035843>,  <35.017258, 29.367208, 41.094395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842266, 29.213747, 41.035843>,  <34.550617, 28.957979, 40.938255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842266, 29.213747, 41.035843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042698, -0.313288, 0.948698,
		0.683048, -0.702135, -0.201124,
		0.729124, 0.639419, 0.243970,
		35.061005, 29.405573, 41.109035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088528, 28.558016, 41.264275>,  <34.550617, 28.957979, 40.938255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088528, 28.558016, 41.264275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153629, 28.933462, 41.385937>,  <35.192692, 29.158730, 41.458935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153629, 28.933462, 41.385937>,  <35.088528, 28.558016, 41.264275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153629, 28.933462, 41.385937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029406, -0.303510, 0.952375,
		0.986228, -0.163950, -0.021797,
		0.162757, 0.938617, 0.304151,
		35.202457, 29.215048, 41.477180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589409, 28.485449, 41.847511>,  <35.088528, 28.558016, 41.264275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589409, 28.485449, 41.847511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452438, 28.855917, 41.910698>,  <35.370258, 29.078197, 41.948612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452438, 28.855917, 41.910698>,  <35.589409, 28.485449, 41.847511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452438, 28.855917, 41.910698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024427, -0.176853, 0.983934,
		0.939229, 0.333062, 0.083182,
		-0.342422, 0.926171, 0.157969,
		35.349712, 29.133768, 41.958088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995651, 28.893648, 42.322002>,  <35.589409, 28.485449, 41.847511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995651, 28.893648, 42.322002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638508, 29.065409, 42.376286>,  <35.424221, 29.168465, 42.408855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638508, 29.065409, 42.376286>,  <35.995651, 28.893648, 42.322002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638508, 29.065409, 42.376286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162115, 0.025323, 0.986447,
		0.420145, 0.902759, -0.092222,
		-0.892859, 0.429401, 0.135711,
		35.370651, 29.194229, 42.417000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125885, 29.379133, 42.857296>,  <35.995651, 28.893648, 42.322002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125885, 29.379133, 42.857296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726307, 29.393654, 42.868534>,  <35.486561, 29.402367, 42.875278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726307, 29.393654, 42.868534>,  <36.125885, 29.379133, 42.857296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726307, 29.393654, 42.868534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035408, 0.219812, 0.974899,
		0.029216, 0.974866, -0.220866,
		-0.998946, 0.036304, 0.028096,
		35.426624, 29.404545, 42.876965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931221, 29.865421, 43.175621>,  <36.125885, 29.379133, 42.857296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931221, 29.865421, 43.175621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601364, 29.641335, 43.206917>,  <35.403450, 29.506882, 43.225693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601364, 29.641335, 43.206917>,  <35.931221, 29.865421, 43.175621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601364, 29.641335, 43.206917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106090, 0.289035, 0.951422,
		-0.555616, 0.776283, -0.297784,
		-0.824643, -0.560217, 0.078237,
		35.353970, 29.473270, 43.230389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409679, 30.380636, 43.422970>,  <35.931221, 29.865421, 43.175621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409679, 30.380636, 43.422970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302559, 30.005892, 43.512924>,  <35.238285, 29.781046, 43.566898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302559, 30.005892, 43.512924>,  <35.409679, 30.380636, 43.422970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302559, 30.005892, 43.512924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091543, 0.257098, 0.962040,
		-0.959116, 0.237048, -0.154614,
		-0.267800, -0.936861, 0.224887,
		35.222218, 29.724833, 43.580391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904823, 30.509985, 43.862190>,  <35.409679, 30.380636, 43.422970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904823, 30.509985, 43.862190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983398, 30.119921, 43.903130>,  <35.030544, 29.885881, 43.927692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983398, 30.119921, 43.903130>,  <34.904823, 30.509985, 43.862190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983398, 30.119921, 43.903130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060313, 0.092166, 0.993915,
		-0.978659, -0.201416, -0.040709,
		0.196438, -0.975160, 0.102347,
		35.042332, 29.827374, 43.933834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344433, 30.274483, 44.207550>,  <34.904823, 30.509985, 43.862190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344433, 30.274483, 44.207550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634468, 30.009144, 44.281544>,  <34.808487, 29.849939, 44.325939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634468, 30.009144, 44.281544>,  <34.344433, 30.274483, 44.207550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634468, 30.009144, 44.281544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152367, 0.107426, 0.982468,
		-0.671592, -0.740559, -0.023179,
		0.725085, -0.663350, 0.184983,
		34.851994, 29.810139, 44.337040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119381, 29.821259, 44.752571>,  <34.344433, 30.274483, 44.207550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119381, 29.821259, 44.752571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511330, 29.741814, 44.744572>,  <34.746498, 29.694147, 44.739773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511330, 29.741814, 44.744572>,  <34.119381, 29.821259, 44.752571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511330, 29.741814, 44.744572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002070, -0.110280, 0.993898,
		-0.199610, -0.973853, -0.108471,
		0.979873, -0.198617, -0.019997,
		34.805290, 29.682230, 44.738571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193958, 29.334909, 45.268890>,  <34.119381, 29.821259, 44.752571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193958, 29.334909, 45.268890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561646, 29.486166, 45.224998>,  <34.782257, 29.576920, 45.198666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561646, 29.486166, 45.224998>,  <34.193958, 29.334909, 45.268890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561646, 29.486166, 45.224998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105893, 0.030989, 0.993895,
		0.379234, -0.925229, -0.011557,
		0.919221, 0.378143, -0.109727,
		34.837414, 29.599609, 45.192081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598152, 28.990868, 45.822788>,  <34.193958, 29.334909, 45.268890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598152, 28.990868, 45.822788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798161, 29.318707, 45.710907>,  <34.918167, 29.515409, 45.643776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798161, 29.318707, 45.710907>,  <34.598152, 28.990868, 45.822788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798161, 29.318707, 45.710907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191073, 0.210611, 0.958715,
		0.844670, -0.532825, -0.051292,
		0.500024, 0.819598, -0.279705,
		34.948170, 29.564587, 45.626995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227894, 29.060753, 46.314167>,  <34.598152, 28.990868, 45.822788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227894, 29.060753, 46.314167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202621, 29.424644, 46.150021>,  <35.187458, 29.642979, 46.051533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202621, 29.424644, 46.150021>,  <35.227894, 29.060753, 46.314167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202621, 29.424644, 46.150021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102083, 0.414926, 0.904110,
		0.992767, 0.015232, -0.119084,
		-0.063182, 0.909728, -0.410370,
		35.183666, 29.697563, 46.026909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895794, 29.588888, 46.296253>,  <35.227894, 29.060753, 46.314167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895794, 29.588888, 46.296253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534611, 29.760782, 46.295521>,  <35.317902, 29.863918, 46.295082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534611, 29.760782, 46.295521>,  <35.895794, 29.588888, 46.296253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534611, 29.760782, 46.295521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200965, 0.426032, 0.882106,
		0.379853, 0.796132, -0.471048,
		-0.902954, 0.429734, -0.001835,
		35.263725, 29.889702, 46.294971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400806, 30.155640, 46.500954>,  <35.895794, 29.588888, 46.296253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400806, 30.155640, 46.500954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787449, 30.192808, 46.596485>,  <37.019436, 30.215109, 46.653805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787449, 30.192808, 46.596485>,  <36.400806, 30.155640, 46.500954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787449, 30.192808, 46.596485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188738, 0.372297, -0.908721,
		-0.173353, 0.923451, 0.342327,
		0.966606, 0.092919, 0.238829,
		37.077431, 30.220684, 46.668133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571281, 30.912573, 46.404476>,  <36.400806, 30.155640, 46.500954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571281, 30.912573, 46.404476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919136, 30.723646, 46.346992>,  <37.127850, 30.610291, 46.312500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919136, 30.723646, 46.346992>,  <36.571281, 30.912573, 46.404476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919136, 30.723646, 46.346992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103605, 0.459206, -0.882268,
		0.482703, 0.752361, 0.448275,
		0.869634, -0.472317, -0.143712,
		37.180027, 30.581951, 46.303879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032742, 31.432236, 46.074074>,  <36.571281, 30.912573, 46.404476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032742, 31.432236, 46.074074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199234, 31.079672, 45.984753>,  <37.299129, 30.868134, 45.931160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199234, 31.079672, 45.984753>,  <37.032742, 31.432236, 46.074074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199234, 31.079672, 45.984753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214080, 0.333685, -0.918054,
		0.883698, 0.334316, 0.327582,
		0.416230, -0.881412, -0.223306,
		37.324104, 30.815248, 45.917759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808590, 31.480564, 45.948467>,  <37.032742, 31.432236, 46.074074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808590, 31.480564, 45.948467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702366, 31.138689, 45.770035>,  <37.638630, 30.933563, 45.662975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702366, 31.138689, 45.770035>,  <37.808590, 31.480564, 45.948467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702366, 31.138689, 45.770035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440176, 0.304165, -0.844824,
		0.857743, -0.420705, 0.295439,
		-0.265560, -0.854687, -0.446080,
		37.622700, 30.882282, 45.636211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346466, 31.250103, 45.720512>,  <37.808590, 31.480564, 45.948467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346466, 31.250103, 45.720512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089874, 31.034973, 45.501698>,  <37.935921, 30.905895, 45.370411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089874, 31.034973, 45.501698>,  <38.346466, 31.250103, 45.720512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089874, 31.034973, 45.501698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390332, 0.385048, -0.836289,
		0.660413, -0.749986, -0.037070,
		-0.641479, -0.537827, -0.547035,
		37.897430, 30.873625, 45.337585>
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
