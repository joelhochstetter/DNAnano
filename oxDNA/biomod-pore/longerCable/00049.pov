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
	<24.027842, 35.138355, 35.229034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357176, 34.916943, 35.279182>,  <24.554777, 34.784096, 35.309273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357176, 34.916943, 35.279182>,  <24.027842, 35.138355, 35.229034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357176, 34.916943, 35.279182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508239, 0.620763, -0.596948,
		0.252604, 0.555208, 0.792424,
		0.823337, -0.553532, 0.125371,
		24.604177, 34.750881, 35.316795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.650389, 35.469425, 35.615940>,  <24.027842, 35.138355, 35.229034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.650389, 35.469425, 35.615940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810863, 35.213280, 35.353954>,  <24.907148, 35.059593, 35.196762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810863, 35.213280, 35.353954>,  <24.650389, 35.469425, 35.615940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810863, 35.213280, 35.353954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574060, 0.732963, -0.364993,
		0.713795, -0.229559, 0.661664,
		0.401188, -0.640365, -0.654966,
		24.931219, 35.021172, 35.157463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.370245, 35.619976, 35.677891>,  <24.650389, 35.469425, 35.615940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.370245, 35.619976, 35.677891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296623, 35.463512, 35.317200>,  <25.252451, 35.369633, 35.100784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296623, 35.463512, 35.317200>,  <25.370245, 35.619976, 35.677891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296623, 35.463512, 35.317200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493767, 0.756451, -0.428925,
		0.849894, -0.524189, 0.053917,
		-0.184052, -0.391163, -0.901729,
		25.241407, 35.346165, 35.046680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948425, 35.458618, 35.196926>,  <25.370245, 35.619976, 35.677891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948425, 35.458618, 35.196926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628689, 35.578129, 34.988392>,  <25.436848, 35.649834, 34.863274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628689, 35.578129, 34.988392>,  <25.948425, 35.458618, 35.196926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.628689, 35.578129, 34.988392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466084, 0.855880, -0.224131,
		0.379234, -0.422143, -0.823394,
		-0.799342, 0.298773, -0.521333,
		25.388885, 35.667759, 34.831993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635590, 35.404366, 35.035004>,  <25.948425, 35.458618, 35.196926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635590, 35.404366, 35.035004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977259, 35.485638, 35.226463>,  <27.182261, 35.534401, 35.341339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977259, 35.485638, 35.226463>,  <26.635590, 35.404366, 35.035004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977259, 35.485638, 35.226463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477251, 0.671782, 0.566517,
		-0.206440, -0.712339, 0.670788,
		0.854175, 0.203182, 0.478647,
		27.233511, 35.546593, 35.370056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583824, 35.196697, 35.769466>,  <26.635590, 35.404366, 35.035004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583824, 35.196697, 35.769466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839312, 35.498493, 35.709084>,  <26.992603, 35.679569, 35.672855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839312, 35.498493, 35.709084>,  <26.583824, 35.196697, 35.769466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839312, 35.498493, 35.709084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555920, 0.588142, 0.587404,
		0.531970, -0.291269, 0.795092,
		0.638719, 0.754488, -0.150951,
		27.030928, 35.724838, 35.663799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154633, 35.234715, 36.333969>,  <26.583824, 35.196697, 35.769466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154633, 35.234715, 36.333969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439154, 35.049770, 36.545734>,  <27.609867, 34.938805, 36.672794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439154, 35.049770, 36.545734>,  <27.154633, 35.234715, 36.333969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439154, 35.049770, 36.545734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177083, 0.846778, 0.501606,
		-0.680213, -0.263044, 0.684191,
		0.711303, -0.462358, 0.529409,
		27.652544, 34.911064, 36.704556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992992, 35.048546, 37.067780>,  <27.154633, 35.234715, 36.333969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992992, 35.048546, 37.067780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389589, 35.091869, 37.038902>,  <27.627548, 35.117863, 37.021576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389589, 35.091869, 37.038902>,  <26.992992, 35.048546, 37.067780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389589, 35.091869, 37.038902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012804, 0.633090, 0.773972,
		0.129537, -0.766463, 0.629090,
		0.991492, 0.108313, -0.072194,
		27.687037, 35.124363, 37.017242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247768, 34.856289, 37.782066>,  <26.992992, 35.048546, 37.067780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247768, 34.856289, 37.782066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525295, 35.070068, 37.588997>,  <27.691811, 35.198338, 37.473156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525295, 35.070068, 37.588997>,  <27.247768, 34.856289, 37.782066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525295, 35.070068, 37.588997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097670, 0.594217, 0.798353,
		0.713498, -0.601054, 0.360077,
		0.693817, 0.534454, -0.482677,
		27.733440, 35.230404, 37.444195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758661, 35.004318, 38.287266>,  <27.247768, 34.856289, 37.782066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758661, 35.004318, 38.287266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801399, 35.289722, 38.010288>,  <27.827042, 35.460964, 37.844101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801399, 35.289722, 38.010288>,  <27.758661, 35.004318, 38.287266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801399, 35.289722, 38.010288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091193, 0.686467, 0.721420,
		0.990085, -0.140227, 0.008279,
		0.106846, 0.713512, -0.692449,
		27.833452, 35.503777, 37.802555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316698, 35.470665, 38.618279>,  <27.758661, 35.004318, 38.287266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316698, 35.470665, 38.618279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143202, 35.698208, 38.338776>,  <28.039104, 35.834736, 38.171074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143202, 35.698208, 38.338776>,  <28.316698, 35.470665, 38.618279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143202, 35.698208, 38.338776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108824, 0.736756, 0.667344,
		0.894442, 0.365496, -0.257654,
		-0.433739, 0.568862, -0.698760,
		28.013081, 35.868866, 38.129147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648842, 36.126808, 38.550407>,  <28.316698, 35.470665, 38.618279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648842, 36.126808, 38.550407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260908, 36.148876, 38.455429>,  <28.028149, 36.162117, 38.398441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260908, 36.148876, 38.455429>,  <28.648842, 36.126808, 38.550407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260908, 36.148876, 38.455429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143290, 0.658988, 0.738379,
		0.197213, 0.750127, -0.631202,
		-0.969832, 0.055173, -0.237447,
		27.969959, 36.165428, 38.384193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428411, 36.832008, 38.296310>,  <28.648842, 36.126808, 38.550407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428411, 36.832008, 38.296310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161125, 36.624630, 38.509739>,  <28.000753, 36.500202, 38.637798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161125, 36.624630, 38.509739>,  <28.428411, 36.832008, 38.296310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161125, 36.624630, 38.509739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169093, 0.804267, 0.569703,
		-0.724498, 0.290460, -0.625088,
		-0.668214, -0.518447, 0.533576,
		27.960661, 36.469097, 38.669811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084822, 37.225014, 38.821907>,  <28.428411, 36.832008, 38.296310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084822, 37.225014, 38.821907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961592, 37.326424, 38.455124>,  <27.887653, 37.387272, 38.235054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961592, 37.326424, 38.455124>,  <28.084822, 37.225014, 38.821907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961592, 37.326424, 38.455124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113030, -0.966765, -0.229325,
		-0.944624, 0.032995, 0.326493,
		-0.308075, 0.253529, -0.916958,
		27.869169, 37.402481, 38.180035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272770, 36.924328, 38.660454>,  <28.084822, 37.225014, 38.821907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272770, 36.924328, 38.660454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553112, 36.932499, 38.375252>,  <27.721317, 36.937401, 38.204128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553112, 36.932499, 38.375252>,  <27.272770, 36.924328, 38.660454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553112, 36.932499, 38.375252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146873, -0.974037, -0.172282,
		-0.698017, 0.225467, -0.679659,
		0.700856, 0.020432, -0.713010,
		27.763369, 36.938629, 38.161350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041691, 36.556602, 38.032265>,  <27.272770, 36.924328, 38.660454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041691, 36.556602, 38.032265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439417, 36.551411, 37.989998>,  <27.678053, 36.548294, 37.964638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439417, 36.551411, 37.989998>,  <27.041691, 36.556602, 38.032265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439417, 36.551411, 37.989998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049987, -0.933256, -0.355716,
		-0.093992, 0.358977, -0.928602,
		0.994317, -0.012984, -0.105663,
		27.737713, 36.547516, 37.958298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321898, 36.515202, 37.249451>,  <27.041691, 36.556602, 38.032265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321898, 36.515202, 37.249451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552734, 36.332554, 37.520290>,  <27.691236, 36.222965, 37.682793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552734, 36.332554, 37.520290>,  <27.321898, 36.515202, 37.249451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552734, 36.332554, 37.520290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027250, -0.839394, -0.542840,
		0.816225, 0.294817, -0.496849,
		0.577091, -0.456619, 0.677101,
		27.725863, 36.195568, 37.723419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921780, 36.515987, 36.966717>,  <27.321898, 36.515202, 37.249451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921780, 36.515987, 36.966717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897202, 36.199139, 37.209621>,  <27.882456, 36.009029, 37.355366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897202, 36.199139, 37.209621>,  <27.921780, 36.515987, 36.966717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897202, 36.199139, 37.209621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133990, -0.609449, -0.781421,
		0.989076, 0.033353, 0.143584,
		-0.061444, -0.792123, 0.607261,
		27.878769, 35.961502, 37.391800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618862, 36.091450, 36.923416>,  <27.921780, 36.515987, 36.966717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618862, 36.091450, 36.923416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352272, 35.831177, 37.068977>,  <28.192318, 35.675014, 37.156315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352272, 35.831177, 37.068977>,  <28.618862, 36.091450, 36.923416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352272, 35.831177, 37.068977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239176, -0.648928, -0.722280,
		0.706118, -0.394346, 0.588122,
		-0.666477, -0.650680, 0.363901,
		28.152328, 35.635971, 37.178146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930477, 35.381824, 37.102333>,  <28.618862, 36.091450, 36.923416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930477, 35.381824, 37.102333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537460, 35.335251, 37.044289>,  <28.301651, 35.307308, 37.009460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537460, 35.335251, 37.044289>,  <28.930477, 35.381824, 37.102333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537460, 35.335251, 37.044289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178211, -0.812970, -0.554364,
		-0.053428, -0.570546, 0.819526,
		-0.982541, -0.116430, -0.145113,
		28.242699, 35.300323, 37.000755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727669, 34.671642, 37.285141>,  <28.930477, 35.381824, 37.102333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727669, 34.671642, 37.285141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480455, 34.810558, 37.003029>,  <28.332127, 34.893909, 36.833759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480455, 34.810558, 37.003029>,  <28.727669, 34.671642, 37.285141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480455, 34.810558, 37.003029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221416, -0.783922, -0.580036,
		-0.754327, -0.514643, 0.407594,
		-0.618033, 0.347289, -0.705284,
		28.295046, 34.914745, 36.791443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266073, 34.120567, 37.082363>,  <28.727669, 34.671642, 37.285141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266073, 34.120567, 37.082363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326540, 34.364120, 36.770874>,  <28.362820, 34.510250, 36.583981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326540, 34.364120, 36.770874>,  <28.266073, 34.120567, 37.082363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326540, 34.364120, 36.770874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347246, -0.770281, -0.534872,
		-0.925511, -0.189555, -0.327871,
		0.151165, 0.608881, -0.778725,
		28.371889, 34.546783, 36.537258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915020, 33.825241, 36.545628>,  <28.266073, 34.120567, 37.082363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915020, 33.825241, 36.545628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206825, 34.042583, 36.379459>,  <28.381908, 34.172989, 36.279758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206825, 34.042583, 36.379459>,  <27.915020, 33.825241, 36.545628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206825, 34.042583, 36.379459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287057, -0.794520, -0.535104,
		-0.620813, 0.271116, -0.735587,
		0.729514, 0.543354, -0.415423,
		28.425680, 34.205589, 36.254833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085245, 33.424152, 36.027054>,  <27.915020, 33.825241, 36.545628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085245, 33.424152, 36.027054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407106, 33.661568, 36.020782>,  <28.600224, 33.804016, 36.017021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407106, 33.661568, 36.020782>,  <28.085245, 33.424152, 36.027054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407106, 33.661568, 36.020782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486734, -0.674519, -0.555081,
		-0.340034, 0.439018, -0.831649,
		0.804653, 0.593538, -0.015675,
		28.648502, 33.839630, 36.016079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302980, 33.679623, 35.320881>,  <28.085245, 33.424152, 36.027054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302980, 33.679623, 35.320881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605780, 33.650963, 35.580673>,  <28.787458, 33.633766, 35.736549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605780, 33.650963, 35.580673>,  <28.302980, 33.679623, 35.320881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605780, 33.650963, 35.580673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401117, -0.733687, -0.548460,
		0.515808, 0.675700, -0.526661,
		0.756999, -0.071647, 0.649476,
		28.832880, 33.629467, 35.775517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967953, 33.586235, 34.983978>,  <28.302980, 33.679623, 35.320881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967953, 33.586235, 34.983978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007833, 33.422321, 35.346664>,  <29.031761, 33.323975, 35.564278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007833, 33.422321, 35.346664>,  <28.967953, 33.586235, 34.983978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007833, 33.422321, 35.346664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351356, -0.838057, -0.417384,
		0.930918, 0.360195, 0.060424,
		0.099701, -0.409781, 0.906719,
		29.037745, 33.299385, 35.618679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622557, 33.417038, 34.971130>,  <28.967953, 33.586235, 34.983978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622557, 33.417038, 34.971130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422285, 33.182571, 35.225918>,  <29.302122, 33.041889, 35.378788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422285, 33.182571, 35.225918>,  <29.622557, 33.417038, 34.971130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422285, 33.182571, 35.225918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384767, -0.809850, -0.442828,
		0.775420, 0.023369, 0.631014,
		-0.500678, -0.586171, 0.636966,
		29.272081, 33.006721, 35.417007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074881, 33.104950, 35.503826>,  <29.622557, 33.417038, 34.971130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074881, 33.104950, 35.503826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748451, 32.888351, 35.423027>,  <29.552593, 32.758392, 35.374550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748451, 32.888351, 35.423027>,  <30.074881, 33.104950, 35.503826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748451, 32.888351, 35.423027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577721, -0.774116, -0.258811,
		-0.016220, -0.327904, 0.944572,
		-0.816073, -0.541501, -0.201993,
		29.503630, 32.725903, 35.362431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271048, 32.347290, 35.709396>,  <30.074881, 33.104950, 35.503826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271048, 32.347290, 35.709396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967995, 32.333241, 35.448704>,  <29.786163, 32.324810, 35.292286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.967995, 32.333241, 35.448704>,  <30.271048, 32.347290, 35.709396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967995, 32.333241, 35.448704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481186, -0.704701, -0.521399,
		-0.440965, -0.708635, 0.550806,
		-0.757635, -0.035121, -0.651734,
		29.740704, 32.322704, 35.253185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915255, 31.690708, 35.636822>,  <30.271048, 32.347290, 35.709396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915255, 31.690708, 35.636822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886108, 31.892788, 35.292854>,  <29.868620, 32.014034, 35.086472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886108, 31.892788, 35.292854>,  <29.915255, 31.690708, 35.636822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886108, 31.892788, 35.292854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514066, -0.719829, -0.466457,
		-0.854650, -0.476045, -0.207254,
		-0.072867, 0.505200, -0.859921,
		29.864248, 32.044350, 35.034878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854687, 31.184538, 35.054962>,  <29.915255, 31.690708, 35.636822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854687, 31.184538, 35.054962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023537, 31.517586, 34.911541>,  <30.124846, 31.717415, 34.825489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023537, 31.517586, 34.911541>,  <29.854687, 31.184538, 35.054962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023537, 31.517586, 34.911541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684961, -0.552026, -0.475495,
		-0.593835, -0.044876, -0.803334,
		0.422123, 0.832618, -0.358551,
		30.150173, 31.767372, 34.803974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008251, 31.136583, 34.260468>,  <29.854687, 31.184538, 35.054962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008251, 31.136583, 34.260468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234709, 31.429230, 34.412373>,  <30.370584, 31.604816, 34.503517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234709, 31.429230, 34.412373>,  <30.008251, 31.136583, 34.260468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234709, 31.429230, 34.412373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814012, -0.423629, -0.397395,
		-0.129861, 0.534115, -0.835378,
		0.566145, 0.731614, 0.379763,
		30.404552, 31.648714, 34.526302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307484, 31.551195, 33.763897>,  <30.008251, 31.136583, 34.260468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307484, 31.551195, 33.763897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562860, 31.595942, 34.068497>,  <30.716087, 31.622789, 34.251255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562860, 31.595942, 34.068497>,  <30.307484, 31.551195, 33.763897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562860, 31.595942, 34.068497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766925, -0.175952, -0.617144,
		0.064949, 0.978022, -0.198128,
		0.638441, 0.111866, 0.761498,
		30.754393, 31.629501, 34.296947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875864, 31.800249, 33.472210>,  <30.307484, 31.551195, 33.763897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875864, 31.800249, 33.472210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017757, 31.685001, 33.827999>,  <31.102894, 31.615852, 34.041473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017757, 31.685001, 33.827999>,  <30.875864, 31.800249, 33.472210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017757, 31.685001, 33.827999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868178, -0.251605, -0.427741,
		0.347035, 0.923950, 0.160885,
		0.354731, -0.288118, 0.889468,
		31.124176, 31.598566, 34.094841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622135, 32.048309, 33.547062>,  <30.875864, 31.800249, 33.472210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622135, 32.048309, 33.547062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544598, 31.721304, 33.763985>,  <31.498075, 31.525101, 33.894138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544598, 31.721304, 33.763985>,  <31.622135, 32.048309, 33.547062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544598, 31.721304, 33.763985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757515, -0.475988, -0.446773,
		0.623374, 0.324199, 0.711548,
		-0.193845, -0.817515, 0.542304,
		31.486444, 31.476049, 33.926678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247360, 31.733797, 33.688095>,  <31.622135, 32.048309, 33.547062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247360, 31.733797, 33.688095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958725, 31.461571, 33.738914>,  <31.785543, 31.298235, 33.769405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958725, 31.461571, 33.738914>,  <32.247360, 31.733797, 33.688095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958725, 31.461571, 33.738914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569859, -0.688073, -0.449240,
		0.393158, -0.251765, 0.884331,
		-0.721587, -0.680566, 0.127051,
		31.742249, 31.257401, 33.777031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486191, 31.186481, 34.165283>,  <32.247360, 31.733797, 33.688095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486191, 31.186481, 34.165283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205799, 31.066099, 33.906654>,  <32.037563, 30.993870, 33.751476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205799, 31.066099, 33.906654>,  <32.486191, 31.186481, 34.165283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205799, 31.066099, 33.906654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539435, -0.816782, -0.204639,
		-0.466521, -0.492231, 0.734892,
		-0.700976, -0.300958, -0.646573,
		31.995506, 30.975811, 33.712681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326893, 30.507004, 34.355946>,  <32.486191, 31.186481, 34.165283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326893, 30.507004, 34.355946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257397, 30.575089, 33.967957>,  <32.215698, 30.615940, 33.735165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257397, 30.575089, 33.967957>,  <32.326893, 30.507004, 34.355946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257397, 30.575089, 33.967957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523790, -0.818103, -0.237385,
		-0.833941, -0.549304, 0.052982,
		-0.173742, 0.170214, -0.969970,
		32.205273, 30.626152, 33.676964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593708, 30.564209, 34.668388>,  <32.326893, 30.507004, 34.355946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593708, 30.564209, 34.668388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580357, 30.922092, 34.490227>,  <31.572346, 31.136822, 34.383331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580357, 30.922092, 34.490227>,  <31.593708, 30.564209, 34.668388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580357, 30.922092, 34.490227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642793, 0.322036, 0.695061,
		0.765312, 0.309500, 0.564364,
		-0.033377, 0.894708, -0.445402,
		31.570343, 31.190504, 34.356606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568232, 31.203173, 35.199936>,  <31.593708, 30.564209, 34.668388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568232, 31.203173, 35.199936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430986, 31.345692, 34.852299>,  <31.348639, 31.431204, 34.643715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430986, 31.345692, 34.852299>,  <31.568232, 31.203173, 35.199936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430986, 31.345692, 34.852299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726203, 0.486213, 0.486031,
		0.595736, 0.797903, 0.091918,
		-0.343115, 0.356297, -0.869094,
		31.328053, 31.452581, 34.591572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574636, 31.929178, 35.195309>,  <31.568232, 31.203173, 35.199936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574636, 31.929178, 35.195309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302273, 31.829863, 34.919712>,  <31.138855, 31.770273, 34.754353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302273, 31.829863, 34.919712>,  <31.574636, 31.929178, 35.195309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302273, 31.829863, 34.919712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608378, 0.715511, 0.343396,
		0.407724, 0.652991, -0.638251,
		-0.680910, -0.248287, -0.688996,
		31.098000, 31.755377, 34.713013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236734, 32.530365, 34.945408>,  <31.574636, 31.929178, 35.195309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236734, 32.530365, 34.945408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980368, 32.249035, 34.822411>,  <30.826548, 32.080235, 34.748611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980368, 32.249035, 34.822411>,  <31.236734, 32.530365, 34.945408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980368, 32.249035, 34.822411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763159, 0.626912, 0.156746,
		0.082528, 0.335129, -0.938551,
		-0.640919, -0.703328, -0.307494,
		30.788092, 32.038036, 34.730164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762808, 32.714600, 34.316605>,  <31.236734, 32.530365, 34.945408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762808, 32.714600, 34.316605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605883, 32.452797, 34.575127>,  <30.511726, 32.295715, 34.730240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605883, 32.452797, 34.575127>,  <30.762808, 32.714600, 34.316605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605883, 32.452797, 34.575127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697946, 0.669476, 0.254309,
		-0.599133, -0.351318, -0.719455,
		-0.392315, -0.654506, 0.646306,
		30.488188, 32.256447, 34.769020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176411, 32.230103, 34.082317>,  <30.762808, 32.714600, 34.316605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176411, 32.230103, 34.082317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923018, 31.992212, 34.280308>,  <29.770981, 31.849478, 34.399101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923018, 31.992212, 34.280308>,  <30.176411, 32.230103, 34.082317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923018, 31.992212, 34.280308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397378, 0.798960, 0.451391,
		-0.663920, 0.089256, -0.742458,
		-0.633484, -0.594724, 0.494977,
		29.732973, 31.813795, 34.428802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394188, 32.295578, 33.960716>,  <30.176411, 32.230103, 34.082317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394188, 32.295578, 33.960716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474026, 32.158016, 34.327736>,  <29.521929, 32.075478, 34.547947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474026, 32.158016, 34.327736>,  <29.394188, 32.295578, 33.960716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474026, 32.158016, 34.327736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598755, 0.698432, 0.392026,
		-0.775664, -0.627632, -0.066511,
		0.199595, -0.343905, 0.917547,
		29.533905, 32.054844, 34.603001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735422, 32.263988, 34.344528>,  <29.394188, 32.295578, 33.960716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735422, 32.263988, 34.344528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035040, 32.297077, 34.607464>,  <29.214809, 32.316929, 34.765224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035040, 32.297077, 34.607464>,  <28.735422, 32.263988, 34.344528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035040, 32.297077, 34.607464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483084, 0.747182, 0.456452,
		-0.453393, -0.659451, 0.599632,
		0.749042, 0.082720, 0.657338,
		29.259752, 32.321892, 34.804665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418701, 32.197849, 35.053326>,  <28.735422, 32.263988, 34.344528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418701, 32.197849, 35.053326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776531, 32.372704, 35.090523>,  <28.991230, 32.477615, 35.112843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776531, 32.372704, 35.090523>,  <28.418701, 32.197849, 35.053326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776531, 32.372704, 35.090523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393834, 0.672712, 0.626381,
		0.211250, -0.596972, 0.773950,
		0.894577, 0.437131, 0.092997,
		29.044905, 32.503841, 35.118423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710764, 32.246014, 35.697010>,  <28.418701, 32.197849, 35.053326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710764, 32.246014, 35.697010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805489, 32.559296, 35.467052>,  <28.862324, 32.747265, 35.329079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805489, 32.559296, 35.467052>,  <28.710764, 32.246014, 35.697010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805489, 32.559296, 35.467052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316954, 0.621633, 0.716318,
		0.918400, 0.012582, 0.395452,
		0.236813, 0.783207, -0.574896,
		28.876534, 32.794258, 35.294582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262653, 32.353592, 36.026581>,  <28.710764, 32.246014, 35.697010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262653, 32.353592, 36.026581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423891, 32.652248, 35.814903>,  <29.520634, 32.831444, 35.687897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423891, 32.652248, 35.814903>,  <29.262653, 32.353592, 36.026581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423891, 32.652248, 35.814903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587839, 0.654427, 0.475574,
		0.701400, 0.119379, 0.702700,
		0.403092, 0.746642, -0.529191,
		29.544819, 32.876240, 35.656147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555416, 32.825771, 36.550545>,  <29.262653, 32.353592, 36.026581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555416, 32.825771, 36.550545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505863, 33.042686, 36.218140>,  <29.476131, 33.172836, 36.018696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505863, 33.042686, 36.218140>,  <29.555416, 32.825771, 36.550545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505863, 33.042686, 36.218140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561283, 0.652318, 0.509355,
		0.818299, 0.529532, 0.223567,
		-0.123883, 0.542289, -0.831009,
		29.468699, 33.205372, 35.968838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851313, 33.522247, 36.652103>,  <29.555416, 32.825771, 36.550545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851313, 33.522247, 36.652103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559904, 33.567455, 36.381851>,  <29.385059, 33.594578, 36.219700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559904, 33.567455, 36.381851>,  <29.851313, 33.522247, 36.652103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559904, 33.567455, 36.381851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462771, 0.646004, 0.607059,
		0.505071, 0.754921, -0.418328,
		-0.728523, 0.113018, -0.675634,
		29.341347, 33.601360, 36.179161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794168, 34.279457, 36.475609>,  <29.851313, 33.522247, 36.652103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794168, 34.279457, 36.475609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467352, 34.054211, 36.426064>,  <29.271261, 33.919064, 36.396336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467352, 34.054211, 36.426064>,  <29.794168, 34.279457, 36.475609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467352, 34.054211, 36.426064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453068, 0.494164, 0.741979,
		-0.356609, 0.662348, -0.658882,
		-0.817043, -0.563114, -0.123865,
		29.222239, 33.885277, 36.388905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940565, 34.946312, 36.776485>,  <29.794168, 34.279457, 36.475609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940565, 34.946312, 36.776485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286985, 34.972446, 36.974751>,  <30.494839, 34.988129, 37.093712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286985, 34.972446, 36.974751>,  <29.940565, 34.946312, 36.776485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286985, 34.972446, 36.974751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411617, -0.655907, -0.632738,
		0.283769, 0.752009, -0.594944,
		0.866052, 0.065338, 0.495666,
		30.546801, 34.992046, 37.123451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428902, 35.092327, 36.341507>,  <29.940565, 34.946312, 36.776485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428902, 35.092327, 36.341507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629631, 34.927750, 36.645844>,  <30.750069, 34.829002, 36.828445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629631, 34.927750, 36.645844>,  <30.428902, 35.092327, 36.341507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629631, 34.927750, 36.645844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172760, -0.814220, -0.554255,
		0.847541, 0.409583, -0.337515,
		0.501825, -0.411445, 0.760845,
		30.780178, 34.804317, 36.874096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603617, 35.514065, 35.762943>,  <30.428902, 35.092327, 36.341507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603617, 35.514065, 35.762943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645327, 35.374401, 35.390446>,  <30.670353, 35.290604, 35.166946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645327, 35.374401, 35.390446>,  <30.603617, 35.514065, 35.762943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645327, 35.374401, 35.390446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179318, -0.914402, 0.362924,
		-0.978250, -0.204832, -0.032737,
		0.104273, -0.349160, -0.931244,
		30.676609, 35.269653, 35.111073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082958, 34.924671, 35.632530>,  <30.603617, 35.514065, 35.762943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082958, 34.924671, 35.632530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405815, 34.899799, 35.397701>,  <30.599529, 34.884876, 35.256805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405815, 34.899799, 35.397701>,  <30.082958, 34.924671, 35.632530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405815, 34.899799, 35.397701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232144, -0.880899, 0.412465,
		-0.542799, -0.469203, -0.696576,
		0.807142, -0.062180, -0.587074,
		30.647957, 34.881145, 35.221581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099871, 34.211205, 35.270550>,  <30.082958, 34.924671, 35.632530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099871, 34.211205, 35.270550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465910, 34.363850, 35.322662>,  <30.685534, 34.455437, 35.353931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465910, 34.363850, 35.322662>,  <30.099871, 34.211205, 35.270550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465910, 34.363850, 35.322662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248400, -0.787990, 0.563356,
		0.317643, -0.483162, -0.815878,
		0.915096, 0.381610, 0.130282,
		30.740438, 34.478333, 35.361748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570965, 33.714283, 35.049530>,  <30.099871, 34.211205, 35.270550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570965, 33.714283, 35.049530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698017, 33.981457, 35.318745>,  <30.774248, 34.141762, 35.480274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698017, 33.981457, 35.318745>,  <30.570965, 33.714283, 35.049530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698017, 33.981457, 35.318745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232013, -0.742965, 0.627832,
		0.919392, -0.043265, -0.390956,
		0.317630, 0.667931, 0.673038,
		30.793306, 34.181835, 35.520657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147985, 33.360653, 35.479214>,  <30.570965, 33.714283, 35.049530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147985, 33.360653, 35.479214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031015, 33.678478, 35.692066>,  <30.960833, 33.869171, 35.819778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031015, 33.678478, 35.692066>,  <31.147985, 33.360653, 35.479214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031015, 33.678478, 35.692066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017528, -0.560812, 0.827758,
		0.956128, 0.232729, 0.177922,
		-0.292424, 0.794561, 0.532129,
		30.943289, 33.916847, 35.851704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626488, 33.474876, 35.965706>,  <31.147985, 33.360653, 35.479214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626488, 33.474876, 35.965706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297384, 33.647449, 36.113724>,  <31.099922, 33.750992, 36.202534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297384, 33.647449, 36.113724>,  <31.626488, 33.474876, 35.965706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297384, 33.647449, 36.113724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113340, -0.513442, 0.850607,
		0.556976, 0.741785, 0.373540,
		-0.822759, 0.431431, 0.370049,
		31.050556, 33.776878, 36.224739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736437, 34.007526, 36.516201>,  <31.626488, 33.474876, 35.965706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736437, 34.007526, 36.516201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406059, 33.783398, 36.541035>,  <31.207832, 33.648918, 36.555935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406059, 33.783398, 36.541035>,  <31.736437, 34.007526, 36.516201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406059, 33.783398, 36.541035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502501, -0.681797, 0.531644,
		-0.255563, 0.470306, 0.844689,
		-0.825942, -0.560326, 0.062088,
		31.158278, 33.615299, 36.559662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238552, 34.598194, 36.623535>,  <31.736437, 34.007526, 36.516201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238552, 34.598194, 36.623535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368637, 34.379547, 36.932198>,  <32.446690, 34.248360, 37.117393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368637, 34.379547, 36.932198>,  <32.238552, 34.598194, 36.623535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368637, 34.379547, 36.932198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928707, 0.030889, -0.369525,
		0.178152, 0.836814, 0.517691,
		0.325215, -0.546615, 0.771652,
		32.466202, 34.215561, 37.163692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794216, 34.969631, 37.027584>,  <32.238552, 34.598194, 36.623535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794216, 34.969631, 37.027584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817719, 34.570370, 37.021503>,  <32.831821, 34.330811, 37.017853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817719, 34.570370, 37.021503>,  <32.794216, 34.969631, 37.027584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817719, 34.570370, 37.021503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922988, 0.060122, -0.380103,
		0.380316, 0.008302, 0.924819,
		0.058758, -0.998156, -0.015203,
		32.835346, 34.270924, 37.016941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548370, 34.800190, 37.098976>,  <32.794216, 34.969631, 37.027584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548370, 34.800190, 37.098976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365669, 34.498386, 36.910469>,  <33.256050, 34.317303, 36.797363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365669, 34.498386, 36.910469>,  <33.548370, 34.800190, 37.098976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365669, 34.498386, 36.910469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676689, 0.049206, -0.734623,
		0.577469, -0.654443, 0.488092,
		-0.456752, -0.754509, -0.471269,
		33.228645, 34.272034, 36.769089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008251, 34.236156, 36.871838>,  <33.548370, 34.800190, 37.098976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008251, 34.236156, 36.871838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697613, 34.227314, 36.619991>,  <33.511230, 34.222008, 36.468884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697613, 34.227314, 36.619991>,  <34.008251, 34.236156, 36.871838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697613, 34.227314, 36.619991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629246, -0.076255, -0.773457,
		-0.030911, -0.996843, 0.073131,
		-0.776591, -0.022109, -0.629616,
		33.464634, 34.220680, 36.431107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154140, 33.731232, 36.346672>,  <34.008251, 34.236156, 36.871838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154140, 33.731232, 36.346672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883190, 33.994946, 36.216133>,  <33.720619, 34.153172, 36.137810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883190, 33.994946, 36.216133>,  <34.154140, 33.731232, 36.346672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883190, 33.994946, 36.216133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523165, 0.119859, -0.843761,
		-0.517161, -0.742280, -0.426104,
		-0.677379, 0.659283, -0.326349,
		33.679977, 34.192730, 36.118229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387573, 33.908031, 35.613129>,  <34.154140, 33.731232, 36.346672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387573, 33.908031, 35.613129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081356, 34.164482, 35.634663>,  <33.897625, 34.318352, 35.647583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081356, 34.164482, 35.634663>,  <34.387573, 33.908031, 35.613129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081356, 34.164482, 35.634663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249042, 0.372441, -0.894017,
		-0.593226, -0.671004, -0.444788,
		-0.765546, 0.641125, 0.053833,
		33.851692, 34.356819, 35.650814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854080, 33.706631, 35.112556>,  <34.387573, 33.908031, 35.613129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854080, 33.706631, 35.112556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923721, 34.088783, 35.208004>,  <33.965504, 34.318073, 35.265274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923721, 34.088783, 35.208004>,  <33.854080, 33.706631, 35.112556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923721, 34.088783, 35.208004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278187, 0.184732, -0.942595,
		-0.944617, 0.230485, -0.233613,
		0.174098, 0.955380, 0.238619,
		33.975952, 34.375397, 35.279591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535759, 34.090427, 34.646812>,  <33.854080, 33.706631, 35.112556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535759, 34.090427, 34.646812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802071, 34.349720, 34.794617>,  <33.961857, 34.505295, 34.883301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802071, 34.349720, 34.794617>,  <33.535759, 34.090427, 34.646812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802071, 34.349720, 34.794617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196851, 0.325081, -0.924971,
		-0.719712, 0.688566, 0.088828,
		0.665780, 0.648227, 0.369510,
		34.001804, 34.544189, 34.905468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355381, 34.697521, 34.323181>,  <33.535759, 34.090427, 34.646812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355381, 34.697521, 34.323181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737537, 34.767433, 34.418404>,  <33.966831, 34.809380, 34.475536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737537, 34.767433, 34.418404>,  <33.355381, 34.697521, 34.323181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737537, 34.767433, 34.418404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146574, 0.419172, -0.895997,
		-0.256389, 0.890925, 0.374857,
		0.955395, 0.174780, 0.238057,
		34.024155, 34.819866, 34.489822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482922, 35.367073, 34.054970>,  <33.355381, 34.697521, 34.323181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482922, 35.367073, 34.054970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847374, 35.231430, 34.148647>,  <34.066044, 35.150043, 34.204853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847374, 35.231430, 34.148647>,  <33.482922, 35.367073, 34.054970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847374, 35.231430, 34.148647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368061, 0.413936, -0.832579,
		0.185396, 0.844784, 0.501963,
		0.911131, -0.339110, 0.234190,
		34.120712, 35.129696, 34.218903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004665, 35.943058, 34.180447>,  <33.482922, 35.367073, 34.054970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004665, 35.943058, 34.180447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166584, 35.598820, 34.056828>,  <34.263737, 35.392277, 33.982655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166584, 35.598820, 34.056828>,  <34.004665, 35.943058, 34.180447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166584, 35.598820, 34.056828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310191, 0.447177, -0.838936,
		0.860185, 0.243738, 0.447967,
		0.404801, -0.860595, -0.309049,
		34.288025, 35.340641, 33.964111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599472, 36.106956, 33.979504>,  <34.004665, 35.943058, 34.180447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599472, 36.106956, 33.979504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536476, 35.762260, 33.786587>,  <34.498680, 35.555443, 33.670837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536476, 35.762260, 33.786587>,  <34.599472, 36.106956, 33.979504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536476, 35.762260, 33.786587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402725, 0.389882, -0.828133,
		0.901671, -0.324650, 0.285642,
		-0.157487, -0.861739, -0.482290,
		34.489231, 35.503738, 33.641899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212795, 35.951241, 33.712593>,  <34.599472, 36.106956, 33.979504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212795, 35.951241, 33.712593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951084, 35.754230, 33.483044>,  <34.794056, 35.636024, 33.345314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951084, 35.754230, 33.483044>,  <35.212795, 35.951241, 33.712593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951084, 35.754230, 33.483044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483629, 0.310884, -0.818202,
		0.581395, -0.812878, 0.034794,
		-0.654281, -0.492525, -0.573878,
		34.754799, 35.606472, 33.310879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644417, 35.618423, 33.161865>,  <35.212795, 35.951241, 33.712593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644417, 35.618423, 33.161865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265011, 35.614292, 33.035236>,  <35.037369, 35.611813, 32.959259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265011, 35.614292, 33.035236>,  <35.644417, 35.618423, 33.161865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265011, 35.614292, 33.035236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306489, 0.222254, -0.925564,
		0.079921, -0.974934, -0.207644,
		-0.948513, -0.010331, -0.316569,
		34.980457, 35.611191, 32.940266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716518, 35.224216, 32.566925>,  <35.644417, 35.618423, 33.161865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716518, 35.224216, 32.566925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361996, 35.404533, 32.524506>,  <35.149284, 35.512726, 32.499054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361996, 35.404533, 32.524506>,  <35.716518, 35.224216, 32.566925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361996, 35.404533, 32.524506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189274, 0.143608, -0.971366,
		-0.422658, -0.880999, -0.212605,
		-0.886304, 0.450796, -0.106053,
		35.096104, 35.539772, 32.492691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402634, 35.002003, 31.897963>,  <35.716518, 35.224216, 32.566925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402634, 35.002003, 31.897963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241207, 35.348461, 32.015900>,  <35.144352, 35.556335, 32.086662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241207, 35.348461, 32.015900>,  <35.402634, 35.002003, 31.897963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241207, 35.348461, 32.015900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251943, 0.414987, -0.874249,
		-0.879581, -0.278530, -0.385692,
		-0.403562, 0.866145, 0.294841,
		35.120140, 35.608303, 32.104351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084019, 35.224140, 31.340839>,  <35.402634, 35.002003, 31.897963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084019, 35.224140, 31.340839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104607, 35.550106, 31.571754>,  <35.116959, 35.745686, 31.710304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104607, 35.550106, 31.571754>,  <35.084019, 35.224140, 31.340839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104607, 35.550106, 31.571754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030880, 0.576480, -0.816527,
		-0.998197, 0.059850, 0.004505,
		0.051467, 0.814916, 0.577289,
		35.120049, 35.794582, 31.744942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560497, 35.579506, 31.104179>,  <35.084019, 35.224140, 31.340839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560497, 35.579506, 31.104179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812992, 35.836071, 31.278595>,  <34.964489, 35.990009, 31.383244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812992, 35.836071, 31.278595>,  <34.560497, 35.579506, 31.104179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812992, 35.836071, 31.278595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092027, 0.496288, -0.863267,
		-0.770110, 0.585054, 0.254249,
		0.631239, 0.641412, 0.436037,
		35.002365, 36.028496, 31.409407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355034, 36.226486, 30.732168>,  <34.560497, 35.579506, 31.104179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355034, 36.226486, 30.732168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686386, 36.326721, 30.932566>,  <34.885197, 36.386864, 31.052803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686386, 36.326721, 30.932566>,  <34.355034, 36.226486, 30.732168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686386, 36.326721, 30.932566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174275, 0.734688, -0.655639,
		-0.532367, 0.630428, 0.564930,
		0.828380, 0.250587, 0.500992,
		34.934898, 36.401897, 31.082863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283813, 36.926243, 30.878250>,  <34.355034, 36.226486, 30.732168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283813, 36.926243, 30.878250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677223, 36.854130, 30.883528>,  <34.913269, 36.810863, 30.886694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677223, 36.854130, 30.883528>,  <34.283813, 36.926243, 30.878250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677223, 36.854130, 30.883528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130588, 0.658160, -0.741467,
		0.124987, 0.730976, 0.670860,
		0.983527, -0.180280, 0.013195,
		34.972282, 36.800045, 30.887486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580864, 37.500610, 31.030642>,  <34.283813, 36.926243, 30.878250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580864, 37.500610, 31.030642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848709, 37.277393, 30.834599>,  <35.009418, 37.143463, 30.716972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848709, 37.277393, 30.834599>,  <34.580864, 37.500610, 31.030642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848709, 37.277393, 30.834599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044667, 0.688956, -0.723426,
		0.741362, 0.462526, 0.486263,
		0.669617, -0.558041, -0.490106,
		35.049595, 37.109982, 30.687567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077553, 38.053043, 30.833212>,  <34.580864, 37.500610, 31.030642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077553, 38.053043, 30.833212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121971, 37.721390, 30.614044>,  <35.148621, 37.522400, 30.482544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121971, 37.721390, 30.614044>,  <35.077553, 38.053043, 30.833212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121971, 37.721390, 30.614044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035010, 0.554249, -0.831614,
		0.993199, 0.073164, 0.090574,
		0.111045, -0.829129, -0.547918,
		35.155285, 37.472652, 30.449669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655540, 38.225864, 30.398748>,  <35.077553, 38.053043, 30.833212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655540, 38.225864, 30.398748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440231, 37.933086, 30.231647>,  <35.311047, 37.757420, 30.131388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440231, 37.933086, 30.231647>,  <35.655540, 38.225864, 30.398748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440231, 37.933086, 30.231647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063325, 0.459160, -0.886094,
		0.840389, -0.503413, -0.200802,
		-0.538271, -0.731948, -0.417751,
		35.278751, 37.713501, 30.106321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982021, 38.153057, 29.773314>,  <35.655540, 38.225864, 30.398748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982021, 38.153057, 29.773314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641819, 37.948948, 29.722300>,  <35.437698, 37.826481, 29.691690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641819, 37.948948, 29.722300>,  <35.982021, 38.153057, 29.773314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641819, 37.948948, 29.722300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010818, 0.225457, -0.974193,
		0.525858, -0.829935, -0.186232,
		-0.850504, -0.510272, -0.127536,
		35.386669, 37.795868, 29.684038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117527, 37.825344, 29.151827>,  <35.982021, 38.153057, 29.773314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117527, 37.825344, 29.151827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717796, 37.828770, 29.166142>,  <35.477959, 37.830826, 29.174730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717796, 37.828770, 29.166142>,  <36.117527, 37.825344, 29.151827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717796, 37.828770, 29.166142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033713, 0.176819, -0.983666,
		-0.014749, -0.984206, -0.176410,
		-0.999323, 0.008561, 0.035788,
		35.417999, 37.831337, 29.176878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874954, 37.387230, 28.633116>,  <36.117527, 37.825344, 29.151827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874954, 37.387230, 28.633116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578915, 37.639206, 28.727293>,  <35.401291, 37.790390, 28.783800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578915, 37.639206, 28.727293>,  <35.874954, 37.387230, 28.633116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578915, 37.639206, 28.727293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104018, 0.238661, -0.965516,
		-0.664406, -0.739067, -0.111108,
		-0.740098, 0.629937, 0.235444,
		35.356884, 37.828186, 28.797926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292927, 37.284832, 28.184175>,  <35.874954, 37.387230, 28.633116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292927, 37.284832, 28.184175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267139, 37.657738, 28.326571>,  <35.251667, 37.881481, 28.412006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267139, 37.657738, 28.326571>,  <35.292927, 37.284832, 28.184175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267139, 37.657738, 28.326571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151492, 0.343451, -0.926872,
		-0.986354, -0.113680, 0.119091,
		-0.064465, 0.932265, 0.355986,
		35.247799, 37.937416, 28.433367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907856, 37.507717, 27.705881>,  <35.292927, 37.284832, 28.184175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907856, 37.507717, 27.705881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998386, 37.844311, 27.902119>,  <35.052704, 38.046268, 28.019861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998386, 37.844311, 27.902119>,  <34.907856, 37.507717, 27.705881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998386, 37.844311, 27.902119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023987, 0.498693, -0.866447,
		-0.973757, 0.207865, 0.092681,
		0.226323, 0.841485, 0.490592,
		35.066284, 38.096756, 28.049295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523205, 38.066525, 27.391275>,  <34.907856, 37.507717, 27.705881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523205, 38.066525, 27.391275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804707, 38.274647, 27.584774>,  <34.973606, 38.399521, 27.700872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804707, 38.274647, 27.584774>,  <34.523205, 38.066525, 27.391275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804707, 38.274647, 27.584774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144784, 0.561580, -0.814657,
		-0.695536, 0.643356, 0.319880,
		0.703752, 0.520309, 0.483747,
		35.015831, 38.430740, 27.729898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254295, 38.754768, 27.374865>,  <34.523205, 38.066525, 27.391275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254295, 38.754768, 27.374865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649899, 38.729748, 27.428455>,  <34.887260, 38.714733, 27.460609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649899, 38.729748, 27.428455>,  <34.254295, 38.754768, 27.374865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649899, 38.729748, 27.428455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146907, 0.518467, -0.842384,
		-0.016768, 0.852806, 0.521958,
		0.989008, -0.062554, 0.133977,
		34.946602, 38.710983, 27.468649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504700, 39.522205, 27.355261>,  <34.254295, 38.754768, 27.374865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504700, 39.522205, 27.355261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772423, 39.239613, 27.263243>,  <34.933056, 39.070057, 27.208033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772423, 39.239613, 27.263243>,  <34.504700, 39.522205, 27.355261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772423, 39.239613, 27.263243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166269, 0.444188, -0.880370,
		0.724146, 0.550985, 0.414762,
		0.669303, -0.706479, -0.230045,
		34.973213, 39.027668, 27.194229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113743, 39.958340, 27.276535>,  <34.504700, 39.522205, 27.355261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113743, 39.958340, 27.276535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169067, 39.617153, 27.075212>,  <35.202263, 39.412441, 26.954418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169067, 39.617153, 27.075212>,  <35.113743, 39.958340, 27.276535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169067, 39.617153, 27.075212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146487, 0.520220, -0.841376,
		0.979496, 0.042644, 0.196901,
		0.138312, -0.852967, -0.503307,
		35.210560, 39.361263, 26.924221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632332, 40.193916, 26.699657>,  <35.113743, 39.958340, 27.276535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632332, 40.193916, 26.699657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508884, 39.826599, 26.600466>,  <35.434814, 39.606209, 26.540951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508884, 39.826599, 26.600466>,  <35.632332, 40.193916, 26.699657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508884, 39.826599, 26.600466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104043, 0.226551, -0.968426,
		0.945478, -0.324676, 0.025624,
		-0.308620, -0.918292, -0.247979,
		35.416298, 39.551113, 26.526072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092720, 39.998596, 26.244493>,  <35.632332, 40.193916, 26.699657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092720, 39.998596, 26.244493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776737, 39.763664, 26.174063>,  <35.587147, 39.622704, 26.131805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776737, 39.763664, 26.174063>,  <36.092720, 39.998596, 26.244493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776737, 39.763664, 26.174063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115934, 0.138911, -0.983495,
		0.602097, -0.797336, -0.041642,
		-0.789961, -0.587332, -0.176076,
		35.539749, 39.587463, 26.121241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256104, 39.504101, 25.815557>,  <36.092720, 39.998596, 26.244493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256104, 39.504101, 25.815557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859444, 39.535057, 25.774282>,  <35.621449, 39.553631, 25.749517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859444, 39.535057, 25.774282>,  <36.256104, 39.504101, 25.815557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859444, 39.535057, 25.774282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114630, 0.161984, -0.980113,
		-0.059134, -0.983754, -0.169502,
		-0.991647, 0.077388, -0.103189,
		35.561951, 39.558273, 25.743326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143578, 39.172199, 25.260742>,  <36.256104, 39.504101, 25.815557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143578, 39.172199, 25.260742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838516, 39.426067, 25.310619>,  <35.655479, 39.578388, 25.340546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838516, 39.426067, 25.310619>,  <36.143578, 39.172199, 25.260742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838516, 39.426067, 25.310619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102126, 0.308523, -0.945719,
		-0.638690, -0.708524, -0.300113,
		-0.762657, 0.634671, 0.124691,
		35.609718, 39.616470, 25.348026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848244, 39.188877, 24.617846>,  <36.143578, 39.172199, 25.260742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848244, 39.188877, 24.617846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714539, 39.515148, 24.806709>,  <35.634315, 39.710911, 24.920027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714539, 39.515148, 24.806709>,  <35.848244, 39.188877, 24.617846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714539, 39.515148, 24.806709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177622, 0.546520, -0.818393,
		-0.925590, -0.189695, -0.327565,
		-0.334266, 0.815679, 0.472160,
		35.614258, 39.759853, 24.948357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289581, 39.415550, 24.201530>,  <35.848244, 39.188877, 24.617846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289581, 39.415550, 24.201530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434673, 39.718262, 24.419048>,  <35.521729, 39.899887, 24.549559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434673, 39.718262, 24.419048>,  <35.289581, 39.415550, 24.201530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434673, 39.718262, 24.419048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125863, 0.538404, -0.833235,
		-0.923354, 0.370686, 0.100047,
		0.362734, 0.756778, 0.543793,
		35.543495, 39.945293, 24.582186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924156, 39.902805, 24.007326>,  <35.289581, 39.415550, 24.201530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924156, 39.902805, 24.007326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202526, 40.129154, 24.184177>,  <35.369549, 40.264965, 24.290287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202526, 40.129154, 24.184177>,  <34.924156, 39.902805, 24.007326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202526, 40.129154, 24.184177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042864, 0.581846, -0.812169,
		-0.716836, 0.584159, 0.380664,
		0.695923, 0.565875, 0.442127,
		35.411304, 40.298916, 24.316816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773174, 40.668842, 23.813276>,  <34.924156, 39.902805, 24.007326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773174, 40.668842, 23.813276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151669, 40.684971, 23.941652>,  <35.378765, 40.694649, 24.018679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151669, 40.684971, 23.941652>,  <34.773174, 40.668842, 23.813276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151669, 40.684971, 23.941652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102032, 0.904338, -0.414443,
		-0.306951, 0.424909, 0.851607,
		0.946240, 0.040322, 0.320942,
		35.435539, 40.697067, 24.037935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855541, 41.298439, 24.163139>,  <34.773174, 40.668842, 23.813276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855541, 41.298439, 24.163139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221512, 41.190102, 24.043436>,  <35.441093, 41.125099, 23.971615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221512, 41.190102, 24.043436>,  <34.855541, 41.298439, 24.163139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221512, 41.190102, 24.043436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126724, 0.896692, -0.424128,
		0.383215, 0.350123, 0.854728,
		0.914925, -0.270847, -0.299257,
		35.495991, 41.108849, 23.953659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327961, 41.846424, 24.409735>,  <34.855541, 41.298439, 24.163139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327961, 41.846424, 24.409735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515530, 41.663242, 24.107639>,  <35.628071, 41.553333, 23.926382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515530, 41.663242, 24.107639>,  <35.327961, 41.846424, 24.409735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515530, 41.663242, 24.107639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181975, 0.886829, -0.424759,
		0.864288, 0.061746, 0.499193,
		0.468926, -0.457954, -0.755239,
		35.656208, 41.525856, 23.881067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806873, 42.256279, 24.237217>,  <35.327961, 41.846424, 24.409735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806873, 42.256279, 24.237217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822033, 42.037800, 23.902496>,  <35.831127, 41.906712, 23.701664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822033, 42.037800, 23.902496>,  <35.806873, 42.256279, 24.237217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822033, 42.037800, 23.902496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128648, 0.833101, -0.537953,
		0.990966, -0.087267, 0.101836,
		0.037894, -0.546194, -0.836801,
		35.833401, 41.873943, 23.651457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473923, 42.347084, 23.897467>,  <35.806873, 42.256279, 24.237217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473923, 42.347084, 23.897467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232464, 42.221920, 23.604156>,  <36.087589, 42.146824, 23.428169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232464, 42.221920, 23.604156>,  <36.473923, 42.347084, 23.897467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232464, 42.221920, 23.604156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278028, 0.779394, -0.561467,
		0.747200, -0.542801, -0.383484,
		-0.603650, -0.312909, -0.733277,
		36.051369, 42.128048, 23.384174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873516, 42.408764, 23.240311>,  <36.473923, 42.347084, 23.897467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873516, 42.408764, 23.240311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482948, 42.393917, 23.155241>,  <36.248608, 42.385010, 23.104198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482948, 42.393917, 23.155241>,  <36.873516, 42.408764, 23.240311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482948, 42.393917, 23.155241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069068, 0.879625, -0.470626,
		0.204544, -0.474217, -0.856318,
		-0.976418, -0.037120, -0.212675,
		36.190022, 42.382782, 23.091438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808441, 42.801262, 22.559723>,  <36.873516, 42.408764, 23.240311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808441, 42.801262, 22.559723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433544, 42.792645, 22.698931>,  <36.208607, 42.787476, 22.782455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433544, 42.792645, 22.698931>,  <36.808441, 42.801262, 22.559723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433544, 42.792645, 22.698931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122688, 0.954638, -0.271318,
		-0.326389, -0.296988, -0.897368,
		-0.937240, -0.021541, 0.348020,
		36.152370, 42.786182, 22.803337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411068, 42.803371, 21.996778>,  <36.808441, 42.801262, 22.559723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411068, 42.803371, 21.996778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168964, 42.943428, 22.282732>,  <36.023701, 43.027462, 22.454304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168964, 42.943428, 22.282732>,  <36.411068, 42.803371, 21.996778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168964, 42.943428, 22.282732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001035, 0.897717, -0.440571,
		-0.796026, -0.267401, -0.542992,
		-0.605262, 0.350144, 0.714882,
		35.987385, 43.048470, 22.497196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967335, 43.229321, 21.663979>,  <36.411068, 42.803371, 21.996778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967335, 43.229321, 21.663979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944057, 43.332504, 22.049740>,  <35.930092, 43.394413, 22.281197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944057, 43.332504, 22.049740>,  <35.967335, 43.229321, 21.663979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944057, 43.332504, 22.049740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275555, 0.924358, -0.263878,
		-0.959522, -0.281103, 0.017287,
		-0.058197, 0.257960, 0.964401,
		35.926598, 43.409893, 22.339060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249409, 43.345230, 21.810091>,  <35.967335, 43.229321, 21.663979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249409, 43.345230, 21.810091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498081, 43.542072, 22.053841>,  <35.647285, 43.660179, 22.200090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498081, 43.542072, 22.053841>,  <35.249409, 43.345230, 21.810091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498081, 43.542072, 22.053841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365387, 0.870358, -0.330105,
		-0.692822, -0.017437, 0.720897,
		0.621683, 0.492110, 0.609375,
		35.684586, 43.689705, 22.236652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859226, 43.933495, 22.090191>,  <35.249409, 43.345230, 21.810091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859226, 43.933495, 22.090191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254871, 43.988503, 22.111147>,  <35.492260, 44.021507, 22.123720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254871, 43.988503, 22.111147>,  <34.859226, 43.933495, 22.090191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254871, 43.988503, 22.111147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121922, 0.965137, -0.231614,
		-0.082418, 0.222704, 0.971396,
		0.989112, 0.137524, 0.052392,
		35.551605, 44.029758, 22.126865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060902, 44.571903, 22.524143>,  <34.859226, 43.933495, 22.090191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060902, 44.571903, 22.524143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305988, 44.462952, 22.227390>,  <35.453041, 44.397583, 22.049339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305988, 44.462952, 22.227390>,  <35.060902, 44.571903, 22.524143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305988, 44.462952, 22.227390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064673, 0.918303, -0.390561,
		0.787651, 0.287283, 0.545046,
		0.612718, -0.272376, -0.741881,
		35.489803, 44.381241, 22.004826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403271, 45.224972, 22.605011>,  <35.060902, 44.571903, 22.524143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403271, 45.224972, 22.605011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508121, 45.564762, 22.788177>,  <35.571033, 45.768635, 22.898077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508121, 45.564762, 22.788177>,  <35.403271, 45.224972, 22.605011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508121, 45.564762, 22.788177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032037, 0.481906, -0.875637,
		-0.964501, 0.214860, 0.153537,
		0.262130, 0.849471, 0.457915,
		35.586761, 45.819603, 22.925552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932434, 45.707935, 22.354261>,  <35.403271, 45.224972, 22.605011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932434, 45.707935, 22.354261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288212, 45.847252, 22.472633>,  <35.501678, 45.930843, 22.543657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288212, 45.847252, 22.472633>,  <34.932434, 45.707935, 22.354261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288212, 45.847252, 22.472633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224461, 0.231140, -0.946674,
		-0.398124, 0.908441, 0.127408,
		0.889446, 0.348296, 0.295932,
		35.555046, 45.951740, 22.561413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128513, 46.397900, 22.081961>,  <34.932434, 45.707935, 22.354261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128513, 46.397900, 22.081961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499588, 46.262512, 22.145004>,  <35.722233, 46.181278, 22.182831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499588, 46.262512, 22.145004>,  <35.128513, 46.397900, 22.081961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499588, 46.262512, 22.145004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286913, 0.376116, -0.881032,
		0.238926, 0.862538, 0.446029,
		0.927683, -0.338473, 0.157609,
		35.777893, 46.160969, 22.192287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769348, 46.953789, 22.158239>,  <35.128513, 46.397900, 22.081961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769348, 46.953789, 22.158239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847240, 46.621532, 21.949577>,  <35.893978, 46.422180, 21.824381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847240, 46.621532, 21.949577>,  <35.769348, 46.953789, 22.158239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847240, 46.621532, 21.949577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326953, 0.556389, -0.763893,
		0.924759, -0.021799, 0.379928,
		0.194735, -0.830636, -0.521653,
		35.905663, 46.372341, 21.793081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507702, 46.960499, 22.031687>,  <35.769348, 46.953789, 22.158239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507702, 46.960499, 22.031687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282986, 46.761707, 21.767143>,  <36.148155, 46.642433, 21.608418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282986, 46.761707, 21.767143>,  <36.507702, 46.960499, 22.031687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282986, 46.761707, 21.767143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312528, 0.612703, -0.725893,
		0.765972, -0.614497, -0.188893,
		-0.561794, -0.496980, -0.661361,
		36.114449, 46.612614, 21.568735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573013, 46.917473, 22.731522>,  <36.507702, 46.960499, 22.031687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573013, 46.917473, 22.731522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775925, 47.117256, 22.450603>,  <36.897671, 47.237125, 22.282053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775925, 47.117256, 22.450603>,  <36.573013, 46.917473, 22.731522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775925, 47.117256, 22.450603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715283, 0.210517, 0.666373,
		0.480669, -0.840372, -0.250464,
		0.507274, 0.499457, -0.702293,
		36.928108, 47.267094, 22.239916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649906, 46.435879, 23.153540>,  <36.573013, 46.917473, 22.731522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649906, 46.435879, 23.153540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308628, 46.349651, 22.963558>,  <36.103859, 46.297913, 22.849569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308628, 46.349651, 22.963558>,  <36.649906, 46.435879, 23.153540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308628, 46.349651, 22.963558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402325, -0.307513, 0.862305,
		-0.331942, 0.926804, 0.175640,
		-0.853199, -0.215571, -0.474953,
		36.052670, 46.284981, 22.821072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123459, 46.879642, 23.396410>,  <36.649906, 46.435879, 23.153540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123459, 46.879642, 23.396410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976639, 46.532951, 23.261324>,  <35.888546, 46.324936, 23.180273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976639, 46.532951, 23.261324>,  <36.123459, 46.879642, 23.396410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976639, 46.532951, 23.261324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430284, -0.163676, 0.887731,
		-0.824700, 0.471154, -0.312863,
		-0.367050, -0.866732, -0.337714,
		35.866524, 46.272930, 23.160009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475033, 46.854321, 23.604059>,  <36.123459, 46.879642, 23.396410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475033, 46.854321, 23.604059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621113, 46.483063, 23.575272>,  <35.708759, 46.260307, 23.557999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621113, 46.483063, 23.575272>,  <35.475033, 46.854321, 23.604059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621113, 46.483063, 23.575272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369100, -0.215336, 0.904099,
		-0.854632, -0.303612, -0.421218,
		0.365198, -0.928144, -0.071969,
		35.730671, 46.204620, 23.553680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916443, 46.456741, 23.842363>,  <35.475033, 46.854321, 23.604059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916443, 46.456741, 23.842363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247360, 46.232971, 23.862860>,  <35.445911, 46.098709, 23.875156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247360, 46.232971, 23.862860>,  <34.916443, 46.456741, 23.842363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247360, 46.232971, 23.862860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290253, -0.347568, 0.891599,
		-0.480977, -0.752486, -0.449917,
		0.827293, -0.559429, 0.051239,
		35.495548, 46.065144, 23.878231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704109, 45.826916, 23.955671>,  <34.916443, 46.456741, 23.842363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704109, 45.826916, 23.955671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083591, 45.799671, 24.079163>,  <35.311283, 45.783325, 24.153257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083591, 45.799671, 24.079163>,  <34.704109, 45.826916, 23.955671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083591, 45.799671, 24.079163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300601, -0.496811, 0.814136,
		0.097930, -0.865182, -0.491802,
		0.948709, -0.068108, 0.308727,
		35.368206, 45.779240, 24.171782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792805, 45.137585, 24.087370>,  <34.704109, 45.826916, 23.955671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792805, 45.137585, 24.087370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099442, 45.319218, 24.268986>,  <35.283424, 45.428196, 24.377954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099442, 45.319218, 24.268986>,  <34.792805, 45.137585, 24.087370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099442, 45.319218, 24.268986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195355, -0.508643, 0.838522,
		0.611697, -0.731502, -0.301215,
		0.766592, 0.454078, 0.454038,
		35.329418, 45.455441, 24.405197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160019, 44.627743, 24.385525>,  <34.792805, 45.137585, 24.087370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160019, 44.627743, 24.385525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248337, 44.956966, 24.594839>,  <35.301327, 45.154499, 24.720428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248337, 44.956966, 24.594839>,  <35.160019, 44.627743, 24.385525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248337, 44.956966, 24.594839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281117, -0.460054, 0.842213,
		0.933929, -0.333060, 0.129798,
		0.220793, 0.823056, 0.523287,
		35.314575, 45.203884, 24.751825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521416, 44.408806, 24.933718>,  <35.160019, 44.627743, 24.385525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521416, 44.408806, 24.933718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434586, 44.781254, 25.050953>,  <35.382488, 45.004723, 25.121294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434586, 44.781254, 25.050953>,  <35.521416, 44.408806, 24.933718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434586, 44.781254, 25.050953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150555, -0.328593, 0.932395,
		0.964474, 0.158275, 0.211514,
		-0.217077, 0.931115, 0.293090,
		35.369461, 45.060589, 25.138880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941063, 44.549252, 25.481651>,  <35.521416, 44.408806, 24.933718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941063, 44.549252, 25.481651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647030, 44.819164, 25.507925>,  <35.470608, 44.981113, 25.523689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647030, 44.819164, 25.507925>,  <35.941063, 44.549252, 25.481651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647030, 44.819164, 25.507925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167442, -0.274576, 0.946874,
		0.656971, 0.685036, 0.314824,
		-0.735087, 0.674784, 0.065684,
		35.426502, 45.021599, 25.527630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103252, 44.974041, 26.113749>,  <35.941063, 44.549252, 25.481651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103252, 44.974041, 26.113749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716927, 44.994125, 26.012014>,  <35.485130, 45.006176, 25.950974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716927, 44.994125, 26.012014>,  <36.103252, 44.974041, 26.113749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716927, 44.994125, 26.012014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258725, -0.248696, 0.933387,
		-0.016389, 0.967280, 0.253183,
		-0.965812, 0.050208, -0.254335,
		35.427181, 45.009190, 25.935715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804283, 45.465851, 26.521336>,  <36.103252, 44.974041, 26.113749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804283, 45.465851, 26.521336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519753, 45.212128, 26.400232>,  <35.349033, 45.059895, 26.327570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519753, 45.212128, 26.400232>,  <35.804283, 45.465851, 26.521336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519753, 45.212128, 26.400232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162541, -0.270620, 0.948865,
		-0.683807, 0.724165, 0.089399,
		-0.711328, -0.634310, -0.302759,
		35.306355, 45.021835, 26.309404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359581, 45.507179, 27.097050>,  <35.804283, 45.465851, 26.521336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359581, 45.507179, 27.097050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224964, 45.189838, 26.894138>,  <35.144196, 44.999435, 26.772390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224964, 45.189838, 26.894138>,  <35.359581, 45.507179, 27.097050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224964, 45.189838, 26.894138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162224, -0.481804, 0.861132,
		-0.927590, 0.372100, 0.033446,
		-0.336542, -0.793352, -0.507280,
		35.124001, 44.951832, 26.741955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766869, 45.257042, 27.271349>,  <35.359581, 45.507179, 27.097050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766869, 45.257042, 27.271349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874153, 44.905186, 27.114229>,  <34.938526, 44.694073, 27.019957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874153, 44.905186, 27.114229>,  <34.766869, 45.257042, 27.271349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874153, 44.905186, 27.114229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139504, -0.438908, 0.887636,
		-0.953205, -0.183279, -0.240434,
		0.268214, -0.879641, -0.392802,
		34.954617, 44.641293, 26.996389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268108, 44.774055, 27.562956>,  <34.766869, 45.257042, 27.271349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268108, 44.774055, 27.562956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574261, 44.560440, 27.419287>,  <34.757950, 44.432270, 27.333084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574261, 44.560440, 27.419287>,  <34.268108, 44.774055, 27.562956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574261, 44.560440, 27.419287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099962, -0.649956, 0.753369,
		-0.635772, -0.540708, -0.550844,
		0.765377, -0.534034, -0.359173,
		34.803875, 44.400230, 27.311535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115887, 44.037949, 27.649534>,  <34.268108, 44.774055, 27.562956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115887, 44.037949, 27.649534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513672, 44.022488, 27.610456>,  <34.752342, 44.013210, 27.587009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513672, 44.022488, 27.610456>,  <34.115887, 44.037949, 27.649534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513672, 44.022488, 27.610456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008090, -0.898917, 0.438045,
		-0.104753, -0.436411, -0.893629,
		0.994465, -0.038657, -0.097695,
		34.812012, 44.010891, 27.581148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275372, 43.417187, 27.402205>,  <34.115887, 44.037949, 27.649534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275372, 43.417187, 27.402205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611961, 43.542877, 27.578018>,  <34.813915, 43.618290, 27.683506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611961, 43.542877, 27.578018>,  <34.275372, 43.417187, 27.402205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611961, 43.542877, 27.578018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070399, -0.870324, 0.487421,
		0.535696, -0.379208, -0.754474,
		0.841471, 0.314224, 0.439534,
		34.864403, 43.637146, 27.709879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646465, 42.818405, 27.414942>,  <34.275372, 43.417187, 27.402205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646465, 42.818405, 27.414942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816021, 43.056145, 27.688313>,  <34.917755, 43.198788, 27.852335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816021, 43.056145, 27.688313>,  <34.646465, 42.818405, 27.414942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816021, 43.056145, 27.688313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014803, -0.759014, 0.650906,
		0.905595, -0.265793, -0.330534,
		0.423886, 0.594350, 0.683425,
		34.943188, 43.234451, 27.893339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234112, 42.433594, 27.613136>,  <34.646465, 42.818405, 27.414942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234112, 42.433594, 27.613136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157173, 42.703953, 27.897717>,  <35.111012, 42.866169, 28.068464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157173, 42.703953, 27.897717>,  <35.234112, 42.433594, 27.613136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157173, 42.703953, 27.897717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077627, -0.712238, 0.697633,
		0.978252, 0.189415, 0.084529,
		-0.192347, 0.675899, 0.711452,
		35.099468, 42.906723, 28.111153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701450, 42.316120, 28.191538>,  <35.234112, 42.433594, 27.613136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701450, 42.316120, 28.191538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411106, 42.531616, 28.362598>,  <35.236900, 42.660912, 28.465235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411106, 42.531616, 28.362598>,  <35.701450, 42.316120, 28.191538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411106, 42.531616, 28.362598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055506, -0.573828, 0.817093,
		0.685596, 0.616835, 0.386617,
		-0.725863, 0.538736, 0.427652,
		35.193348, 42.693237, 28.490894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766312, 42.257671, 28.878273>,  <35.701450, 42.316120, 28.191538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766312, 42.257671, 28.878273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382160, 42.362255, 28.839676>,  <35.151669, 42.425003, 28.816517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382160, 42.362255, 28.839676>,  <35.766312, 42.257671, 28.878273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382160, 42.362255, 28.839676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259505, -0.712701, 0.651702,
		0.101621, 0.650922, 0.752313,
		-0.960380, 0.261455, -0.096493,
		35.094048, 42.440693, 28.810728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537071, 42.312702, 29.525276>,  <35.766312, 42.257671, 28.878273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537071, 42.312702, 29.525276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204201, 42.262863, 29.309145>,  <35.004478, 42.232960, 29.179466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204201, 42.262863, 29.309145>,  <35.537071, 42.312702, 29.525276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204201, 42.262863, 29.309145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301121, -0.716687, 0.629035,
		-0.465625, 0.686173, 0.558891,
		-0.832178, -0.124600, -0.540329,
		34.954548, 42.225483, 29.147047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024460, 42.259815, 30.005577>,  <35.537071, 42.312702, 29.525276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024460, 42.259815, 30.005577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822891, 42.083618, 29.708382>,  <34.701950, 41.977901, 29.530064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822891, 42.083618, 29.708382>,  <35.024460, 42.259815, 30.005577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822891, 42.083618, 29.708382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479231, -0.573068, 0.664779,
		-0.718613, 0.691058, 0.077682,
		-0.503918, -0.440491, -0.742990,
		34.671715, 41.951469, 29.485485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386070, 42.107216, 30.340059>,  <35.024460, 42.259815, 30.005577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386070, 42.107216, 30.340059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409912, 41.866016, 30.021854>,  <34.424217, 41.721298, 29.830931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409912, 41.866016, 30.021854>,  <34.386070, 42.107216, 30.340059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409912, 41.866016, 30.021854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416013, -0.739430, 0.529317,
		-0.907403, 0.299393, -0.294931,
		0.059607, -0.602999, -0.795512,
		34.427795, 41.685116, 29.783201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787735, 41.776043, 30.432274>,  <34.386070, 42.107216, 30.340059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787735, 41.776043, 30.432274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028851, 41.552368, 30.204607>,  <34.173519, 41.418163, 30.068007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028851, 41.552368, 30.204607>,  <33.787735, 41.776043, 30.432274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028851, 41.552368, 30.204607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375236, -0.828198, 0.416277,
		-0.704161, -0.037354, -0.709057,
		0.602789, -0.559190, -0.569168,
		34.209686, 41.384613, 30.033857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354935, 41.109535, 30.263794>,  <33.787735, 41.776043, 30.432274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354935, 41.109535, 30.263794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736275, 41.013416, 30.190718>,  <33.965080, 40.955746, 30.146872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736275, 41.013416, 30.190718>,  <33.354935, 41.109535, 30.263794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736275, 41.013416, 30.190718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113948, -0.846931, 0.519349,
		-0.279522, -0.474306, -0.834806,
		0.953354, -0.240294, -0.182690,
		34.022282, 40.941326, 30.135910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282738, 40.456825, 30.270042>,  <33.354935, 41.109535, 30.263794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282738, 40.456825, 30.270042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679886, 40.492973, 30.301130>,  <33.918175, 40.514660, 30.319782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679886, 40.492973, 30.301130>,  <33.282738, 40.456825, 30.270042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679886, 40.492973, 30.301130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017022, -0.752869, 0.657950,
		0.117969, -0.651936, -0.749041,
		0.992871, 0.090368, 0.077717,
		33.977749, 40.520084, 30.324446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676289, 39.742943, 30.134701>,  <33.282738, 40.456825, 30.270042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676289, 39.742943, 30.134701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914379, 39.986511, 30.344435>,  <34.057232, 40.132652, 30.470276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914379, 39.986511, 30.344435>,  <33.676289, 39.742943, 30.134701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914379, 39.986511, 30.344435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076375, -0.692430, 0.717431,
		0.799922, -0.386986, -0.458658,
		0.595224, 0.608919, 0.524334,
		34.092945, 40.169186, 30.501736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231506, 39.265972, 30.417336>,  <33.676289, 39.742943, 30.134701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231506, 39.265972, 30.417336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258415, 39.595596, 30.642332>,  <34.274559, 39.793369, 30.777330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258415, 39.595596, 30.642332>,  <34.231506, 39.265972, 30.417336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258415, 39.595596, 30.642332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035022, -0.561471, 0.826755,
		0.997120, -0.075316, -0.008910,
		0.067271, 0.824061, 0.562492,
		34.278595, 39.842815, 30.811079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669357, 39.155167, 30.960184>,  <34.231506, 39.265972, 30.417336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669357, 39.155167, 30.960184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476315, 39.475674, 31.101643>,  <34.360489, 39.667976, 31.186518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476315, 39.475674, 31.101643>,  <34.669357, 39.155167, 30.960184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476315, 39.475674, 31.101643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015290, -0.411427, 0.911314,
		0.875704, 0.434398, 0.210808,
		-0.482606, 0.801265, 0.353647,
		34.331532, 39.716053, 31.207737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041878, 39.136276, 31.530607>,  <34.669357, 39.155167, 30.960184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041878, 39.136276, 31.530607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739254, 39.388374, 31.600370>,  <34.557682, 39.539631, 31.642229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739254, 39.388374, 31.600370>,  <35.041878, 39.136276, 31.530607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739254, 39.388374, 31.600370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013499, -0.281703, 0.959407,
		0.653790, 0.723490, 0.221632,
		-0.756556, 0.630242, 0.174408,
		34.512287, 39.577446, 31.652693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175743, 39.639671, 32.162846>,  <35.041878, 39.136276, 31.530607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175743, 39.639671, 32.162846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781723, 39.581047, 32.126614>,  <34.545311, 39.545872, 32.104874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781723, 39.581047, 32.126614>,  <35.175743, 39.639671, 32.162846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781723, 39.581047, 32.126614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056871, -0.219703, 0.973908,
		-0.162637, 0.964495, 0.208083,
		-0.985046, -0.146559, -0.090583,
		34.486210, 39.537079, 32.099438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902870, 39.951950, 32.751656>,  <35.175743, 39.639671, 32.162846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902870, 39.951950, 32.751656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604736, 39.708916, 32.641880>,  <34.425854, 39.563095, 32.576015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604736, 39.708916, 32.641880>,  <34.902870, 39.951950, 32.751656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604736, 39.708916, 32.641880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135715, -0.264748, 0.954720,
		-0.652727, 0.748834, 0.114869,
		-0.745338, -0.607582, -0.274437,
		34.381134, 39.526642, 32.559547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325359, 40.029755, 33.240417>,  <34.902870, 39.951950, 32.751656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325359, 40.029755, 33.240417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257690, 39.668831, 33.081818>,  <34.217091, 39.452274, 32.986656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257690, 39.668831, 33.081818>,  <34.325359, 40.029755, 33.240417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257690, 39.668831, 33.081818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121712, -0.380096, 0.916904,
		-0.978043, 0.203370, -0.045522,
		-0.169168, -0.902312, -0.396503,
		34.206940, 39.398136, 32.962868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905651, 39.695263, 33.756359>,  <34.325359, 40.029755, 33.240417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905651, 39.695263, 33.756359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989037, 39.380974, 33.523403>,  <34.039070, 39.192402, 33.383629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989037, 39.380974, 33.523403>,  <33.905651, 39.695263, 33.756359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989037, 39.380974, 33.523403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186672, -0.616495, 0.764910,
		-0.960050, -0.050741, -0.275191,
		0.208466, -0.785722, -0.582394,
		34.051575, 39.145256, 33.348686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358826, 39.303490, 33.755814>,  <33.905651, 39.695263, 33.756359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358826, 39.303490, 33.755814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650635, 39.035591, 33.700325>,  <33.825718, 38.874851, 33.667030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650635, 39.035591, 33.700325>,  <33.358826, 39.303490, 33.755814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650635, 39.035591, 33.700325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433762, -0.609860, 0.663266,
		-0.528818, -0.423694, -0.735415,
		0.729521, -0.669742, -0.138723,
		33.869492, 38.834667, 33.658707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053444, 38.652584, 33.958084>,  <33.358826, 39.303490, 33.755814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053444, 38.652584, 33.958084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444633, 38.574162, 33.929436>,  <33.679348, 38.527107, 33.912247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444633, 38.574162, 33.929436>,  <33.053444, 38.652584, 33.958084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444633, 38.574162, 33.929436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057639, -0.583456, 0.810097,
		-0.200612, -0.788125, -0.581905,
		0.977974, -0.196055, -0.071621,
		33.738026, 38.515347, 33.907948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201683, 37.938274, 34.036724>,  <33.053444, 38.652584, 33.958084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201683, 37.938274, 34.036724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556423, 38.107723, 34.110523>,  <33.769268, 38.209393, 34.154800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556423, 38.107723, 34.110523>,  <33.201683, 37.938274, 34.036724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556423, 38.107723, 34.110523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182208, -0.687571, 0.702885,
		0.424610, -0.589738, -0.686960,
		0.886852, 0.423622, 0.184495,
		33.822479, 38.234810, 34.165871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594654, 37.422924, 34.027790>,  <33.201683, 37.938274, 34.036724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594654, 37.422924, 34.027790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813774, 37.695210, 34.222336>,  <33.945244, 37.858582, 34.339062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813774, 37.695210, 34.222336>,  <33.594654, 37.422924, 34.027790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813774, 37.695210, 34.222336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120311, -0.639408, 0.759397,
		0.827914, -0.357481, -0.432163,
		0.547798, 0.680710, 0.486366,
		33.978115, 37.899422, 34.368244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297180, 37.106144, 34.033257>,  <33.594654, 37.422924, 34.027790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297180, 37.106144, 34.033257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257504, 37.374474, 34.327236>,  <34.233700, 37.535473, 34.503624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257504, 37.374474, 34.327236>,  <34.297180, 37.106144, 34.033257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257504, 37.374474, 34.327236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256532, -0.696388, 0.670250,
		0.961433, 0.255020, -0.103015,
		-0.099189, 0.670827, 0.734951,
		34.227745, 37.575722, 34.547722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863285, 36.932606, 34.455280>,  <34.297180, 37.106144, 34.033257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863285, 36.932606, 34.455280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612450, 37.132729, 34.694096>,  <34.461948, 37.252804, 34.837383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612450, 37.132729, 34.694096>,  <34.863285, 36.932606, 34.455280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612450, 37.132729, 34.694096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349617, -0.504153, 0.789682,
		0.696082, 0.703934, 0.141232,
		-0.627087, 0.500306, 0.597039,
		34.424324, 37.282822, 34.873207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285618, 37.214138, 34.947960>,  <34.863285, 36.932606, 34.455280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285618, 37.214138, 34.947960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917160, 37.184467, 35.100796>,  <34.696087, 37.166664, 35.192497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917160, 37.184467, 35.100796>,  <35.285618, 37.214138, 34.947960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917160, 37.184467, 35.100796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348500, -0.594338, 0.724783,
		0.173328, 0.800787, 0.573321,
		-0.921143, -0.074178, 0.382090,
		34.640816, 37.162212, 35.215424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831730, 36.837170, 35.299450>,  <35.285618, 37.214138, 34.947960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831730, 36.837170, 35.299450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171089, 37.010582, 35.420952>,  <36.374706, 37.114628, 35.493855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171089, 37.010582, 35.420952>,  <35.831730, 36.837170, 35.299450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171089, 37.010582, 35.420952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240058, 0.826523, -0.509149,
		-0.471791, 0.359044, 0.805295,
		0.848402, 0.433530, 0.303755,
		36.425610, 37.140640, 35.512077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650375, 37.511238, 35.548573>,  <35.831730, 36.837170, 35.299450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650375, 37.511238, 35.548573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038757, 37.549461, 35.460835>,  <36.271786, 37.572395, 35.408192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038757, 37.549461, 35.460835>,  <35.650375, 37.511238, 35.548573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038757, 37.549461, 35.460835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197370, 0.838100, -0.508560,
		0.135239, 0.537082, 0.832618,
		0.970956, 0.095557, -0.219348,
		36.330044, 37.578129, 35.395031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801704, 38.255371, 35.562862>,  <35.650375, 37.511238, 35.548573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801704, 38.255371, 35.562862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113213, 38.104626, 35.362270>,  <36.300117, 38.014179, 35.241913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113213, 38.104626, 35.362270>,  <35.801704, 38.255371, 35.562862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113213, 38.104626, 35.362270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073289, 0.848608, -0.523921,
		0.623010, 0.371262, 0.688493,
		0.778773, -0.376867, -0.501482,
		36.346844, 37.991566, 35.211826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310371, 38.814754, 35.413567>,  <35.801704, 38.255371, 35.562862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310371, 38.814754, 35.413567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387356, 38.539684, 35.133549>,  <36.433544, 38.374641, 34.965538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387356, 38.539684, 35.133549>,  <36.310371, 38.814754, 35.413567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387356, 38.539684, 35.133549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162579, 0.725871, -0.668341,
		0.967744, 0.014813, 0.251500,
		0.192457, -0.687671, -0.700049,
		36.445091, 38.333382, 34.923534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031555, 38.908463, 35.267132>,  <36.310371, 38.814754, 35.413567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031555, 38.908463, 35.267132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841042, 38.728989, 34.964653>,  <36.726734, 38.621304, 34.783165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841042, 38.728989, 34.964653>,  <37.031555, 38.908463, 35.267132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841042, 38.728989, 34.964653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325176, 0.709160, -0.625582,
		0.816953, -0.543853, -0.191862,
		-0.476286, -0.448682, -0.756199,
		36.698154, 38.594383, 34.737793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477066, 38.990307, 34.752640>,  <37.031555, 38.908463, 35.267132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477066, 38.990307, 34.752640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145275, 38.913788, 34.542736>,  <36.946201, 38.867874, 34.416794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145275, 38.913788, 34.542736>,  <37.477066, 38.990307, 34.752640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145275, 38.913788, 34.542736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232620, 0.735841, -0.635945,
		0.507800, -0.649571, -0.565860,
		-0.829474, -0.191302, -0.524763,
		36.896431, 38.856396, 34.385307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611919, 39.000195, 34.075184>,  <37.477066, 38.990307, 34.752640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611919, 39.000195, 34.075184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215313, 39.036777, 34.038239>,  <36.977348, 39.058727, 34.016071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215313, 39.036777, 34.038239>,  <37.611919, 39.000195, 34.075184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215313, 39.036777, 34.038239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129970, 0.688049, -0.713931,
		-0.001749, -0.719878, -0.694099,
		-0.991516, 0.091461, -0.092359,
		36.917858, 39.064217, 34.010532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471390, 39.018528, 33.346268>,  <37.611919, 39.000195, 34.075184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471390, 39.018528, 33.346268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179680, 39.194878, 33.555573>,  <37.004654, 39.300686, 33.681156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179680, 39.194878, 33.555573>,  <37.471390, 39.018528, 33.346268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179680, 39.194878, 33.555573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117748, 0.834199, -0.538746,
		-0.674018, -0.331279, -0.660269,
		-0.729270, 0.440870, 0.523258,
		36.960899, 39.327137, 33.712551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808109, 39.256844, 32.836124>,  <37.471390, 39.018528, 33.346268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808109, 39.256844, 32.836124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819511, 39.479572, 33.168182>,  <36.826351, 39.613209, 33.367416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819511, 39.479572, 33.168182>,  <36.808109, 39.256844, 32.836124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819511, 39.479572, 33.168182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003793, 0.830533, -0.556956,
		-0.999587, 0.012725, 0.025783,
		0.028501, 0.556824, 0.830141,
		36.828060, 39.646618, 33.417225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514290, 39.782600, 32.545315>,  <36.808109, 39.256844, 32.836124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514290, 39.782600, 32.545315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650101, 39.942425, 32.885918>,  <36.731586, 40.038319, 33.090279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650101, 39.942425, 32.885918>,  <36.514290, 39.782600, 32.545315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650101, 39.942425, 32.885918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067354, 0.892635, -0.445720,
		-0.938181, 0.208687, 0.276162,
		0.339528, 0.399566, 0.851509,
		36.751961, 40.062294, 33.141369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151306, 40.441891, 32.638187>,  <36.514290, 39.782600, 32.545315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151306, 40.441891, 32.638187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474438, 40.479965, 32.870861>,  <36.668316, 40.502811, 33.010464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474438, 40.479965, 32.870861>,  <36.151306, 40.441891, 32.638187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474438, 40.479965, 32.870861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176940, 0.902195, -0.393366,
		-0.562236, 0.420695, 0.711974,
		0.807826, 0.095188, 0.581684,
		36.716785, 40.508522, 33.045368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142727, 41.153179, 32.735126>,  <36.151306, 40.441891, 32.638187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142727, 41.153179, 32.735126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512051, 41.054604, 32.852959>,  <36.733643, 40.995457, 32.923656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512051, 41.054604, 32.852959>,  <36.142727, 41.153179, 32.735126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512051, 41.054604, 32.852959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364926, 0.802037, -0.472827,
		-0.119741, 0.544063, 0.830456,
		0.923305, -0.246438, 0.294579,
		36.789043, 40.980671, 32.941334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446758, 41.737427, 33.039574>,  <36.142727, 41.153179, 32.735126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446758, 41.737427, 33.039574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737511, 41.511871, 32.882771>,  <36.911961, 41.376537, 32.788689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737511, 41.511871, 32.882771>,  <36.446758, 41.737427, 33.039574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737511, 41.511871, 32.882771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298374, 0.773425, -0.559273,
		0.618559, 0.289560, 0.730438,
		0.726882, -0.563887, -0.392012,
		36.955574, 41.342705, 32.765167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137955, 42.124931, 33.155491>,  <36.446758, 41.737427, 33.039574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137955, 42.124931, 33.155491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182758, 41.849598, 32.868816>,  <37.209641, 41.684399, 32.696812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182758, 41.849598, 32.868816>,  <37.137955, 42.124931, 33.155491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182758, 41.849598, 32.868816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279657, 0.713915, -0.641963,
		0.953543, -0.128519, 0.272466,
		0.112013, -0.688337, -0.716691,
		37.216362, 41.643097, 32.653809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682423, 42.408806, 32.793308>,  <37.137955, 42.124931, 33.155491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682423, 42.408806, 32.793308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530411, 42.141041, 32.537979>,  <37.439201, 41.980381, 32.384781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530411, 42.141041, 32.537979>,  <37.682423, 42.408806, 32.793308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530411, 42.141041, 32.537979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221364, 0.604224, -0.765449,
		0.898094, -0.432198, -0.081441,
		-0.380034, -0.669417, -0.638322,
		37.416401, 41.940216, 32.346481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210300, 42.456974, 32.261036>,  <37.682423, 42.408806, 32.793308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210300, 42.456974, 32.261036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860970, 42.326721, 32.116119>,  <37.651371, 42.248569, 32.029171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860970, 42.326721, 32.116119>,  <38.210300, 42.456974, 32.261036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860970, 42.326721, 32.116119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061273, 0.664389, -0.744871,
		0.483256, -0.672718, -0.560280,
		-0.873332, -0.325634, -0.362289,
		37.598969, 42.229031, 32.007431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298420, 42.618736, 31.517782>,  <38.210300, 42.456974, 32.261036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298420, 42.618736, 31.517782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912994, 42.511745, 31.517645>,  <37.681740, 42.447552, 31.517563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912994, 42.511745, 31.517645>,  <38.298420, 42.618736, 31.517782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912994, 42.511745, 31.517645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141352, 0.510289, -0.848307,
		0.227080, -0.817349, -0.529505,
		-0.963564, -0.267480, -0.000343,
		37.623924, 42.431503, 31.517542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194180, 42.578129, 30.828783>,  <38.298420, 42.618736, 31.517782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194180, 42.578129, 30.828783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825047, 42.596645, 30.981745>,  <37.603565, 42.607754, 31.073523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825047, 42.596645, 30.981745>,  <38.194180, 42.578129, 30.828783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825047, 42.596645, 30.981745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276428, 0.611800, -0.741140,
		-0.268261, -0.789657, -0.551795,
		-0.922835, 0.046287, 0.382405,
		37.548195, 42.610531, 31.096466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667011, 42.374924, 30.317629>,  <38.194180, 42.578129, 30.828783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667011, 42.374924, 30.317629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519207, 42.618847, 30.598085>,  <37.430523, 42.765202, 30.766359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519207, 42.618847, 30.598085>,  <37.667011, 42.374924, 30.317629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519207, 42.618847, 30.598085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351795, 0.606574, -0.712957,
		-0.860059, -0.510105, -0.009610,
		-0.369512, 0.609805, 0.701142,
		37.408352, 42.801788, 30.808428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097576, 42.577557, 30.018381>,  <37.667011, 42.374924, 30.317629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097576, 42.577557, 30.018381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208126, 42.860744, 30.278347>,  <37.274456, 43.030659, 30.434326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208126, 42.860744, 30.278347>,  <37.097576, 42.577557, 30.018381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208126, 42.860744, 30.278347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118399, 0.696188, -0.708029,
		-0.953728, 0.118735, 0.276235,
		0.276379, 0.707972, 0.649915,
		37.291039, 43.073135, 30.473322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582706, 43.095089, 29.984552>,  <37.097576, 42.577557, 30.018381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582706, 43.095089, 29.984552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878059, 43.307674, 30.150610>,  <37.055271, 43.435226, 30.250244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878059, 43.307674, 30.150610>,  <36.582706, 43.095089, 29.984552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878059, 43.307674, 30.150610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189176, 0.754103, -0.628920,
		-0.647306, 0.385848, 0.657356,
		0.738381, 0.531460, 0.415142,
		37.099575, 43.467113, 30.275152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223877, 43.776733, 30.187351>,  <36.582706, 43.095089, 29.984552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223877, 43.776733, 30.187351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620647, 43.780323, 30.136740>,  <36.858707, 43.782478, 30.106373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620647, 43.780323, 30.136740>,  <36.223877, 43.776733, 30.187351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620647, 43.780323, 30.136740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081442, 0.809803, -0.581022,
		0.097247, 0.586634, 0.803992,
		0.991922, 0.008976, -0.126528,
		36.918224, 43.783016, 30.098782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316090, 44.479992, 29.969183>,  <36.223877, 43.776733, 30.187351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316090, 44.479992, 29.969183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674210, 44.324028, 29.883011>,  <36.889080, 44.230450, 29.831306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674210, 44.324028, 29.883011>,  <36.316090, 44.479992, 29.969183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674210, 44.324028, 29.883011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021004, 0.520021, -0.853895,
		0.444972, 0.759966, 0.473764,
		0.895298, -0.389910, -0.215432,
		36.942799, 44.207054, 29.818380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701073, 44.945648, 29.662210>,  <36.316090, 44.479992, 29.969183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701073, 44.945648, 29.662210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915516, 44.622894, 29.563000>,  <37.044182, 44.429241, 29.503473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915516, 44.622894, 29.563000>,  <36.701073, 44.945648, 29.662210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915516, 44.622894, 29.563000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225868, 0.420221, -0.878862,
		0.813371, 0.415143, 0.407534,
		0.536108, -0.806889, -0.248028,
		37.076347, 44.380829, 29.488592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348560, 45.149399, 29.488405>,  <36.701073, 44.945648, 29.662210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348560, 45.149399, 29.488405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314335, 44.799397, 29.297810>,  <37.293800, 44.589394, 29.183453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314335, 44.799397, 29.297810>,  <37.348560, 45.149399, 29.488405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314335, 44.799397, 29.297810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300327, 0.433349, -0.849713,
		0.949991, -0.215806, 0.225709,
		-0.085563, -0.875007, -0.476490,
		37.288666, 44.536896, 29.154863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907269, 45.086456, 29.007275>,  <37.348560, 45.149399, 29.488405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907269, 45.086456, 29.007275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684292, 44.778419, 28.883198>,  <37.550507, 44.593597, 28.808752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684292, 44.778419, 28.883198>,  <37.907269, 45.086456, 29.007275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684292, 44.778419, 28.883198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167116, 0.261899, -0.950516,
		0.813220, -0.581699, -0.017300,
		-0.557446, -0.770088, -0.310193,
		37.517059, 44.547394, 28.790140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334187, 44.533344, 28.638945>,  <37.907269, 45.086456, 29.007275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334187, 44.533344, 28.638945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952694, 44.557140, 28.521055>,  <37.723801, 44.571419, 28.450321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952694, 44.557140, 28.521055>,  <38.334187, 44.533344, 28.638945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952694, 44.557140, 28.521055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300648, 0.199609, -0.932613,
		0.003346, -0.978068, -0.208259,
		-0.953729, 0.059493, -0.294723,
		37.666576, 44.574989, 28.432638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280670, 44.091724, 28.073742>,  <38.334187, 44.533344, 28.638945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280670, 44.091724, 28.073742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962582, 44.331596, 28.037966>,  <37.771729, 44.475521, 28.016500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962582, 44.331596, 28.037966>,  <38.280670, 44.091724, 28.073742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962582, 44.331596, 28.037966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163280, 0.069745, -0.984111,
		-0.583918, -0.797192, -0.153379,
		-0.795223, 0.599684, -0.089440,
		37.724014, 44.511501, 28.011133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968124, 43.905304, 27.424461>,  <38.280670, 44.091724, 28.073742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968124, 43.905304, 27.424461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800751, 44.257786, 27.512447>,  <37.700325, 44.469276, 27.565239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800751, 44.257786, 27.512447>,  <37.968124, 43.905304, 27.424461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800751, 44.257786, 27.512447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148624, 0.305357, -0.940568,
		-0.896003, -0.360876, -0.258741,
		-0.418437, 0.881206, 0.219966,
		37.675220, 44.522148, 27.578438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504917, 43.920891, 26.831297>,  <37.968124, 43.905304, 27.424461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504917, 43.920891, 26.831297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576630, 44.291458, 26.963720>,  <37.619659, 44.513798, 27.043175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576630, 44.291458, 26.963720>,  <37.504917, 43.920891, 26.831297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576630, 44.291458, 26.963720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124528, 0.312435, -0.941742,
		-0.975884, 0.210065, -0.059351,
		0.179283, 0.926422, 0.331059,
		37.630413, 44.569386, 27.063038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044369, 44.393753, 26.436234>,  <37.504917, 43.920891, 26.831297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044369, 44.393753, 26.436234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298618, 44.655201, 26.600554>,  <37.451168, 44.812069, 26.699146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298618, 44.655201, 26.600554>,  <37.044369, 44.393753, 26.436234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298618, 44.655201, 26.600554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158937, 0.409930, -0.898163,
		-0.755460, 0.636186, 0.156677,
		0.635625, 0.653624, 0.410799,
		37.489307, 44.851288, 26.723793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964886, 44.988777, 26.022453>,  <37.044369, 44.393753, 26.436234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964886, 44.988777, 26.022453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316868, 45.037464, 26.206131>,  <37.528057, 45.066677, 26.316338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316868, 45.037464, 26.206131>,  <36.964886, 44.988777, 26.022453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316868, 45.037464, 26.206131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378932, 0.403124, -0.833008,
		-0.286502, 0.907015, 0.308610,
		0.879958, 0.121716, 0.459193,
		37.580856, 45.073978, 26.343889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259060, 45.696705, 26.078995>,  <36.964886, 44.988777, 26.022453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259060, 45.696705, 26.078995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583477, 45.462738, 26.075480>,  <37.778126, 45.322357, 26.073370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583477, 45.462738, 26.075480>,  <37.259060, 45.696705, 26.078995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583477, 45.462738, 26.075480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289089, 0.413816, -0.863240,
		0.508564, 0.697584, 0.504716,
		0.811043, -0.584921, -0.008788,
		37.826790, 45.287262, 26.072844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800251, 46.177021, 26.074751>,  <37.259060, 45.696705, 26.078995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800251, 46.177021, 26.074751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957115, 45.835045, 25.938936>,  <38.051235, 45.629860, 25.857447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957115, 45.835045, 25.938936>,  <37.800251, 46.177021, 26.074751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957115, 45.835045, 25.938936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452181, 0.500592, -0.738200,
		0.801087, 0.135963, 0.582902,
		0.392164, -0.854939, -0.339538,
		38.074764, 45.578564, 25.837074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488495, 46.364479, 25.888096>,  <37.800251, 46.177021, 26.074751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488495, 46.364479, 25.888096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443642, 46.017300, 25.694565>,  <38.416729, 45.808990, 25.578445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443642, 46.017300, 25.694565>,  <38.488495, 46.364479, 25.888096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443642, 46.017300, 25.694565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458228, 0.386875, -0.800221,
		0.881733, -0.311435, 0.354337,
		-0.112133, -0.867949, -0.483829,
		38.410004, 45.756916, 25.549416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036156, 46.390526, 25.475573>,  <38.488495, 46.364479, 25.888096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036156, 46.390526, 25.475573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803326, 46.103287, 25.322981>,  <38.663628, 45.930943, 25.231426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803326, 46.103287, 25.322981>,  <39.036156, 46.390526, 25.475573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803326, 46.103287, 25.322981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337497, 0.213469, -0.916802,
		0.739784, -0.662399, 0.118098,
		-0.582079, -0.718094, -0.381478,
		38.628700, 45.887859, 25.208538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528374, 45.988026, 25.099174>,  <39.036156, 46.390526, 25.475573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528374, 45.988026, 25.099174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173676, 45.878773, 24.950005>,  <38.960857, 45.813221, 24.860502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173676, 45.878773, 24.950005>,  <39.528374, 45.988026, 25.099174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173676, 45.878773, 24.950005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368598, 0.069042, -0.927022,
		0.278951, -0.959494, 0.039454,
		-0.886748, -0.273136, -0.372927,
		38.907650, 45.796833, 24.838127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515102, 45.303078, 24.716635>,  <39.528374, 45.988026, 25.099174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515102, 45.303078, 24.716635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256828, 45.575420, 24.578344>,  <39.101864, 45.738827, 24.495371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256828, 45.575420, 24.578344>,  <39.515102, 45.303078, 24.716635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256828, 45.575420, 24.578344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496015, 0.029740, -0.867804,
		-0.580567, -0.731814, -0.356917,
		-0.645686, 0.680855, -0.345725,
		39.063122, 45.779678, 24.474627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137630, 45.632061, 24.334415>,  <39.515102, 45.303078, 24.716635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137630, 45.632061, 24.334415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515289, 45.500252, 24.334608>,  <40.741886, 45.421165, 24.334724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515289, 45.500252, 24.334608>,  <40.137630, 45.632061, 24.334415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515289, 45.500252, 24.334608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194325, -0.555594, 0.808426,
		-0.266128, -0.763367, -0.588597,
		0.944147, -0.329524, 0.000482,
		40.798534, 45.401394, 24.334753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043320, 44.868519, 24.445442>,  <40.137630, 45.632061, 24.334415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043320, 44.868519, 24.445442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413494, 44.978565, 24.549652>,  <40.635601, 45.044594, 24.612179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413494, 44.978565, 24.549652>,  <40.043320, 44.868519, 24.445442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413494, 44.978565, 24.549652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087373, -0.514108, 0.853264,
		0.368682, -0.812408, -0.451738,
		0.925440, 0.275113, 0.260525,
		40.691128, 45.061100, 24.627810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473427, 44.267532, 24.558344>,  <40.043320, 44.868519, 24.445442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473427, 44.267532, 24.558344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662308, 44.555958, 24.761162>,  <40.775639, 44.729012, 24.882853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662308, 44.555958, 24.761162>,  <40.473427, 44.267532, 24.558344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662308, 44.555958, 24.761162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021511, -0.584470, 0.811130,
		0.881226, -0.372114, -0.291501,
		0.472206, 0.721059, 0.507045,
		40.803970, 44.772274, 24.913275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054039, 43.935036, 24.832890>,  <40.473427, 44.267532, 24.558344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054039, 43.935036, 24.832890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966480, 44.263626, 25.043512>,  <40.913944, 44.460781, 25.169886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966480, 44.263626, 25.043512>,  <41.054039, 43.935036, 24.832890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966480, 44.263626, 25.043512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056600, -0.528046, 0.847328,
		0.974104, 0.215284, 0.069094,
		-0.218901, 0.821475, 0.526557,
		40.900810, 44.510067, 25.201479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540413, 43.870998, 25.382158>,  <41.054039, 43.935036, 24.832890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540413, 43.870998, 25.382158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279903, 44.145012, 25.512733>,  <41.123596, 44.309422, 25.591078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279903, 44.145012, 25.512733>,  <41.540413, 43.870998, 25.382158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279903, 44.145012, 25.512733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012612, -0.420349, 0.907275,
		0.758735, 0.595005, 0.265124,
		-0.651278, 0.685037, 0.326437,
		41.084518, 44.350525, 25.610664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808563, 44.010395, 26.085533>,  <41.540413, 43.870998, 25.382158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808563, 44.010395, 26.085533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430790, 44.141338, 26.073591>,  <41.204128, 44.219902, 26.066425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430790, 44.141338, 26.073591>,  <41.808563, 44.010395, 26.085533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430790, 44.141338, 26.073591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162345, -0.385534, 0.908299,
		0.285826, 0.862671, 0.417255,
		-0.944430, 0.327355, -0.029855,
		41.147461, 44.239544, 26.064634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733952, 44.328892, 26.708141>,  <41.808563, 44.010395, 26.085533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733952, 44.328892, 26.708141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361542, 44.231670, 26.599247>,  <41.138096, 44.173336, 26.533911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361542, 44.231670, 26.599247>,  <41.733952, 44.328892, 26.708141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361542, 44.231670, 26.599247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170749, -0.369166, 0.913543,
		-0.322544, 0.897017, 0.302201,
		-0.931026, -0.243058, -0.272237,
		41.082233, 44.158752, 26.517576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252476, 44.408260, 27.350187>,  <41.733952, 44.328892, 26.708141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252476, 44.408260, 27.350187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044605, 44.165821, 27.109329>,  <40.919884, 44.020355, 26.964815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044605, 44.165821, 27.109329>,  <41.252476, 44.408260, 27.350187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044605, 44.165821, 27.109329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318605, -0.516465, 0.794830,
		-0.792735, 0.604899, 0.075287,
		-0.519675, -0.606103, -0.602144,
		40.888702, 43.983990, 26.928686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642662, 44.219002, 27.698584>,  <41.252476, 44.408260, 27.350187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642662, 44.219002, 27.698584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700802, 43.934837, 27.423136>,  <40.735683, 43.764339, 27.257868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700802, 43.934837, 27.423136>,  <40.642662, 44.219002, 27.698584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700802, 43.934837, 27.423136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211008, -0.702255, 0.679937,
		-0.966618, 0.046478, -0.251971,
		0.145346, -0.710407, -0.688619,
		40.744404, 43.721714, 27.216551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991142, 43.832603, 27.556606>,  <40.642662, 44.219002, 27.698584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991142, 43.832603, 27.556606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291676, 43.601627, 27.428816>,  <40.471996, 43.463043, 27.352140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291676, 43.601627, 27.428816>,  <39.991142, 43.832603, 27.556606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291676, 43.601627, 27.428816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184430, -0.648550, 0.738491,
		-0.633629, -0.495931, -0.593773,
		0.751332, -0.577439, -0.319476,
		40.517075, 43.428394, 27.332972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776699, 43.180588, 27.503284>,  <39.991142, 43.832603, 27.556606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776699, 43.180588, 27.503284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171318, 43.119793, 27.527348>,  <40.408089, 43.083317, 27.541786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171318, 43.119793, 27.527348>,  <39.776699, 43.180588, 27.503284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171318, 43.119793, 27.527348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154992, -0.752851, 0.639682,
		-0.051935, -0.640402, -0.766282,
		0.986550, -0.151989, 0.060158,
		40.467281, 43.074196, 27.545395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798649, 42.492516, 27.442705>,  <39.776699, 43.180588, 27.503284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798649, 42.492516, 27.442705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124332, 42.605808, 27.645424>,  <40.319744, 42.673786, 27.767056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124332, 42.605808, 27.645424>,  <39.798649, 42.492516, 27.442705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124332, 42.605808, 27.645424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231562, -0.642057, 0.730850,
		0.532395, -0.712419, -0.457182,
		0.814208, 0.283235, 0.506797,
		40.368595, 42.690777, 27.797462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052555, 41.911724, 27.802990>,  <39.798649, 42.492516, 27.442705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052555, 41.911724, 27.802990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290581, 42.173138, 27.990091>,  <40.433395, 42.329987, 28.102352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290581, 42.173138, 27.990091>,  <40.052555, 41.911724, 27.802990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290581, 42.173138, 27.990091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139510, -0.489178, 0.860954,
		0.791479, -0.577577, -0.199917,
		0.595062, 0.653536, 0.467752,
		40.469101, 42.369198, 28.130417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610466, 41.531895, 28.143911>,  <40.052555, 41.911724, 27.802990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610466, 41.531895, 28.143911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542507, 41.882942, 28.323212>,  <40.501732, 42.093571, 28.430792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542507, 41.882942, 28.323212>,  <40.610466, 41.531895, 28.143911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542507, 41.882942, 28.323212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140122, -0.471754, 0.870525,
		0.975450, 0.085086, 0.203121,
		-0.169893, 0.877615, 0.448250,
		40.491539, 42.146225, 28.457687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081573, 41.567425, 28.692848>,  <40.610466, 41.531895, 28.143911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081573, 41.567425, 28.692848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771641, 41.802845, 28.785156>,  <40.585682, 41.944096, 28.840542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771641, 41.802845, 28.785156>,  <41.081573, 41.567425, 28.692848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771641, 41.802845, 28.785156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105408, -0.480214, 0.870794,
		0.623323, 0.650390, 0.434121,
		-0.774827, 0.588546, 0.230772,
		40.539192, 41.979408, 28.854387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248512, 41.905785, 29.431320>,  <41.081573, 41.567425, 28.692848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248512, 41.905785, 29.431320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854069, 41.922596, 29.367050>,  <40.617401, 41.932682, 29.328487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854069, 41.922596, 29.367050>,  <41.248512, 41.905785, 29.431320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854069, 41.922596, 29.367050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162537, -0.443066, 0.881632,
		-0.034133, 0.895503, 0.443744,
		-0.986112, 0.042032, -0.160675,
		40.558235, 41.935207, 29.318848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013588, 42.171352, 30.163778>,  <41.248512, 41.905785, 29.431320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013588, 42.171352, 30.163778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689892, 42.053108, 29.960701>,  <40.495674, 41.982162, 29.838854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689892, 42.053108, 29.960701>,  <41.013588, 42.171352, 30.163778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689892, 42.053108, 29.960701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463458, -0.209846, 0.860913,
		-0.361032, 0.931976, 0.032812,
		-0.809236, -0.295609, -0.507693,
		40.447121, 41.964424, 29.808393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406746, 42.560009, 30.369543>,  <41.013588, 42.171352, 30.163778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406746, 42.560009, 30.369543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249931, 42.234440, 30.198040>,  <40.155842, 42.039097, 30.095139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249931, 42.234440, 30.198040>,  <40.406746, 42.560009, 30.369543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249931, 42.234440, 30.198040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598159, -0.128567, 0.790997,
		-0.698937, 0.566565, -0.436454,
		-0.392037, -0.813926, -0.428756,
		40.132320, 41.990261, 30.069412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754509, 42.515141, 30.581894>,  <40.406746, 42.560009, 30.369543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754509, 42.515141, 30.581894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781403, 42.144699, 30.433403>,  <39.797539, 41.922436, 30.344309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781403, 42.144699, 30.433403>,  <39.754509, 42.515141, 30.581894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781403, 42.144699, 30.433403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559191, -0.343120, 0.754701,
		-0.826308, 0.156843, -0.540939,
		0.067237, -0.926104, -0.371229,
		39.801575, 41.866867, 30.322035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992756, 42.194836, 30.558018>,  <39.754509, 42.515141, 30.581894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992756, 42.194836, 30.558018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268402, 41.905003, 30.562046>,  <39.433792, 41.731102, 30.564463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268402, 41.905003, 30.562046>,  <38.992756, 42.194836, 30.558018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268402, 41.905003, 30.562046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386346, -0.355609, 0.851046,
		-0.613070, -0.590360, -0.524995,
		0.689117, -0.724580, 0.010070,
		39.475136, 41.687630, 30.565067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646530, 41.721272, 31.011400>,  <38.992756, 42.194836, 30.558018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646530, 41.721272, 31.011400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030144, 41.608791, 30.997639>,  <39.260311, 41.541302, 30.989382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030144, 41.608791, 30.997639>,  <38.646530, 41.721272, 31.011400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030144, 41.608791, 30.997639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076887, -0.375228, 0.923738,
		-0.272665, -0.883249, -0.381477,
		0.959032, -0.281202, -0.034402,
		39.317852, 41.524429, 30.987318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590416, 40.963364, 31.196972>,  <38.646530, 41.721272, 31.011400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590416, 40.963364, 31.196972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962540, 41.079178, 31.287029>,  <39.185814, 41.148666, 31.341064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962540, 41.079178, 31.287029>,  <38.590416, 40.963364, 31.196972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962540, 41.079178, 31.287029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033497, -0.678358, 0.733967,
		0.365239, -0.675276, -0.640783,
		0.930311, 0.289537, 0.225143,
		39.241634, 41.166039, 31.354572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938297, 40.367222, 31.416042>,  <38.590416, 40.963364, 31.196972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938297, 40.367222, 31.416042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138577, 40.683708, 31.556488>,  <39.258743, 40.873600, 31.640755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138577, 40.683708, 31.556488>,  <38.938297, 40.367222, 31.416042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138577, 40.683708, 31.556488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113174, -0.461974, 0.879643,
		0.858194, -0.400695, -0.320853,
		0.500694, 0.791217, 0.351115,
		39.288784, 40.921074, 31.661823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643566, 40.015377, 31.728868>,  <38.938297, 40.367222, 31.416042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643566, 40.015377, 31.728868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579975, 40.372471, 31.897511>,  <39.541821, 40.586727, 31.998695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579975, 40.372471, 31.897511>,  <39.643566, 40.015377, 31.728868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579975, 40.372471, 31.897511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221451, -0.383909, 0.896423,
		0.962125, 0.235877, -0.136664,
		-0.158979, 0.892735, 0.421604,
		39.532280, 40.640293, 32.023991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239594, 40.203114, 32.130241>,  <39.643566, 40.015377, 31.728868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239594, 40.203114, 32.130241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942501, 40.430527, 32.271729>,  <39.764244, 40.566975, 32.356621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942501, 40.430527, 32.271729>,  <40.239594, 40.203114, 32.130241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942501, 40.430527, 32.271729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164124, -0.357564, 0.919354,
		0.649159, 0.740890, 0.172266,
		-0.742736, 0.568534, 0.353714,
		39.719681, 40.601086, 32.377842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407963, 40.245934, 32.908009>,  <40.239594, 40.203114, 32.130241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407963, 40.245934, 32.908009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027824, 40.367588, 32.881634>,  <39.799744, 40.440582, 32.865810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027824, 40.367588, 32.881634>,  <40.407963, 40.245934, 32.908009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027824, 40.367588, 32.881634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139424, -0.226689, 0.963936,
		0.278223, 0.925263, 0.257836,
		-0.950343, 0.304138, -0.065934,
		39.742722, 40.458828, 32.861855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323456, 40.787399, 33.389603>,  <40.407963, 40.245934, 32.908009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323456, 40.787399, 33.389603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969257, 40.621574, 33.305672>,  <39.756737, 40.522079, 33.255314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969257, 40.621574, 33.305672>,  <40.323456, 40.787399, 33.389603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969257, 40.621574, 33.305672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190249, -0.088495, 0.977739,
		-0.423903, 0.905707, -0.000508,
		-0.885500, -0.414564, -0.209823,
		39.703606, 40.497204, 33.242725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945656, 41.192493, 33.915058>,  <40.323456, 40.787399, 33.389603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945656, 41.192493, 33.915058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773117, 40.851254, 33.797646>,  <39.669594, 40.646507, 33.727200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773117, 40.851254, 33.797646>,  <39.945656, 41.192493, 33.915058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773117, 40.851254, 33.797646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240941, -0.204610, 0.948727,
		-0.869420, 0.479950, -0.117290,
		-0.431343, -0.853102, -0.293532,
		39.643715, 40.595322, 33.709587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602776, 41.066307, 34.446621>,  <39.945656, 41.192493, 33.915058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602776, 41.066307, 34.446621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535648, 40.722778, 34.253014>,  <39.495373, 40.516663, 34.136848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535648, 40.722778, 34.253014>,  <39.602776, 41.066307, 34.446621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535648, 40.722778, 34.253014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162301, -0.460210, 0.872848,
		-0.972366, 0.225033, -0.062157,
		-0.167814, -0.858817, -0.484016,
		39.485306, 40.465134, 34.107807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087795, 40.609852, 34.792519>,  <39.602776, 41.066307, 34.446621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087795, 40.609852, 34.792519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308498, 40.374409, 34.556179>,  <39.440922, 40.233143, 34.414375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308498, 40.374409, 34.556179>,  <39.087795, 40.609852, 34.792519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308498, 40.374409, 34.556179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147620, -0.628339, 0.763805,
		-0.820835, -0.508658, -0.259801,
		0.551758, -0.588606, -0.590851,
		39.474026, 40.197826, 34.378925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752594, 40.030178, 34.818043>,  <39.087795, 40.609852, 34.792519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752594, 40.030178, 34.818043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130322, 39.954456, 34.710392>,  <39.356956, 39.909023, 34.645802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130322, 39.954456, 34.710392>,  <38.752594, 40.030178, 34.818043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130322, 39.954456, 34.710392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068269, -0.687403, 0.723061,
		-0.321881, -0.701171, -0.636201,
		0.944316, -0.189307, -0.269130,
		39.413616, 39.897663, 34.629654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873970, 39.316525, 34.828148>,  <38.752594, 40.030178, 34.818043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873970, 39.316525, 34.828148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257454, 39.427711, 34.852188>,  <39.487545, 39.494423, 34.866611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257454, 39.427711, 34.852188>,  <38.873970, 39.316525, 34.828148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257454, 39.427711, 34.852188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214131, -0.844621, 0.490675,
		0.187152, -0.457546, -0.869267,
		0.958708, 0.277968, 0.060098,
		39.545067, 39.511101, 34.870216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199913, 38.745129, 34.724133>,  <38.873970, 39.316525, 34.828148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199913, 38.745129, 34.724133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471821, 38.962826, 34.920788>,  <39.634968, 39.093445, 35.038780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471821, 38.962826, 34.920788>,  <39.199913, 38.745129, 34.724133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471821, 38.962826, 34.920788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206675, -0.785311, 0.583586,
		0.703700, -0.295097, -0.646316,
		0.679773, 0.544247, 0.491634,
		39.675755, 39.126099, 35.068279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727200, 38.300972, 34.842953>,  <39.199913, 38.745129, 34.724133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727200, 38.300972, 34.842953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800030, 38.589813, 35.109909>,  <39.843727, 38.763119, 35.270084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800030, 38.589813, 35.109909>,  <39.727200, 38.300972, 34.842953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800030, 38.589813, 35.109909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270414, -0.689340, 0.672077,
		0.945370, 0.058103, -0.320780,
		0.182077, 0.722104, 0.667393,
		39.854652, 38.806446, 35.310127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320267, 38.108177, 35.306881>,  <39.727200, 38.300972, 34.842953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320267, 38.108177, 35.306881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099361, 38.384289, 35.493862>,  <39.966816, 38.549957, 35.606049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099361, 38.384289, 35.493862>,  <40.320267, 38.108177, 35.306881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099361, 38.384289, 35.493862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072783, -0.518652, 0.851882,
		0.830484, 0.504489, 0.236194,
		-0.552267, 0.690283, 0.467451,
		39.933681, 38.591373, 35.634098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723785, 38.256725, 35.861095>,  <40.320267, 38.108177, 35.306881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723785, 38.256725, 35.861095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348461, 38.354782, 35.958649>,  <40.123268, 38.413616, 36.017181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348461, 38.354782, 35.958649>,  <40.723785, 38.256725, 35.861095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348461, 38.354782, 35.958649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039274, -0.625171, 0.779499,
		0.343554, 0.740991, 0.576977,
		-0.938311, 0.245140, 0.243882,
		40.066967, 38.428326, 36.031815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785870, 38.350418, 36.541481>,  <40.723785, 38.256725, 35.861095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785870, 38.350418, 36.541481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399155, 38.281696, 36.465794>,  <40.167126, 38.240463, 36.420380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399155, 38.281696, 36.465794>,  <40.785870, 38.350418, 36.541481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399155, 38.281696, 36.465794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023099, -0.678581, 0.734162,
		-0.254536, 0.714149, 0.652075,
		-0.966787, -0.171809, -0.189220,
		40.109119, 38.230152, 36.409027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510757, 38.455112, 37.134186>,  <40.785870, 38.350418, 36.541481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510757, 38.455112, 37.134186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196018, 38.271534, 36.969143>,  <40.007175, 38.161388, 36.870117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196018, 38.271534, 36.969143>,  <40.510757, 38.455112, 37.134186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196018, 38.271534, 36.969143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218749, -0.417757, 0.881832,
		-0.577078, 0.784124, 0.228318,
		-0.786848, -0.458942, -0.412604,
		39.959965, 38.133850, 36.845360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098736, 38.435249, 37.637344>,  <40.510757, 38.455112, 37.134186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098736, 38.435249, 37.637344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923943, 38.159782, 37.405899>,  <39.819069, 37.994503, 37.267033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923943, 38.159782, 37.405899>,  <40.098736, 38.435249, 37.637344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923943, 38.159782, 37.405899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155864, -0.575571, 0.802761,
		-0.885864, 0.440975, 0.144174,
		-0.436980, -0.688665, -0.578609,
		39.792850, 37.953182, 37.232315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411022, 38.284836, 37.908466>,  <40.098736, 38.435249, 37.637344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411022, 38.284836, 37.908466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473064, 37.934811, 37.725071>,  <39.510292, 37.724796, 37.615032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473064, 37.934811, 37.725071>,  <39.411022, 38.284836, 37.908466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473064, 37.934811, 37.725071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342322, -0.482959, 0.805957,
		-0.926692, 0.031941, -0.374463,
		0.155108, -0.875060, -0.458488,
		39.519596, 37.672291, 37.587524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907875, 37.814777, 38.234352>,  <39.411022, 38.284836, 37.908466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907875, 37.814777, 38.234352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184464, 37.587215, 38.056267>,  <39.350414, 37.450676, 37.949417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184464, 37.587215, 38.056267>,  <38.907875, 37.814777, 38.234352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184464, 37.587215, 38.056267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126016, -0.701832, 0.701108,
		-0.711342, -0.428680, -0.556978,
		0.691456, -0.568916, -0.445222,
		39.391903, 37.416542, 37.922703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639839, 37.092831, 38.219742>,  <38.907875, 37.814777, 38.234352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639839, 37.092831, 38.219742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037415, 37.067867, 38.183529>,  <39.275959, 37.052891, 38.161800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037415, 37.067867, 38.183529>,  <38.639839, 37.092831, 38.219742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037415, 37.067867, 38.183529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002504, -0.810279, 0.586039,
		-0.109926, -0.582713, -0.805209,
		0.993937, -0.062405, -0.090530,
		39.335594, 37.049145, 38.156368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794884, 36.281673, 38.118107>,  <38.639839, 37.092831, 38.219742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794884, 36.281673, 38.118107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112679, 36.477547, 38.261780>,  <39.303356, 36.595070, 38.347984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112679, 36.477547, 38.261780>,  <38.794884, 36.281673, 38.118107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112679, 36.477547, 38.261780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010304, -0.602237, 0.798251,
		0.607200, -0.630495, -0.483512,
		0.794482, 0.489680, 0.359182,
		39.351025, 36.624451, 38.369534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229290, 35.731628, 38.497318>,  <38.794884, 36.281673, 38.118107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229290, 35.731628, 38.497318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361050, 36.098812, 38.585720>,  <39.440105, 36.319122, 38.638763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361050, 36.098812, 38.585720>,  <39.229290, 35.731628, 38.497318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361050, 36.098812, 38.585720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161542, -0.285413, 0.944692,
		0.930267, -0.275482, -0.242305,
		0.329403, 0.917959, 0.221009,
		39.459869, 36.374199, 38.652023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819042, 35.706566, 38.655613>,  <39.229290, 35.731628, 38.497318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819042, 35.706566, 38.655613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672226, 36.017323, 38.860245>,  <39.584137, 36.203777, 38.983025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672226, 36.017323, 38.860245>,  <39.819042, 35.706566, 38.655613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672226, 36.017323, 38.860245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122207, -0.504929, 0.854466,
		0.922141, 0.376146, 0.090390,
		-0.367044, 0.776892, 0.511584,
		39.562111, 36.250389, 39.013721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907482, 35.402744, 39.379036>,  <39.819042, 35.706566, 38.655613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907482, 35.402744, 39.379036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732288, 35.762177, 39.389721>,  <39.627171, 35.977837, 39.396130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732288, 35.762177, 39.389721>,  <39.907482, 35.402744, 39.379036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732288, 35.762177, 39.389721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235463, -0.143343, 0.961254,
		0.867596, 0.414729, 0.274366,
		-0.437989, 0.898584, 0.026710,
		39.600891, 36.031750, 39.397736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339146, 35.868595, 39.875320>,  <39.907482, 35.402744, 39.379036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339146, 35.868595, 39.875320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944794, 35.926289, 39.841278>,  <39.708183, 35.960903, 39.820854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944794, 35.926289, 39.841278>,  <40.339146, 35.868595, 39.875320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944794, 35.926289, 39.841278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107269, -0.153599, 0.982293,
		0.128606, 0.977550, 0.166902,
		-0.985877, 0.144233, -0.085107,
		39.649029, 35.969559, 39.815746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165421, 36.263969, 40.521374>,  <40.339146, 35.868595, 39.875320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165421, 36.263969, 40.521374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816750, 36.118320, 40.390171>,  <39.607548, 36.030930, 40.311451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816750, 36.118320, 40.390171>,  <40.165421, 36.263969, 40.521374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816750, 36.118320, 40.390171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285002, -0.167843, 0.943717,
		-0.398683, 0.916102, 0.042529,
		-0.871680, -0.364123, -0.328007,
		39.555244, 36.009083, 40.291767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607269, 36.637894, 40.920040>,  <40.165421, 36.263969, 40.521374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607269, 36.637894, 40.920040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576794, 36.258533, 40.796928>,  <39.558506, 36.030918, 40.723061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576794, 36.258533, 40.796928>,  <39.607269, 36.637894, 40.920040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576794, 36.258533, 40.796928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041064, -0.305428, 0.951329,
		-0.996247, 0.085124, -0.015674,
		-0.076194, -0.948403, -0.307777,
		39.553936, 35.974014, 40.704594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920277, 36.426872, 41.241413>,  <39.607269, 36.637894, 40.920040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920277, 36.426872, 41.241413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142982, 36.099430, 41.184986>,  <39.276608, 35.902966, 41.151131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142982, 36.099430, 41.184986>,  <38.920277, 36.426872, 41.241413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142982, 36.099430, 41.184986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139642, -0.259645, 0.955554,
		-0.818849, -0.512319, -0.258873,
		0.556764, -0.818605, -0.141069,
		39.310013, 35.853848, 41.142666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560890, 35.870342, 41.460121>,  <38.920277, 36.426872, 41.241413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560890, 35.870342, 41.460121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943321, 35.753727, 41.472237>,  <39.172779, 35.683758, 41.479507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943321, 35.753727, 41.472237>,  <38.560890, 35.870342, 41.460121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943321, 35.753727, 41.472237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158178, -0.426192, 0.890696,
		-0.246761, -0.856368, -0.453588,
		0.956080, -0.291537, 0.030291,
		39.230145, 35.666267, 41.481323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626331, 35.107239, 41.500530>,  <38.560890, 35.870342, 41.460121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626331, 35.107239, 41.500530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955719, 35.267982, 41.660736>,  <39.153351, 35.364429, 41.756859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955719, 35.267982, 41.660736>,  <38.626331, 35.107239, 41.500530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955719, 35.267982, 41.660736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312777, -0.267421, 0.911403,
		0.473362, -0.875782, -0.094520,
		0.823467, 0.401860, 0.400512,
		39.202759, 35.388538, 41.780891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707375, 34.794804, 42.159657>,  <38.626331, 35.107239, 41.500530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707375, 34.794804, 42.159657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968552, 35.091118, 42.222775>,  <39.125259, 35.268906, 42.260647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968552, 35.091118, 42.222775>,  <38.707375, 34.794804, 42.159657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968552, 35.091118, 42.222775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045642, -0.169477, 0.984477,
		0.756029, -0.650011, -0.076849,
		0.652944, 0.740786, 0.157797,
		39.164436, 35.313354, 42.270115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290390, 34.686832, 42.788151>,  <38.707375, 34.794804, 42.159657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290390, 34.686832, 42.788151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286655, 35.082405, 42.728931>,  <39.284416, 35.319748, 42.693401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286655, 35.082405, 42.728931>,  <39.290390, 34.686832, 42.788151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286655, 35.082405, 42.728931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007341, 0.148116, 0.988943,
		0.999929, 0.008147, -0.008643,
		-0.009337, 0.988936, -0.148046,
		39.283855, 35.379086, 42.684517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817814, 34.959751, 43.117714>,  <39.290390, 34.686832, 42.788151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817814, 34.959751, 43.117714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628601, 35.309689, 43.075981>,  <39.515076, 35.519653, 43.050941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628601, 35.309689, 43.075981>,  <39.817814, 34.959751, 43.117714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628601, 35.309689, 43.075981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192363, 0.218116, 0.956777,
		0.859792, 0.432511, -0.271463,
		-0.473027, 0.874848, -0.104335,
		39.486694, 35.572144, 43.044682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242081, 35.512199, 43.401585>,  <39.817814, 34.959751, 43.117714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242081, 35.512199, 43.401585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862892, 35.639114, 43.412018>,  <39.635380, 35.715263, 43.418278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862892, 35.639114, 43.412018>,  <40.242081, 35.512199, 43.401585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862892, 35.639114, 43.412018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125804, 0.298096, 0.946209,
		0.292450, 0.900258, -0.322502,
		-0.947970, 0.317291, 0.026078,
		39.578503, 35.734303, 43.419842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195454, 36.000767, 43.916569>,  <40.242081, 35.512199, 43.401585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195454, 36.000767, 43.916569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805248, 35.919682, 43.882420>,  <39.571125, 35.871033, 43.861931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805248, 35.919682, 43.882420>,  <40.195454, 36.000767, 43.916569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805248, 35.919682, 43.882420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093800, 0.032328, 0.995066,
		-0.198950, 0.978705, -0.050550,
		-0.975510, -0.202709, -0.085371,
		39.512596, 35.858868, 43.856808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964336, 36.371635, 44.454063>,  <40.195454, 36.000767, 43.916569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964336, 36.371635, 44.454063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663612, 36.114223, 44.396580>,  <39.483177, 35.959774, 44.362087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663612, 36.114223, 44.396580>,  <39.964336, 36.371635, 44.454063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663612, 36.114223, 44.396580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272339, 0.104557, 0.956504,
		-0.600516, 0.758243, -0.253866,
		-0.751805, -0.643534, -0.143711,
		39.438072, 35.921162, 44.353466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382538, 36.618015, 44.890373>,  <39.964336, 36.371635, 44.454063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382538, 36.618015, 44.890373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306118, 36.237003, 44.795555>,  <39.260265, 36.008396, 44.738667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306118, 36.237003, 44.795555>,  <39.382538, 36.618015, 44.890373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306118, 36.237003, 44.795555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269513, -0.181306, 0.945775,
		-0.943856, 0.244572, -0.222082,
		-0.191045, -0.952530, -0.237042,
		39.248806, 35.951244, 44.724442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767693, 36.390274, 45.236988>,  <39.382538, 36.618015, 44.890373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767693, 36.390274, 45.236988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036530, 36.094345, 45.224586>,  <39.197830, 35.916790, 45.217144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036530, 36.094345, 45.224586>,  <38.767693, 36.390274, 45.236988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036530, 36.094345, 45.224586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312169, -0.321062, 0.894131,
		-0.671449, -0.591259, -0.446732,
		0.672091, -0.739819, -0.031004,
		39.238155, 35.872398, 45.215286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442574, 35.741436, 45.458057>,  <38.767693, 36.390274, 45.236988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442574, 35.741436, 45.458057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836487, 35.727966, 45.526257>,  <39.072834, 35.719883, 45.567177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836487, 35.727966, 45.526257>,  <38.442574, 35.741436, 45.458057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836487, 35.727966, 45.526257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168061, -0.434443, 0.884881,
		0.044278, -0.900070, -0.433491,
		0.984782, -0.033672, 0.170503,
		39.131920, 35.717865, 45.577408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122463, 35.497402, 46.124588>,  <38.442574, 35.741436, 45.458057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122463, 35.497402, 46.124588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212803, 35.598301, 46.500965>,  <38.267006, 35.658840, 46.726791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212803, 35.598301, 46.500965>,  <38.122463, 35.497402, 46.124588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212803, 35.598301, 46.500965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973588, -0.091604, -0.209129,
		0.033442, 0.963318, -0.266271,
		0.225849, 0.252244, 0.940938,
		38.280560, 35.673973, 46.783245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617233, 35.045437, 46.374130>,  <38.122463, 35.497402, 46.124588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617233, 35.045437, 46.374130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819195, 34.775795, 46.158482>,  <38.940372, 34.614010, 46.029091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819195, 34.775795, 46.158482>,  <38.617233, 35.045437, 46.374130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819195, 34.775795, 46.158482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025162, 0.612822, -0.789820,
		0.862810, 0.412348, 0.292453,
		0.504903, -0.674106, -0.539124,
		38.970665, 34.573563, 45.996746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355675, 35.291359, 46.053188>,  <38.617233, 35.045437, 46.374130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355675, 35.291359, 46.053188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208843, 34.993561, 45.830124>,  <39.120743, 34.814880, 45.696285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208843, 34.993561, 45.830124>,  <39.355675, 35.291359, 46.053188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208843, 34.993561, 45.830124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064247, 0.577785, -0.813656,
		0.927969, -0.334503, -0.164261,
		-0.367078, -0.744494, -0.557657,
		39.098721, 34.770214, 45.662827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728516, 35.247753, 45.444233>,  <39.355675, 35.291359, 46.053188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728516, 35.247753, 45.444233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362820, 35.104084, 45.369228>,  <39.143402, 35.017883, 45.324226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362820, 35.104084, 45.369228>,  <39.728516, 35.247753, 45.444233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362820, 35.104084, 45.369228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023364, 0.508755, -0.860594,
		0.404499, -0.782409, -0.473516,
		-0.914240, -0.359172, -0.187511,
		39.088547, 34.996330, 45.312973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711056, 34.843071, 44.787117>,  <39.728516, 35.247753, 45.444233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711056, 34.843071, 44.787117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409019, 35.075203, 44.909138>,  <39.227798, 35.214481, 44.982349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409019, 35.075203, 44.909138>,  <39.711056, 34.843071, 44.787117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409019, 35.075203, 44.909138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027114, 0.437249, -0.898932,
		-0.655063, -0.687044, -0.314427,
		-0.755088, 0.580331, 0.305054,
		39.182491, 35.249302, 45.000652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043442, 34.690617, 44.430050>,  <39.711056, 34.843071, 44.787117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043442, 34.690617, 44.430050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062588, 35.077328, 44.530495>,  <39.074074, 35.309353, 44.590759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062588, 35.077328, 44.530495>,  <39.043442, 34.690617, 44.430050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062588, 35.077328, 44.530495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117040, 0.255095, -0.959806,
		-0.991973, 0.016548, 0.125360,
		0.047861, 0.966775, 0.251110,
		39.076946, 35.367359, 44.605827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559326, 35.018135, 44.052410>,  <39.043442, 34.690617, 44.430050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559326, 35.018135, 44.052410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804024, 35.319267, 44.149590>,  <38.950840, 35.499947, 44.207897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804024, 35.319267, 44.149590>,  <38.559326, 35.018135, 44.052410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804024, 35.319267, 44.149590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006607, 0.302240, -0.953209,
		-0.791031, 0.584721, 0.179918,
		0.611740, 0.752830, 0.242944,
		38.987545, 35.545116, 44.222473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285320, 35.610790, 43.713943>,  <38.559326, 35.018135, 44.052410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285320, 35.610790, 43.713943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679150, 35.668076, 43.754150>,  <38.915447, 35.702446, 43.778275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679150, 35.668076, 43.754150>,  <38.285320, 35.610790, 43.713943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679150, 35.668076, 43.754150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076706, 0.163045, -0.983632,
		-0.157254, 0.976170, 0.149545,
		0.984575, 0.143209, 0.100517,
		38.974522, 35.711037, 43.784306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437130, 36.305145, 43.453300>,  <38.285320, 35.610790, 43.713943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437130, 36.305145, 43.453300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773483, 36.090443, 43.425568>,  <38.975296, 35.961620, 43.408928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773483, 36.090443, 43.425568>,  <38.437130, 36.305145, 43.453300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773483, 36.090443, 43.425568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145336, -0.100556, -0.984259,
		0.521335, 0.837725, -0.162566,
		0.840885, -0.536755, -0.069328,
		39.025749, 35.929417, 43.404770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713444, 36.552223, 42.831337>,  <38.437130, 36.305145, 43.453300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713444, 36.552223, 42.831337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960217, 36.245018, 42.900097>,  <39.108280, 36.060696, 42.941353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960217, 36.245018, 42.900097>,  <38.713444, 36.552223, 42.831337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960217, 36.245018, 42.900097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220071, -0.041367, -0.974606,
		0.755624, 0.639094, 0.143497,
		0.616929, -0.768015, 0.171903,
		39.145294, 36.014614, 42.951668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359055, 36.634270, 42.519218>,  <38.713444, 36.552223, 42.831337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359055, 36.634270, 42.519218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333511, 36.236904, 42.557270>,  <39.318184, 35.998486, 42.580101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333511, 36.236904, 42.557270>,  <39.359055, 36.634270, 42.519218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333511, 36.236904, 42.557270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333820, -0.111097, -0.936067,
		0.940471, -0.028020, 0.338716,
		-0.063859, -0.993415, 0.095130,
		39.314354, 35.938881, 42.585808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972973, 36.267693, 42.124329>,  <39.359055, 36.634270, 42.519218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972973, 36.267693, 42.124329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697487, 35.984367, 42.186245>,  <39.532196, 35.814373, 42.223392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697487, 35.984367, 42.186245>,  <39.972973, 36.267693, 42.124329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697487, 35.984367, 42.186245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251714, -0.433805, -0.865132,
		0.679936, -0.556866, 0.477061,
		-0.688715, -0.708317, 0.154789,
		39.490871, 35.771873, 42.232681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361160, 35.587280, 42.007641>,  <39.972973, 36.267693, 42.124329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361160, 35.587280, 42.007641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967827, 35.603100, 41.936665>,  <39.731827, 35.612591, 41.894081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967827, 35.603100, 41.936665>,  <40.361160, 35.587280, 42.007641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967827, 35.603100, 41.936665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140445, -0.454490, -0.879610,
		-0.115427, -0.889873, 0.441364,
		-0.983337, 0.039544, -0.177438,
		39.672825, 35.614964, 41.883434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251568, 34.951370, 41.486198>,  <40.361160, 35.587280, 42.007641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251568, 34.951370, 41.486198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931011, 35.190502, 41.478497>,  <39.738678, 35.333981, 41.473873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931011, 35.190502, 41.478497>,  <40.251568, 34.951370, 41.486198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931011, 35.190502, 41.478497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085019, -0.145717, -0.985666,
		-0.592067, -0.788268, 0.167603,
		-0.801391, 0.597830, -0.019256,
		39.690594, 35.369850, 41.472721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912601, 34.698093, 40.956532>,  <40.251568, 34.951370, 41.486198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912601, 34.698093, 40.956532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745888, 35.058250, 41.006454>,  <39.645859, 35.274345, 41.036407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745888, 35.058250, 41.006454>,  <39.912601, 34.698093, 40.956532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745888, 35.058250, 41.006454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146540, 0.202054, -0.968349,
		-0.897116, -0.385305, -0.216157,
		-0.416785, 0.900397, 0.124803,
		39.620853, 35.328369, 41.043896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299725, 34.747883, 40.389324>,  <39.912601, 34.698093, 40.956532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299725, 34.747883, 40.389324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380737, 35.125656, 40.492874>,  <39.429344, 35.352322, 40.555004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380737, 35.125656, 40.492874>,  <39.299725, 34.747883, 40.389324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380737, 35.125656, 40.492874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144989, 0.232524, -0.961723,
		-0.968483, 0.232315, -0.089839,
		0.202533, 0.944438, 0.258879,
		39.441498, 35.408989, 40.570538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125999, 35.278980, 39.858963>,  <39.299725, 34.747883, 40.389324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125999, 35.278980, 39.858963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415695, 35.477238, 40.050720>,  <39.589512, 35.596191, 40.165775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415695, 35.477238, 40.050720>,  <39.125999, 35.278980, 39.858963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415695, 35.477238, 40.050720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255028, 0.453395, -0.854045,
		-0.640653, 0.740792, 0.201965,
		0.724240, 0.495640, 0.479392,
		39.632969, 35.625931, 40.194538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465866, 35.494579, 39.770676>,  <39.125999, 35.278980, 39.858963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465866, 35.494579, 39.770676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796547, 35.649780, 39.933655>,  <38.994957, 35.742901, 40.031441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796547, 35.649780, 39.933655>,  <38.465866, 35.494579, 39.770676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796547, 35.649780, 39.933655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124793, 0.579679, -0.805232,
		-0.548622, 0.716535, 0.430803,
		0.826705, 0.388007, 0.407443,
		39.044559, 35.766182, 40.055889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411850, 36.321632, 39.713818>,  <38.465866, 35.494579, 39.770676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411850, 36.321632, 39.713818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792973, 36.204582, 39.746117>,  <39.021648, 36.134350, 39.765495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792973, 36.204582, 39.746117>,  <38.411850, 36.321632, 39.713818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792973, 36.204582, 39.746117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241699, 0.570366, -0.785025,
		0.183666, 0.767497, 0.614179,
		0.952811, -0.292629, 0.080747,
		39.078815, 36.116795, 39.770340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739128, 36.877720, 39.422634>,  <38.411850, 36.321632, 39.713818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739128, 36.877720, 39.422634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031685, 36.611748, 39.483200>,  <39.207218, 36.452164, 39.519539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031685, 36.611748, 39.483200>,  <38.739128, 36.877720, 39.422634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031685, 36.611748, 39.483200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601067, 0.523672, -0.603727,
		0.322147, 0.532572, 0.782680,
		0.731395, -0.664932, 0.151413,
		39.251102, 36.412270, 39.528625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295391, 37.276806, 39.720493>,  <38.739128, 36.877720, 39.422634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295391, 37.276806, 39.720493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393520, 36.951900, 39.508816>,  <39.452400, 36.756958, 39.381809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393520, 36.951900, 39.508816>,  <39.295391, 37.276806, 39.720493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393520, 36.951900, 39.508816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413388, 0.581407, -0.700767,
		0.876883, -0.046845, 0.478415,
		0.245327, -0.812263, -0.529192,
		39.467117, 36.708221, 39.350060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907124, 37.377678, 39.365387>,  <39.295391, 37.276806, 39.720493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907124, 37.377678, 39.365387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794140, 37.049755, 39.166138>,  <39.726349, 36.853001, 39.046589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794140, 37.049755, 39.166138>,  <39.907124, 37.377678, 39.365387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794140, 37.049755, 39.166138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418446, 0.361967, -0.832996,
		0.863203, -0.443727, 0.240805,
		-0.282460, -0.819809, -0.498127,
		39.709400, 36.803814, 39.016701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427448, 37.230385, 38.918846>,  <39.907124, 37.377678, 39.365387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427448, 37.230385, 38.918846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123775, 37.042896, 38.738209>,  <39.941570, 36.930401, 38.629826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123775, 37.042896, 38.738209>,  <40.427448, 37.230385, 38.918846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123775, 37.042896, 38.738209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321046, 0.333883, -0.886257,
		0.566192, -0.817814, -0.102995,
		-0.759182, -0.468726, -0.451598,
		39.896023, 36.902279, 38.602730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648666, 36.941010, 38.233776>,  <40.427448, 37.230385, 38.918846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648666, 36.941010, 38.233776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252476, 36.993717, 38.217846>,  <40.014759, 37.025341, 38.208290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252476, 36.993717, 38.217846>,  <40.648666, 36.941010, 38.233776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252476, 36.993717, 38.217846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088914, 0.391553, -0.915849,
		-0.105090, -0.910671, -0.399542,
		-0.990480, 0.131771, -0.039824,
		39.955330, 37.033249, 38.205898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546566, 36.874142, 37.576473>,  <40.648666, 36.941010, 38.233776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546566, 36.874142, 37.576473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200790, 37.039555, 37.690838>,  <39.993324, 37.138802, 37.759457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200790, 37.039555, 37.690838>,  <40.546566, 36.874142, 37.576473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200790, 37.039555, 37.690838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155359, 0.321133, -0.934204,
		-0.478137, -0.851977, -0.213353,
		-0.864435, 0.413531, 0.285908,
		39.941460, 37.163612, 37.776611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024452, 36.360497, 37.796474>,  <40.546566, 36.874142, 37.576473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024452, 36.360497, 37.796474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989147, 36.620068, 37.494190>,  <40.967964, 36.775810, 37.312820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989147, 36.620068, 37.494190>,  <41.024452, 36.360497, 37.796474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989147, 36.620068, 37.494190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673398, -0.520169, -0.525318,
		-0.733992, -0.555263, -0.391073,
		-0.088266, 0.648927, -0.755713,
		40.962666, 36.814747, 37.267475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798504, 35.878426, 37.216438>,  <41.024452, 36.360497, 37.796474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798504, 35.878426, 37.216438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999027, 36.212166, 37.124744>,  <41.119343, 36.412411, 37.069729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999027, 36.212166, 37.124744>,  <40.798504, 35.878426, 37.216438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999027, 36.212166, 37.124744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633908, -0.534469, -0.559020,
		-0.588938, 0.134927, -0.796835,
		0.501311, 0.834348, -0.229238,
		41.149422, 36.462471, 37.055973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983624, 35.844833, 36.489201>,  <40.798504, 35.878426, 37.216438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983624, 35.844833, 36.489201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257965, 36.035103, 36.709507>,  <41.422569, 36.149265, 36.841690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257965, 36.035103, 36.709507>,  <40.983624, 35.844833, 36.489201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257965, 36.035103, 36.709507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707512, -0.258624, -0.657678,
		-0.170397, 0.840744, -0.513921,
		0.685851, 0.475672, 0.550768,
		41.463718, 36.177803, 36.874737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506756, 36.337021, 36.077572>,  <40.983624, 35.844833, 36.489201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506756, 36.337021, 36.077572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672501, 36.193333, 36.412060>,  <41.771950, 36.107121, 36.612751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672501, 36.193333, 36.412060>,  <41.506756, 36.337021, 36.077572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672501, 36.193333, 36.412060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851217, -0.172183, -0.495764,
		0.322073, 0.917230, 0.234431,
		0.414365, -0.359224, 0.836218,
		41.796810, 36.085564, 36.662926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086338, 36.647873, 36.073303>,  <41.506756, 36.337021, 36.077572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086338, 36.647873, 36.073303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121372, 36.317322, 36.295811>,  <42.142391, 36.118992, 36.429314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121372, 36.317322, 36.295811>,  <42.086338, 36.647873, 36.073303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121372, 36.317322, 36.295811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903245, -0.169612, -0.394183,
		0.420093, 0.536969, 0.731564,
		0.087582, -0.826375, 0.556268,
		42.147648, 36.069408, 36.462692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716515, 36.618683, 36.413349>,  <42.086338, 36.647873, 36.073303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716515, 36.618683, 36.413349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617672, 36.234886, 36.359226>,  <42.558369, 36.004608, 36.326752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617672, 36.234886, 36.359226>,  <42.716515, 36.618683, 36.413349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617672, 36.234886, 36.359226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937595, -0.201498, -0.283398,
		0.244656, -0.196890, 0.949409,
		-0.247103, -0.959496, -0.135306,
		42.543541, 35.947037, 36.318634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201748, 36.162254, 36.634998>,  <42.716515, 36.618683, 36.413349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201748, 36.162254, 36.634998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000137, 35.990715, 36.335121>,  <42.879169, 35.887791, 36.155193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000137, 35.990715, 36.335121>,  <43.201748, 36.162254, 36.634998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000137, 35.990715, 36.335121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863645, -0.241723, -0.442366,
		0.008490, -0.870436, 0.492209,
		-0.504030, -0.428849, -0.749695,
		42.848930, 35.862061, 36.110214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870140, 36.467297, 36.631889>,  <43.201748, 36.162254, 36.634998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870140, 36.467297, 36.631889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062477, 36.727226, 36.867352>,  <44.177879, 36.883186, 37.008629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062477, 36.727226, 36.867352>,  <43.870140, 36.467297, 36.631889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062477, 36.727226, 36.867352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596401, -0.734528, 0.323688,
		0.642725, 0.195432, -0.740751,
		0.480843, 0.649827, 0.588655,
		44.206730, 36.922173, 37.043949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457939, 36.211105, 36.595947>,  <43.870140, 36.467297, 36.631889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457939, 36.211105, 36.595947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.492779, 36.442329, 36.920479>,  <44.513683, 36.581066, 37.115200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.492779, 36.442329, 36.920479>,  <44.457939, 36.211105, 36.595947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492779, 36.442329, 36.920479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651172, -0.649386, 0.392775,
		0.753916, 0.494107, -0.432977,
		0.087096, 0.578062, 0.811331,
		44.518909, 36.615749, 37.163879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.134228, 36.387974, 36.513771>,  <44.457939, 36.211105, 36.595947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.134228, 36.387974, 36.513771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988831, 36.443539, 36.882244>,  <44.901592, 36.476879, 37.103329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988831, 36.443539, 36.882244>,  <45.134228, 36.387974, 36.513771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988831, 36.443539, 36.882244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684090, -0.631410, 0.365160,
		0.632369, 0.762904, 0.134485,
		-0.363497, 0.138916, 0.921180,
		44.879780, 36.485214, 37.158600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861378, 36.520622, 36.702923>,  <45.134228, 36.387974, 36.513771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861378, 36.520622, 36.702923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727024, 36.873005, 36.569595>,  <45.646412, 37.084435, 36.489597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727024, 36.873005, 36.569595>,  <45.861378, 36.520622, 36.702923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727024, 36.873005, 36.569595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726624, 0.467520, 0.503432,
		0.599334, -0.073104, -0.797154,
		-0.335883, 0.880955, -0.333319,
		45.626259, 37.137291, 36.469601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743904, 37.237396, 37.054165>,  <45.861378, 36.520622, 36.702923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743904, 37.237396, 37.054165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.137489, 37.174847, 37.019848>,  <46.373642, 37.137318, 36.999260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.137489, 37.174847, 37.019848>,  <45.743904, 37.237396, 37.054165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.137489, 37.174847, 37.019848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143711, 0.979955, -0.137971,
		0.105645, 0.123429, 0.986714,
		0.983965, -0.156377, -0.085790,
		46.432678, 37.127934, 36.994110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.080421, 37.477276, 36.346504>,  <45.743904, 37.237396, 37.054165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.080421, 37.477276, 36.346504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273785, 37.736465, 36.111065>,  <46.389805, 37.891979, 35.969803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273785, 37.736465, 36.111065>,  <46.080421, 37.477276, 36.346504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273785, 37.736465, 36.111065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731339, -0.668467, -0.135260,
		-0.481101, -0.365075, -0.797033,
		0.483410, 0.647975, -0.588594,
		46.418808, 37.930859, 35.934486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216423, 37.186378, 35.764275>,  <46.080421, 37.477276, 36.346504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216423, 37.186378, 35.764275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495476, 37.470913, 35.798473>,  <46.662907, 37.641632, 35.818993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495476, 37.470913, 35.798473>,  <46.216423, 37.186378, 35.764275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495476, 37.470913, 35.798473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714966, -0.683519, -0.147054,
		-0.046166, 0.163717, -0.985426,
		0.697634, 0.711335, 0.085497,
		46.704765, 37.684315, 35.824123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.488464, 37.403389, 35.082928>,  <46.216423, 37.186378, 35.764275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.488464, 37.403389, 35.082928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741947, 37.380058, 35.391476>,  <46.894035, 37.366058, 35.576607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741947, 37.380058, 35.391476>,  <46.488464, 37.403389, 35.082928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.741947, 37.380058, 35.391476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472057, -0.760813, -0.445339,
		0.612849, 0.646345, -0.454593,
		0.633703, -0.058331, 0.771375,
		46.932056, 37.362560, 35.622887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.268711, 37.459347, 34.904293>,  <46.488464, 37.403389, 35.082928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.268711, 37.459347, 34.904293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.189625, 37.229168, 35.221725>,  <47.142174, 37.091061, 35.412186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.189625, 37.229168, 35.221725>,  <47.268711, 37.459347, 34.904293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.189625, 37.229168, 35.221725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570165, -0.726039, -0.384420,
		0.797384, 0.376466, 0.471648,
		-0.197714, -0.575448, 0.793580,
		47.130310, 37.056534, 35.459801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.817341, 37.049934, 35.048904>,  <47.268711, 37.459347, 34.904293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.817341, 37.049934, 35.048904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547821, 36.860439, 35.275734>,  <47.386108, 36.746742, 35.411831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547821, 36.860439, 35.275734>,  <47.817341, 37.049934, 35.048904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.547821, 36.860439, 35.275734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389436, -0.879875, -0.272323,
		0.627965, 0.037350, 0.777345,
		-0.673795, -0.473736, 0.567076,
		47.345684, 36.718319, 35.445858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.166103, 36.504631, 35.396164>,  <47.817341, 37.049934, 35.048904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.166103, 36.504631, 35.396164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782028, 36.416641, 35.327293>,  <47.551582, 36.363850, 35.285969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782028, 36.416641, 35.327293>,  <48.166103, 36.504631, 35.396164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.782028, 36.416641, 35.327293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257542, -0.935816, -0.240667,
		-0.108188, -0.275430, 0.955214,
		-0.960191, -0.219970, -0.172178,
		47.493969, 36.350651, 35.275639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.725014, 36.058674, 35.890385>,  <48.166103, 36.504631, 35.396164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.725014, 36.058674, 35.890385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657379, 36.031025, 35.497116>,  <47.616798, 36.014435, 35.261154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657379, 36.031025, 35.497116>,  <47.725014, 36.058674, 35.890385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657379, 36.031025, 35.497116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308379, -0.951163, 0.013839,
		-0.936116, -0.300850, 0.182146,
		-0.169087, -0.069125, -0.983174,
		47.606651, 36.010288, 35.202164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.615376, 35.384167, 35.545773>,  <47.725014, 36.058674, 35.890385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.615376, 35.384167, 35.545773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766949, 35.539017, 35.209545>,  <47.857891, 35.631927, 35.007809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766949, 35.539017, 35.209545>,  <47.615376, 35.384167, 35.545773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.766949, 35.539017, 35.209545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489392, -0.854727, -0.173023,
		-0.785434, -0.345801, -0.513337,
		0.378932, 0.387121, -0.840564,
		47.880627, 35.655151, 34.957375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472942, 34.959343, 34.897686>,  <47.615376, 35.384167, 35.545773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472942, 34.959343, 34.897686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809402, 35.171337, 34.854641>,  <48.011280, 35.298534, 34.828815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809402, 35.171337, 34.854641>,  <47.472942, 34.959343, 34.897686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.809402, 35.171337, 34.854641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524337, -0.847963, -0.077652,
		-0.132403, 0.008893, -0.991156,
		0.841154, 0.529981, -0.107610,
		48.061749, 35.330330, 34.822357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.631493, 38.210625, 26.774393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.256893, 38.103703, 26.683601>,  <38.032135, 38.039551, 26.629126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.256893, 38.103703, 26.683601>,  <38.631493, 38.210625, 26.774393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256893, 38.103703, 26.683601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114236, -0.379412, 0.918149,
		-0.331543, 0.885774, 0.324783,
		-0.936498, -0.267304, -0.226979,
		37.975945, 38.023510, 26.615507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202412, 38.513062, 27.284729>,  <38.631493, 38.210625, 26.774393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202412, 38.513062, 27.284729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.012676, 38.201382, 27.120850>,  <37.898834, 38.014374, 27.022522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.012676, 38.201382, 27.120850>,  <38.202412, 38.513062, 27.284729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012676, 38.201382, 27.120850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245393, -0.329911, 0.911560,
		-0.845448, 0.532928, -0.034720,
		-0.474341, -0.779197, -0.409699,
		37.870373, 37.967621, 26.997940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716656, 38.422165, 27.727020>,  <38.202412, 38.513062, 27.284729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716656, 38.422165, 27.727020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676395, 38.079464, 27.524693>,  <37.652241, 37.873844, 27.403296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676395, 38.079464, 27.524693>,  <37.716656, 38.422165, 27.727020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676395, 38.079464, 27.524693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427878, -0.421710, 0.799425,
		-0.898215, 0.296889, -0.324140,
		-0.100647, -0.856748, -0.505818,
		37.646202, 37.822441, 27.372948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972988, 38.091206, 27.787895>,  <37.716656, 38.422165, 27.727020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972988, 38.091206, 27.787895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258072, 37.817673, 27.725384>,  <37.429123, 37.653553, 27.687876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258072, 37.817673, 27.725384>,  <36.972988, 38.091206, 27.787895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258072, 37.817673, 27.725384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230447, -0.438681, 0.868593,
		-0.662529, -0.583037, -0.470238,
		0.712706, -0.683832, -0.156280,
		37.471886, 37.612522, 27.678499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672226, 37.502064, 28.018169>,  <36.972988, 38.091206, 27.787895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672226, 37.502064, 28.018169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.051746, 37.383152, 27.975456>,  <37.279457, 37.311806, 27.949829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.051746, 37.383152, 27.975456>,  <36.672226, 37.502064, 28.018169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051746, 37.383152, 27.975456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115198, -0.640425, 0.759332,
		-0.294117, -0.708155, -0.641881,
		0.948802, -0.297276, -0.106782,
		37.336388, 37.293968, 27.943422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651051, 36.746750, 28.003557>,  <36.672226, 37.502064, 28.018169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651051, 36.746750, 28.003557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024643, 36.856472, 28.095150>,  <37.248798, 36.922306, 28.150106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024643, 36.856472, 28.095150>,  <36.651051, 36.746750, 28.003557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024643, 36.856472, 28.095150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017227, -0.605530, 0.795636,
		0.356901, -0.747056, -0.560829,
		0.933983, 0.274302, 0.228984,
		37.304836, 36.938763, 28.163845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079216, 36.142826, 28.331293>,  <36.651051, 36.746750, 28.003557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079216, 36.142826, 28.331293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293201, 36.447567, 28.477388>,  <37.421593, 36.630409, 28.565046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293201, 36.447567, 28.477388>,  <37.079216, 36.142826, 28.331293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293201, 36.447567, 28.477388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180533, -0.525391, 0.831488,
		0.825362, -0.378878, -0.418603,
		0.534963, 0.761850, 0.365238,
		37.453690, 36.676121, 28.586960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568680, 35.833847, 28.669062>,  <37.079216, 36.142826, 28.331293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568680, 35.833847, 28.669062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608635, 36.205101, 28.812504>,  <37.632607, 36.427853, 28.898569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608635, 36.205101, 28.812504>,  <37.568680, 35.833847, 28.669062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608635, 36.205101, 28.812504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239791, -0.372238, 0.896626,
		0.965672, -0.003573, -0.259740,
		0.099889, 0.928130, 0.358603,
		37.638603, 36.483540, 28.920084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131844, 35.786140, 29.121841>,  <37.568680, 35.833847, 28.669062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131844, 35.786140, 29.121841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906799, 36.096443, 29.236160>,  <37.771774, 36.282623, 29.304750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906799, 36.096443, 29.236160>,  <38.131844, 35.786140, 29.121841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906799, 36.096443, 29.236160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129764, -0.258549, 0.957243,
		0.816476, 0.575638, 0.044797,
		-0.562608, 0.775753, 0.285796,
		37.738018, 36.329170, 29.321899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511745, 36.089451, 29.608671>,  <38.131844, 35.786140, 29.121841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511745, 36.089451, 29.608671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151157, 36.244709, 29.685291>,  <37.934803, 36.337864, 29.731262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151157, 36.244709, 29.685291>,  <38.511745, 36.089451, 29.608671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151157, 36.244709, 29.685291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153040, -0.128129, 0.979878,
		0.404881, 0.912646, 0.056102,
		-0.901471, 0.388148, 0.191549,
		37.880714, 36.361153, 29.742756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568386, 36.666092, 30.075052>,  <38.511745, 36.089451, 29.608671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568386, 36.666092, 30.075052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194290, 36.530598, 30.116198>,  <37.969833, 36.449299, 30.140884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194290, 36.530598, 30.116198>,  <38.568386, 36.666092, 30.075052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194290, 36.530598, 30.116198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196957, -0.256430, 0.946283,
		-0.294164, 0.905263, 0.306541,
		-0.935241, -0.338738, 0.102865,
		37.913719, 36.428978, 30.147057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265495, 36.999535, 30.670294>,  <38.568386, 36.666092, 30.075052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265495, 36.999535, 30.670294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055267, 36.662033, 30.626738>,  <37.929131, 36.459534, 30.600603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055267, 36.662033, 30.626738>,  <38.265495, 36.999535, 30.670294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055267, 36.662033, 30.626738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070050, -0.170479, 0.982868,
		-0.847859, 0.508942, 0.148705,
		-0.525574, -0.843751, -0.108891,
		37.897594, 36.408909, 30.594070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049484, 36.941601, 31.297157>,  <38.265495, 36.999535, 30.670294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049484, 36.941601, 31.297157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951420, 36.577099, 31.164785>,  <37.892582, 36.358398, 31.085361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951420, 36.577099, 31.164785>,  <38.049484, 36.941601, 31.297157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951420, 36.577099, 31.164785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028762, -0.348034, 0.937041,
		-0.969055, 0.220211, 0.111534,
		-0.245164, -0.911252, -0.330930,
		37.877872, 36.303722, 31.065506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441685, 36.701370, 31.644976>,  <38.049484, 36.941601, 31.297157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441685, 36.701370, 31.644976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639782, 36.370804, 31.537819>,  <37.758640, 36.172462, 31.473526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639782, 36.370804, 31.537819>,  <37.441685, 36.701370, 31.644976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639782, 36.370804, 31.537819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083302, -0.352115, 0.932242,
		-0.864751, -0.439372, -0.243225,
		0.495245, -0.826418, -0.267891,
		37.788357, 36.122879, 31.457451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108162, 36.139614, 31.952480>,  <37.441685, 36.701370, 31.644976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108162, 36.139614, 31.952480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435207, 35.941288, 31.835403>,  <37.631435, 35.822292, 31.765158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435207, 35.941288, 31.835403>,  <37.108162, 36.139614, 31.952480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435207, 35.941288, 31.835403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146892, -0.671165, 0.726609,
		-0.556707, -0.551095, -0.621588,
		0.817618, -0.495815, -0.292691,
		37.680492, 35.792545, 31.747597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973106, 35.449596, 31.974165>,  <37.108162, 36.139614, 31.952480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973106, 35.449596, 31.974165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373104, 35.449280, 31.972704>,  <37.613102, 35.449089, 31.971827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373104, 35.449280, 31.972704>,  <36.973106, 35.449596, 31.974165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373104, 35.449280, 31.972704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002634, -0.544248, 0.838920,
		-0.002650, -0.838924, -0.544242,
		0.999993, -0.000789, -0.003652,
		37.673103, 35.449043, 31.971609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248783, 34.724339, 32.125751>,  <36.973106, 35.449596, 31.974165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248783, 34.724339, 32.125751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566204, 34.950764, 32.215054>,  <37.756657, 35.086620, 32.268635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566204, 34.950764, 32.215054>,  <37.248783, 34.724339, 32.125751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566204, 34.950764, 32.215054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200140, -0.589282, 0.782746,
		0.574642, -0.576471, -0.580920,
		0.793555, 0.566064, 0.223252,
		37.804272, 35.120583, 32.282028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580418, 34.361336, 32.528454>,  <37.248783, 34.724339, 32.125751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580418, 34.361336, 32.528454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751896, 34.712154, 32.615177>,  <37.854782, 34.922646, 32.667213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751896, 34.712154, 32.615177>,  <37.580418, 34.361336, 32.528454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751896, 34.712154, 32.615177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063629, -0.268697, 0.961121,
		0.901206, -0.398232, -0.170995,
		0.428694, 0.877048, 0.216812,
		37.880505, 34.975269, 32.680222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094475, 34.199497, 33.045593>,  <37.580418, 34.361336, 32.528454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094475, 34.199497, 33.045593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040730, 34.595135, 33.069744>,  <38.008484, 34.832516, 33.084236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040730, 34.595135, 33.069744>,  <38.094475, 34.199497, 33.045593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040730, 34.595135, 33.069744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189985, -0.034087, 0.981195,
		0.972549, 0.143308, -0.183332,
		-0.134364, 0.989091, 0.060377,
		38.000420, 34.891861, 33.087856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686687, 34.612949, 33.464111>,  <38.094475, 34.199497, 33.045593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686687, 34.612949, 33.464111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339596, 34.810989, 33.481613>,  <38.131340, 34.929813, 33.492115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339596, 34.810989, 33.481613>,  <38.686687, 34.612949, 33.464111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339596, 34.810989, 33.481613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074948, 0.043305, 0.996247,
		0.491351, 0.867753, -0.074684,
		-0.867731, 0.495104, 0.043759,
		38.079277, 34.959522, 33.494740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714184, 34.846390, 34.128323>,  <38.686687, 34.612949, 33.464111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714184, 34.846390, 34.128323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333622, 34.952854, 34.066372>,  <38.105286, 35.016731, 34.029202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333622, 34.952854, 34.066372>,  <38.714184, 34.846390, 34.128323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333622, 34.952854, 34.066372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177807, -0.064173, 0.981971,
		0.251420, 0.961791, 0.108379,
		-0.951406, 0.266158, -0.154878,
		38.048199, 35.032703, 34.019909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538342, 35.367695, 34.615799>,  <38.714184, 34.846390, 34.128323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538342, 35.367695, 34.615799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.231796, 35.139668, 34.497337>,  <38.047867, 35.002853, 34.426258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.231796, 35.139668, 34.497337>,  <38.538342, 35.367695, 34.615799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231796, 35.139668, 34.497337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092179, -0.358660, 0.928906,
		-0.635757, 0.739181, 0.222316,
		-0.766365, -0.570066, -0.296157,
		38.001888, 34.968647, 34.408489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659344, 35.438210, 35.382072>,  <38.538342, 35.367695, 34.615799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659344, 35.438210, 35.382072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.054508, 35.460232, 35.440033>,  <39.291607, 35.473446, 35.474812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.054508, 35.460232, 35.440033>,  <38.659344, 35.438210, 35.382072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054508, 35.460232, 35.440033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059443, 0.728789, -0.682153,
		-0.143159, 0.682521, 0.716708,
		0.987913, 0.055053, 0.144904,
		39.350883, 35.476749, 35.483505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808582, 36.174221, 35.337933>,  <38.659344, 35.438210, 35.382072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808582, 36.174221, 35.337933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.148186, 35.979427, 35.255936>,  <39.351948, 35.862549, 35.206738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.148186, 35.979427, 35.255936>,  <38.808582, 36.174221, 35.337933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148186, 35.979427, 35.255936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193522, 0.647609, -0.736989,
		0.491657, 0.586043, 0.644071,
		0.849013, -0.486987, -0.204989,
		39.402889, 35.833332, 35.194439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301422, 36.686810, 35.205097>,  <38.808582, 36.174221, 35.337933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301422, 36.686810, 35.205097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.482220, 36.369095, 35.042709>,  <39.590698, 36.178467, 34.945278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.482220, 36.369095, 35.042709>,  <39.301422, 36.686810, 35.205097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482220, 36.369095, 35.042709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307037, 0.565830, -0.765222,
		0.837514, 0.221229, 0.499627,
		0.451993, -0.794288, -0.405965,
		39.617817, 36.130810, 34.920921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021435, 36.838604, 35.056789>,  <39.301422, 36.686810, 35.205097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021435, 36.838604, 35.056789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913486, 36.542107, 34.810951>,  <39.848717, 36.364208, 34.663448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913486, 36.542107, 34.810951>,  <40.021435, 36.838604, 35.056789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913486, 36.542107, 34.810951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509015, 0.431979, -0.744512,
		0.817357, -0.513760, 0.260726,
		-0.269872, -0.741246, -0.614592,
		39.832523, 36.319733, 34.626572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604584, 36.690582, 34.608002>,  <40.021435, 36.838604, 35.056789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604584, 36.690582, 34.608002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.281624, 36.552059, 34.416931>,  <40.087849, 36.468945, 34.302288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.281624, 36.552059, 34.416931>,  <40.604584, 36.690582, 34.608002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281624, 36.552059, 34.416931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352181, 0.366680, -0.861112,
		0.473361, -0.863493, -0.174096,
		-0.807402, -0.346304, -0.477678,
		40.039402, 36.448170, 34.273628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934612, 36.494884, 33.991646>,  <40.604584, 36.690582, 34.608002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934612, 36.494884, 33.991646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.546173, 36.512428, 33.897793>,  <40.313110, 36.522957, 33.841480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.546173, 36.512428, 33.897793>,  <40.934612, 36.494884, 33.991646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546173, 36.512428, 33.897793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228268, 0.458005, -0.859142,
		0.069779, -0.887867, -0.454778,
		-0.971095, 0.043861, -0.234630,
		40.254845, 36.525585, 33.827404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820538, 36.067112, 33.366688>,  <40.934612, 36.494884, 33.991646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820538, 36.067112, 33.366688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.525852, 36.336273, 33.393356>,  <40.349041, 36.497772, 33.409359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.525852, 36.336273, 33.393356>,  <40.820538, 36.067112, 33.366688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525852, 36.336273, 33.393356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229411, 0.341475, -0.911463,
		-0.636096, -0.656195, -0.405943,
		-0.736717, 0.672906, 0.066672,
		40.304836, 36.538147, 33.413357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677963, 36.182186, 32.670902>,  <40.820538, 36.067112, 33.366688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677963, 36.182186, 32.670902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.463097, 36.471428, 32.844597>,  <40.334175, 36.644974, 32.948814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.463097, 36.471428, 32.844597>,  <40.677963, 36.182186, 32.670902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463097, 36.471428, 32.844597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064935, 0.477843, -0.876042,
		-0.840972, -0.498779, -0.209727,
		-0.537168, 0.723108, 0.434241,
		40.301945, 36.688362, 32.974869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134357, 36.181004, 32.282120>,  <40.677963, 36.182186, 32.670902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134357, 36.181004, 32.282120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.176605, 36.539650, 32.454132>,  <40.201954, 36.754837, 32.557339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.176605, 36.539650, 32.454132>,  <40.134357, 36.181004, 32.282120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176605, 36.539650, 32.454132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038610, 0.435822, -0.899204,
		-0.993657, 0.078372, 0.080650,
		0.105622, 0.896614, 0.430031,
		40.208290, 36.808636, 32.583141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559444, 36.491032, 32.031788>,  <40.134357, 36.181004, 32.282120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559444, 36.491032, 32.031788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823933, 36.769264, 32.144176>,  <39.982628, 36.936203, 32.211609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.823933, 36.769264, 32.144176>,  <39.559444, 36.491032, 32.031788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823933, 36.769264, 32.144176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088062, 0.443915, -0.891731,
		-0.745001, 0.564892, 0.354782,
		0.661225, 0.695584, 0.280972,
		40.022301, 36.977940, 32.228470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182610, 37.129593, 32.153282>,  <39.559444, 36.491032, 32.031788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182610, 37.129593, 32.153282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561893, 37.226742, 32.071388>,  <39.789463, 37.285030, 32.022251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561893, 37.226742, 32.071388>,  <39.182610, 37.129593, 32.153282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561893, 37.226742, 32.071388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298969, 0.464585, -0.833534,
		-0.107327, 0.851572, 0.513134,
		0.948208, 0.242872, -0.204731,
		39.846355, 37.299603, 32.009968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053448, 37.661892, 31.846807>,  <39.182610, 37.129593, 32.153282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053448, 37.661892, 31.846807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436165, 37.604771, 31.745487>,  <39.665794, 37.570499, 31.684694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.436165, 37.604771, 31.745487>,  <39.053448, 37.661892, 31.846807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436165, 37.604771, 31.745487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099246, 0.658424, -0.746075,
		0.273321, 0.738976, 0.615800,
		0.956789, -0.142802, -0.253302,
		39.723202, 37.561932, 31.669497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242001, 38.341305, 31.674734>,  <39.053448, 37.661892, 31.846807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242001, 38.341305, 31.674734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.489006, 38.087406, 31.488932>,  <39.637211, 37.935066, 31.377451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.489006, 38.087406, 31.488932>,  <39.242001, 38.341305, 31.674734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489006, 38.087406, 31.488932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084838, 0.533360, -0.841623,
		0.781968, 0.559125, 0.275509,
		0.617518, -0.634749, -0.464505,
		39.674263, 37.896980, 31.349581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729889, 38.783142, 31.296570>,  <39.242001, 38.341305, 31.674734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729889, 38.783142, 31.296570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752922, 38.417103, 31.136929>,  <39.766743, 38.197479, 31.041143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752922, 38.417103, 31.136929>,  <39.729889, 38.783142, 31.296570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752922, 38.417103, 31.136929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133151, 0.389157, -0.911497,
		0.989421, 0.105628, -0.099437,
		0.057583, -0.915095, -0.399105,
		39.770199, 38.142574, 31.017197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379810, 38.710712, 30.754677>,  <39.729889, 38.783142, 31.296570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379810, 38.710712, 30.754677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.117702, 38.423050, 30.662212>,  <39.960438, 38.250450, 30.606733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.117702, 38.423050, 30.662212>,  <40.379810, 38.710712, 30.754677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117702, 38.423050, 30.662212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108000, 0.213682, -0.970915,
		0.747638, -0.661173, -0.062349,
		-0.655266, -0.719159, -0.231164,
		39.921124, 38.207302, 30.592863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710793, 38.358692, 30.123465>,  <40.379810, 38.710712, 30.754677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710793, 38.358692, 30.123465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.326336, 38.249718, 30.141296>,  <40.095661, 38.184334, 30.151995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.326336, 38.249718, 30.141296>,  <40.710793, 38.358692, 30.123465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326336, 38.249718, 30.141296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060869, 0.051641, -0.996809,
		0.269264, -0.960787, -0.066217,
		-0.961141, -0.272435, 0.044577,
		40.037994, 38.167988, 30.154669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703777, 37.878681, 29.632122>,  <40.710793, 38.358692, 30.123465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703777, 37.878681, 29.632122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.324322, 37.990696, 29.691000>,  <40.096649, 38.057903, 29.726326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.324322, 37.990696, 29.691000>,  <40.703777, 37.878681, 29.632122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324322, 37.990696, 29.691000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094350, 0.193666, -0.976520,
		-0.301968, -0.940251, -0.157298,
		-0.948638, 0.280037, 0.147194,
		40.039730, 38.074707, 29.735159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269917, 37.379539, 29.320452>,  <40.703777, 37.878681, 29.632122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269917, 37.379539, 29.320452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078751, 37.730179, 29.342957>,  <39.964050, 37.940563, 29.356459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078751, 37.730179, 29.342957>,  <40.269917, 37.379539, 29.320452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078751, 37.730179, 29.342957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081533, 0.019505, -0.996480,
		-0.874613, -0.480821, 0.062151,
		-0.477916, 0.876602, 0.056262,
		39.935375, 37.993160, 29.359835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.781410, 37.432007, 28.673204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.738354, 37.812141, 28.790009>,  <39.712521, 38.040222, 28.860090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.738354, 37.812141, 28.790009>,  <39.781410, 37.432007, 28.673204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738354, 37.812141, 28.790009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094123, 0.282655, -0.954593,
		-0.989725, -0.130234, 0.059024,
		-0.107637, 0.950340, 0.292009,
		39.706062, 38.097244, 28.877611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297085, 37.772476, 28.254282>,  <39.781410, 37.432007, 28.673204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297085, 37.772476, 28.254282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.507828, 38.086056, 28.385647>,  <39.634274, 38.274204, 28.464466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.507828, 38.086056, 28.385647>,  <39.297085, 37.772476, 28.254282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507828, 38.086056, 28.385647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175609, 0.478449, -0.860377,
		-0.831615, 0.395623, 0.389742,
		0.526856, 0.783944, 0.328411,
		39.665886, 38.321239, 28.484171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882046, 38.375061, 28.002272>,  <39.297085, 37.772476, 28.254282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882046, 38.375061, 28.002272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.258808, 38.487251, 28.076187>,  <39.484867, 38.554565, 28.120537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.258808, 38.487251, 28.076187>,  <38.882046, 38.375061, 28.002272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258808, 38.487251, 28.076187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059747, 0.681312, -0.729551,
		-0.330520, 0.676128, 0.658489,
		0.941906, 0.280474, 0.184791,
		39.541382, 38.571392, 28.131624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925682, 39.144608, 27.823967>,  <38.882046, 38.375061, 28.002272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925682, 39.144608, 27.823967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.304611, 39.016903, 27.813713>,  <39.531967, 38.940281, 27.807560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.304611, 39.016903, 27.813713>,  <38.925682, 39.144608, 27.823967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304611, 39.016903, 27.813713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155998, 0.529819, -0.833641,
		0.279731, 0.785726, 0.551712,
		0.947320, -0.319261, -0.025634,
		39.588806, 38.921124, 27.806023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295094, 39.749588, 27.766869>,  <38.925682, 39.144608, 27.823967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295094, 39.749588, 27.766869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.485134, 39.428841, 27.621931>,  <39.599159, 39.236393, 27.534967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.485134, 39.428841, 27.621931>,  <39.295094, 39.749588, 27.766869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485134, 39.428841, 27.621931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266143, 0.523448, -0.809426,
		0.838720, 0.288121, 0.462099,
		0.475097, -0.801866, -0.362345,
		39.627663, 39.188282, 27.513227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880619, 40.082623, 27.485155>,  <39.295094, 39.749588, 27.766869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880619, 40.082623, 27.485155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.932728, 39.715961, 27.334013>,  <39.963993, 39.495964, 27.243328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.932728, 39.715961, 27.334013>,  <39.880619, 40.082623, 27.485155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932728, 39.715961, 27.334013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184403, 0.396855, -0.899167,
		0.974179, 0.047458, 0.220732,
		0.130271, -0.916654, -0.377856,
		39.971809, 39.440964, 27.220655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481693, 39.985687, 27.141142>,  <39.880619, 40.082623, 27.485155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481693, 39.985687, 27.141142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.251862, 39.705425, 26.971939>,  <40.113960, 39.537266, 26.870419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.251862, 39.705425, 26.971939>,  <40.481693, 39.985687, 27.141142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251862, 39.705425, 26.971939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253775, 0.338846, -0.905970,
		0.778110, -0.627901, -0.016885,
		-0.574581, -0.700659, -0.423005,
		40.079487, 39.495228, 26.845037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929020, 39.854656, 26.490307>,  <40.481693, 39.985687, 27.141142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929020, 39.854656, 26.490307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559525, 39.719982, 26.417252>,  <40.337830, 39.639179, 26.373419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559525, 39.719982, 26.417252>,  <40.929020, 39.854656, 26.490307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559525, 39.719982, 26.417252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128379, 0.177103, -0.975783,
		0.360878, -0.924812, -0.120373,
		-0.923735, -0.336686, -0.182640,
		40.282406, 39.618977, 26.362459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007980, 39.273361, 25.961510>,  <40.929020, 39.854656, 26.490307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007980, 39.273361, 25.961510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.646820, 39.443882, 25.939484>,  <40.430122, 39.546196, 25.926268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.646820, 39.443882, 25.939484>,  <41.007980, 39.273361, 25.961510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646820, 39.443882, 25.939484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149340, 0.190983, -0.970167,
		-0.403067, -0.884190, -0.236103,
		-0.902903, 0.426302, -0.055066,
		40.375950, 39.571774, 25.922964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825062, 39.122765, 25.236977>,  <41.007980, 39.273361, 25.961510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825062, 39.122765, 25.236977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.567802, 39.403912, 25.358521>,  <40.413445, 39.572601, 25.431446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.567802, 39.403912, 25.358521>,  <40.825062, 39.122765, 25.236977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567802, 39.403912, 25.358521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016962, 0.383643, -0.923326,
		-0.765551, -0.598992, -0.234819,
		-0.643151, 0.702870, 0.303858,
		40.374859, 39.614773, 25.449678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353466, 39.154076, 24.675695>,  <40.825062, 39.122765, 25.236977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353466, 39.154076, 24.675695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.337402, 39.492970, 24.887573>,  <40.327763, 39.696308, 25.014700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.337402, 39.492970, 24.887573>,  <40.353466, 39.154076, 24.675695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337402, 39.492970, 24.887573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071672, 0.531199, -0.844210,
		-0.996620, 0.004062, -0.082055,
		-0.040159, 0.847237, 0.529695,
		40.325356, 39.747139, 25.046482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874653, 39.638191, 24.322090>,  <40.353466, 39.154076, 24.675695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874653, 39.638191, 24.322090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.083576, 39.883091, 24.559525>,  <40.208931, 40.030033, 24.701984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.083576, 39.883091, 24.559525>,  <39.874653, 39.638191, 24.322090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083576, 39.883091, 24.559525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013891, 0.689877, -0.723793,
		-0.852645, 0.386287, 0.351823,
		0.522306, 0.612251, 0.593586,
		40.240269, 40.066765, 24.737600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538624, 40.326309, 24.307236>,  <39.874653, 39.638191, 24.322090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538624, 40.326309, 24.307236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910004, 40.396595, 24.438143>,  <40.132832, 40.438766, 24.516687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.910004, 40.396595, 24.438143>,  <39.538624, 40.326309, 24.307236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910004, 40.396595, 24.438143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045737, 0.820256, -0.570165,
		-0.368631, 0.544338, 0.753529,
		0.928450, 0.175716, 0.327269,
		40.188538, 40.449310, 24.536324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483459, 40.962078, 24.575825>,  <39.538624, 40.326309, 24.307236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483459, 40.962078, 24.575825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.862534, 40.885792, 24.473438>,  <40.089977, 40.840019, 24.412006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.862534, 40.885792, 24.473438>,  <39.483459, 40.962078, 24.575825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862534, 40.885792, 24.473438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027689, 0.847985, -0.529296,
		0.318001, 0.494519, 0.808904,
		0.947686, -0.190714, -0.255967,
		40.146839, 40.828579, 24.396648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796207, 41.634911, 24.605961>,  <39.483459, 40.962078, 24.575825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796207, 41.634911, 24.605961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.073235, 41.426155, 24.406769>,  <40.239449, 41.300903, 24.287252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.073235, 41.426155, 24.406769>,  <39.796207, 41.634911, 24.605961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073235, 41.426155, 24.406769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314512, 0.839732, -0.442642,
		0.649182, 0.149936, 0.745709,
		0.692564, -0.521890, -0.497982,
		40.281002, 41.269588, 24.257374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385078, 42.077923, 24.591442>,  <39.796207, 41.634911, 24.605961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385078, 42.077923, 24.591442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.389732, 41.848598, 24.263741>,  <40.392525, 41.711002, 24.067120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.389732, 41.848598, 24.263741>,  <40.385078, 42.077923, 24.591442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389732, 41.848598, 24.263741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356513, 0.767846, -0.532270,
		0.934218, -0.285882, 0.213326,
		0.011635, -0.573310, -0.819256,
		40.393223, 41.676605, 24.017963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012875, 42.204041, 24.357880>,  <40.385078, 42.077923, 24.591442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012875, 42.204041, 24.357880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.810150, 42.059967, 24.044598>,  <40.688515, 41.973522, 23.856628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.810150, 42.059967, 24.044598>,  <41.012875, 42.204041, 24.357880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810150, 42.059967, 24.044598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272259, 0.795150, -0.541860,
		0.817936, -0.487854, -0.304925,
		-0.506809, -0.360189, -0.783205,
		40.658108, 41.951912, 23.809637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470409, 42.352020, 23.810345>,  <41.012875, 42.204041, 24.357880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470409, 42.352020, 23.810345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.117054, 42.291893, 23.632793>,  <40.905041, 42.255817, 23.526262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.117054, 42.291893, 23.632793>,  <41.470409, 42.352020, 23.810345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117054, 42.291893, 23.632793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196678, 0.740798, -0.642290,
		0.425373, -0.654693, -0.624848,
		-0.883389, -0.150319, -0.443879,
		40.852036, 42.246796, 23.499630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564873, 42.656109, 23.135168>,  <41.470409, 42.352020, 23.810345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564873, 42.656109, 23.135168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.166218, 42.632870, 23.158253>,  <40.927025, 42.618927, 23.172104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.166218, 42.632870, 23.158253>,  <41.564873, 42.656109, 23.135168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166218, 42.632870, 23.158253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079016, 0.867292, -0.491488,
		-0.021500, -0.494397, -0.868970,
		-0.996642, -0.058096, 0.057713,
		40.867226, 42.615440, 23.175566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292332, 42.838039, 22.399807>,  <41.564873, 42.656109, 23.135168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292332, 42.838039, 22.399807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015736, 42.922016, 22.676289>,  <40.849777, 42.972404, 22.842178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015736, 42.922016, 22.676289>,  <41.292332, 42.838039, 22.399807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015736, 42.922016, 22.676289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161173, 0.887880, -0.430920,
		-0.704176, -0.409381, -0.580124,
		-0.691491, 0.209944, 0.691205,
		40.808289, 42.985001, 22.883650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761303, 43.139828, 21.991785>,  <41.292332, 42.838039, 22.399807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761303, 43.139828, 21.991785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.633076, 43.209099, 22.364288>,  <40.556141, 43.250660, 22.587791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.633076, 43.209099, 22.364288>,  <40.761303, 43.139828, 21.991785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633076, 43.209099, 22.364288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468379, 0.825562, -0.314753,
		-0.823321, -0.537082, -0.183536,
		-0.320568, 0.173178, 0.931260,
		40.536903, 43.261051, 22.643667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989990, 43.160259, 21.951447>,  <40.761303, 43.139828, 21.991785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989990, 43.160259, 21.951447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.112339, 43.355701, 22.278299>,  <40.185749, 43.472969, 22.474411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.112339, 43.355701, 22.278299>,  <39.989990, 43.160259, 21.951447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112339, 43.355701, 22.278299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656311, 0.729964, -0.190810,
		-0.689707, -0.477928, 0.543957,
		0.305876, 0.488608, 0.817131,
		40.204102, 43.502285, 22.523439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400108, 43.305363, 22.409956>,  <39.989990, 43.160259, 21.951447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400108, 43.305363, 22.409956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.714375, 43.552536, 22.398037>,  <39.902935, 43.700840, 22.390886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.714375, 43.552536, 22.398037>,  <39.400108, 43.305363, 22.409956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714375, 43.552536, 22.398037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584673, 0.725918, -0.362215,
		-0.202193, 0.302002, 0.931618,
		0.785668, 0.617930, -0.029797,
		39.950073, 43.737915, 22.389097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938530, 43.838524, 21.965969>,  <39.400108, 43.305363, 22.409956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938530, 43.838524, 21.965969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.195309, 43.601948, 21.770788>,  <39.349377, 43.460003, 21.653681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.195309, 43.601948, 21.770788>,  <38.938530, 43.838524, 21.965969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195309, 43.601948, 21.770788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763283, 0.432507, 0.479935,
		-0.072812, -0.680538, 0.729087,
		0.641949, -0.591444, -0.487951,
		39.387894, 43.424515, 21.624403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478573, 43.706448, 21.344139>,  <38.938530, 43.838524, 21.965969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478573, 43.706448, 21.344139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.218380, 43.583286, 21.066414>,  <38.062263, 43.509388, 20.899778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.218380, 43.583286, 21.066414>,  <38.478573, 43.706448, 21.344139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218380, 43.583286, 21.066414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062807, -0.889205, 0.453177,
		-0.756924, 0.338389, 0.559070,
		-0.650478, -0.307907, -0.694314,
		38.023235, 43.490913, 20.858120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776039, 43.505623, 21.625723>,  <38.478573, 43.706448, 21.344139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776039, 43.505623, 21.625723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792515, 43.281460, 21.294846>,  <37.802399, 43.146961, 21.096319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792515, 43.281460, 21.294846>,  <37.776039, 43.505623, 21.625723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792515, 43.281460, 21.294846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045355, -0.828091, 0.558756,
		-0.998122, 0.014502, -0.059526,
		0.041189, -0.560406, -0.827193,
		37.804871, 43.113338, 21.046688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303024, 43.154549, 21.746401>,  <37.776039, 43.505623, 21.625723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303024, 43.154549, 21.746401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.515041, 42.944855, 21.479797>,  <37.642250, 42.819038, 21.319836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.515041, 42.944855, 21.479797>,  <37.303024, 43.154549, 21.746401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515041, 42.944855, 21.479797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047775, -0.803217, 0.593767,
		-0.846629, -0.282875, -0.450779,
		0.530035, -0.524236, -0.666512,
		37.674053, 42.787582, 21.279844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091862, 42.492298, 21.887384>,  <37.303024, 43.154549, 21.746401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091862, 42.492298, 21.887384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410824, 42.419849, 21.657137>,  <37.602203, 42.376381, 21.518990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.410824, 42.419849, 21.657137>,  <37.091862, 42.492298, 21.887384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410824, 42.419849, 21.657137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166569, -0.850767, 0.498448,
		-0.579995, -0.493346, -0.648240,
		0.797409, -0.181121, -0.575617,
		37.650047, 42.365513, 21.484451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949924, 41.991692, 21.563465>,  <37.091862, 42.492298, 21.887384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949924, 41.991692, 21.563465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348389, 42.013485, 21.590891>,  <37.587467, 42.026562, 21.607346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348389, 42.013485, 21.590891>,  <36.949924, 41.991692, 21.563465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348389, 42.013485, 21.590891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013016, -0.866352, 0.499264,
		0.086601, -0.496453, -0.863733,
		0.996158, 0.054479, 0.068565,
		37.647236, 42.029827, 21.611460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250408, 41.313095, 21.368074>,  <36.949924, 41.991692, 21.563465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250408, 41.313095, 21.368074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558773, 41.490150, 21.551277>,  <37.743790, 41.596382, 21.661200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558773, 41.490150, 21.551277>,  <37.250408, 41.313095, 21.368074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558773, 41.490150, 21.551277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226134, -0.862429, 0.452856,
		0.595451, -0.245540, -0.764950,
		0.770910, 0.442635, 0.458009,
		37.790047, 41.622940, 21.688681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747253, 40.756088, 21.511248>,  <37.250408, 41.313095, 21.368074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747253, 40.756088, 21.511248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857590, 41.046337, 21.763401>,  <37.923794, 41.220486, 21.914694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857590, 41.046337, 21.763401>,  <37.747253, 40.756088, 21.511248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857590, 41.046337, 21.763401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106141, -0.674812, 0.730317,
		0.955324, -0.134544, -0.263161,
		0.275844, 0.725621, 0.630384,
		37.940342, 41.264023, 21.952517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378090, 40.534626, 21.753859>,  <37.747253, 40.756088, 21.511248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378090, 40.534626, 21.753859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.193188, 40.790340, 21.999666>,  <38.082245, 40.943771, 22.147150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.193188, 40.790340, 21.999666>,  <38.378090, 40.534626, 21.753859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193188, 40.790340, 21.999666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173483, -0.614413, 0.769676,
		0.869612, 0.462394, 0.173110,
		-0.462254, 0.639288, 0.614518,
		38.054512, 40.982128, 22.184021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754539, 40.406563, 22.400242>,  <38.378090, 40.534626, 21.753859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754539, 40.406563, 22.400242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.441868, 40.606052, 22.550041>,  <38.254265, 40.725746, 22.639921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.441868, 40.606052, 22.550041>,  <38.754539, 40.406563, 22.400242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441868, 40.606052, 22.550041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080678, -0.514565, 0.853647,
		0.618442, 0.697492, 0.361988,
		-0.781678, 0.498727, 0.374500,
		38.207363, 40.755669, 22.662392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969692, 40.745136, 22.992373>,  <38.754539, 40.406563, 22.400242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969692, 40.745136, 22.992373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577888, 40.664589, 22.994238>,  <38.342808, 40.616261, 22.995358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577888, 40.664589, 22.994238>,  <38.969692, 40.745136, 22.992373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577888, 40.664589, 22.994238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100715, -0.469599, 0.877117,
		-0.174433, 0.859609, 0.480255,
		-0.979505, -0.201367, 0.004662,
		38.284039, 40.604179, 22.995636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913158, 40.772976, 23.634377>,  <38.969692, 40.745136, 22.992373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913158, 40.772976, 23.634377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581676, 40.605053, 23.486317>,  <38.382786, 40.504299, 23.397480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581676, 40.605053, 23.486317>,  <38.913158, 40.772976, 23.634377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581676, 40.605053, 23.486317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127118, -0.502890, 0.854952,
		-0.545058, 0.755556, 0.363382,
		-0.828706, -0.419806, -0.370149,
		38.333065, 40.479111, 23.375273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495415, 40.768036, 24.157520>,  <38.913158, 40.772976, 23.634377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495415, 40.768036, 24.157520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.297062, 40.518703, 23.915678>,  <38.178051, 40.369102, 23.770573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.297062, 40.518703, 23.915678>,  <38.495415, 40.768036, 24.157520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297062, 40.518703, 23.915678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269434, -0.551440, 0.789505,
		-0.825532, 0.554406, 0.105504,
		-0.495885, -0.623336, -0.604608,
		38.148296, 40.331703, 23.734295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779400, 40.608505, 24.431953>,  <38.495415, 40.768036, 24.157520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779400, 40.608505, 24.431953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881969, 40.293510, 24.207769>,  <37.943512, 40.104515, 24.073259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881969, 40.293510, 24.207769>,  <37.779400, 40.608505, 24.431953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881969, 40.293510, 24.207769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276259, -0.615369, 0.738243,
		-0.926245, -0.034469, -0.375343,
		0.256421, -0.787485, -0.560460,
		37.958897, 40.057266, 24.039631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248886, 40.146736, 24.525135>,  <37.779400, 40.608505, 24.431953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248886, 40.146736, 24.525135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.574150, 39.938282, 24.421450>,  <37.769306, 39.813210, 24.359240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.574150, 39.938282, 24.421450>,  <37.248886, 40.146736, 24.525135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574150, 39.938282, 24.421450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141641, -0.609134, 0.780316,
		-0.564545, -0.597806, -0.569137,
		0.813159, -0.521137, -0.259210,
		37.818096, 39.781940, 24.343687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030163, 39.598263, 24.736094>,  <37.248886, 40.146736, 24.525135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030163, 39.598263, 24.736094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415752, 39.518185, 24.666033>,  <37.647106, 39.470139, 24.623997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415752, 39.518185, 24.666033>,  <37.030163, 39.598263, 24.736094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415752, 39.518185, 24.666033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033737, -0.745159, 0.666032,
		-0.263856, -0.636127, -0.725067,
		0.963972, -0.200198, -0.175154,
		37.704945, 39.458126, 24.613487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990471, 38.815853, 24.705744>,  <37.030163, 39.598263, 24.736094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990471, 38.815853, 24.705744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.347504, 38.970295, 24.798887>,  <37.561722, 39.062962, 24.854773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.347504, 38.970295, 24.798887>,  <36.990471, 38.815853, 24.705744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347504, 38.970295, 24.798887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090468, -0.659299, 0.746418,
		0.441720, -0.645172, -0.623407,
		0.892580, 0.386106, 0.232858,
		37.615276, 39.086128, 24.868744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522896, 38.269627, 24.644123>,  <36.990471, 38.815853, 24.705744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522896, 38.269627, 24.644123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663952, 38.545769, 24.896807>,  <37.748585, 38.711452, 25.048416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663952, 38.545769, 24.896807>,  <37.522896, 38.269627, 24.644123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663952, 38.545769, 24.896807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098298, -0.698671, 0.708658,
		0.930581, -0.187808, -0.314242,
		0.352643, 0.690353, 0.631709,
		37.769745, 38.752876, 25.086319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129883, 37.941463, 24.921364>,  <37.522896, 38.269627, 24.644123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129883, 37.941463, 24.921364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016685, 38.228142, 25.176319>,  <37.948769, 38.400150, 25.329292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016685, 38.228142, 25.176319>,  <38.129883, 37.941463, 24.921364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016685, 38.228142, 25.176319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011733, -0.667090, 0.744884,
		0.959051, 0.203315, 0.197189,
		-0.282989, 0.716696, 0.637388,
		37.931789, 38.443150, 25.367537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425705, 37.703915, 25.488087>,  <38.129883, 37.941463, 24.921364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425705, 37.703915, 25.488087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.182514, 37.990810, 25.624281>,  <38.036602, 38.162949, 25.705997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.182514, 37.990810, 25.624281>,  <38.425705, 37.703915, 25.488087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182514, 37.990810, 25.624281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162308, -0.532070, 0.830998,
		0.777190, 0.449961, 0.439899,
		-0.607973, 0.717243, 0.340487,
		38.000122, 38.205982, 25.726427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672653, 37.967541, 26.110012>,  <38.425705, 37.703915, 25.488087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672653, 37.967541, 26.110012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291027, 38.082645, 26.143356>,  <38.062050, 38.151707, 26.163363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.291027, 38.082645, 26.143356>,  <38.672653, 37.967541, 26.110012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291027, 38.082645, 26.143356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025251, -0.354506, 0.934713,
		0.298523, 0.889675, 0.345489,
		-0.954068, 0.287758, 0.083363,
		38.004807, 38.168972, 26.168365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.936928, 37.422886, 31.392567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.547215, 37.458233, 31.475471>,  <40.313385, 37.479439, 31.525215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.547215, 37.458233, 31.475471>,  <40.936928, 37.422886, 31.392567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547215, 37.458233, 31.475471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162812, -0.359782, 0.918721,
		0.155753, 0.928842, 0.336144,
		-0.974286, 0.088365, 0.207263,
		40.254929, 37.484741, 31.537651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034107, 37.776512, 31.987179>,  <40.936928, 37.422886, 31.392567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034107, 37.776512, 31.987179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.660854, 37.632717, 31.989601>,  <40.436905, 37.546440, 31.991055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.660854, 37.632717, 31.989601>,  <41.034107, 37.776512, 31.987179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660854, 37.632717, 31.989601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140347, -0.348687, 0.926672,
		-0.331017, 0.865555, 0.375823,
		-0.933130, -0.359489, 0.006056,
		40.380917, 37.524872, 31.991419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812675, 37.959435, 32.603970>,  <41.034107, 37.776512, 31.987179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812675, 37.959435, 32.603970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576370, 37.658554, 32.487228>,  <40.434586, 37.478024, 32.417183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576370, 37.658554, 32.487228>,  <40.812675, 37.959435, 32.603970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576370, 37.658554, 32.487228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031534, -0.339925, 0.939924,
		-0.806225, 0.564479, 0.177097,
		-0.590767, -0.752206, -0.291857,
		40.399139, 37.432892, 32.399670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268051, 38.036816, 33.033249>,  <40.812675, 37.959435, 32.603970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268051, 38.036816, 33.033249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233665, 37.661510, 32.899220>,  <40.213032, 37.436329, 32.818802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.233665, 37.661510, 32.899220>,  <40.268051, 38.036816, 33.033249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233665, 37.661510, 32.899220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167568, -0.317907, 0.933197,
		-0.982105, 0.136370, -0.129893,
		-0.085966, -0.938263, -0.335069,
		40.207874, 37.380032, 32.798698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712219, 37.800529, 33.432640>,  <40.268051, 38.036816, 33.033249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712219, 37.800529, 33.432640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.869747, 37.464329, 33.283794>,  <39.964264, 37.262608, 33.194489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.869747, 37.464329, 33.283794>,  <39.712219, 37.800529, 33.432640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869747, 37.464329, 33.283794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249003, -0.487242, 0.837014,
		-0.884820, -0.236972, -0.401170,
		0.393816, -0.840500, -0.372115,
		39.987892, 37.212177, 33.172161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263027, 37.250977, 33.555805>,  <39.712219, 37.800529, 33.432640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263027, 37.250977, 33.555805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.586811, 37.024181, 33.494736>,  <39.781082, 36.888103, 33.458096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.586811, 37.024181, 33.494736>,  <39.263027, 37.250977, 33.555805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586811, 37.024181, 33.494736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234194, -0.550178, 0.801534,
		-0.538435, -0.613066, -0.578133,
		0.809469, -0.566969, -0.152659,
		39.829647, 36.854088, 33.448933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944199, 36.518646, 33.549526>,  <39.263027, 37.250977, 33.555805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944199, 36.518646, 33.549526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333355, 36.505123, 33.641041>,  <39.566849, 36.497009, 33.695950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333355, 36.505123, 33.641041>,  <38.944199, 36.518646, 33.549526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333355, 36.505123, 33.641041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201795, -0.607385, 0.768350,
		0.112991, -0.793688, -0.597739,
		0.972888, -0.033804, 0.228791,
		39.625221, 36.494984, 33.709679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159386, 35.850021, 33.573925>,  <38.944199, 36.518646, 33.549526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159386, 35.850021, 33.573925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.426327, 36.041695, 33.801964>,  <39.586494, 36.156700, 33.938789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.426327, 36.041695, 33.801964>,  <39.159386, 35.850021, 33.573925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426327, 36.041695, 33.801964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158094, -0.656907, 0.737211,
		0.727764, -0.582112, -0.362636,
		0.667357, 0.479185, 0.570102,
		39.626534, 36.185452, 33.972996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464966, 35.290108, 33.900993>,  <39.159386, 35.850021, 33.573925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464966, 35.290108, 33.900993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.611149, 35.577530, 34.137676>,  <39.698860, 35.749981, 34.279686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.611149, 35.577530, 34.137676>,  <39.464966, 35.290108, 33.900993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611149, 35.577530, 34.137676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127328, -0.591116, 0.796473,
		0.922078, -0.366420, -0.124537,
		0.365460, 0.718553, 0.591711,
		39.720787, 35.793095, 34.315189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039410, 35.041714, 34.370022>,  <39.464966, 35.290108, 33.900993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039410, 35.041714, 34.370022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.905247, 35.376518, 34.542953>,  <39.824749, 35.577400, 34.646713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.905247, 35.376518, 34.542953>,  <40.039410, 35.041714, 34.370022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905247, 35.376518, 34.542953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050398, -0.474202, 0.878973,
		0.940726, 0.273021, 0.201233,
		-0.335403, 0.837014, 0.432334,
		39.804626, 35.627621, 34.672653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431389, 35.093842, 34.889584>,  <40.039410, 35.041714, 34.370022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431389, 35.093842, 34.889584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.125900, 35.330360, 34.993195>,  <39.942608, 35.472271, 35.055363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.125900, 35.330360, 34.993195>,  <40.431389, 35.093842, 34.889584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125900, 35.330360, 34.993195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144477, -0.234517, 0.961316,
		0.629168, 0.771604, 0.093678,
		-0.763724, 0.591295, 0.259029,
		39.896782, 35.507748, 35.070904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611626, 35.609085, 35.395454>,  <40.431389, 35.093842, 34.889584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611626, 35.609085, 35.395454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218616, 35.550537, 35.441452>,  <39.982811, 35.515408, 35.469051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.218616, 35.550537, 35.441452>,  <40.611626, 35.609085, 35.395454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218616, 35.550537, 35.441452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128261, -0.084644, 0.988122,
		-0.134902, 0.985601, 0.101938,
		-0.982523, -0.146374, 0.114996,
		39.923859, 35.506626, 35.475952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416058, 35.912277, 35.959961>,  <40.611626, 35.609085, 35.395454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416058, 35.912277, 35.959961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.130550, 35.637119, 35.907291>,  <39.959248, 35.472023, 35.875690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.130550, 35.637119, 35.907291>,  <40.416058, 35.912277, 35.959961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130550, 35.637119, 35.907291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040192, -0.227926, 0.972849,
		-0.699228, 0.689096, 0.190334,
		-0.713768, -0.687893, -0.131676,
		39.916420, 35.430752, 35.867790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711441, 36.059471, 36.347382>,  <40.416058, 35.912277, 35.959961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711441, 36.059471, 36.347382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.826393, 35.680672, 36.289967>,  <39.895363, 35.453392, 36.255520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.826393, 35.680672, 36.289967>,  <39.711441, 36.059471, 36.347382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826393, 35.680672, 36.289967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187090, -0.091468, 0.978075,
		-0.939367, -0.307931, 0.150889,
		0.287378, -0.947001, -0.143533,
		39.912605, 35.396572, 36.246906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720909, 36.634651, 36.909164>,  <39.711441, 36.059471, 36.347382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720909, 36.634651, 36.909164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.697380, 36.969376, 37.126892>,  <39.683262, 37.170212, 37.257530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.697380, 36.969376, 37.126892>,  <39.720909, 36.634651, 36.909164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697380, 36.969376, 37.126892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046792, 0.542352, -0.838847,
		-0.997171, -0.074813, 0.007254,
		-0.058822, 0.836814, 0.544319,
		39.679733, 37.220421, 37.290188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350311, 37.065098, 36.393272>,  <39.720909, 36.634651, 36.909164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350311, 37.065098, 36.393272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.494633, 37.331406, 36.654522>,  <39.581226, 37.491192, 36.811272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.494633, 37.331406, 36.654522>,  <39.350311, 37.065098, 36.393272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494633, 37.331406, 36.654522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015628, 0.704510, -0.709522,
		-0.932512, 0.245789, 0.264593,
		0.360801, 0.665773, 0.653123,
		39.602875, 37.531136, 36.850460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862438, 37.569630, 36.331345>,  <39.350311, 37.065098, 36.393272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862438, 37.569630, 36.331345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202377, 37.723267, 36.475693>,  <39.406342, 37.815449, 36.562302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202377, 37.723267, 36.475693>,  <38.862438, 37.569630, 36.331345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202377, 37.723267, 36.475693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024711, 0.713023, -0.700705,
		-0.526445, 0.586576, 0.615454,
		0.849850, 0.384091, 0.360872,
		39.457333, 37.838493, 36.583954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824657, 38.237106, 36.157204>,  <38.862438, 37.569630, 36.331345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824657, 38.237106, 36.157204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212330, 38.223030, 36.254738>,  <39.444931, 38.214584, 36.313259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212330, 38.223030, 36.254738>,  <38.824657, 38.237106, 36.157204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212330, 38.223030, 36.254738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194334, 0.717512, -0.668887,
		-0.151413, 0.695656, 0.702237,
		0.969179, -0.035190, 0.243831,
		39.503082, 38.212475, 36.327888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943691, 38.942387, 36.446793>,  <38.824657, 38.237106, 36.157204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943691, 38.942387, 36.446793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.288963, 38.786896, 36.317913>,  <39.496124, 38.693600, 36.240585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.288963, 38.786896, 36.317913>,  <38.943691, 38.942387, 36.446793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288963, 38.786896, 36.317913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133726, 0.791370, -0.596532,
		0.486868, 0.471828, 0.735077,
		0.863178, -0.388731, -0.322197,
		39.547916, 38.670277, 36.221252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351021, 39.463581, 36.364620>,  <38.943691, 38.942387, 36.446793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351021, 39.463581, 36.364620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.558174, 39.201385, 36.144756>,  <39.682468, 39.044067, 36.012836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.558174, 39.201385, 36.144756>,  <39.351021, 39.463581, 36.364620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558174, 39.201385, 36.144756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243399, 0.728892, -0.639901,
		0.820092, 0.197609, 0.537028,
		0.517886, -0.655490, -0.549661,
		39.713539, 39.004738, 35.979858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986187, 39.866440, 36.025604>,  <39.351021, 39.463581, 36.364620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986187, 39.866440, 36.025604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.939892, 39.532619, 35.810146>,  <39.912113, 39.332329, 35.680874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.939892, 39.532619, 35.810146>,  <39.986187, 39.866440, 36.025604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939892, 39.532619, 35.810146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176084, 0.516460, -0.838012,
		0.977548, -0.191835, 0.087177,
		-0.115737, -0.834547, -0.538643,
		39.905170, 39.282257, 35.648552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657734, 39.792030, 35.645149>,  <39.986187, 39.866440, 36.025604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657734, 39.792030, 35.645149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.369152, 39.598820, 35.446678>,  <40.196003, 39.482895, 35.327595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.369152, 39.598820, 35.446678>,  <40.657734, 39.792030, 35.645149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369152, 39.598820, 35.446678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086767, 0.647836, -0.756822,
		0.687008, -0.589062, -0.425471,
		-0.721451, -0.483026, -0.496180,
		40.152718, 39.453911, 35.297825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736977, 39.916344, 34.877823>,  <40.657734, 39.792030, 35.645149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736977, 39.916344, 34.877823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366253, 39.766579, 34.866253>,  <40.143818, 39.676720, 34.859310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366253, 39.766579, 34.866253>,  <40.736977, 39.916344, 34.877823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366253, 39.766579, 34.866253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179785, 0.510016, -0.841166,
		0.329689, -0.774405, -0.540003,
		-0.926813, -0.374407, -0.028920,
		40.088207, 39.654255, 34.857578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680710, 39.659374, 34.244408>,  <40.736977, 39.916344, 34.877823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680710, 39.659374, 34.244408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307320, 39.723747, 34.372612>,  <40.083286, 39.762371, 34.449535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307320, 39.723747, 34.372612>,  <40.680710, 39.659374, 34.244408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307320, 39.723747, 34.372612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245092, 0.366192, -0.897682,
		-0.261836, -0.916517, -0.302386,
		-0.933473, 0.160933, 0.320514,
		40.027279, 39.772026, 34.468765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316467, 39.489166, 33.703957>,  <40.680710, 39.659374, 34.244408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316467, 39.489166, 33.703957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055683, 39.698235, 33.923687>,  <39.899212, 39.823677, 34.055527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055683, 39.698235, 33.923687>,  <40.316467, 39.489166, 33.703957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055683, 39.698235, 33.923687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376453, 0.405759, -0.832852,
		-0.658204, -0.749783, -0.067777,
		-0.651959, 0.522672, 0.549330,
		39.860096, 39.855038, 34.088486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677502, 39.302731, 33.451618>,  <40.316467, 39.489166, 33.703957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677502, 39.302731, 33.451618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.605076, 39.638409, 33.656742>,  <39.561619, 39.839813, 33.779816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.605076, 39.638409, 33.656742>,  <39.677502, 39.302731, 33.451618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605076, 39.638409, 33.656742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451297, 0.392390, -0.801474,
		-0.873811, -0.376548, 0.307677,
		-0.181064, 0.839191, 0.512810,
		39.550758, 39.890167, 33.810585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964100, 39.499828, 33.345203>,  <39.677502, 39.302731, 33.451618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964100, 39.499828, 33.345203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.181351, 39.823856, 33.433567>,  <39.311699, 40.018272, 33.486584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.181351, 39.823856, 33.433567>,  <38.964100, 39.499828, 33.345203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181351, 39.823856, 33.433567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278566, 0.422036, -0.862720,
		-0.792097, 0.407026, 0.454876,
		0.543124, 0.810071, 0.220910,
		39.344288, 40.066879, 33.499840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523094, 39.933624, 33.032749>,  <38.964100, 39.499828, 33.345203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523094, 39.933624, 33.032749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888638, 40.085938, 33.089134>,  <39.107964, 40.177326, 33.122963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888638, 40.085938, 33.089134>,  <38.523094, 39.933624, 33.032749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888638, 40.085938, 33.089134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084372, 0.517667, -0.851412,
		-0.397173, 0.766176, 0.505201,
		0.913857, 0.380782, 0.140959,
		39.162796, 40.200172, 33.131420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009045, 40.570801, 33.169277>,  <38.523094, 39.933624, 33.032749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009045, 40.570801, 33.169277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634808, 40.689949, 33.093441>,  <37.410267, 40.761440, 33.047939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634808, 40.689949, 33.093441>,  <38.009045, 40.570801, 33.169277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634808, 40.689949, 33.093441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351984, -0.744307, 0.567551,
		0.027943, 0.597728, 0.801212,
		-0.935589, 0.297873, -0.189592,
		37.354130, 40.779312, 33.036564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723881, 40.621479, 33.863613>,  <38.009045, 40.570801, 33.169277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723881, 40.621479, 33.863613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.428761, 40.589329, 33.595524>,  <37.251690, 40.570038, 33.434669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.428761, 40.589329, 33.595524>,  <37.723881, 40.621479, 33.863613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428761, 40.589329, 33.595524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400835, -0.746713, 0.530803,
		-0.543126, 0.660272, 0.518705,
		-0.737798, -0.080378, -0.670219,
		37.207420, 40.565216, 33.394459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135719, 40.658966, 34.214298>,  <37.723881, 40.621479, 33.863613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135719, 40.658966, 34.214298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.036598, 40.463394, 33.879742>,  <36.977127, 40.346050, 33.679008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.036598, 40.463394, 33.879742>,  <37.135719, 40.658966, 34.214298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036598, 40.463394, 33.879742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473386, -0.692129, 0.544852,
		-0.845282, 0.530948, -0.059944,
		-0.247799, -0.488930, -0.836387,
		36.962257, 40.316715, 33.628826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514931, 40.377670, 34.432556>,  <37.135719, 40.658966, 34.214298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514931, 40.377670, 34.432556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.609657, 40.153606, 34.115032>,  <36.666492, 40.019169, 33.924519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.609657, 40.153606, 34.115032>,  <36.514931, 40.377670, 34.432556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609657, 40.153606, 34.115032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417695, -0.796393, 0.437367,
		-0.877182, 0.227996, -0.422576,
		0.236818, -0.560158, -0.793814,
		36.680702, 39.985558, 33.876888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002537, 39.866264, 34.368603>,  <36.514931, 40.377670, 34.432556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002537, 39.866264, 34.368603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.282848, 39.690933, 34.143471>,  <36.451035, 39.585735, 34.008392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.282848, 39.690933, 34.143471>,  <36.002537, 39.866264, 34.368603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282848, 39.690933, 34.143471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306400, -0.897427, 0.317402,
		-0.644227, -0.049977, -0.763200,
		0.700779, -0.438324, -0.562834,
		36.493080, 39.559437, 33.974621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683807, 39.245350, 34.110474>,  <36.002537, 39.866264, 34.368603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683807, 39.245350, 34.110474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.079281, 39.189827, 34.087723>,  <36.316566, 39.156513, 34.074074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.079281, 39.189827, 34.087723>,  <35.683807, 39.245350, 34.110474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079281, 39.189827, 34.087723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096983, -0.880725, 0.463593,
		-0.114443, -0.452831, -0.884221,
		0.988685, -0.138809, -0.056876,
		36.375885, 39.148186, 34.070660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743103, 38.555889, 33.869755>,  <35.683807, 39.245350, 34.110474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743103, 38.555889, 33.869755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.098938, 38.634598, 34.034637>,  <36.312439, 38.681824, 34.133568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.098938, 38.634598, 34.034637>,  <35.743103, 38.555889, 33.869755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098938, 38.634598, 34.034637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013072, -0.891116, 0.453587,
		0.456577, -0.408894, -0.790154,
		0.889588, 0.196768, 0.412209,
		36.365814, 38.693626, 34.158298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180809, 37.929306, 33.735538>,  <35.743103, 38.555889, 33.869755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180809, 37.929306, 33.735538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.347012, 38.145107, 34.028469>,  <36.446732, 38.274586, 34.204227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.347012, 38.145107, 34.028469>,  <36.180809, 37.929306, 33.735538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347012, 38.145107, 34.028469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042620, -0.815775, 0.576797,
		0.908593, -0.208449, -0.361950,
		0.415503, 0.539500, 0.732323,
		36.471661, 38.306957, 34.248165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711960, 37.422928, 34.043777>,  <36.180809, 37.929306, 33.735538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711960, 37.422928, 34.043777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.648895, 37.710545, 34.314518>,  <36.611057, 37.883114, 34.476963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.648895, 37.710545, 34.314518>,  <36.711960, 37.422928, 34.043777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648895, 37.710545, 34.314518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220979, -0.642352, 0.733862,
		0.962451, 0.265269, -0.057621,
		-0.157658, 0.719039, 0.676851,
		36.601597, 37.926258, 34.517574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278454, 37.390717, 34.425056>,  <36.711960, 37.422928, 34.043777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278454, 37.390717, 34.425056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.016521, 37.565994, 34.671368>,  <36.859364, 37.671162, 34.819153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.016521, 37.565994, 34.671368>,  <37.278454, 37.390717, 34.425056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016521, 37.565994, 34.671368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194962, -0.689248, 0.697802,
		0.730198, 0.576994, 0.365908,
		-0.654829, 0.438195, 0.615779,
		36.820072, 37.697453, 34.856102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605015, 37.535004, 35.138199>,  <37.278454, 37.390717, 34.425056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605015, 37.535004, 35.138199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.217098, 37.563141, 35.231621>,  <36.984348, 37.580021, 35.287674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.217098, 37.563141, 35.231621>,  <37.605015, 37.535004, 35.138199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217098, 37.563141, 35.231621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140703, -0.620835, 0.771211,
		0.199248, 0.780780, 0.592186,
		-0.969795, 0.070340, 0.233558,
		36.926159, 37.584244, 35.301689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592625, 37.643013, 35.867279>,  <37.605015, 37.535004, 35.138199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592625, 37.643013, 35.867279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.248722, 37.477852, 35.747059>,  <37.042381, 37.378757, 35.674927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.248722, 37.477852, 35.747059>,  <37.592625, 37.643013, 35.867279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248722, 37.477852, 35.747059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057709, -0.663281, 0.746142,
		-0.507429, 0.624158, 0.594090,
		-0.859759, -0.412899, -0.300549,
		36.990795, 37.353981, 35.656895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.957779, 44.220940, 30.880997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724716, 43.964687, 30.680956>,  <37.584881, 43.810936, 30.560932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724716, 43.964687, 30.680956>,  <37.957779, 44.220940, 30.880997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724716, 43.964687, 30.680956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114557, -0.544463, 0.830925,
		-0.804606, 0.541432, 0.243845,
		-0.582655, -0.640633, -0.500103,
		37.549919, 43.772499, 30.530926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449322, 44.005730, 31.371084>,  <37.957779, 44.220940, 30.880997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449322, 44.005730, 31.371084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422611, 43.725990, 31.086422>,  <37.406586, 43.558147, 30.915625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422611, 43.725990, 31.086422>,  <37.449322, 44.005730, 31.371084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422611, 43.725990, 31.086422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245106, -0.679893, 0.691136,
		-0.967194, 0.220583, -0.126013,
		-0.066777, -0.699349, -0.711654,
		37.402576, 43.516186, 30.872925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931091, 43.685570, 31.678507>,  <37.449322, 44.005730, 31.371084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931091, 43.685570, 31.678507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073887, 43.419018, 31.416670>,  <37.159565, 43.259087, 31.259567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073887, 43.419018, 31.416670>,  <36.931091, 43.685570, 31.678507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073887, 43.419018, 31.416670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042311, -0.711583, 0.701327,
		-0.933151, -0.222669, -0.282221,
		0.356987, -0.666385, -0.654593,
		37.180984, 43.219101, 31.220291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525139, 43.017120, 31.878572>,  <36.931091, 43.685570, 31.678507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525139, 43.017120, 31.878572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822258, 42.884720, 31.645786>,  <37.000530, 42.805279, 31.506115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822258, 42.884720, 31.645786>,  <36.525139, 43.017120, 31.878572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822258, 42.884720, 31.645786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092731, -0.809993, 0.579061,
		-0.663058, -0.484094, -0.570970,
		0.742802, -0.331005, -0.581963,
		37.045097, 42.785419, 31.471197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384113, 42.303062, 31.788576>,  <36.525139, 43.017120, 31.878572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384113, 42.303062, 31.788576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769497, 42.333469, 31.685833>,  <37.000725, 42.351715, 31.624187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769497, 42.333469, 31.685833>,  <36.384113, 42.303062, 31.788576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769497, 42.333469, 31.685833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196238, -0.852984, 0.483642,
		-0.182329, -0.516372, -0.836729,
		0.963456, 0.076016, -0.256855,
		37.058533, 42.356274, 31.608776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497406, 41.709923, 31.572016>,  <36.384113, 42.303062, 31.788576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497406, 41.709923, 31.572016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852440, 41.862309, 31.675591>,  <37.065460, 41.953739, 31.737736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852440, 41.862309, 31.675591>,  <36.497406, 41.709923, 31.572016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852440, 41.862309, 31.675591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148675, -0.768978, 0.621746,
		0.435983, -0.513357, -0.739177,
		0.887589, 0.380968, 0.258938,
		37.118717, 41.976601, 31.753271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810108, 41.110229, 31.629797>,  <36.497406, 41.709923, 31.572016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810108, 41.110229, 31.629797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028439, 41.382038, 31.825886>,  <37.159435, 41.545124, 31.943539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028439, 41.382038, 31.825886>,  <36.810108, 41.110229, 31.629797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028439, 41.382038, 31.825886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256194, -0.692391, 0.674507,
		0.797771, -0.242571, -0.552015,
		0.545826, 0.679525, 0.490224,
		37.192184, 41.585896, 31.972954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345058, 40.713081, 31.791889>,  <36.810108, 41.110229, 31.629797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345058, 40.713081, 31.791889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314281, 41.006649, 32.061836>,  <37.295815, 41.182789, 32.223804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314281, 41.006649, 32.061836>,  <37.345058, 40.713081, 31.791889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314281, 41.006649, 32.061836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052008, -0.672997, 0.737815,
		0.995678, 0.091871, 0.013616,
		-0.076947, 0.733918, 0.674866,
		37.291199, 41.226826, 32.264297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877888, 40.510948, 32.417755>,  <37.345058, 40.713081, 31.791889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877888, 40.510948, 32.417755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592014, 40.766026, 32.532703>,  <37.420490, 40.919071, 32.601673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592014, 40.766026, 32.532703>,  <37.877888, 40.510948, 32.417755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592014, 40.766026, 32.532703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349289, -0.681336, 0.643256,
		0.605994, 0.359347, 0.709677,
		-0.714681, 0.637691, 0.287370,
		37.377609, 40.957333, 32.618916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509575, 40.667297, 32.659042>,  <37.877888, 40.510948, 32.417755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509575, 40.667297, 32.659042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898861, 40.619457, 32.737583>,  <39.132431, 40.590752, 32.784706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898861, 40.619457, 32.737583>,  <38.509575, 40.667297, 32.659042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898861, 40.619457, 32.737583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225734, 0.659109, -0.717370,
		-0.043620, 0.742476, 0.668450,
		0.973212, -0.119600, 0.196353,
		39.190826, 40.583576, 32.796490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765354, 41.335533, 32.877056>,  <38.509575, 40.667297, 32.659042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765354, 41.335533, 32.877056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044781, 41.102745, 32.710529>,  <39.212437, 40.963074, 32.610611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044781, 41.102745, 32.710529>,  <38.765354, 41.335533, 32.877056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044781, 41.102745, 32.710529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063042, 0.629613, -0.774347,
		0.712764, 0.514686, 0.476514,
		0.698565, -0.581967, -0.416319,
		39.254349, 40.928154, 32.585632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372070, 41.797607, 32.665527>,  <38.765354, 41.335533, 32.877056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372070, 41.797607, 32.665527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410572, 41.460110, 32.454311>,  <39.433674, 41.257610, 32.327583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410572, 41.460110, 32.454311>,  <39.372070, 41.797607, 32.665527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410572, 41.460110, 32.454311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048059, 0.533821, -0.844231,
		0.994196, 0.055880, 0.091930,
		0.096250, -0.843749, -0.528037,
		39.439445, 41.206985, 32.295898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915546, 41.924809, 32.138691>,  <39.372070, 41.797607, 32.665527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915546, 41.924809, 32.138691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731640, 41.600258, 31.994310>,  <39.621296, 41.405529, 31.907682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731640, 41.600258, 31.994310>,  <39.915546, 41.924809, 32.138691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731640, 41.600258, 31.994310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111891, 0.350289, -0.929934,
		0.880962, -0.467941, -0.070266,
		-0.459768, -0.811374, -0.360950,
		39.593708, 41.356846, 31.886024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418900, 41.607002, 31.728798>,  <39.915546, 41.924809, 32.138691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418900, 41.607002, 31.728798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060551, 41.490276, 31.594774>,  <39.845543, 41.420242, 31.514360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060551, 41.490276, 31.594774>,  <40.418900, 41.607002, 31.728798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060551, 41.490276, 31.594774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289304, 0.189235, -0.938346,
		0.337229, -0.937568, -0.085106,
		-0.895868, -0.291816, -0.335058,
		39.791790, 41.402733, 31.494257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541019, 41.148998, 31.042358>,  <40.418900, 41.607002, 31.728798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541019, 41.148998, 31.042358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151920, 41.235786, 31.009678>,  <39.918461, 41.287861, 30.990068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151920, 41.235786, 31.009678>,  <40.541019, 41.148998, 31.042358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151920, 41.235786, 31.009678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088063, 0.019790, -0.995918,
		-0.214472, -0.975977, -0.038358,
		-0.972752, 0.216975, -0.081703,
		39.860096, 41.300877, 30.985167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243965, 40.638500, 30.618626>,  <40.541019, 41.148998, 31.042358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243965, 40.638500, 30.618626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013317, 40.964684, 30.598465>,  <39.874928, 41.160393, 30.586369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013317, 40.964684, 30.598465>,  <40.243965, 40.638500, 30.618626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013317, 40.964684, 30.598465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237193, 0.108052, -0.965435,
		-0.781825, -0.568642, -0.255726,
		-0.576618, 0.815457, -0.050400,
		39.840332, 41.209320, 30.583345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922325, 40.593361, 29.976910>,  <40.243965, 40.638500, 30.618626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922325, 40.593361, 29.976910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876640, 40.977737, 30.077742>,  <39.849228, 41.208363, 30.138241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876640, 40.977737, 30.077742>,  <39.922325, 40.593361, 29.976910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876640, 40.977737, 30.077742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282740, 0.274688, -0.919024,
		-0.952373, -0.033693, -0.303070,
		-0.114214, 0.960943, 0.252079,
		39.842377, 41.266022, 30.153366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644894, 40.987228, 29.354673>,  <39.922325, 40.593361, 29.976910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644894, 40.987228, 29.354673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770050, 41.290157, 29.583952>,  <39.845146, 41.471916, 29.721519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770050, 41.290157, 29.583952>,  <39.644894, 40.987228, 29.354673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770050, 41.290157, 29.583952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393075, 0.446140, -0.804022,
		-0.864633, 0.476883, -0.158091,
		0.312893, 0.757325, 0.573198,
		39.863918, 41.517353, 29.755911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290966, 41.548508, 29.110819>,  <39.644894, 40.987228, 29.354673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290966, 41.548508, 29.110819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636486, 41.637039, 29.291864>,  <39.843800, 41.690159, 29.400492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636486, 41.637039, 29.291864>,  <39.290966, 41.548508, 29.110819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636486, 41.637039, 29.291864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278759, 0.538371, -0.795267,
		-0.419687, 0.813124, 0.403350,
		0.863803, 0.221326, 0.452613,
		39.895626, 41.703438, 29.427649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295345, 42.210613, 29.130119>,  <39.290966, 41.548508, 29.110819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295345, 42.210613, 29.130119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677952, 42.110767, 29.190477>,  <39.907516, 42.050858, 29.226692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677952, 42.110767, 29.190477>,  <39.295345, 42.210613, 29.130119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677952, 42.110767, 29.190477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272907, 0.583284, -0.765050,
		0.102955, 0.772963, 0.626042,
		0.956516, -0.249617, 0.150894,
		39.964905, 42.035881, 29.235746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710484, 42.914265, 29.060057>,  <39.295345, 42.210613, 29.130119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710484, 42.914265, 29.060057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971191, 42.615181, 29.009262>,  <40.127617, 42.435730, 28.978785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971191, 42.615181, 29.009262>,  <39.710484, 42.914265, 29.060057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971191, 42.615181, 29.009262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367457, 0.457804, -0.809562,
		0.663451, 0.480988, 0.573134,
		0.651773, -0.747707, -0.126989,
		40.166725, 42.390869, 28.971165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383106, 43.205650, 29.152422>,  <39.710484, 42.914265, 29.060057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383106, 43.205650, 29.152422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413368, 42.883175, 28.917704>,  <40.431526, 42.689690, 28.776873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413368, 42.883175, 28.917704>,  <40.383106, 43.205650, 29.152422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413368, 42.883175, 28.917704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435374, 0.556132, -0.707931,
		0.897065, -0.201917, 0.393070,
		0.075655, -0.806193, -0.586796,
		40.436066, 42.641315, 28.741665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106682, 43.199009, 28.908468>,  <40.383106, 43.205650, 29.152422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106682, 43.199009, 28.908468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904560, 42.961720, 28.657789>,  <40.783287, 42.819347, 28.507381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904560, 42.961720, 28.657789>,  <41.106682, 43.199009, 28.908468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904560, 42.961720, 28.657789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458379, 0.430792, -0.777371,
		0.731130, -0.680078, 0.054237,
		-0.505309, -0.593221, -0.626699,
		40.752968, 42.783752, 28.469780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.487839, 38.850292, 25.965994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.816803, 39.074982, 26.002014>,  <35.014183, 39.209793, 26.023626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.816803, 39.074982, 26.002014>,  <34.487839, 38.850292, 25.965994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816803, 39.074982, 26.002014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243676, -0.490860, 0.836468,
		0.514062, -0.665979, -0.540567,
		0.822412, 0.561719, 0.090049,
		35.063526, 39.243496, 26.029030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018143, 38.400711, 26.166286>,  <34.487839, 38.850292, 25.965994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018143, 38.400711, 26.166286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.157726, 38.757439, 26.281450>,  <35.241474, 38.971474, 26.350550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.157726, 38.757439, 26.281450>,  <35.018143, 38.400711, 26.166286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157726, 38.757439, 26.281450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260266, -0.387364, 0.884426,
		0.900272, -0.233693, -0.367284,
		0.348957, 0.891816, 0.287911,
		35.262413, 39.024982, 26.367823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695808, 38.292259, 26.332634>,  <35.018143, 38.400711, 26.166286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695808, 38.292259, 26.332634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559055, 38.615318, 26.524807>,  <35.477005, 38.809155, 26.640110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559055, 38.615318, 26.524807>,  <35.695808, 38.292259, 26.332634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559055, 38.615318, 26.524807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155652, -0.455509, 0.876518,
		0.926763, 0.374446, 0.030018,
		-0.341882, 0.807652, 0.480432,
		35.456490, 38.857613, 26.668936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092598, 38.317444, 26.910875>,  <35.695808, 38.292259, 26.332634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092598, 38.317444, 26.910875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.777489, 38.547798, 26.998297>,  <35.588421, 38.686008, 27.050749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.777489, 38.547798, 26.998297>,  <36.092598, 38.317444, 26.910875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777489, 38.547798, 26.998297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042487, -0.404773, 0.913430,
		0.614493, 0.710293, 0.343338,
		-0.787777, 0.575884, 0.218552,
		35.541157, 38.720562, 27.063862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240105, 38.740292, 27.537794>,  <36.092598, 38.317444, 26.910875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240105, 38.740292, 27.537794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.840740, 38.725853, 27.520462>,  <35.601124, 38.717190, 27.510063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.840740, 38.725853, 27.520462>,  <36.240105, 38.740292, 27.537794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840740, 38.725853, 27.520462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031727, -0.275667, 0.960729,
		-0.046622, 0.960575, 0.274083,
		-0.998408, -0.036096, -0.043328,
		35.541218, 38.715023, 27.507463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992542, 39.074047, 28.249989>,  <36.240105, 38.740292, 27.537794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992542, 39.074047, 28.249989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.678528, 38.870365, 28.108887>,  <35.490120, 38.748158, 28.024225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.678528, 38.870365, 28.108887>,  <35.992542, 39.074047, 28.249989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678528, 38.870365, 28.108887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121257, -0.432126, 0.893624,
		-0.607470, 0.744298, 0.277489,
		-0.785033, -0.509203, -0.352755,
		35.443020, 38.717606, 28.003059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402107, 39.179382, 28.625198>,  <35.992542, 39.074047, 28.249989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402107, 39.179382, 28.625198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288517, 38.838963, 28.448530>,  <35.220364, 38.634712, 28.342529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288517, 38.838963, 28.448530>,  <35.402107, 39.179382, 28.625198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288517, 38.838963, 28.448530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270444, -0.370837, 0.888448,
		-0.919901, 0.371745, -0.124852,
		-0.283976, -0.851050, -0.441669,
		35.203323, 38.583649, 28.316029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683182, 39.064079, 28.764971>,  <35.402107, 39.179382, 28.625198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683182, 39.064079, 28.764971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.866295, 38.719624, 28.676538>,  <34.976162, 38.512951, 28.623480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.866295, 38.719624, 28.676538>,  <34.683182, 39.064079, 28.764971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866295, 38.719624, 28.676538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256915, -0.366191, 0.894370,
		-0.851133, -0.352630, -0.388876,
		0.457785, -0.861136, -0.221081,
		35.003632, 38.461281, 28.610214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401287, 38.601513, 29.145525>,  <34.683182, 39.064079, 28.764971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401287, 38.601513, 29.145525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.691582, 38.349003, 29.036125>,  <34.865757, 38.197495, 28.970486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.691582, 38.349003, 29.036125>,  <34.401287, 38.601513, 29.145525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691582, 38.349003, 29.036125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118390, -0.506205, 0.854248,
		-0.677715, -0.587576, -0.442106,
		0.725732, -0.631278, -0.273500,
		34.909302, 38.159618, 28.954075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149849, 37.903015, 29.306990>,  <34.401287, 38.601513, 29.145525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149849, 37.903015, 29.306990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.545372, 37.867470, 29.259045>,  <34.782684, 37.846142, 29.230278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.545372, 37.867470, 29.259045>,  <34.149849, 37.903015, 29.306990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545372, 37.867470, 29.259045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039199, -0.620386, 0.783317,
		-0.143971, -0.779246, -0.609957,
		0.988805, -0.088865, -0.119864,
		34.842014, 37.840809, 29.223085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282944, 37.180149, 29.348017>,  <34.149849, 37.903015, 29.306990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282944, 37.180149, 29.348017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.619751, 37.365864, 29.457880>,  <34.821835, 37.477291, 29.523798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.619751, 37.365864, 29.457880>,  <34.282944, 37.180149, 29.348017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619751, 37.365864, 29.457880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040982, -0.562735, 0.825621,
		0.537883, -0.683936, -0.492862,
		0.842023, 0.464286, 0.274657,
		34.872356, 37.505150, 29.540277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620239, 36.664059, 29.758478>,  <34.282944, 37.180149, 29.348017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620239, 36.664059, 29.758478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.821087, 36.999512, 29.842924>,  <34.941593, 37.200783, 29.893591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.821087, 36.999512, 29.842924>,  <34.620239, 36.664059, 29.758478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821087, 36.999512, 29.842924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423568, -0.451324, 0.785428,
		0.753969, -0.304955, -0.581836,
		0.502117, 0.838635, 0.211115,
		34.971722, 37.251102, 29.906260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381729, 36.457108, 29.711723>,  <34.620239, 36.664059, 29.758478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381729, 36.457108, 29.711723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.317669, 36.775242, 29.945576>,  <35.279232, 36.966122, 30.085888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.317669, 36.775242, 29.945576>,  <35.381729, 36.457108, 29.711723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317669, 36.775242, 29.945576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401758, -0.488480, 0.774583,
		0.901634, 0.358929, -0.241303,
		-0.160149, 0.795335, 0.584632,
		35.269623, 37.013844, 30.120966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013023, 36.444035, 30.148754>,  <35.381729, 36.457108, 29.711723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013023, 36.444035, 30.148754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.692581, 36.633133, 30.295586>,  <35.500317, 36.746593, 30.383684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.692581, 36.633133, 30.295586>,  <36.013023, 36.444035, 30.148754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692581, 36.633133, 30.295586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110492, -0.485949, 0.866975,
		0.588240, 0.735095, 0.337060,
		-0.801103, 0.472746, 0.367077,
		35.452251, 36.774956, 30.405708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644283, 36.878513, 29.971230>,  <36.013023, 36.444035, 30.148754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644283, 36.878513, 29.971230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004551, 36.712498, 29.919798>,  <37.220711, 36.612888, 29.888939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.004551, 36.712498, 29.919798>,  <36.644283, 36.878513, 29.971230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004551, 36.712498, 29.919798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054368, 0.401248, -0.914355,
		0.431082, 0.816544, 0.383958,
		0.900673, -0.415037, -0.128577,
		37.274754, 36.587986, 29.881226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081394, 37.435749, 29.661804>,  <36.644283, 36.878513, 29.971230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081394, 37.435749, 29.661804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269917, 37.093620, 29.575735>,  <37.383030, 36.888344, 29.524094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269917, 37.093620, 29.575735>,  <37.081394, 37.435749, 29.661804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269917, 37.093620, 29.575735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204873, 0.343463, -0.916548,
		0.857847, 0.387888, 0.337107,
		0.471302, -0.855322, -0.215171,
		37.411308, 36.837025, 29.511185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635452, 37.669861, 29.372540>,  <37.081394, 37.435749, 29.661804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635452, 37.669861, 29.372540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666752, 37.297096, 29.230883>,  <37.685532, 37.073437, 29.145889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666752, 37.297096, 29.230883>,  <37.635452, 37.669861, 29.372540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666752, 37.297096, 29.230883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207729, 0.362674, -0.908469,
		0.975052, -0.002480, 0.221963,
		0.078247, -0.931913, -0.354141,
		37.690228, 37.017521, 29.124640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255032, 37.705391, 28.884708>,  <37.635452, 37.669861, 29.372540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255032, 37.705391, 28.884708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009773, 37.397949, 28.811701>,  <37.862617, 37.213486, 28.767897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009773, 37.397949, 28.811701>,  <38.255032, 37.705391, 28.884708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009773, 37.397949, 28.811701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079676, 0.169696, -0.982270,
		0.785945, -0.616812, -0.042809,
		-0.613141, -0.768600, -0.182517,
		37.825832, 37.167370, 28.756947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597691, 37.388752, 28.420546>,  <38.255032, 37.705391, 28.884708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597691, 37.388752, 28.420546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.222584, 37.260113, 28.368130>,  <37.997520, 37.182930, 28.336679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.222584, 37.260113, 28.368130>,  <38.597691, 37.388752, 28.420546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222584, 37.260113, 28.368130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043454, 0.265711, -0.963073,
		0.344541, -0.908830, -0.235200,
		-0.937765, -0.321598, -0.131041,
		37.941254, 37.163635, 28.328817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582661, 36.916126, 27.779440>,  <38.597691, 37.388752, 28.420546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582661, 36.916126, 27.779440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205391, 37.035049, 27.838806>,  <37.979031, 37.106403, 27.874426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.205391, 37.035049, 27.838806>,  <38.582661, 36.916126, 27.779440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205391, 37.035049, 27.838806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125450, 0.095005, -0.987540,
		-0.307706, -0.950043, -0.052309,
		-0.943175, 0.297310, 0.148417,
		37.922440, 37.124241, 27.883331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242252, 36.578217, 27.314638>,  <38.582661, 36.916126, 27.779440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242252, 36.578217, 27.314638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.992035, 36.870995, 27.422670>,  <37.841904, 37.046661, 27.487490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.992035, 36.870995, 27.422670>,  <38.242252, 36.578217, 27.314638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992035, 36.870995, 27.422670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114510, 0.256291, -0.959793,
		-0.771738, -0.631322, -0.076507,
		-0.625546, 0.731948, 0.270082,
		37.804371, 37.090580, 27.503695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675362, 36.608555, 26.878668>,  <38.242252, 36.578217, 27.314638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675362, 36.608555, 26.878668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.701153, 36.984043, 27.014103>,  <37.716625, 37.209335, 27.095364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.701153, 36.984043, 27.014103>,  <37.675362, 36.608555, 26.878668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701153, 36.984043, 27.014103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022627, 0.340583, -0.939942,
		-0.997663, 0.052942, 0.043200,
		0.064476, 0.938723, 0.338589,
		37.720497, 37.265659, 27.115679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209106, 36.930958, 26.488426>,  <37.675362, 36.608555, 26.878668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209106, 36.930958, 26.488426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.412426, 37.231918, 26.656010>,  <37.534420, 37.412495, 26.756559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.412426, 37.231918, 26.656010>,  <37.209106, 36.930958, 26.488426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412426, 37.231918, 26.656010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088646, 0.529620, -0.843590,
		-0.856605, 0.391659, 0.335904,
		0.508301, 0.752400, 0.418956,
		37.564915, 37.457638, 26.781696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834698, 37.607498, 26.172579>,  <37.209106, 36.930958, 26.488426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834698, 37.607498, 26.172579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.170441, 37.755344, 26.332008>,  <37.371887, 37.844051, 26.427666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.170441, 37.755344, 26.332008>,  <36.834698, 37.607498, 26.172579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170441, 37.755344, 26.332008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166483, 0.523205, -0.835787,
		-0.517457, 0.767880, 0.377621,
		0.839358, 0.369616, 0.398575,
		37.422249, 37.866230, 26.451580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744263, 38.307850, 26.126451>,  <36.834698, 37.607498, 26.172579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744263, 38.307850, 26.126451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.138401, 38.245682, 26.154552>,  <37.374886, 38.208382, 26.171413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.138401, 38.245682, 26.154552>,  <36.744263, 38.307850, 26.126451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138401, 38.245682, 26.154552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153288, 0.626301, -0.764362,
		0.074799, 0.763931, 0.640948,
		0.985346, -0.155424, 0.070255,
		37.434006, 38.199055, 26.175629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116932, 39.051128, 26.251656>,  <36.744263, 38.307850, 26.126451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116932, 39.051128, 26.251656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368462, 38.788727, 26.084692>,  <37.519379, 38.631287, 25.984514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.368462, 38.788727, 26.084692>,  <37.116932, 39.051128, 26.251656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368462, 38.788727, 26.084692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350209, 0.718249, -0.601225,
		0.694212, 0.231886, 0.681394,
		0.628826, -0.656008, -0.417409,
		37.557110, 38.591923, 25.959469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669029, 39.463394, 26.176617>,  <37.116932, 39.051128, 26.251656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669029, 39.463394, 26.176617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734013, 39.146351, 25.941544>,  <37.773003, 38.956123, 25.800499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734013, 39.146351, 25.941544>,  <37.669029, 39.463394, 26.176617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734013, 39.146351, 25.941544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374118, 0.600605, -0.706618,
		0.913041, -0.105069, 0.394103,
		0.162457, -0.792612, -0.587685,
		37.782749, 38.908566, 25.765238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331287, 39.469166, 25.974003>,  <37.669029, 39.463394, 26.176617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331287, 39.469166, 25.974003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.111134, 39.279831, 25.698895>,  <37.979042, 39.166229, 25.533829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.111134, 39.279831, 25.698895>,  <38.331287, 39.469166, 25.974003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111134, 39.279831, 25.698895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236541, 0.701615, -0.672149,
		0.800703, -0.532627, -0.274195,
		-0.550384, -0.473334, -0.687773,
		37.946018, 39.137833, 25.492563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003902, 39.336308, 26.123901>,  <38.331287, 39.469166, 25.974003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003902, 39.336308, 26.123901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.398899, 39.369896, 26.177284>,  <39.635899, 39.390049, 26.209314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.398899, 39.369896, 26.177284>,  <39.003902, 39.336308, 26.123901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398899, 39.369896, 26.177284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060421, -0.580275, 0.812176,
		0.145638, -0.810080, -0.567943,
		0.987491, 0.083968, 0.133456,
		39.695145, 39.395088, 26.217321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435478, 38.618927, 26.163506>,  <39.003902, 39.336308, 26.123901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435478, 38.618927, 26.163506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.631775, 38.892464, 26.379478>,  <39.749554, 39.056587, 26.509062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.631775, 38.892464, 26.379478>,  <39.435478, 38.618927, 26.163506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631775, 38.892464, 26.379478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098671, -0.572080, 0.814241,
		0.865700, -0.452858, -0.213269,
		0.490743, 0.683845, 0.539933,
		39.778999, 39.097618, 26.541458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872810, 38.283627, 26.644070>,  <39.435478, 38.618927, 26.163506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872810, 38.283627, 26.644070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.883251, 38.650963, 26.802044>,  <39.889515, 38.871365, 26.896828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.883251, 38.650963, 26.802044>,  <39.872810, 38.283627, 26.644070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883251, 38.650963, 26.802044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145645, -0.394348, 0.907346,
		0.988993, 0.033834, -0.144045,
		0.026105, 0.918338, 0.394935,
		39.891083, 38.926464, 26.920525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476673, 38.235043, 27.130789>,  <39.872810, 38.283627, 26.644070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476673, 38.235043, 27.130789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220871, 38.523430, 27.237551>,  <40.067390, 38.696461, 27.301609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220871, 38.523430, 27.237551>,  <40.476673, 38.235043, 27.130789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220871, 38.523430, 27.237551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168184, -0.207570, 0.963654,
		0.750167, 0.661149, 0.011486,
		-0.639503, 0.720969, 0.266907,
		40.029018, 38.739719, 27.317623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772293, 38.529781, 27.638203>,  <40.476673, 38.235043, 27.130789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772293, 38.529781, 27.638203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.391159, 38.636940, 27.695246>,  <40.162479, 38.701237, 27.729471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.391159, 38.636940, 27.695246>,  <40.772293, 38.529781, 27.638203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391159, 38.636940, 27.695246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061861, -0.288588, 0.955453,
		0.297118, 0.919211, 0.258405,
		-0.952835, 0.267897, 0.142608,
		40.105309, 38.717308, 27.738028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762924, 39.042248, 28.276026>,  <40.772293, 38.529781, 27.638203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762924, 39.042248, 28.276026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.407349, 38.862049, 28.242933>,  <40.194004, 38.753929, 28.223078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.407349, 38.862049, 28.242933>,  <40.762924, 39.042248, 28.276026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407349, 38.862049, 28.242933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042179, -0.260368, 0.964588,
		-0.456083, 0.853969, 0.250452,
		-0.888937, -0.450496, -0.082729,
		40.140667, 38.726902, 28.218115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390888, 39.267517, 28.902967>,  <40.762924, 39.042248, 28.276026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390888, 39.267517, 28.902967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.174950, 38.961494, 28.762535>,  <40.045387, 38.777882, 28.678276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.174950, 38.961494, 28.762535>,  <40.390888, 39.267517, 28.902967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174950, 38.961494, 28.762535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182900, -0.300504, 0.936079,
		-0.821655, 0.569550, 0.022296,
		-0.539844, -0.765056, -0.351081,
		40.012997, 38.731979, 28.657211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752007, 39.325706, 29.216202>,  <40.390888, 39.267517, 28.902967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752007, 39.325706, 29.216202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.736790, 38.941204, 29.106995>,  <39.727657, 38.710503, 29.041471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.736790, 38.941204, 29.106995>,  <39.752007, 39.325706, 29.216202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736790, 38.941204, 29.106995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242207, -0.256197, 0.935788,
		-0.969478, 0.101729, -0.223076,
		-0.038045, -0.961257, -0.273017,
		39.725376, 38.652828, 29.025089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166363, 39.014393, 29.483568>,  <39.752007, 39.325706, 29.216202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166363, 39.014393, 29.483568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.406876, 38.697422, 29.442554>,  <39.551186, 38.507240, 29.417946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.406876, 38.697422, 29.442554>,  <39.166363, 39.014393, 29.483568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406876, 38.697422, 29.442554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130035, -0.223656, 0.965955,
		-0.788382, -0.567482, -0.237524,
		0.601286, -0.792428, -0.102534,
		39.587261, 38.459694, 29.411795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810070, 38.487629, 29.809111>,  <39.166363, 39.014393, 29.483568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810070, 38.487629, 29.809111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185932, 38.351978, 29.791014>,  <39.411449, 38.270588, 29.780155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185932, 38.351978, 29.791014>,  <38.810070, 38.487629, 29.809111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185932, 38.351978, 29.791014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120571, -0.451988, 0.883838,
		-0.320183, -0.825045, -0.465600,
		0.939651, -0.339128, -0.045242,
		39.467827, 38.250240, 29.777441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847649, 37.697548, 29.967249>,  <38.810070, 38.487629, 29.809111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847649, 37.697548, 29.967249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.203308, 37.861931, 30.047777>,  <39.416702, 37.960560, 30.096094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.203308, 37.861931, 30.047777>,  <38.847649, 37.697548, 29.967249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203308, 37.861931, 30.047777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021445, -0.402027, 0.915377,
		0.457120, -0.818222, -0.348648,
		0.889147, 0.410960, 0.201321,
		39.470051, 37.985218, 30.108173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169304, 37.201992, 30.312691>,  <38.847649, 37.697548, 29.967249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169304, 37.201992, 30.312691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416168, 37.510586, 30.374573>,  <39.564285, 37.695740, 30.411701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416168, 37.510586, 30.374573>,  <39.169304, 37.201992, 30.312691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416168, 37.510586, 30.374573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317412, -0.424011, 0.848212,
		0.719976, -0.474376, -0.506559,
		0.617158, 0.771480, 0.154705,
		39.601315, 37.742031, 30.420984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865753, 36.962002, 30.422043>,  <39.169304, 37.201992, 30.312691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865753, 36.962002, 30.422043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.866745, 37.317505, 30.605389>,  <39.867340, 37.530807, 30.715397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.866745, 37.317505, 30.605389>,  <39.865753, 36.962002, 30.422043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866745, 37.317505, 30.605389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221280, -0.447492, 0.866479,
		0.975207, 0.099279, -0.197774,
		0.002480, 0.888760, 0.458366,
		39.867489, 37.584133, 30.742899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495255, 36.989887, 30.822990>,  <39.865753, 36.962002, 30.422043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495255, 36.989887, 30.822990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.238506, 37.257702, 30.972515>,  <40.084457, 37.418388, 31.062229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.238506, 37.257702, 30.972515>,  <40.495255, 36.989887, 30.822990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238506, 37.257702, 30.972515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302769, -0.226593, 0.925736,
		0.704513, 0.707376, -0.057272,
		-0.641866, 0.669533, 0.373809,
		40.045948, 37.458561, 31.084658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.556072, 42.941875, 28.290436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.198311, 42.852966, 28.135193>,  <40.983654, 42.799622, 28.042048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.198311, 42.852966, 28.135193>,  <41.556072, 42.941875, 28.290436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198311, 42.852966, 28.135193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275068, 0.410868, -0.869209,
		0.352662, -0.884185, -0.306344,
		-0.894409, -0.222272, -0.388109,
		40.929989, 42.786285, 28.018761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716625, 42.728527, 27.530500>,  <41.556072, 42.941875, 28.290436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716625, 42.728527, 27.530500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.334324, 42.845158, 27.546093>,  <41.104942, 42.915134, 27.555449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.334324, 42.845158, 27.546093>,  <41.716625, 42.728527, 27.530500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334324, 42.845158, 27.546093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123663, 0.518472, -0.846105,
		-0.266914, -0.803847, -0.531588,
		-0.955753, 0.291576, 0.038981,
		41.047600, 42.932629, 27.557787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448856, 42.575104, 26.844143>,  <41.716625, 42.728527, 27.530500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448856, 42.575104, 26.844143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.180134, 42.828979, 26.996899>,  <41.018898, 42.981304, 27.088552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.180134, 42.828979, 26.996899>,  <41.448856, 42.575104, 26.844143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180134, 42.828979, 26.996899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027161, 0.536325, -0.843575,
		-0.740227, -0.556348, -0.377546,
		-0.671808, 0.634691, 0.381891,
		40.978592, 43.019386, 27.111465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982037, 42.849461, 26.312033>,  <41.448856, 42.575104, 26.844143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982037, 42.849461, 26.312033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.936272, 43.131550, 26.591911>,  <40.908813, 43.300804, 26.759838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.936272, 43.131550, 26.591911>,  <40.982037, 42.849461, 26.312033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936272, 43.131550, 26.591911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026710, 0.706249, -0.707460,
		-0.993074, -0.062255, -0.099641,
		-0.114414, 0.705221, 0.699694,
		40.901947, 43.343117, 26.801819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350899, 43.203659, 26.057199>,  <40.982037, 42.849461, 26.312033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350899, 43.203659, 26.057199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.522793, 43.438129, 26.331926>,  <40.625931, 43.578812, 26.496763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.522793, 43.438129, 26.331926>,  <40.350899, 43.203659, 26.057199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522793, 43.438129, 26.331926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069509, 0.736903, -0.672415,
		-0.900275, 0.336701, 0.275930,
		0.429737, 0.586179, 0.686819,
		40.651714, 43.613983, 26.537971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930241, 43.821575, 25.983580>,  <40.350899, 43.203659, 26.057199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930241, 43.821575, 25.983580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.267773, 43.935261, 26.165648>,  <40.470291, 44.003471, 26.274887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.267773, 43.935261, 26.165648>,  <39.930241, 43.821575, 25.983580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267773, 43.935261, 26.165648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146351, 0.694177, -0.704769,
		-0.516271, 0.661318, 0.544172,
		0.843828, 0.284211, 0.455168,
		40.520920, 44.020523, 26.302198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909714, 44.481236, 26.059044>,  <39.930241, 43.821575, 25.983580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909714, 44.481236, 26.059044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.306671, 44.433407, 26.070770>,  <40.544846, 44.404709, 26.077806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.306671, 44.433407, 26.070770>,  <39.909714, 44.481236, 26.059044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306671, 44.433407, 26.070770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113643, 0.798074, -0.591747,
		0.047362, 0.590576, 0.805591,
		0.992392, -0.119576, 0.029317,
		40.604389, 44.397533, 26.079565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255020, 45.259521, 26.066799>,  <39.909714, 44.481236, 26.059044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255020, 45.259521, 26.066799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.514858, 44.984924, 25.936106>,  <40.670761, 44.820168, 25.857689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.514858, 44.984924, 25.936106>,  <40.255020, 45.259521, 26.066799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514858, 44.984924, 25.936106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169539, 0.549734, -0.817954,
		0.741134, 0.475947, 0.473492,
		0.649598, -0.686489, -0.326735,
		40.709736, 44.778976, 25.838085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917492, 45.629440, 25.845545>,  <40.255020, 45.259521, 26.066799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917492, 45.629440, 25.845545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.905804, 45.280106, 25.651047>,  <40.898792, 45.070507, 25.534348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.905804, 45.280106, 25.651047>,  <40.917492, 45.629440, 25.845545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905804, 45.280106, 25.651047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137476, 0.478320, -0.867358,
		0.990074, -0.092193, 0.106085,
		-0.029222, -0.873333, -0.486247,
		40.897038, 45.018105, 25.505173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514423, 45.705833, 25.489038>,  <40.917492, 45.629440, 25.845545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514423, 45.705833, 25.489038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.302025, 45.415192, 25.314638>,  <41.174587, 45.240807, 25.209999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.302025, 45.415192, 25.314638>,  <41.514423, 45.705833, 25.489038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302025, 45.415192, 25.314638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097500, 0.458723, -0.883214,
		0.841746, -0.511493, -0.172737,
		-0.530997, -0.726600, -0.435999,
		41.142727, 45.197212, 25.183838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915562, 45.465225, 24.940565>,  <41.514423, 45.705833, 25.489038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915562, 45.465225, 24.940565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.553684, 45.336395, 24.828989>,  <41.336559, 45.259098, 24.762043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.553684, 45.336395, 24.828989>,  <41.915562, 45.465225, 24.940565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553684, 45.336395, 24.828989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170106, 0.327215, -0.929513,
		0.390646, -0.888368, -0.241241,
		-0.904688, -0.322074, -0.278942,
		41.282276, 45.239773, 24.745306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010391, 45.012741, 24.333824>,  <41.915562, 45.465225, 24.940565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010391, 45.012741, 24.333824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.639717, 45.163040, 24.330385>,  <41.417313, 45.253220, 24.328321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.639717, 45.163040, 24.330385>,  <42.010391, 45.012741, 24.333824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639717, 45.163040, 24.330385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169361, 0.397042, -0.902039,
		-0.335527, -0.837359, -0.431569,
		-0.926682, 0.375749, -0.008597,
		41.361713, 45.275764, 24.327806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640480, 44.768291, 23.729021>,  <42.010391, 45.012741, 24.333824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640480, 44.768291, 23.729021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.484768, 45.109100, 23.869026>,  <41.391338, 45.313587, 23.953030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.484768, 45.109100, 23.869026>,  <41.640480, 44.768291, 23.729021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484768, 45.109100, 23.869026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049331, 0.360160, -0.931585,
		-0.919796, -0.379918, -0.098173,
		-0.389284, 0.852026, 0.350015,
		41.367981, 45.364708, 23.974031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835838, 44.982189, 23.628286>,  <41.640480, 44.768291, 23.729021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835838, 44.982189, 23.628286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.038589, 45.326988, 23.630760>,  <41.160240, 45.533867, 23.632244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.038589, 45.326988, 23.630760>,  <40.835838, 44.982189, 23.628286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038589, 45.326988, 23.630760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123224, 0.079559, -0.989185,
		-0.853163, 0.500637, 0.146545,
		0.506881, 0.861994, 0.006186,
		41.190655, 45.585587, 23.632616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606144, 44.200844, 23.585598>,  <40.835838, 44.982189, 23.628286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606144, 44.200844, 23.585598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.466732, 43.997002, 23.270935>,  <40.383083, 43.874699, 23.082136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.466732, 43.997002, 23.270935>,  <40.606144, 44.200844, 23.585598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466732, 43.997002, 23.270935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057830, -0.849377, 0.524609,
		-0.935512, 0.137349, 0.325503,
		-0.348529, -0.509602, -0.786660,
		40.362175, 43.844120, 23.034937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256931, 43.733467, 23.823017>,  <40.606144, 44.200844, 23.585598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256931, 43.733467, 23.823017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.336449, 43.576645, 23.463734>,  <40.384159, 43.482552, 23.248163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.336449, 43.576645, 23.463734>,  <40.256931, 43.733467, 23.823017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336449, 43.576645, 23.463734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270036, -0.859110, 0.434754,
		-0.942105, -0.328974, -0.064915,
		0.198792, -0.392054, -0.898206,
		40.396088, 43.459030, 23.194271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795033, 43.126484, 23.740891>,  <40.256931, 43.733467, 23.823017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795033, 43.126484, 23.740891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.110207, 43.091206, 23.497126>,  <40.299309, 43.070038, 23.350866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.110207, 43.091206, 23.497126>,  <39.795033, 43.126484, 23.740891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110207, 43.091206, 23.497126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097096, -0.959511, 0.264409,
		-0.608059, -0.267508, -0.747465,
		0.787932, -0.088200, -0.609413,
		40.346584, 43.064747, 23.314302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616066, 42.618767, 23.291578>,  <39.795033, 43.126484, 23.740891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616066, 42.618767, 23.291578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.015194, 42.612362, 23.265972>,  <40.254669, 42.608521, 23.250608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.015194, 42.612362, 23.265972>,  <39.616066, 42.618767, 23.291578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015194, 42.612362, 23.265972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000013, -0.970169, 0.242428,
		-0.065988, -0.241898, -0.968055,
		0.997821, -0.016010, -0.064016,
		40.314541, 42.607559, 23.246767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600445, 41.993835, 23.121140>,  <39.616066, 42.618767, 23.291578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600445, 41.993835, 23.121140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.980179, 42.089863, 23.202265>,  <40.208019, 42.147480, 23.250940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.980179, 42.089863, 23.202265>,  <39.600445, 41.993835, 23.121140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980179, 42.089863, 23.202265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167492, -0.932551, 0.319837,
		0.265915, -0.269663, -0.925511,
		0.949334, 0.240065, 0.202813,
		40.264980, 42.161880, 23.263109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013424, 41.373959, 22.864527>,  <39.600445, 41.993835, 23.121140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013424, 41.373959, 22.864527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.219894, 41.570442, 23.145178>,  <40.343777, 41.688332, 23.313568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.219894, 41.570442, 23.145178>,  <40.013424, 41.373959, 22.864527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219894, 41.570442, 23.145178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116567, -0.851864, 0.510628,
		0.848514, -0.181787, -0.496969,
		0.516175, 0.491205, 0.701628,
		40.374748, 41.717804, 23.355667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520313, 40.836006, 23.017153>,  <40.013424, 41.373959, 22.864527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520313, 40.836006, 23.017153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.487881, 41.100670, 23.315315>,  <40.468422, 41.259468, 23.494213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.487881, 41.100670, 23.315315>,  <40.520313, 40.836006, 23.017153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487881, 41.100670, 23.315315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071623, -0.742068, 0.666487,
		0.994131, 0.107427, 0.012776,
		-0.081079, 0.661660, 0.745408,
		40.463558, 41.299168, 23.538937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114479, 40.699577, 23.426748>,  <40.520313, 40.836006, 23.017153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114479, 40.699577, 23.426748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.854641, 40.869106, 23.679224>,  <40.698738, 40.970825, 23.830709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.854641, 40.869106, 23.679224>,  <41.114479, 40.699577, 23.426748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854641, 40.869106, 23.679224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130512, -0.755719, 0.641759,
		0.748992, 0.499263, 0.435600,
		-0.649598, 0.423822, 0.631187,
		40.659763, 40.996254, 23.868580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423359, 40.740650, 24.100132>,  <41.114479, 40.699577, 23.426748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423359, 40.740650, 24.100132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.034786, 40.750717, 24.194519>,  <40.801643, 40.756760, 24.251152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.034786, 40.750717, 24.194519>,  <41.423359, 40.740650, 24.100132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034786, 40.750717, 24.194519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173795, -0.601615, 0.779650,
		0.161587, 0.798390, 0.580055,
		-0.971434, 0.025171, 0.235969,
		40.743355, 40.758266, 24.265310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409241, 40.679619, 24.813948>,  <41.423359, 40.740650, 24.100132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409241, 40.679619, 24.813948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.021782, 40.620789, 24.733854>,  <40.789307, 40.585491, 24.685799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.021782, 40.620789, 24.733854>,  <41.409241, 40.679619, 24.813948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021782, 40.620789, 24.733854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092473, -0.534611, 0.840024,
		-0.230595, 0.832202, 0.504247,
		-0.968646, -0.147076, -0.200235,
		40.731190, 40.576664, 24.673784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016514, 40.725628, 25.469797>,  <41.409241, 40.679619, 24.813948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016514, 40.725628, 25.469797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.765160, 40.526814, 25.230434>,  <40.614349, 40.407524, 25.086817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.765160, 40.526814, 25.230434>,  <41.016514, 40.725628, 25.469797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765160, 40.526814, 25.230434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390031, -0.464266, 0.795193,
		-0.673062, 0.733082, 0.097875,
		-0.628382, -0.497040, -0.598405,
		40.576645, 40.377701, 25.050913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258923, 40.851437, 25.618971>,  <41.016514, 40.725628, 25.469797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258923, 40.851437, 25.618971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.245270, 40.492466, 25.443031>,  <40.237076, 40.277084, 25.337467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.245270, 40.492466, 25.443031>,  <40.258923, 40.851437, 25.618971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245270, 40.492466, 25.443031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495403, -0.367039, 0.787311,
		-0.867992, 0.244777, -0.432057,
		-0.034134, -0.897422, -0.439850,
		40.235031, 40.223240, 25.311077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515324, 40.633453, 25.663343>,  <40.258923, 40.851437, 25.618971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515324, 40.633453, 25.663343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.777420, 40.335407, 25.613590>,  <39.934677, 40.156582, 25.583738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.777420, 40.335407, 25.613590>,  <39.515324, 40.633453, 25.663343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777420, 40.335407, 25.613590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340115, -0.438002, 0.832151,
		-0.674526, -0.502953, -0.540420,
		0.655238, -0.745113, -0.124382,
		39.973991, 40.111874, 25.576277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169651, 40.040817, 25.697546>,  <39.515324, 40.633453, 25.663343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169651, 40.040817, 25.697546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.538651, 39.915516, 25.787762>,  <39.760052, 39.840336, 25.841890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.538651, 39.915516, 25.787762>,  <39.169651, 40.040817, 25.697546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538651, 39.915516, 25.787762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330656, -0.339853, 0.880435,
		-0.199143, -0.886779, -0.417092,
		0.922501, -0.313247, 0.225539,
		39.815399, 39.821541, 25.855423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709740, 39.739433, 25.205744>,  <39.169651, 40.040817, 25.697546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709740, 39.739433, 25.205744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.405724, 39.501751, 25.100473>,  <38.223316, 39.359142, 25.037312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.405724, 39.501751, 25.100473>,  <38.709740, 39.739433, 25.205744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405724, 39.501751, 25.100473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097869, 0.295691, -0.950257,
		0.642468, -0.747987, -0.166582,
		-0.760037, -0.594207, -0.263176,
		38.177711, 39.323490, 25.021521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964634, 39.238976, 24.662004>,  <38.709740, 39.739433, 25.205744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964634, 39.238976, 24.662004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566708, 39.266613, 24.632175>,  <38.327950, 39.283195, 24.614279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566708, 39.266613, 24.632175>,  <38.964634, 39.238976, 24.662004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566708, 39.266613, 24.632175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094845, 0.366725, -0.925482,
		-0.036603, -0.927760, -0.371378,
		-0.994819, 0.069098, -0.074570,
		38.268261, 39.287342, 24.609804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867241, 39.038364, 23.975733>,  <38.964634, 39.238976, 24.662004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867241, 39.038364, 23.975733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.541817, 39.256355, 24.056841>,  <38.346561, 39.387150, 24.105505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.541817, 39.256355, 24.056841>,  <38.867241, 39.038364, 23.975733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541817, 39.256355, 24.056841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030833, 0.388656, -0.920867,
		-0.580660, -0.742930, -0.332999,
		-0.813562, 0.544978, 0.202770,
		38.297749, 39.419849, 24.117672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432709, 39.104092, 23.324150>,  <38.867241, 39.038364, 23.975733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432709, 39.104092, 23.324150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.263748, 39.396599, 23.538374>,  <38.162373, 39.572102, 23.666908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.263748, 39.396599, 23.538374>,  <38.432709, 39.104092, 23.324150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263748, 39.396599, 23.538374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060190, 0.566924, -0.821568,
		-0.904407, -0.379268, -0.195456,
		-0.422403, 0.731267, 0.535559,
		38.137028, 39.615978, 23.699041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906769, 39.333660, 22.952152>,  <38.432709, 39.104092, 23.324150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906769, 39.333660, 22.952152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.949959, 39.643684, 23.201189>,  <37.975872, 39.829700, 23.350611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.949959, 39.643684, 23.201189>,  <37.906769, 39.333660, 22.952152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949959, 39.643684, 23.201189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246828, 0.627545, -0.738419,
		-0.963025, -0.073943, 0.259066,
		0.107975, 0.775061, 0.622593,
		37.982349, 39.876202, 23.387966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278675, 39.781254, 22.936068>,  <37.906769, 39.333660, 22.952152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278675, 39.781254, 22.936068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593853, 39.992550, 23.062630>,  <37.782959, 40.119328, 23.138567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593853, 39.992550, 23.062630>,  <37.278675, 39.781254, 22.936068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593853, 39.992550, 23.062630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102480, 0.619190, -0.778525,
		-0.607160, 0.581009, 0.542021,
		0.787943, 0.528236, 0.316405,
		37.830235, 40.151020, 23.157551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000477, 40.383694, 23.059715>,  <37.278675, 39.781254, 22.936068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000477, 40.383694, 23.059715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.394230, 40.450535, 23.037580>,  <37.630482, 40.490639, 23.024300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.394230, 40.450535, 23.037580>,  <37.000477, 40.383694, 23.059715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394230, 40.450535, 23.037580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161098, 0.728541, -0.665789,
		-0.070938, 0.664308, 0.744085,
		0.984386, 0.167100, -0.055337,
		37.689545, 40.500664, 23.020979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671906, 40.855942, 23.619640>,  <37.000477, 40.383694, 23.059715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671906, 40.855942, 23.619640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.291573, 40.930756, 23.718384>,  <36.063374, 40.975643, 23.777630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.291573, 40.930756, 23.718384>,  <36.671906, 40.855942, 23.619640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291573, 40.930756, 23.718384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026203, -0.745620, 0.665856,
		0.308604, 0.639584, 0.704057,
		-0.950830, 0.187037, 0.246861,
		36.006325, 40.986866, 23.792442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706192, 40.660336, 24.350206>,  <36.671906, 40.855942, 23.619640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706192, 40.660336, 24.350206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.313416, 40.683414, 24.278137>,  <36.077751, 40.697262, 24.234896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.313416, 40.683414, 24.278137>,  <36.706192, 40.660336, 24.350206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313416, 40.683414, 24.278137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182537, -0.539156, 0.822187,
		-0.049706, 0.840228, 0.539951,
		-0.981942, 0.057693, -0.180172,
		36.018833, 40.700722, 24.224085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455315, 40.733097, 24.973434>,  <36.706192, 40.660336, 24.350206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455315, 40.733097, 24.973434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.132225, 40.633453, 24.759697>,  <35.938370, 40.573669, 24.631454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.132225, 40.633453, 24.759697>,  <36.455315, 40.733097, 24.973434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132225, 40.633453, 24.759697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389723, -0.454467, 0.800984,
		-0.442372, 0.855223, 0.270002,
		-0.807727, -0.249107, -0.534343,
		35.889908, 40.558720, 24.599394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877964, 40.975201, 25.329828>,  <36.455315, 40.733097, 24.973434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877964, 40.975201, 25.329828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.772709, 40.677059, 25.084812>,  <35.709557, 40.498173, 24.937803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.772709, 40.677059, 25.084812>,  <35.877964, 40.975201, 25.329828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772709, 40.677059, 25.084812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443289, -0.470514, 0.762963,
		-0.856887, 0.472293, -0.206600,
		-0.263134, -0.745357, -0.612539,
		35.693768, 40.453453, 24.901051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244625, 40.852028, 25.560030>,  <35.877964, 40.975201, 25.329828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244625, 40.852028, 25.560030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.372986, 40.523651, 25.371107>,  <35.450001, 40.326626, 25.257753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.372986, 40.523651, 25.371107>,  <35.244625, 40.852028, 25.560030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372986, 40.523651, 25.371107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397813, -0.569388, 0.719404,
		-0.859516, -0.042968, -0.509299,
		0.320900, -0.820945, -0.472306,
		35.469257, 40.277367, 25.229416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650414, 40.419704, 25.396036>,  <35.244625, 40.852028, 25.560030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650414, 40.419704, 25.396036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.962925, 40.170784, 25.415386>,  <35.150433, 40.021431, 25.426996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.962925, 40.170784, 25.415386>,  <34.650414, 40.419704, 25.396036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962925, 40.170784, 25.415386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428200, -0.477967, 0.766937,
		-0.454144, -0.619908, -0.639896,
		0.781280, -0.622303, 0.048378,
		35.197308, 39.984093, 25.429899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321644, 39.820850, 25.815002>,  <34.650414, 40.419704, 25.396036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321644, 39.820850, 25.815002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706932, 39.719318, 25.779711>,  <34.938103, 39.658398, 25.758535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706932, 39.719318, 25.779711>,  <34.321644, 39.820850, 25.815002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706932, 39.719318, 25.779711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036133, -0.447677, 0.893465,
		-0.266287, -0.857412, -0.440382,
		0.963217, -0.253831, -0.088230,
		34.995895, 39.643169, 25.753242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.041489, 46.536583, 24.450268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.362965, 46.300716, 24.418333>,  <38.555851, 46.159195, 24.399172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.362965, 46.300716, 24.418333>,  <38.041489, 46.536583, 24.450268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362965, 46.300716, 24.418333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362831, -0.591960, 0.719679,
		-0.471631, -0.549432, -0.689702,
		0.803690, -0.589668, -0.079836,
		38.604073, 46.123817, 24.394382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743725, 45.855721, 24.338568>,  <38.041489, 46.536583, 24.450268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743725, 45.855721, 24.338568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110855, 45.828827, 24.495064>,  <38.331135, 45.812691, 24.588961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110855, 45.828827, 24.495064>,  <37.743725, 45.855721, 24.338568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110855, 45.828827, 24.495064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368228, -0.512422, 0.775778,
		0.148319, -0.856097, -0.495074,
		0.917829, -0.067238, 0.391241,
		38.386204, 45.808655, 24.612436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801769, 45.090408, 24.594215>,  <37.743725, 45.855721, 24.338568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801769, 45.090408, 24.594215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.103832, 45.284454, 24.770576>,  <38.285072, 45.400883, 24.876392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.103832, 45.284454, 24.770576>,  <37.801769, 45.090408, 24.594215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103832, 45.284454, 24.770576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138322, -0.539520, 0.830533,
		0.640779, -0.688173, -0.340322,
		0.755162, 0.485114, 0.440903,
		38.330379, 45.429989, 24.902847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235428, 44.574352, 24.982033>,  <37.801769, 45.090408, 24.594215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235428, 44.574352, 24.982033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.311169, 44.928280, 25.152321>,  <38.356613, 45.140636, 25.254494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.311169, 44.928280, 25.152321>,  <38.235428, 44.574352, 24.982033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311169, 44.928280, 25.152321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275458, -0.368287, 0.887968,
		0.942481, -0.285404, 0.173996,
		0.189350, 0.884822, 0.425720,
		38.367973, 45.193726, 25.280037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632339, 44.479698, 25.522877>,  <38.235428, 44.574352, 24.982033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632339, 44.479698, 25.522877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.469448, 44.834663, 25.609278>,  <38.371712, 45.047642, 25.661119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.469448, 44.834663, 25.609278>,  <38.632339, 44.479698, 25.522877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469448, 44.834663, 25.609278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118331, -0.285773, 0.950963,
		0.905629, 0.361699, 0.221384,
		-0.407228, 0.887416, 0.216004,
		38.347279, 45.100887, 25.674078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980507, 44.714603, 26.135859>,  <38.632339, 44.479698, 25.522877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980507, 44.714603, 26.135859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.623573, 44.894493, 26.120403>,  <38.409412, 45.002426, 26.111130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.623573, 44.894493, 26.120403>,  <38.980507, 44.714603, 26.135859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623573, 44.894493, 26.120403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231641, -0.382782, 0.894327,
		0.387409, 0.806987, 0.445743,
		-0.892332, 0.449723, -0.038638,
		38.355873, 45.029411, 26.108812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811653, 44.881493, 26.832186>,  <38.980507, 44.714603, 26.135859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811653, 44.881493, 26.832186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.452877, 44.962528, 26.674984>,  <38.237610, 45.011150, 26.580664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.452877, 44.962528, 26.674984>,  <38.811653, 44.881493, 26.832186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452877, 44.962528, 26.674984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420394, -0.115389, 0.899974,
		0.136974, 0.972442, 0.188664,
		-0.896943, 0.202586, -0.393004,
		38.183796, 45.023304, 26.557083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488068, 45.322491, 27.247917>,  <38.811653, 44.881493, 26.832186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488068, 45.322491, 27.247917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.145912, 45.219040, 27.068394>,  <37.940620, 45.156971, 26.960680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.145912, 45.219040, 27.068394>,  <38.488068, 45.322491, 27.247917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145912, 45.219040, 27.068394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419112, -0.163615, 0.893071,
		-0.304401, 0.952021, 0.031562,
		-0.855386, -0.258623, -0.448808,
		37.889297, 45.141453, 26.933752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875198, 45.738686, 27.644567>,  <38.488068, 45.322491, 27.247917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875198, 45.738686, 27.644567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.774906, 45.396442, 27.463427>,  <37.714729, 45.191097, 27.354742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.774906, 45.396442, 27.463427>,  <37.875198, 45.738686, 27.644567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774906, 45.396442, 27.463427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431779, -0.319842, 0.843367,
		-0.866429, 0.406991, -0.289237,
		-0.250733, -0.855604, -0.452851,
		37.699688, 45.139763, 27.327572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158672, 45.664032, 27.752893>,  <37.875198, 45.738686, 27.644567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158672, 45.664032, 27.752893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.330715, 45.308853, 27.687719>,  <37.433941, 45.095745, 27.648615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.330715, 45.308853, 27.687719>,  <37.158672, 45.664032, 27.752893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330715, 45.308853, 27.687719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403566, -0.350559, 0.845129,
		-0.807551, -0.297744, -0.509126,
		0.430111, -0.887951, -0.162935,
		37.459747, 45.042469, 27.638840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628502, 45.182690, 27.848967>,  <37.158672, 45.664032, 27.752893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628502, 45.182690, 27.848967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.952068, 44.951176, 27.890274>,  <37.146210, 44.812267, 27.915058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.952068, 44.951176, 27.890274>,  <36.628502, 45.182690, 27.848967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952068, 44.951176, 27.890274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393344, -0.402231, 0.826735,
		-0.436961, -0.709380, -0.553032,
		0.808916, -0.578783, 0.103271,
		37.194744, 44.777542, 27.921255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443771, 44.460194, 27.966150>,  <36.628502, 45.182690, 27.848967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443771, 44.460194, 27.966150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.811363, 44.502342, 28.118139>,  <37.031918, 44.527630, 28.209332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.811363, 44.502342, 28.118139>,  <36.443771, 44.460194, 27.966150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811363, 44.502342, 28.118139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297144, -0.448389, 0.843002,
		0.259203, -0.887606, -0.380749,
		0.918978, 0.105371, 0.379970,
		37.087055, 44.533955, 28.232130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105892, 44.050022, 27.521482>,  <36.443771, 44.460194, 27.966150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105892, 44.050022, 27.521482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.706882, 44.038498, 27.547140>,  <35.467476, 44.031582, 27.562534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.706882, 44.038498, 27.547140>,  <36.105892, 44.050022, 27.521482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706882, 44.038498, 27.547140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069649, 0.530328, -0.844927,
		-0.009673, -0.847303, -0.531022,
		-0.997525, -0.028812, 0.064144,
		35.407623, 44.029854, 27.566383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935265, 43.820339, 26.886765>,  <36.105892, 44.050022, 27.521482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935265, 43.820339, 26.886765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.593288, 43.968384, 27.032145>,  <35.388103, 44.057213, 27.119373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.593288, 43.968384, 27.032145>,  <35.935265, 43.820339, 26.886765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593288, 43.968384, 27.032145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159553, 0.479061, -0.863159,
		-0.493583, -0.795937, -0.350515,
		-0.854938, 0.370115, 0.363450,
		35.336807, 44.079418, 27.141180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436081, 43.712578, 26.286375>,  <35.935265, 43.820339, 26.886765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436081, 43.712578, 26.286375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.287220, 43.978718, 26.545237>,  <35.197903, 44.138401, 26.700554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.287220, 43.978718, 26.545237>,  <35.436081, 43.712578, 26.286375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287220, 43.978718, 26.545237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424724, 0.497882, -0.756124,
		-0.825295, -0.556256, 0.097303,
		-0.372153, 0.665352, 0.647155,
		35.175575, 44.178322, 26.739384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668449, 43.833237, 26.223143>,  <35.436081, 43.712578, 26.286375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668449, 43.833237, 26.223143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.850029, 44.166252, 26.350145>,  <34.958977, 44.366062, 26.426348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.850029, 44.166252, 26.350145>,  <34.668449, 43.833237, 26.223143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850029, 44.166252, 26.350145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192915, 0.439718, -0.877173,
		-0.869893, 0.336939, 0.360219,
		0.453948, 0.832539, 0.317507,
		34.986214, 44.416016, 26.445396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267120, 44.392178, 25.965754>,  <34.668449, 43.833237, 26.223143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267120, 44.392178, 25.965754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.615097, 44.561283, 26.067314>,  <34.823883, 44.662746, 26.128250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.615097, 44.561283, 26.067314>,  <34.267120, 44.392178, 25.965754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615097, 44.561283, 26.067314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070838, 0.616641, -0.784051,
		-0.488036, 0.664095, 0.566391,
		0.869944, 0.422767, 0.253900,
		34.876080, 44.688114, 26.143484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112469, 45.138382, 25.711441>,  <34.267120, 44.392178, 25.965754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112469, 45.138382, 25.711441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.505455, 45.103649, 25.777430>,  <34.741249, 45.082809, 25.817022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.505455, 45.103649, 25.777430>,  <34.112469, 45.138382, 25.711441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505455, 45.103649, 25.777430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186365, 0.434821, -0.881021,
		0.004768, 0.896321, 0.443381,
		0.982469, -0.086831, 0.164970,
		34.800198, 45.077599, 25.826921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412903, 45.754631, 25.578606>,  <34.112469, 45.138382, 25.711441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412903, 45.754631, 25.578606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.750351, 45.540100, 25.588934>,  <34.952820, 45.411381, 25.595131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.750351, 45.540100, 25.588934>,  <34.412903, 45.754631, 25.578606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750351, 45.540100, 25.588934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382842, 0.567086, -0.729277,
		0.376488, 0.625114, 0.683731,
		0.843616, -0.536326, 0.025819,
		35.003437, 45.379204, 25.596680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056725, 46.268005, 25.573898>,  <34.412903, 45.754631, 25.578606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056725, 46.268005, 25.573898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.177032, 45.904057, 25.459587>,  <35.249218, 45.685688, 25.391001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.177032, 45.904057, 25.459587>,  <35.056725, 46.268005, 25.573898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177032, 45.904057, 25.459587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440943, 0.398373, -0.804281,
		0.845641, 0.115889, 0.521020,
		0.300767, -0.909873, -0.285780,
		35.267262, 45.631096, 25.373854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715839, 46.343712, 25.283625>,  <35.056725, 46.268005, 25.573898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715839, 46.343712, 25.283625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.599854, 45.999271, 25.116571>,  <35.530262, 45.792606, 25.016340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.599854, 45.999271, 25.116571>,  <35.715839, 46.343712, 25.283625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599854, 45.999271, 25.116571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496659, 0.237622, -0.834785,
		0.818076, -0.449483, 0.358772,
		-0.289969, -0.861105, -0.417633,
		35.512863, 45.740940, 24.991282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359612, 46.038052, 25.052896>,  <35.715839, 46.343712, 25.283625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359612, 46.038052, 25.052896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.053135, 45.862434, 24.865196>,  <35.869247, 45.757065, 24.752577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.053135, 45.862434, 24.865196>,  <36.359612, 46.038052, 25.052896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053135, 45.862434, 24.865196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368169, 0.298588, -0.880509,
		0.526691, -0.847401, -0.067134,
		-0.766190, -0.439040, -0.469251,
		35.823277, 45.730724, 24.724421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670483, 45.671711, 24.533051>,  <36.359612, 46.038052, 25.052896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670483, 45.671711, 24.533051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.286812, 45.703438, 24.424473>,  <36.056610, 45.722473, 24.359325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.286812, 45.703438, 24.424473>,  <36.670483, 45.671711, 24.533051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286812, 45.703438, 24.424473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280520, 0.145344, -0.948780,
		-0.035804, -0.986197, -0.161662,
		-0.959180, 0.079320, -0.271443,
		35.999058, 45.727234, 24.343040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605164, 45.358574, 23.994858>,  <36.670483, 45.671711, 24.533051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605164, 45.358574, 23.994858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.260834, 45.559063, 23.959635>,  <36.054237, 45.679356, 23.938501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.260834, 45.559063, 23.959635>,  <36.605164, 45.358574, 23.994858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260834, 45.559063, 23.959635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151936, 0.087989, -0.984466,
		-0.485694, -0.860831, -0.151897,
		-0.860824, 0.501227, -0.088056,
		36.002586, 45.709431, 23.933218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267666, 45.074036, 23.429024>,  <36.605164, 45.358574, 23.994858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267666, 45.074036, 23.429024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108624, 45.437424, 23.480547>,  <36.013199, 45.655457, 23.511461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.108624, 45.437424, 23.480547>,  <36.267666, 45.074036, 23.429024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108624, 45.437424, 23.480547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082626, 0.175260, -0.981049,
		-0.913827, -0.379432, -0.144748,
		-0.397609, 0.908469, 0.128806,
		35.989342, 45.709965, 23.519188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322094, 44.345001, 23.186888>,  <36.267666, 45.074036, 23.429024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322094, 44.345001, 23.186888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.133083, 44.156235, 22.889160>,  <36.019676, 44.042976, 22.710524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.133083, 44.156235, 22.889160>,  <36.322094, 44.345001, 23.186888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133083, 44.156235, 22.889160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190349, -0.879270, 0.436638,
		-0.860514, 0.064644, 0.505310,
		-0.472529, -0.471918, -0.744318,
		35.991325, 44.014660, 22.665865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916344, 43.905567, 23.523884>,  <36.322094, 44.345001, 23.186888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916344, 43.905567, 23.523884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.936676, 43.746021, 23.157644>,  <35.948875, 43.650291, 22.937901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.936676, 43.746021, 23.157644>,  <35.916344, 43.905567, 23.523884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936676, 43.746021, 23.157644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020743, -0.916163, 0.400267,
		-0.998492, -0.039339, -0.038297,
		0.050832, -0.398869, -0.915598,
		35.951927, 43.626362, 22.882965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363411, 43.526031, 23.518024>,  <35.916344, 43.905567, 23.523884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363411, 43.526031, 23.518024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.544483, 43.364403, 23.200079>,  <35.653126, 43.267426, 23.009312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.544483, 43.364403, 23.200079>,  <35.363411, 43.526031, 23.518024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544483, 43.364403, 23.200079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145582, -0.912960, 0.381194,
		-0.879709, -0.056840, -0.472103,
		0.452678, -0.404070, -0.794865,
		35.680286, 43.243183, 22.961618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969704, 42.874649, 23.274132>,  <35.363411, 43.526031, 23.518024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969704, 42.874649, 23.274132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.330959, 42.833439, 23.107409>,  <35.547710, 42.808712, 23.007374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.330959, 42.833439, 23.107409>,  <34.969704, 42.874649, 23.274132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330959, 42.833439, 23.107409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009675, -0.965654, 0.259650,
		-0.429244, -0.238532, -0.871121,
		0.903137, -0.103026, -0.416809,
		35.601902, 42.802532, 22.982367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950054, 42.295681, 22.817089>,  <34.969704, 42.874649, 23.274132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950054, 42.295681, 22.817089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.336620, 42.357124, 22.899502>,  <35.568562, 42.393990, 22.948950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.336620, 42.357124, 22.899502>,  <34.950054, 42.295681, 22.817089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336620, 42.357124, 22.899502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108053, -0.970274, 0.216548,
		0.233170, -0.187013, -0.954284,
		0.966414, 0.153606, 0.206031,
		35.626545, 42.403206, 22.961311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252449, 41.652836, 22.503756>,  <34.950054, 42.295681, 22.817089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252449, 41.652836, 22.503756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.491302, 41.820961, 22.777035>,  <35.634617, 41.921837, 22.941002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.491302, 41.820961, 22.777035>,  <35.252449, 41.652836, 22.503756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491302, 41.820961, 22.777035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111809, -0.887021, 0.447987,
		0.794308, -0.191122, -0.576669,
		0.597138, 0.420317, 0.683199,
		35.670444, 41.947056, 22.981995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848595, 41.200520, 22.523272>,  <35.252449, 41.652836, 22.503756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848595, 41.200520, 22.523272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.811462, 41.394867, 22.870907>,  <35.789185, 41.511475, 23.079489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.811462, 41.394867, 22.870907>,  <35.848595, 41.200520, 22.523272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811462, 41.394867, 22.870907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079503, -0.866453, 0.492888,
		0.992503, 0.114850, 0.041807,
		-0.092832, 0.485869, 0.869088,
		35.783611, 41.540627, 23.131634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365299, 40.986298, 22.956211>,  <35.848595, 41.200520, 22.523272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365299, 40.986298, 22.956211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.128578, 41.143658, 23.237638>,  <35.986546, 41.238071, 23.406494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.128578, 41.143658, 23.237638>,  <36.365299, 40.986298, 22.956211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128578, 41.143658, 23.237638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113830, -0.823292, 0.556088,
		0.798004, 0.409182, 0.442447,
		-0.591804, 0.393397, 0.703567,
		35.951038, 41.261677, 23.448709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046432, 41.258778, 22.928253>,  <36.365299, 40.986298, 22.956211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046432, 41.258778, 22.928253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.413696, 41.108223, 22.878756>,  <37.634056, 41.017891, 22.849056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.413696, 41.108223, 22.878756>,  <37.046432, 41.258778, 22.928253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413696, 41.108223, 22.878756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229993, 0.760634, -0.607075,
		0.322619, 0.528932, 0.784951,
		0.918161, -0.376387, -0.123744,
		37.689144, 40.995308, 22.841633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579468, 41.823376, 23.063339>,  <37.046432, 41.258778, 22.928253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579468, 41.823376, 23.063339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.723015, 41.564529, 22.794281>,  <37.809143, 41.409222, 22.632847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.723015, 41.564529, 22.794281>,  <37.579468, 41.823376, 23.063339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723015, 41.564529, 22.794281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185570, 0.755729, -0.628042,
		0.914754, 0.100564, 0.391295,
		0.358871, -0.647117, -0.672645,
		37.830677, 41.370396, 22.592487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282509, 42.159126, 22.826649>,  <37.579468, 41.823376, 23.063339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282509, 42.159126, 22.826649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180698, 41.871593, 22.567881>,  <38.119614, 41.699074, 22.412621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.180698, 41.871593, 22.567881>,  <38.282509, 42.159126, 22.826649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180698, 41.871593, 22.567881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267993, 0.590321, -0.761381,
		0.929191, -0.367161, 0.042388,
		-0.254527, -0.718828, -0.646918,
		38.104340, 41.655945, 22.373806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805782, 42.175396, 22.272934>,  <38.282509, 42.159126, 22.826649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805782, 42.175396, 22.272934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.473244, 42.010914, 22.123390>,  <38.273720, 41.912224, 22.033663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.473244, 42.010914, 22.123390>,  <38.805782, 42.175396, 22.272934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473244, 42.010914, 22.123390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138099, 0.498760, -0.855668,
		0.538326, -0.762985, -0.357854,
		-0.831345, -0.411209, -0.373863,
		38.223839, 41.887554, 22.011232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956264, 42.118443, 21.547514>,  <38.805782, 42.175396, 22.272934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956264, 42.118443, 21.547514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.558056, 42.080933, 21.552231>,  <38.319130, 42.058426, 21.555061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.558056, 42.080933, 21.552231>,  <38.956264, 42.118443, 21.547514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558056, 42.080933, 21.552231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068873, 0.634323, -0.769994,
		0.064729, -0.767359, -0.637942,
		-0.995523, -0.093778, 0.011791,
		38.259399, 42.052799, 21.555767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721714, 42.118801, 20.811550>,  <38.956264, 42.118443, 21.547514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721714, 42.118801, 20.811550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.388996, 42.188789, 21.022263>,  <38.189365, 42.230782, 21.148689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.388996, 42.188789, 21.022263>,  <38.721714, 42.118801, 20.811550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388996, 42.188789, 21.022263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251519, 0.727190, -0.638695,
		-0.494826, -0.663760, -0.560865,
		-0.831797, 0.174974, 0.526781,
		38.139458, 42.241283, 21.180296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188576, 42.009678, 20.342985>,  <38.721714, 42.118801, 20.811550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188576, 42.009678, 20.342985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.056637, 42.254189, 20.630749>,  <37.977474, 42.400894, 20.803406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.056637, 42.254189, 20.630749>,  <38.188576, 42.009678, 20.342985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056637, 42.254189, 20.630749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062086, 0.746359, -0.662641,
		-0.941992, -0.263233, -0.208230,
		-0.329843, 0.611274, 0.719408,
		37.957684, 42.437572, 20.846571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033947, 42.540653, 19.972158>,  <38.188576, 42.009678, 20.342985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033947, 42.540653, 19.972158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.923637, 42.677704, 20.331392>,  <37.857452, 42.759933, 20.546932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.923637, 42.677704, 20.331392>,  <38.033947, 42.540653, 19.972158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923637, 42.677704, 20.331392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335034, 0.841464, -0.423900,
		-0.900944, -0.417790, -0.117264,
		-0.275774, 0.342622, 0.898086,
		37.840904, 42.780491, 20.600819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385223, 42.760296, 19.923658>,  <38.033947, 42.540653, 19.972158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385223, 42.760296, 19.923658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.586823, 42.985439, 20.185703>,  <37.707783, 43.120525, 20.342930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.586823, 42.985439, 20.185703>,  <37.385223, 42.760296, 19.923658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586823, 42.985439, 20.185703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287005, 0.824533, -0.487621,
		-0.814626, 0.057739, 0.577106,
		0.503997, 0.562861, 0.655114,
		37.738022, 43.154297, 20.382238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.947296, 34.351398, 34.111385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.272942, 34.564140, 34.204636>,  <37.468330, 34.691788, 34.260586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.272942, 34.564140, 34.204636>,  <36.947296, 34.351398, 34.111385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272942, 34.564140, 34.204636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003298, 0.405676, -0.914011,
		-0.580696, 0.743340, 0.332021,
		0.814114, 0.531858, 0.233123,
		37.517174, 34.723698, 34.274574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770790, 35.128193, 33.925655>,  <36.947296, 34.351398, 34.111385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770790, 35.128193, 33.925655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169361, 35.108521, 33.953117>,  <37.408504, 35.096718, 33.969593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169361, 35.108521, 33.953117>,  <36.770790, 35.128193, 33.925655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169361, 35.108521, 33.953117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084056, 0.498767, -0.862651,
		0.008184, 0.865340, 0.501119,
		0.996427, -0.049182, 0.068656,
		37.468288, 35.093765, 33.973713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103416, 35.738327, 33.640774>,  <36.770790, 35.128193, 33.925655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103416, 35.738327, 33.640774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.414227, 35.493622, 33.581486>,  <37.600712, 35.346798, 33.545914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.414227, 35.493622, 33.581486>,  <37.103416, 35.738327, 33.640774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414227, 35.493622, 33.581486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018565, 0.257639, -0.966063,
		0.629192, 0.747907, 0.211551,
		0.777028, -0.611766, -0.148220,
		37.647335, 35.310093, 33.537022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529953, 36.099812, 33.179817>,  <37.103416, 35.738327, 33.640774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529953, 36.099812, 33.179817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.690281, 35.734009, 33.157810>,  <37.786480, 35.514526, 33.144608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.690281, 35.734009, 33.157810>,  <37.529953, 36.099812, 33.179817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690281, 35.734009, 33.157810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192738, 0.142877, -0.970793,
		0.895653, 0.378511, 0.233527,
		0.400822, -0.914503, -0.055015,
		37.810528, 35.459660, 33.141304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223137, 36.146954, 32.986664>,  <37.529953, 36.099812, 33.179817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223137, 36.146954, 32.986664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137512, 35.768475, 32.889603>,  <38.086136, 35.541386, 32.831364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137512, 35.768475, 32.889603>,  <38.223137, 36.146954, 32.986664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137512, 35.768475, 32.889603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283762, 0.177466, -0.942330,
		0.934696, -0.270572, 0.230508,
		-0.214060, -0.946201, -0.242655,
		38.073296, 35.484615, 32.816807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775505, 35.809711, 32.658703>,  <38.223137, 36.146954, 32.986664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775505, 35.809711, 32.658703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464413, 35.590549, 32.535450>,  <38.277760, 35.459053, 32.461498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.464413, 35.590549, 32.535450>,  <38.775505, 35.809711, 32.658703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464413, 35.590549, 32.535450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201922, 0.246454, -0.947886,
		0.595289, -0.799414, -0.081040,
		-0.777726, -0.547902, -0.308131,
		38.231094, 35.426178, 32.443012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991756, 35.464043, 32.032139>,  <38.775505, 35.809711, 32.658703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991756, 35.464043, 32.032139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.591866, 35.473312, 32.032612>,  <38.351929, 35.478874, 32.032898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.591866, 35.473312, 32.032612>,  <38.991756, 35.464043, 32.032139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591866, 35.473312, 32.032612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007677, 0.378432, -0.925597,
		-0.021903, -0.925339, -0.378508,
		-0.999731, 0.023179, 0.001184,
		38.291946, 35.480267, 32.032967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809937, 35.252556, 31.388590>,  <38.991756, 35.464043, 32.032139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809937, 35.252556, 31.388590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.461910, 35.408283, 31.509525>,  <38.253094, 35.501720, 31.582087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.461910, 35.408283, 31.509525>,  <38.809937, 35.252556, 31.388590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461910, 35.408283, 31.509525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138527, 0.395511, -0.907954,
		-0.473062, -0.831866, -0.290191,
		-0.870071, 0.389319, 0.302337,
		38.200890, 35.525078, 31.600227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277794, 35.020485, 30.911871>,  <38.809937, 35.252556, 31.388590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277794, 35.020485, 30.911871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.127560, 35.344196, 31.092539>,  <38.037418, 35.538422, 31.200939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.127560, 35.344196, 31.092539>,  <38.277794, 35.020485, 30.911871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127560, 35.344196, 31.092539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311512, 0.348763, -0.883926,
		-0.872868, -0.472688, 0.121110,
		-0.375583, 0.809278, 0.451672,
		38.014885, 35.586979, 31.228041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686440, 35.127380, 30.647491>,  <38.277794, 35.020485, 30.911871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686440, 35.127380, 30.647491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.734753, 35.494884, 30.797850>,  <37.763741, 35.715385, 30.888065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.734753, 35.494884, 30.797850>,  <37.686440, 35.127380, 30.647491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734753, 35.494884, 30.797850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257373, 0.394703, -0.882025,
		-0.958734, 0.009785, 0.284135,
		0.120779, 0.918756, 0.375897,
		37.770985, 35.770512, 30.910618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039570, 35.445530, 30.456841>,  <37.686440, 35.127380, 30.647491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039570, 35.445530, 30.456841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297394, 35.750256, 30.482737>,  <37.452087, 35.933090, 30.498274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297394, 35.750256, 30.482737>,  <37.039570, 35.445530, 30.456841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297394, 35.750256, 30.482737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322986, 0.348062, -0.880075,
		-0.692985, 0.546348, 0.470400,
		0.644555, 0.761812, 0.064739,
		37.490761, 35.978798, 30.502159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679119, 36.135567, 30.256699>,  <37.039570, 35.445530, 30.456841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679119, 36.135567, 30.256699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068268, 36.226742, 30.240849>,  <37.301758, 36.281448, 30.231339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068268, 36.226742, 30.240849>,  <36.679119, 36.135567, 30.256699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068268, 36.226742, 30.240849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156111, 0.520357, -0.839558,
		-0.170751, 0.822965, 0.541823,
		0.972869, 0.227940, -0.039623,
		37.360130, 36.295124, 30.228962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298294, 36.514324, 30.853888>,  <36.679119, 36.135567, 30.256699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298294, 36.514324, 30.853888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.901707, 36.565281, 30.842827>,  <35.663754, 36.595856, 30.836189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.901707, 36.565281, 30.842827>,  <36.298294, 36.514324, 30.853888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901707, 36.565281, 30.842827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093783, -0.549733, 0.830059,
		0.090537, 0.825570, 0.556989,
		-0.991467, 0.127387, -0.027654,
		35.604267, 36.603497, 30.834530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124195, 36.814465, 31.461676>,  <36.298294, 36.514324, 30.853888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124195, 36.814465, 31.461676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755550, 36.687305, 31.372608>,  <35.534363, 36.611012, 31.319168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755550, 36.687305, 31.372608>,  <36.124195, 36.814465, 31.461676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755550, 36.687305, 31.372608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038012, -0.497016, 0.866908,
		-0.386256, 0.807414, 0.445970,
		-0.921608, -0.317896, -0.222667,
		35.479069, 36.591938, 31.305809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820774, 36.834236, 32.063850>,  <36.124195, 36.814465, 31.461676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820774, 36.834236, 32.063850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576733, 36.603104, 31.847002>,  <35.430309, 36.464424, 31.716894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576733, 36.603104, 31.847002>,  <35.820774, 36.834236, 32.063850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576733, 36.603104, 31.847002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264602, -0.496340, 0.826821,
		-0.746835, 0.647889, 0.149922,
		-0.610101, -0.577829, -0.542117,
		35.393703, 36.429756, 31.684366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204311, 36.868340, 32.443165>,  <35.820774, 36.834236, 32.063850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204311, 36.868340, 32.443165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172081, 36.537697, 32.220371>,  <35.152740, 36.339310, 32.086697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172081, 36.537697, 32.220371>,  <35.204311, 36.868340, 32.443165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172081, 36.537697, 32.220371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421544, -0.478102, 0.770532,
		-0.903221, 0.296880, -0.309927,
		-0.080579, -0.826608, -0.556979,
		35.147907, 36.289715, 32.053276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509560, 36.738892, 32.389805>,  <35.204311, 36.868340, 32.443165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509560, 36.738892, 32.389805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.696693, 36.397640, 32.297451>,  <34.808975, 36.192890, 32.242039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.696693, 36.397640, 32.297451>,  <34.509560, 36.738892, 32.389805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696693, 36.397640, 32.297451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379246, -0.429743, 0.819447,
		-0.798314, -0.295800, -0.524592,
		0.467833, -0.853125, -0.230889,
		34.837044, 36.141705, 32.228184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978008, 36.213886, 32.573044>,  <34.509560, 36.738892, 32.389805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978008, 36.213886, 32.573044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.321125, 36.012054, 32.533875>,  <34.526997, 35.890953, 32.510372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.321125, 36.012054, 32.533875>,  <33.978008, 36.213886, 32.573044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321125, 36.012054, 32.533875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323707, -0.678315, 0.659623,
		-0.399257, -0.534121, -0.745190,
		0.857792, -0.504583, -0.097923,
		34.578465, 35.860680, 32.504498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798386, 35.423077, 32.449612>,  <33.978008, 36.213886, 32.573044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798386, 35.423077, 32.449612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167473, 35.473156, 32.595444>,  <34.388924, 35.503204, 32.682941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.167473, 35.473156, 32.595444>,  <33.798386, 35.423077, 32.449612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167473, 35.473156, 32.595444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189242, -0.676844, 0.711386,
		0.335829, -0.725401, -0.600843,
		0.922717, 0.125199, 0.364580,
		34.444286, 35.510715, 32.704819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067276, 34.794952, 32.582157>,  <33.798386, 35.423077, 32.449612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067276, 34.794952, 32.582157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290829, 35.027599, 32.818588>,  <34.424961, 35.167187, 32.960445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290829, 35.027599, 32.818588>,  <34.067276, 34.794952, 32.582157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290829, 35.027599, 32.818588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237318, -0.570792, 0.786052,
		0.794564, -0.579583, -0.180976,
		0.558882, 0.581619, 0.591076,
		34.458492, 35.202084, 32.995911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430557, 34.338173, 33.130241>,  <34.067276, 34.794952, 32.582157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430557, 34.338173, 33.130241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473869, 34.703362, 33.287601>,  <34.499859, 34.922474, 33.382019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473869, 34.703362, 33.287601>,  <34.430557, 34.338173, 33.130241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473869, 34.703362, 33.287601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112946, -0.381866, 0.917290,
		0.987683, -0.143760, 0.061767,
		0.108283, 0.912968, 0.393400,
		34.506355, 34.977253, 33.405621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902870, 34.218445, 33.688560>,  <34.430557, 34.338173, 33.130241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902870, 34.218445, 33.688560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708141, 34.560230, 33.761101>,  <34.591305, 34.765301, 33.804623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.708141, 34.560230, 33.761101>,  <34.902870, 34.218445, 33.688560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708141, 34.560230, 33.761101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024959, -0.221132, 0.974924,
		0.873143, 0.470091, 0.128979,
		-0.486825, 0.854467, 0.181347,
		34.562096, 34.816570, 33.815506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249489, 34.562233, 34.204964>,  <34.902870, 34.218445, 33.688560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249489, 34.562233, 34.204964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902191, 34.759125, 34.229813>,  <34.693813, 34.877258, 34.244724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902191, 34.759125, 34.229813>,  <35.249489, 34.562233, 34.204964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902191, 34.759125, 34.229813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049704, -0.210886, 0.976246,
		0.493639, 0.844533, 0.207567,
		-0.868245, 0.492230, 0.062125,
		34.641716, 34.906796, 34.248451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249649, 35.061161, 34.844765>,  <35.249489, 34.562233, 34.204964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249649, 35.061161, 34.844765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867058, 35.011997, 34.738903>,  <34.637505, 34.982498, 34.675388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867058, 35.011997, 34.738903>,  <35.249649, 35.061161, 34.844765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867058, 35.011997, 34.738903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219718, -0.293465, 0.930378,
		-0.192021, 0.948036, 0.253687,
		-0.956479, -0.122912, -0.264652,
		34.580112, 34.975124, 34.659508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798912, 35.379875, 35.376217>,  <35.249649, 35.061161, 34.844765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798912, 35.379875, 35.376217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529385, 35.143578, 35.198685>,  <34.367668, 35.001801, 35.092163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529385, 35.143578, 35.198685>,  <34.798912, 35.379875, 35.376217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529385, 35.143578, 35.198685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445887, -0.153886, 0.881762,
		-0.589196, 0.792048, -0.159714,
		-0.673819, -0.590745, -0.443833,
		34.327240, 34.966354, 35.065536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127193, 35.650173, 35.565937>,  <34.798912, 35.379875, 35.376217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127193, 35.650173, 35.565937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113438, 35.257381, 35.491611>,  <34.105183, 35.021706, 35.447018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113438, 35.257381, 35.491611>,  <34.127193, 35.650173, 35.565937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113438, 35.257381, 35.491611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378326, -0.159296, 0.911863,
		-0.925033, 0.101661, -0.366031,
		-0.034393, -0.981983, -0.185815,
		34.103119, 34.962788, 35.435867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201870, 36.213600, 35.162117>,  <34.127193, 35.650173, 35.565937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201870, 36.213600, 35.162117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273804, 36.393513, 35.512054>,  <34.316963, 36.501461, 35.722019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273804, 36.393513, 35.512054>,  <34.201870, 36.213600, 35.162117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273804, 36.393513, 35.512054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473335, 0.819186, -0.323863,
		-0.862329, -0.355852, 0.360219,
		0.179839, 0.449781, 0.874846,
		34.327755, 36.528446, 35.774509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570637, 36.529701, 35.384071>,  <34.201870, 36.213600, 35.162117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570637, 36.529701, 35.384071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907845, 36.706966, 35.506008>,  <34.110168, 36.813324, 35.579170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907845, 36.706966, 35.506008>,  <33.570637, 36.529701, 35.384071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907845, 36.706966, 35.506008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342805, 0.879385, -0.330403,
		-0.414496, 0.174034, 0.893255,
		0.843017, 0.443164, 0.304842,
		34.160751, 36.839916, 35.597462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442154, 37.205963, 35.674492>,  <33.570637, 36.529701, 35.384071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442154, 37.205963, 35.674492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.820133, 37.208843, 35.543636>,  <34.046921, 37.210571, 35.465122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.820133, 37.208843, 35.543636>,  <33.442154, 37.205963, 35.674492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820133, 37.208843, 35.543636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194178, 0.817048, -0.542888,
		0.263379, 0.576525, 0.773466,
		0.944948, 0.007205, -0.327142,
		34.103619, 37.211006, 35.445492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684742, 37.847054, 35.741035>,  <33.442154, 37.205963, 35.674492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684742, 37.847054, 35.741035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916920, 37.682201, 35.460114>,  <34.056225, 37.583290, 35.291561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916920, 37.682201, 35.460114>,  <33.684742, 37.847054, 35.741035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916920, 37.682201, 35.460114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125291, 0.806993, -0.577117,
		0.804602, 0.422977, 0.416779,
		0.580446, -0.412131, -0.702304,
		34.091053, 37.558563, 35.249424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903923, 38.503613, 35.377190>,  <33.684742, 37.847054, 35.741035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903923, 38.503613, 35.377190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055218, 38.209877, 35.151741>,  <34.145996, 38.033634, 35.016472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055218, 38.209877, 35.151741>,  <33.903923, 38.503613, 35.377190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055218, 38.209877, 35.151741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124276, 0.643630, -0.755180,
		0.917327, 0.215596, 0.334708,
		0.378242, -0.734343, -0.563625,
		34.168690, 37.989574, 34.982655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611706, 38.777878, 35.106838>,  <33.903923, 38.503613, 35.377190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611706, 38.777878, 35.106838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.433258, 38.513878, 34.865051>,  <34.326191, 38.355476, 34.719978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.433258, 38.513878, 34.865051>,  <34.611706, 38.777878, 35.106838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433258, 38.513878, 34.865051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089108, 0.639289, -0.763785,
		0.890527, -0.394602, -0.226388,
		-0.446119, -0.659999, -0.604466,
		34.299423, 38.315880, 34.683712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999405, 38.614689, 34.462570>,  <34.611706, 38.777878, 35.106838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999405, 38.614689, 34.462570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.623215, 38.509109, 34.376930>,  <34.397499, 38.445763, 34.325546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.623215, 38.509109, 34.376930>,  <34.999405, 38.614689, 34.462570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623215, 38.509109, 34.376930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085574, 0.425761, -0.900780,
		0.328914, -0.865482, -0.377830,
		-0.940475, -0.263947, -0.214101,
		34.341072, 38.429924, 34.312698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029083, 38.353580, 33.801361>,  <34.999405, 38.614689, 34.462570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029083, 38.353580, 33.801361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640785, 38.443623, 33.834785>,  <34.407806, 38.497646, 33.854839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640785, 38.443623, 33.834785>,  <35.029083, 38.353580, 33.801361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640785, 38.443623, 33.834785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008593, 0.315217, -0.948981,
		-0.239963, -0.921936, -0.304061,
		-0.970744, 0.225107, 0.083563,
		34.349564, 38.511154, 33.859856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716793, 37.931187, 33.291580>,  <35.029083, 38.353580, 33.801361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716793, 37.931187, 33.291580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.465450, 38.226292, 33.390278>,  <34.314644, 38.403355, 33.449497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.465450, 38.226292, 33.390278>,  <34.716793, 37.931187, 33.291580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465450, 38.226292, 33.390278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027512, 0.295911, -0.954819,
		-0.777441, -0.606753, -0.165639,
		-0.628354, 0.737759, 0.246746,
		34.276943, 38.447620, 33.464302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363693, 38.153217, 32.645756>,  <34.716793, 37.931187, 33.291580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363693, 38.153217, 32.645756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229885, 38.462605, 32.861107>,  <34.149601, 38.648235, 32.990318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229885, 38.462605, 32.861107>,  <34.363693, 38.153217, 32.645756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229885, 38.462605, 32.861107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025714, 0.563582, -0.825660,
		-0.942038, -0.290042, -0.168640,
		-0.334518, 0.773466, 0.538374,
		34.129528, 38.694645, 33.022617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798470, 38.348248, 32.348206>,  <34.363693, 38.153217, 32.645756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798470, 38.348248, 32.348206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.942963, 38.665367, 32.544563>,  <34.029659, 38.855637, 32.662380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.942963, 38.665367, 32.544563>,  <33.798470, 38.348248, 32.348206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942963, 38.665367, 32.544563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056899, 0.544206, -0.837020,
		-0.930736, 0.274431, 0.241697,
		0.361237, 0.792797, 0.490898,
		34.051334, 38.903206, 32.691833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348751, 38.835445, 32.231850>,  <33.798470, 38.348248, 32.348206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348751, 38.835445, 32.231850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670784, 39.055622, 32.320267>,  <33.864002, 39.187729, 32.373318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670784, 39.055622, 32.320267>,  <33.348751, 38.835445, 32.231850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670784, 39.055622, 32.320267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176416, 0.577990, -0.796746,
		-0.566322, 0.602449, 0.562436,
		0.805082, 0.550438, 0.221047,
		33.912308, 39.220753, 32.386581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210476, 39.469078, 32.031940>,  <33.348751, 38.835445, 32.231850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210476, 39.469078, 32.031940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608730, 39.503632, 32.046066>,  <33.847683, 39.524364, 32.054543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608730, 39.503632, 32.046066>,  <33.210476, 39.469078, 32.031940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608730, 39.503632, 32.046066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017719, 0.546530, -0.837252,
		-0.091623, 0.832973, 0.545675,
		0.995636, 0.086380, 0.035315,
		33.907421, 39.529545, 32.056660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329670, 40.150574, 31.866810>,  <33.210476, 39.469078, 32.031940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329670, 40.150574, 31.866810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685207, 39.980442, 31.798620>,  <33.898529, 39.878365, 31.757708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685207, 39.980442, 31.798620>,  <33.329670, 40.150574, 31.866810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685207, 39.980442, 31.798620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191922, 0.683391, -0.704374,
		0.416089, 0.593358, 0.689055,
		0.888840, -0.425327, -0.170473,
		33.951859, 39.852844, 31.747478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723225, 40.721771, 31.675243>,  <33.329670, 40.150574, 31.866810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723225, 40.721771, 31.675243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925152, 40.406620, 31.534153>,  <34.046307, 40.217529, 31.449499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925152, 40.406620, 31.534153>,  <33.723225, 40.721771, 31.675243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925152, 40.406620, 31.534153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251691, 0.525199, -0.812907,
		0.825718, 0.321592, 0.463431,
		0.504818, -0.787873, -0.352724,
		34.076595, 40.170258, 31.428335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332932, 40.971291, 31.542042>,  <33.723225, 40.721771, 31.675243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332932, 40.971291, 31.542042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.326691, 40.634998, 31.325548>,  <34.322948, 40.433224, 31.195652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.326691, 40.634998, 31.325548>,  <34.332932, 40.971291, 31.542042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326691, 40.634998, 31.325548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203970, 0.527240, -0.824872,
		0.978853, -0.123263, 0.163258,
		-0.015600, -0.840728, -0.541232,
		34.322010, 40.382778, 31.163177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972031, 40.794453, 31.140221>,  <34.332932, 40.971291, 31.542042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972031, 40.794453, 31.140221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697117, 40.605061, 30.919874>,  <34.532169, 40.491425, 30.787666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697117, 40.605061, 30.919874>,  <34.972031, 40.794453, 31.140221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697117, 40.605061, 30.919874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323600, 0.479374, -0.815772,
		0.650327, -0.738926, -0.176245,
		-0.687283, -0.473485, -0.550866,
		34.490932, 40.463017, 30.754614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263733, 40.700439, 30.491577>,  <34.972031, 40.794453, 31.140221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263733, 40.700439, 30.491577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871513, 40.653080, 30.428968>,  <34.636181, 40.624664, 30.391403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.871513, 40.653080, 30.428968>,  <35.263733, 40.700439, 30.491577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871513, 40.653080, 30.428968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073239, 0.519157, -0.851535,
		0.182081, -0.846438, -0.500389,
		-0.980552, -0.118400, -0.156521,
		34.577347, 40.617561, 30.382011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271854, 40.642307, 29.799208>,  <35.263733, 40.700439, 30.491577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271854, 40.642307, 29.799208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898209, 40.733627, 29.908979>,  <34.674023, 40.788418, 29.974842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898209, 40.733627, 29.908979>,  <35.271854, 40.642307, 29.799208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898209, 40.733627, 29.908979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119981, 0.523247, -0.843692,
		-0.336209, -0.821031, -0.461380,
		-0.934113, 0.228300, 0.274429,
		34.617973, 40.802116, 29.991308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828136, 40.605488, 29.228546>,  <35.271854, 40.642307, 29.799208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828136, 40.605488, 29.228546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626587, 40.845856, 29.476744>,  <34.505657, 40.990074, 29.625662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626587, 40.845856, 29.476744>,  <34.828136, 40.605488, 29.228546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626587, 40.845856, 29.476744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076148, 0.684648, -0.724886,
		-0.860416, -0.412499, -0.299216,
		-0.503872, 0.600918, 0.620493,
		34.475426, 41.026131, 29.662891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427956, 40.883137, 28.707830>,  <34.828136, 40.605488, 29.228546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427956, 40.883137, 28.707830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.397404, 41.120178, 29.028578>,  <34.379070, 41.262402, 29.221025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.397404, 41.120178, 29.028578>,  <34.427956, 40.883137, 28.707830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397404, 41.120178, 29.028578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054931, 0.805497, -0.590048,
		-0.995564, -0.001022, -0.094079,
		-0.076383, 0.592599, 0.801868,
		34.374489, 41.297958, 29.269138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094173, 41.440037, 28.460917>,  <34.427956, 40.883137, 28.707830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094173, 41.440037, 28.460917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.272736, 41.602551, 28.779829>,  <34.379871, 41.700058, 28.971176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.272736, 41.602551, 28.779829>,  <34.094173, 41.440037, 28.460917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272736, 41.602551, 28.779829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055894, 0.876585, -0.477990,
		-0.893084, 0.257941, 0.368603,
		0.446405, 0.406282, 0.797281,
		34.406658, 41.724434, 29.019012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848396, 42.039909, 28.557438>,  <34.094173, 41.440037, 28.460917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848396, 42.039909, 28.557438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189522, 42.112453, 28.753325>,  <34.394196, 42.155979, 28.870857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189522, 42.112453, 28.753325>,  <33.848396, 42.039909, 28.557438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189522, 42.112453, 28.753325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021957, 0.924477, -0.380606,
		-0.521761, 0.335337, 0.784420,
		0.852809, 0.181362, 0.489719,
		34.445366, 42.166862, 28.900240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842945, 42.779434, 28.840338>,  <33.848396, 42.039909, 28.557438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842945, 42.779434, 28.840338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232830, 42.692410, 28.819908>,  <34.466759, 42.640194, 28.807652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232830, 42.692410, 28.819908>,  <33.842945, 42.779434, 28.840338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232830, 42.692410, 28.819908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162115, 0.845679, -0.508474,
		0.153813, 0.487336, 0.859561,
		0.974710, -0.217558, -0.051072,
		34.525242, 42.627144, 28.804586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194622, 43.373016, 28.965305>,  <33.842945, 42.779434, 28.840338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194622, 43.373016, 28.965305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504784, 43.182117, 28.799906>,  <34.690880, 43.067577, 28.700666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504784, 43.182117, 28.799906>,  <34.194622, 43.373016, 28.965305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504784, 43.182117, 28.799906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274107, 0.844299, -0.460460,
		0.568872, 0.243699, 0.785490,
		0.775403, -0.477252, -0.413499,
		34.737404, 43.038940, 28.675856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770374, 43.900177, 28.908724>,  <34.194622, 43.373016, 28.965305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770374, 43.900177, 28.908724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.876610, 43.589554, 28.680191>,  <34.940350, 43.403179, 28.543072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.876610, 43.589554, 28.680191>,  <34.770374, 43.900177, 28.908724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876610, 43.589554, 28.680191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304167, 0.629844, -0.714688,
		0.914847, 0.016033, 0.403483,
		0.265589, -0.776556, -0.571334,
		34.956287, 43.356586, 28.508791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522217, 43.900139, 28.826109>,  <34.770374, 43.900177, 28.908724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522217, 43.900139, 28.826109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.344933, 43.715866, 28.518515>,  <35.238564, 43.605301, 28.333958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.344933, 43.715866, 28.518515>,  <35.522217, 43.900139, 28.826109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344933, 43.715866, 28.518515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317864, 0.721334, -0.615337,
		0.838171, -0.517154, -0.173265,
		-0.443206, -0.460683, -0.768986,
		35.211971, 43.577660, 28.287819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994678, 43.948273, 28.232050>,  <35.522217, 43.900139, 28.826109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994678, 43.948273, 28.232050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631313, 43.867989, 28.085352>,  <35.413296, 43.819817, 27.997334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631313, 43.867989, 28.085352>,  <35.994678, 43.948273, 28.232050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631313, 43.867989, 28.085352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165472, 0.632978, -0.756279,
		0.383936, -0.747699, -0.541793,
		-0.908412, -0.200711, -0.366747,
		35.358791, 43.807774, 27.975328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725574, 43.790981, 28.146173>,  <35.994678, 43.948273, 28.232050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725574, 43.790981, 28.146173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.958496, 44.026695, 28.370195>,  <37.098248, 44.168125, 28.504608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.958496, 44.026695, 28.370195>,  <36.725574, 43.790981, 28.146173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958496, 44.026695, 28.370195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029033, -0.703534, 0.710068,
		0.812455, -0.397213, -0.426778,
		0.582301, 0.589289, 0.560057,
		37.133186, 44.203484, 28.538212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998680, 43.394154, 28.674910>,  <36.725574, 43.790981, 28.146173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998680, 43.394154, 28.674910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121002, 43.753803, 28.800167>,  <37.194397, 43.969593, 28.875322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121002, 43.753803, 28.800167>,  <36.998680, 43.394154, 28.674910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121002, 43.753803, 28.800167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225376, -0.387916, 0.893715,
		0.925035, -0.202727, -0.321268,
		0.305805, 0.899124, 0.313146,
		37.212742, 44.023540, 28.894112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605492, 43.279961, 29.153555>,  <36.998680, 43.394154, 28.674910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605492, 43.279961, 29.153555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455482, 43.635334, 29.259417>,  <37.365479, 43.848560, 29.322933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455482, 43.635334, 29.259417>,  <37.605492, 43.279961, 29.153555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455482, 43.635334, 29.259417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166452, -0.216314, 0.962030,
		0.911951, 0.404831, -0.066760,
		-0.375019, 0.888437, 0.264653,
		37.342976, 43.901867, 29.338812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120640, 43.658794, 29.650875>,  <37.605492, 43.279961, 29.153555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120640, 43.658794, 29.650875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.740200, 43.777203, 29.686165>,  <37.511936, 43.848248, 29.707338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.740200, 43.777203, 29.686165>,  <38.120640, 43.658794, 29.650875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740200, 43.777203, 29.686165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047213, -0.142950, 0.988603,
		0.305258, 0.944424, 0.121983,
		-0.951099, 0.296020, 0.088225,
		37.454872, 43.866009, 29.712633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200504, 44.039425, 30.191172>,  <38.120640, 43.658794, 29.650875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200504, 44.039425, 30.191172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806484, 43.973564, 30.170895>,  <37.570072, 43.934048, 30.158728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806484, 43.973564, 30.170895>,  <38.200504, 44.039425, 30.191172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806484, 43.973564, 30.170895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015685, -0.378745, 0.925368,
		-0.171560, 0.910737, 0.375665,
		-0.985049, -0.164649, -0.050692,
		37.510971, 43.924168, 30.155687>
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
