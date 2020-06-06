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
	<24.020088, 35.137394, 34.596577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140905, 35.047737, 34.967205>,  <24.213396, 34.993942, 35.189583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140905, 35.047737, 34.967205>,  <24.020088, 35.137394, 34.596577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.140905, 35.047737, 34.967205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267128, -0.913125, -0.307969,
		0.915103, 0.340532, -0.215927,
		0.302042, -0.224143, 0.926569,
		24.231518, 34.980495, 35.245174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.790218, 35.049999, 34.646755>,  <24.020088, 35.137394, 34.596577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.790218, 35.049999, 34.646755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576530, 34.823666, 34.897976>,  <24.448318, 34.687866, 35.048706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576530, 34.823666, 34.897976>,  <24.790218, 35.049999, 34.646755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.576530, 34.823666, 34.897976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455333, -0.818568, -0.350170,
		0.712237, 0.098904, 0.694936,
		-0.534219, -0.565831, 0.628049,
		24.416265, 34.653915, 35.086391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248011, 35.604774, 34.447735>,  <24.790218, 35.049999, 34.646755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248011, 35.604774, 34.447735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.026152, 35.893845, 34.612705>,  <24.893036, 36.067287, 34.711689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.026152, 35.893845, 34.612705>,  <25.248011, 35.604774, 34.447735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.026152, 35.893845, 34.612705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711604, -0.155079, -0.685253,
		-0.431259, -0.673562, 0.600276,
		-0.554650, 0.722679, 0.412430,
		24.859756, 36.110649, 34.736435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709829, 35.901066, 34.107613>,  <25.248011, 35.604774, 34.447735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709829, 35.901066, 34.107613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643261, 36.294720, 34.132225>,  <25.603319, 36.530910, 34.146992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643261, 36.294720, 34.132225>,  <25.709829, 35.901066, 34.107613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643261, 36.294720, 34.132225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053246, -0.053340, 0.997156,
		0.984616, 0.169224, -0.043524,
		-0.166421, 0.984133, 0.061530,
		25.593334, 36.589958, 34.150684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669418, 35.786293, 33.373665>,  <25.709829, 35.901066, 34.107613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669418, 35.786293, 33.373665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334087, 35.783638, 33.155617>,  <25.132889, 35.782047, 33.024788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334087, 35.783638, 33.155617>,  <25.669418, 35.786293, 33.373665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334087, 35.783638, 33.155617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383257, -0.718296, -0.580659,
		-0.387708, -0.695706, 0.604712,
		-0.838330, -0.006634, -0.545123,
		25.082588, 35.781647, 32.992081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.347569, 35.173008, 33.440865>,  <25.669418, 35.786293, 33.373665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.347569, 35.173008, 33.440865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287367, 35.350868, 33.087677>,  <25.251245, 35.457584, 32.875763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287367, 35.350868, 33.087677>,  <25.347569, 35.173008, 33.440865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287367, 35.350868, 33.087677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309767, -0.826955, -0.469243,
		-0.938825, -0.344138, -0.013277,
		-0.150505, 0.444650, -0.882969,
		25.242216, 35.484264, 32.822784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876165, 34.785240, 32.931438>,  <25.347569, 35.173008, 33.440865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876165, 34.785240, 32.931438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193518, 34.991352, 32.801804>,  <25.383928, 35.115021, 32.724022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193518, 34.991352, 32.801804>,  <24.876165, 34.785240, 32.931438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193518, 34.991352, 32.801804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341803, -0.817652, -0.463267,
		-0.503703, 0.256774, -0.824834,
		0.793381, 0.515280, -0.324087,
		25.431532, 35.145935, 32.704578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.880651, 34.773895, 32.193768>,  <24.876165, 34.785240, 32.931438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.880651, 34.773895, 32.193768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261171, 34.762753, 32.316566>,  <25.489483, 34.756069, 32.390247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261171, 34.762753, 32.316566>,  <24.880651, 34.773895, 32.193768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261171, 34.762753, 32.316566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173588, -0.774593, -0.608172,
		0.254739, 0.631846, -0.732037,
		0.951302, -0.027852, 0.307000,
		25.546562, 34.754398, 32.408665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239073, 34.632816, 31.521221>,  <24.880651, 34.773895, 32.193768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239073, 34.632816, 31.521221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469893, 34.547497, 31.836567>,  <25.608385, 34.496307, 32.025776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469893, 34.547497, 31.836567>,  <25.239073, 34.632816, 31.521221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469893, 34.547497, 31.836567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386151, -0.779325, -0.493497,
		0.719653, 0.589201, -0.367346,
		0.577051, -0.213296, 0.788364,
		25.643007, 34.483509, 32.073074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889187, 34.580688, 31.229567>,  <25.239073, 34.632816, 31.521221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889187, 34.580688, 31.229567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911371, 34.359375, 31.562025>,  <25.924681, 34.226589, 31.761499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911371, 34.359375, 31.562025>,  <25.889187, 34.580688, 31.229567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911371, 34.359375, 31.562025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326117, -0.776736, -0.538821,
		0.943701, 0.300934, 0.137357,
		0.055459, -0.553281, 0.831147,
		25.928009, 34.193390, 31.811369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518503, 34.148327, 31.106508>,  <25.889187, 34.580688, 31.229567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518503, 34.148327, 31.106508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316399, 33.974072, 31.404484>,  <26.195135, 33.869518, 31.583269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316399, 33.974072, 31.404484>,  <26.518503, 34.148327, 31.106508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316399, 33.974072, 31.404484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214351, -0.899531, -0.380654,
		0.835920, -0.032652, 0.547879,
		-0.505264, -0.435635, 0.744937,
		26.164820, 33.843380, 31.627964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783562, 33.447311, 31.239712>,  <26.518503, 34.148327, 31.106508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783562, 33.447311, 31.239712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422234, 33.427227, 31.410118>,  <26.205437, 33.415176, 31.512362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422234, 33.427227, 31.410118>,  <26.783562, 33.447311, 31.239712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422234, 33.427227, 31.410118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078259, -0.957170, -0.278751,
		0.421766, -0.285141, 0.860702,
		-0.903321, -0.050210, 0.426016,
		26.151237, 33.412163, 31.537924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470144, 33.533760, 30.556992>,  <26.783562, 33.447311, 31.239712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470144, 33.533760, 30.556992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125780, 33.727688, 30.495300>,  <25.919163, 33.844044, 30.458286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125780, 33.727688, 30.495300>,  <26.470144, 33.533760, 30.556992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125780, 33.727688, 30.495300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508757, 0.821461, -0.257621,
		0.001791, -0.300251, -0.953858,
		-0.860909, 0.484820, -0.154226,
		25.867508, 33.873135, 30.449032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111086, 33.034256, 30.899923>,  <26.470144, 33.533760, 30.556992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111086, 33.034256, 30.899923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019638, 32.775047, 31.190525>,  <25.964769, 32.619522, 31.364885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019638, 32.775047, 31.190525>,  <26.111086, 33.034256, 30.899923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019638, 32.775047, 31.190525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052898, 0.753433, 0.655393,
		-0.972078, 0.111404, -0.206527,
		-0.228618, -0.648018, 0.726503,
		25.951052, 32.580643, 31.408476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508032, 33.212013, 31.239895>,  <26.111086, 33.034256, 30.899923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508032, 33.212013, 31.239895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780993, 33.048721, 31.482439>,  <25.944769, 32.950745, 31.627966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780993, 33.048721, 31.482439>,  <25.508032, 33.212013, 31.239895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780993, 33.048721, 31.482439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105830, 0.765607, 0.634544,
		-0.723276, -0.497185, 0.479249,
		0.682402, -0.408231, 0.606362,
		25.985714, 32.926250, 31.664349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299017, 33.095215, 31.995993>,  <25.508032, 33.212013, 31.239895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299017, 33.095215, 31.995993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692947, 33.163979, 31.986469>,  <25.929306, 33.205238, 31.980755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692947, 33.163979, 31.986469>,  <25.299017, 33.095215, 31.995993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692947, 33.163979, 31.986469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147772, 0.902534, 0.404470,
		0.091020, -0.394814, 0.914241,
		0.984824, 0.171914, -0.023806,
		25.988394, 33.215553, 31.979328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493416, 33.308575, 32.686760>,  <25.299017, 33.095215, 31.995993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493416, 33.308575, 32.686760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750172, 33.455639, 32.417599>,  <25.904226, 33.543877, 32.256100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750172, 33.455639, 32.417599>,  <25.493416, 33.308575, 32.686760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750172, 33.455639, 32.417599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053419, 0.896863, 0.439071,
		0.764933, -0.245890, 0.595329,
		0.641891, 0.367661, -0.672905,
		25.942739, 33.565937, 32.215729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934082, 33.615761, 33.021484>,  <25.493416, 33.308575, 32.686760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934082, 33.615761, 33.021484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957626, 33.793404, 32.663868>,  <25.971752, 33.899990, 32.449299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957626, 33.793404, 32.663868>,  <25.934082, 33.615761, 33.021484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957626, 33.793404, 32.663868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066733, 0.895339, 0.440357,
		0.996033, 0.033742, 0.082337,
		0.058860, 0.444105, -0.894039,
		25.975285, 33.926636, 32.395657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459970, 34.138184, 33.017876>,  <25.934082, 33.615761, 33.021484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459970, 34.138184, 33.017876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212759, 34.250568, 32.724182>,  <26.064432, 34.318001, 32.547966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212759, 34.250568, 32.724182>,  <26.459970, 34.138184, 33.017876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212759, 34.250568, 32.724182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076460, 0.908044, 0.411837,
		0.782427, 0.310667, -0.539716,
		-0.618030, 0.280965, -0.734232,
		26.027349, 34.334858, 32.503914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753595, 34.749393, 32.824661>,  <26.459970, 34.138184, 33.017876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753595, 34.749393, 32.824661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369019, 34.719204, 32.718884>,  <26.138271, 34.701092, 32.655418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369019, 34.719204, 32.718884>,  <26.753595, 34.749393, 32.824661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369019, 34.719204, 32.718884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202107, 0.846029, 0.493344,
		0.186492, 0.527768, -0.828663,
		-0.961443, -0.075474, -0.264443,
		26.080585, 34.696560, 32.639549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243740, 34.135799, 32.629131>,  <26.753595, 34.749393, 32.824661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243740, 34.135799, 32.629131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612745, 34.196381, 32.771133>,  <27.834148, 34.232731, 32.856335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612745, 34.196381, 32.771133>,  <27.243740, 34.135799, 32.629131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612745, 34.196381, 32.771133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195578, -0.609517, 0.768270,
		0.332740, -0.778171, -0.532667,
		0.922515, 0.151457, 0.355004,
		27.889500, 34.241817, 32.877636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793736, 34.103596, 32.144596>,  <27.243740, 34.135799, 32.629131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793736, 34.103596, 32.144596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874939, 33.713806, 32.106236>,  <27.923660, 33.479935, 32.083218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874939, 33.713806, 32.106236>,  <27.793736, 34.103596, 32.144596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874939, 33.713806, 32.106236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791244, 0.220950, -0.570188,
		0.576820, 0.039871, 0.815897,
		0.203007, -0.974470, -0.095901,
		27.935841, 33.421467, 32.077465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468666, 33.868813, 32.379879>,  <27.793736, 34.103596, 32.144596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468666, 33.868813, 32.379879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349331, 33.672596, 32.052376>,  <28.277729, 33.554867, 31.855875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349331, 33.672596, 32.052376>,  <28.468666, 33.868813, 32.379879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349331, 33.672596, 32.052376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711359, 0.457655, -0.533405,
		0.636367, -0.741563, 0.212418,
		-0.298339, -0.490546, -0.818754,
		28.259829, 33.525433, 31.806749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108934, 33.800278, 32.528576>,  <28.468666, 33.868813, 32.379879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108934, 33.800278, 32.528576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351049, 33.649071, 32.248367>,  <29.496319, 33.558346, 32.080242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351049, 33.649071, 32.248367>,  <29.108934, 33.800278, 32.528576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351049, 33.649071, 32.248367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219454, -0.766695, 0.603340,
		-0.765080, -0.518976, -0.381205,
		0.605386, -0.377947, -0.700474,
		29.532635, 33.535667, 32.038212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919130, 33.032043, 32.303307>,  <29.108934, 33.800278, 32.528576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919130, 33.032043, 32.303307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306654, 33.128872, 32.282089>,  <29.539167, 33.186970, 32.269360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306654, 33.128872, 32.282089>,  <28.919130, 33.032043, 32.303307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306654, 33.128872, 32.282089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225346, -0.771484, 0.595006,
		0.103113, -0.588399, -0.801969,
		0.968807, 0.242073, -0.053043,
		29.597296, 33.201492, 32.266174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228466, 32.440956, 32.392883>,  <28.919130, 33.032043, 32.303307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228466, 32.440956, 32.392883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494978, 32.712978, 32.515255>,  <29.654884, 32.876194, 32.588680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494978, 32.712978, 32.515255>,  <29.228466, 32.440956, 32.392883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494978, 32.712978, 32.515255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291668, -0.615238, 0.732401,
		0.686296, -0.398752, -0.608271,
		0.666278, 0.680057, 0.305933,
		29.694862, 32.916996, 32.607037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820589, 32.072327, 32.620495>,  <29.228466, 32.440956, 32.392883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820589, 32.072327, 32.620495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903673, 32.434589, 32.768360>,  <29.953524, 32.651947, 32.857079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903673, 32.434589, 32.768360>,  <29.820589, 32.072327, 32.620495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903673, 32.434589, 32.768360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406273, -0.423638, 0.809613,
		0.889831, -0.017982, -0.455937,
		0.207711, 0.905653, 0.369660,
		29.965986, 32.706284, 32.879257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547983, 32.053875, 32.803154>,  <29.820589, 32.072327, 32.620495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547983, 32.053875, 32.803154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349434, 32.331272, 33.012032>,  <30.230305, 32.497711, 33.137360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349434, 32.331272, 33.012032>,  <30.547983, 32.053875, 32.803154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349434, 32.331272, 33.012032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381740, -0.365882, 0.848767,
		0.779672, 0.620647, -0.083119,
		-0.496373, 0.693490, 0.522194,
		30.200521, 32.539318, 33.168690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862211, 31.957285, 33.372276>,  <30.547983, 32.053875, 32.803154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862211, 31.957285, 33.372276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582304, 32.204762, 33.515129>,  <30.414360, 32.353249, 33.600842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582304, 32.204762, 33.515129>,  <30.862211, 31.957285, 33.372276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582304, 32.204762, 33.515129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081148, -0.427852, 0.900199,
		0.709745, 0.658913, 0.249193,
		-0.699770, 0.618690, 0.357135,
		30.372374, 32.390369, 33.622269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173653, 32.159214, 34.014141>,  <30.862211, 31.957285, 33.372276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173653, 32.159214, 34.014141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779047, 32.212795, 34.051758>,  <30.542284, 32.244942, 34.074326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779047, 32.212795, 34.051758>,  <31.173653, 32.159214, 34.014141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779047, 32.212795, 34.051758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041375, -0.351805, 0.935158,
		0.158350, 0.926440, 0.341519,
		-0.986516, 0.133951, 0.094040,
		30.483091, 32.252979, 34.079971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064590, 32.387871, 34.667515>,  <31.173653, 32.159214, 34.014141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064590, 32.387871, 34.667515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689705, 32.284031, 34.574352>,  <30.464773, 32.221729, 34.518456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689705, 32.284031, 34.574352>,  <31.064590, 32.387871, 34.667515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689705, 32.284031, 34.574352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166875, -0.252613, 0.953068,
		-0.306247, 0.932093, 0.193432,
		-0.937212, -0.259595, -0.232904,
		30.408541, 32.206154, 34.504482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765570, 32.522907, 35.336544>,  <31.064590, 32.387871, 34.667515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765570, 32.522907, 35.336544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526598, 32.281921, 35.124840>,  <30.383215, 32.137329, 34.997818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526598, 32.281921, 35.124840>,  <30.765570, 32.522907, 35.336544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526598, 32.281921, 35.124840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244826, -0.491455, 0.835782,
		-0.763634, 0.628899, 0.146112,
		-0.597430, -0.602460, -0.529263,
		30.347368, 32.101185, 34.966061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324833, 32.370125, 35.812035>,  <30.765570, 32.522907, 35.336544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324833, 32.370125, 35.812035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256296, 32.103268, 35.522053>,  <30.215174, 31.943153, 35.348064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256296, 32.103268, 35.522053>,  <30.324833, 32.370125, 35.812035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256296, 32.103268, 35.522053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148863, -0.709858, 0.688434,
		-0.973900, 0.225877, 0.022315,
		-0.171342, -0.667144, -0.724956,
		30.204893, 31.903124, 35.304565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740307, 32.002647, 35.975903>,  <30.324833, 32.370125, 35.812035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740307, 32.002647, 35.975903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956537, 31.755659, 35.747337>,  <30.086275, 31.607466, 35.610199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956537, 31.755659, 35.747337>,  <29.740307, 32.002647, 35.975903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956537, 31.755659, 35.747337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263333, -0.769261, 0.582146,
		-0.799024, -0.164218, -0.578440,
		0.540570, -0.617471, -0.571414,
		30.118710, 31.570417, 35.575912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325735, 31.415335, 35.874840>,  <29.740307, 32.002647, 35.975903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325735, 31.415335, 35.874840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694031, 31.280420, 35.796375>,  <29.915009, 31.199472, 35.749298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694031, 31.280420, 35.796375>,  <29.325735, 31.415335, 35.874840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694031, 31.280420, 35.796375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209036, -0.850915, 0.481921,
		-0.329460, -0.402719, -0.853975,
		0.920739, -0.337285, -0.196159,
		29.970253, 31.179235, 35.737526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382256, 31.194828, 36.605915>,  <29.325735, 31.415335, 35.874840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382256, 31.194828, 36.605915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418833, 31.029049, 36.243729>,  <29.440779, 30.929581, 36.026417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418833, 31.029049, 36.243729>,  <29.382256, 31.194828, 36.605915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418833, 31.029049, 36.243729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839317, 0.521405, -0.153894,
		0.535896, -0.745901, 0.395533,
		0.091444, -0.414449, -0.905467,
		29.446266, 30.904715, 35.972088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116537, 30.872463, 36.435211>,  <29.382256, 31.194828, 36.605915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116537, 30.872463, 36.435211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069517, 30.549810, 36.203514>,  <30.041306, 30.356218, 36.064495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069517, 30.549810, 36.203514>,  <30.116537, 30.872463, 36.435211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069517, 30.549810, 36.203514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197964, 0.552547, -0.809631,
		0.973135, -0.209841, 0.094734,
		-0.117549, -0.806634, -0.579244,
		30.034252, 30.307819, 36.029739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742361, 30.870199, 36.179447>,  <30.116537, 30.872463, 36.435211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742361, 30.870199, 36.179447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467573, 30.695772, 35.946922>,  <30.302700, 30.591116, 35.807407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467573, 30.695772, 35.946922>,  <30.742361, 30.870199, 36.179447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467573, 30.695772, 35.946922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112959, 0.726140, -0.678204,
		0.717860, -0.531565, -0.449573,
		-0.686963, -0.436072, -0.581312,
		30.261482, 30.564951, 35.772530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965954, 30.703722, 35.446213>,  <30.742361, 30.870199, 36.179447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965954, 30.703722, 35.446213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576200, 30.786964, 35.480324>,  <30.342348, 30.836910, 35.500790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576200, 30.786964, 35.480324>,  <30.965954, 30.703722, 35.446213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576200, 30.786964, 35.480324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105188, 0.756841, -0.645079,
		-0.198787, -0.619583, -0.759343,
		-0.974381, 0.208107, 0.085277,
		30.283886, 30.849396, 35.505905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724836, 30.776150, 34.794769>,  <30.965954, 30.703722, 35.446213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724836, 30.776150, 34.794769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513876, 31.011417, 35.040012>,  <30.387299, 31.152578, 35.187160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.513876, 31.011417, 35.040012>,  <30.724836, 30.776150, 34.794769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513876, 31.011417, 35.040012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010464, 0.717081, -0.696912,
		-0.849552, -0.373968, -0.372035,
		-0.527402, 0.588169, 0.613110,
		30.355656, 31.187868, 35.223946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133301, 30.937653, 34.432556>,  <30.724836, 30.776150, 34.794769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133301, 30.937653, 34.432556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155266, 31.242785, 34.690262>,  <30.168446, 31.425863, 34.844887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155266, 31.242785, 34.690262>,  <30.133301, 30.937653, 34.432556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155266, 31.242785, 34.690262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169412, 0.643000, -0.746895,
		-0.984015, -0.068132, 0.164541,
		0.054912, 0.762830, 0.644263,
		30.171740, 31.471634, 34.883541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578207, 31.428263, 34.264790>,  <30.133301, 30.937653, 34.432556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578207, 31.428263, 34.264790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810032, 31.636719, 34.515396>,  <29.949127, 31.761793, 34.665760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810032, 31.636719, 34.515396>,  <29.578207, 31.428263, 34.264790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810032, 31.636719, 34.515396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190606, 0.834160, -0.517539,
		-0.792325, 0.180527, 0.582779,
		0.579561, 0.521140, 0.626516,
		29.983900, 31.793060, 34.703350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161816, 32.020672, 34.460094>,  <29.578207, 31.428263, 34.264790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161816, 32.020672, 34.460094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557411, 32.079189, 34.469017>,  <29.794769, 32.114300, 34.474369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557411, 32.079189, 34.469017>,  <29.161816, 32.020672, 34.460094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557411, 32.079189, 34.469017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090066, 0.714647, -0.693662,
		-0.117419, 0.684016, 0.719955,
		0.988990, 0.146292, 0.022307,
		29.854109, 32.123077, 34.475708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174725, 32.615032, 34.213032>,  <29.161816, 32.020672, 34.460094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174725, 32.615032, 34.213032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565006, 32.536842, 34.173447>,  <29.799175, 32.489929, 34.149696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565006, 32.536842, 34.173447>,  <29.174725, 32.615032, 34.213032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565006, 32.536842, 34.173447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037114, 0.592607, -0.804636,
		0.215927, 0.781414, 0.585464,
		0.975704, -0.195471, -0.098959,
		29.857718, 32.478199, 34.143761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407333, 33.129856, 34.088043>,  <29.174725, 32.615032, 34.213032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407333, 33.129856, 34.088043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704758, 32.908680, 33.937641>,  <29.883211, 32.775974, 33.847401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704758, 32.908680, 33.937641>,  <29.407333, 33.129856, 34.088043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704758, 32.908680, 33.937641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087493, 0.637933, -0.765106,
		0.662920, 0.536004, 0.522720,
		0.743560, -0.552939, -0.376002,
		29.927826, 32.742798, 33.824841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582706, 33.602871, 33.515079>,  <29.407333, 33.129856, 34.088043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582706, 33.602871, 33.515079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832319, 33.292908, 33.474884>,  <29.982086, 33.106930, 33.450768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832319, 33.292908, 33.474884>,  <29.582706, 33.602871, 33.515079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832319, 33.292908, 33.474884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012882, 0.138781, -0.990239,
		0.781292, 0.616647, 0.096586,
		0.624033, -0.774910, -0.100485,
		30.019529, 33.060436, 33.444740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143805, 33.914062, 33.266827>,  <29.582706, 33.602871, 33.515079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143805, 33.914062, 33.266827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122423, 33.526157, 33.171577>,  <30.109594, 33.293415, 33.114429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122423, 33.526157, 33.171577>,  <30.143805, 33.914062, 33.266827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122423, 33.526157, 33.171577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129770, 0.229691, -0.964573,
		0.990102, -0.082462, 0.113569,
		-0.053455, -0.969764, -0.238119,
		30.106386, 33.235229, 33.100143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617699, 33.756134, 32.798737>,  <30.143805, 33.914062, 33.266827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617699, 33.756134, 32.798737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357574, 33.469791, 32.697037>,  <30.201500, 33.297985, 32.636017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357574, 33.469791, 32.697037>,  <30.617699, 33.756134, 32.798737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357574, 33.469791, 32.697037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109231, 0.243091, -0.963834,
		0.751775, -0.654562, -0.079891,
		-0.650310, -0.715859, -0.254248,
		30.162481, 33.255035, 32.620762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811569, 33.545113, 32.159122>,  <30.617699, 33.756134, 32.798737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811569, 33.545113, 32.159122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432444, 33.423267, 32.196762>,  <30.204967, 33.350159, 32.219345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.432444, 33.423267, 32.196762>,  <30.811569, 33.545113, 32.159122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432444, 33.423267, 32.196762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178912, 0.263885, -0.947816,
		0.263885, -0.915191, -0.304614,
		0.947816, 0.304614, -0.094104,
		30.148098, 33.331882, 32.224995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618500, 33.812714, 32.129608>,  <30.811569, 33.545113, 32.159122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618500, 33.812714, 32.129608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862078, 34.118214, 32.043938>,  <32.008224, 34.301514, 31.992535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862078, 34.118214, 32.043938>,  <31.618500, 33.812714, 32.129608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862078, 34.118214, 32.043938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002669, 0.271984, 0.962298,
		0.793207, -0.585417, 0.167662,
		0.608947, 0.763749, -0.214177,
		32.044762, 34.347340, 31.979685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100327, 33.767483, 32.672840>,  <31.618500, 33.812714, 32.129608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100327, 33.767483, 32.672840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134525, 34.134815, 32.518257>,  <32.155045, 34.355217, 32.425507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134525, 34.134815, 32.518257>,  <32.100327, 33.767483, 32.672840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134525, 34.134815, 32.518257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155355, 0.370845, 0.915608,
		0.984151, -0.138323, -0.110961,
		0.085501, 0.918336, -0.386457,
		32.160175, 34.410316, 32.402321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561039, 34.019352, 33.085903>,  <32.100327, 33.767483, 32.672840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561039, 34.019352, 33.085903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354160, 34.320652, 32.923363>,  <32.230034, 34.501431, 32.825840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354160, 34.320652, 32.923363>,  <32.561039, 34.019352, 33.085903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354160, 34.320652, 32.923363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118135, 0.407406, 0.905574,
		0.847673, 0.516365, -0.121724,
		-0.517198, 0.753251, -0.406347,
		32.199001, 34.546627, 32.801460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874805, 34.715153, 33.297634>,  <32.561039, 34.019352, 33.085903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874805, 34.715153, 33.297634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494389, 34.789593, 33.198940>,  <32.266136, 34.834255, 33.139725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494389, 34.789593, 33.198940>,  <32.874805, 34.715153, 33.297634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494389, 34.789593, 33.198940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120613, 0.511563, 0.850739,
		0.284539, 0.838852, -0.464075,
		-0.951047, 0.186095, -0.246736,
		32.209076, 34.845421, 33.124920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840603, 35.419762, 33.401329>,  <32.874805, 34.715153, 33.297634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840603, 35.419762, 33.401329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490906, 35.237003, 33.466995>,  <32.281090, 35.127350, 33.506397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490906, 35.237003, 33.466995>,  <32.840603, 35.419762, 33.401329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490906, 35.237003, 33.466995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018951, 0.370001, 0.928838,
		-0.485126, 0.808915, -0.332128,
		-0.874239, -0.456897, 0.164168,
		32.228634, 35.099934, 33.516247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401821, 35.827644, 33.674294>,  <32.840603, 35.419762, 33.401329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401821, 35.827644, 33.674294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193043, 35.499744, 33.768604>,  <32.067776, 35.303005, 33.825191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193043, 35.499744, 33.768604>,  <32.401821, 35.827644, 33.674294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193043, 35.499744, 33.768604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235742, 0.404280, 0.883733,
		-0.819757, 0.405676, -0.404259,
		-0.521943, -0.819747, 0.235777,
		32.036461, 35.253819, 33.839336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846128, 36.136124, 34.016521>,  <32.401821, 35.827644, 33.674294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846128, 36.136124, 34.016521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864561, 35.745464, 34.100464>,  <31.875620, 35.511070, 34.150829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864561, 35.745464, 34.100464>,  <31.846128, 36.136124, 34.016521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864561, 35.745464, 34.100464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484948, 0.161791, 0.859447,
		-0.873328, -0.141373, -0.466167,
		0.046081, -0.976646, 0.209856,
		31.878386, 35.452469, 34.163422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689911, 36.351151, 34.669827>,  <31.846128, 36.136124, 34.016521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689911, 36.351151, 34.669827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393473, 36.102863, 34.772190>,  <31.215609, 35.953892, 34.833607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393473, 36.102863, 34.772190>,  <31.689911, 36.351151, 34.669827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393473, 36.102863, 34.772190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346125, -0.679815, -0.646568,
		0.575303, -0.390594, 0.718653,
		-0.741097, -0.620716, 0.255905,
		31.171144, 35.916649, 34.848961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950319, 35.607857, 34.845085>,  <31.689911, 36.351151, 34.669827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950319, 35.607857, 34.845085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605095, 35.625988, 34.643860>,  <31.397961, 35.636868, 34.523125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605095, 35.625988, 34.643860>,  <31.950319, 35.607857, 34.845085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605095, 35.625988, 34.643860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385114, -0.585374, -0.713459,
		-0.326819, -0.809495, 0.487756,
		-0.863062, 0.045330, -0.503060,
		31.346176, 35.639587, 34.492943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768557, 34.910522, 34.557381>,  <31.950319, 35.607857, 34.845085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768557, 34.910522, 34.557381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654009, 35.221554, 34.333462>,  <31.585279, 35.408173, 34.199112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654009, 35.221554, 34.333462>,  <31.768557, 34.910522, 34.557381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654009, 35.221554, 34.333462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343772, -0.461975, -0.817557,
		-0.894323, -0.426566, -0.135013,
		-0.286370, 0.777574, -0.559796,
		31.568098, 35.454826, 34.165524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195974, 34.680096, 34.023361>,  <31.768557, 34.910522, 34.557381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195974, 34.680096, 34.023361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403812, 34.991081, 33.881611>,  <31.528515, 35.177673, 33.796562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403812, 34.991081, 33.881611>,  <31.195974, 34.680096, 34.023361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403812, 34.991081, 33.881611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066457, -0.450272, -0.890415,
		-0.851825, 0.439103, -0.285626,
		0.519593, 0.777460, -0.354371,
		31.559690, 35.224319, 33.775299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902601, 35.083344, 33.435776>,  <31.195974, 34.680096, 34.023361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902601, 35.083344, 33.435776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299980, 35.122650, 33.412418>,  <31.538406, 35.146236, 33.398403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299980, 35.122650, 33.412418>,  <30.902601, 35.083344, 33.435776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299980, 35.122650, 33.412418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003660, -0.537953, -0.842967,
		-0.114252, 0.837227, -0.534786,
		0.993445, 0.098268, -0.058398,
		31.598013, 35.152130, 33.394897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088184, 35.108612, 32.579933>,  <30.902601, 35.083344, 33.435776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088184, 35.108612, 32.579933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442417, 35.071571, 32.761997>,  <31.654957, 35.049347, 32.871235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442417, 35.071571, 32.761997>,  <31.088184, 35.108612, 32.579933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442417, 35.071571, 32.761997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400482, -0.344149, -0.849220,
		0.235285, 0.934337, -0.267686,
		0.885582, -0.092605, 0.455158,
		31.708092, 35.043789, 32.898544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644613, 35.554375, 32.223400>,  <31.088184, 35.108612, 32.579933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644613, 35.554375, 32.223400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829275, 35.252274, 32.409504>,  <31.940071, 35.071011, 32.521168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829275, 35.252274, 32.409504>,  <31.644613, 35.554375, 32.223400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829275, 35.252274, 32.409504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383253, -0.303197, -0.872461,
		0.799996, 0.581087, 0.149481,
		0.461654, -0.755255, 0.465260,
		31.967772, 35.025696, 32.549084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319263, 35.623577, 31.957586>,  <31.644613, 35.554375, 32.223400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319263, 35.623577, 31.957586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250286, 35.249729, 32.082001>,  <32.208900, 35.025421, 32.156651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250286, 35.249729, 32.082001>,  <32.319263, 35.623577, 31.957586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250286, 35.249729, 32.082001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365667, -0.353943, -0.860821,
		0.914631, -0.034710, 0.402797,
		-0.172446, -0.934623, 0.311035,
		32.198551, 34.969341, 32.175312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869228, 35.317913, 31.798609>,  <32.319263, 35.623577, 31.957586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869228, 35.317913, 31.798609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596767, 35.026794, 31.830460>,  <32.433292, 34.852123, 31.849569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596767, 35.026794, 31.830460>,  <32.869228, 35.317913, 31.798609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596767, 35.026794, 31.830460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270713, -0.351416, -0.896226,
		0.680253, -0.588911, 0.436393,
		-0.681153, -0.727798, 0.079626,
		32.392422, 34.808456, 31.854347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207893, 34.640419, 31.812729>,  <32.869228, 35.317913, 31.798609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207893, 34.640419, 31.812729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842907, 34.615215, 31.651022>,  <32.623913, 34.600094, 31.553997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842907, 34.615215, 31.651022>,  <33.207893, 34.640419, 31.812729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842907, 34.615215, 31.651022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383310, -0.477220, -0.790781,
		-0.143095, -0.876521, 0.459602,
		-0.912468, -0.063013, -0.404267,
		32.569168, 34.596310, 31.529741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237904, 33.991364, 31.408791>,  <33.207893, 34.640419, 31.812729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237904, 33.991364, 31.408791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956036, 34.229362, 31.254171>,  <32.786915, 34.372162, 31.161400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956036, 34.229362, 31.254171>,  <33.237904, 33.991364, 31.408791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956036, 34.229362, 31.254171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357973, -0.172248, -0.917707,
		-0.612613, -0.785056, -0.091614,
		-0.704671, 0.594995, -0.386550,
		32.744633, 34.407860, 31.138206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864994, 33.638023, 30.850906>,  <33.237904, 33.991364, 31.408791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864994, 33.638023, 30.850906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901772, 34.032497, 30.795801>,  <32.923836, 34.269184, 30.762737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901772, 34.032497, 30.795801>,  <32.864994, 33.638023, 30.850906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901772, 34.032497, 30.795801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546693, -0.165626, -0.820789,
		-0.832270, 0.000151, -0.554371,
		0.091942, 0.986189, -0.137763,
		32.929356, 34.328354, 30.754473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705036, 33.771141, 30.193745>,  <32.864994, 33.638023, 30.850906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705036, 33.771141, 30.193745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878277, 34.117443, 30.294062>,  <32.982220, 34.325222, 30.354252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878277, 34.117443, 30.294062>,  <32.705036, 33.771141, 30.193745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878277, 34.117443, 30.294062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450144, 0.033305, -0.892335,
		-0.780894, 0.499362, -0.375289,
		0.433099, 0.865753, 0.250792,
		33.008205, 34.377171, 30.369299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688732, 34.121365, 29.592255>,  <32.705036, 33.771141, 30.193745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688732, 34.121365, 29.592255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976467, 34.311951, 29.794460>,  <33.149109, 34.426300, 29.915783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976467, 34.311951, 29.794460>,  <32.688732, 34.121365, 29.592255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976467, 34.311951, 29.794460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557682, 0.037797, -0.829194,
		-0.414185, 0.878383, -0.238525,
		0.719334, 0.476461, 0.505513,
		33.192268, 34.454887, 29.946114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848045, 34.719849, 29.169477>,  <32.688732, 34.121365, 29.592255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848045, 34.719849, 29.169477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174671, 34.704796, 29.399891>,  <33.370647, 34.695763, 29.538139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174671, 34.704796, 29.399891>,  <32.848045, 34.719849, 29.169477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174671, 34.704796, 29.399891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561629, 0.282435, -0.777691,
		-0.133426, 0.958548, 0.251760,
		0.816560, -0.037631, 0.576033,
		33.419640, 34.693508, 29.572701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174603, 35.346684, 29.148502>,  <32.848045, 34.719849, 29.169477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174603, 35.346684, 29.148502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474167, 35.101604, 29.249491>,  <33.653904, 34.954559, 29.310083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474167, 35.101604, 29.249491>,  <33.174603, 35.346684, 29.148502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474167, 35.101604, 29.249491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523123, 0.312732, -0.792806,
		0.406792, 0.725812, 0.554722,
		0.748908, -0.612695, 0.252472,
		33.698837, 34.917797, 29.325232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758900, 35.693504, 29.195166>,  <33.174603, 35.346684, 29.148502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758900, 35.693504, 29.195166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876778, 35.320213, 29.112949>,  <33.947506, 35.096241, 29.063620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876778, 35.320213, 29.112949>,  <33.758900, 35.693504, 29.195166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876778, 35.320213, 29.112949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600603, 0.348183, -0.719753,
		0.743256, 0.088661, 0.663106,
		0.294696, -0.933225, -0.205539,
		33.965187, 35.040245, 29.051287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440502, 35.786079, 29.157688>,  <33.758900, 35.693504, 29.195166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440502, 35.786079, 29.157688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361012, 35.428806, 28.996332>,  <34.313316, 35.214443, 28.899519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361012, 35.428806, 28.996332>,  <34.440502, 35.786079, 29.157688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361012, 35.428806, 28.996332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495101, 0.263720, -0.827845,
		0.845802, -0.364236, 0.389809,
		-0.198731, -0.893187, -0.403389,
		34.301392, 35.160851, 28.875315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125641, 35.513580, 28.776512>,  <34.440502, 35.786079, 29.157688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125641, 35.513580, 28.776512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822380, 35.300106, 28.626638>,  <34.640423, 35.172020, 28.536715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822380, 35.300106, 28.626638>,  <35.125641, 35.513580, 28.776512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822380, 35.300106, 28.626638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416655, 0.045531, -0.907924,
		0.501604, -0.844457, 0.187844,
		-0.758150, -0.533684, -0.374686,
		34.594936, 35.139999, 28.514233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416122, 34.970982, 28.291977>,  <35.125641, 35.513580, 28.776512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416122, 34.970982, 28.291977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052612, 35.072922, 28.159805>,  <34.834507, 35.134087, 28.080503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052612, 35.072922, 28.159805>,  <35.416122, 34.970982, 28.291977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052612, 35.072922, 28.159805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327558, -0.054913, -0.943234,
		-0.258532, -0.965419, -0.033576,
		-0.908772, 0.254854, -0.330428,
		34.779980, 35.149380, 28.060677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406097, 34.730865, 27.646257>,  <35.416122, 34.970982, 28.291977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406097, 34.730865, 27.646257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076778, 34.955860, 27.615801>,  <34.879189, 35.090855, 27.597527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076778, 34.955860, 27.615801>,  <35.406097, 34.730865, 27.646257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076778, 34.955860, 27.615801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127347, 0.052321, -0.990477,
		-0.553143, -0.825152, -0.114707,
		-0.823295, 0.562483, -0.076139,
		34.829788, 35.124603, 27.592958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104042, 34.440296, 27.136099>,  <35.406097, 34.730865, 27.646257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104042, 34.440296, 27.136099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950699, 34.809704, 27.140930>,  <34.858692, 35.031349, 27.143829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950699, 34.809704, 27.140930>,  <35.104042, 34.440296, 27.136099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950699, 34.809704, 27.140930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090965, 0.050765, -0.994559,
		-0.919109, -0.380176, -0.103469,
		-0.383360, 0.923520, 0.012076,
		34.835690, 35.086761, 27.144552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641914, 34.412415, 26.617388>,  <35.104042, 34.440296, 27.136099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641914, 34.412415, 26.617388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690022, 34.806023, 26.669920>,  <34.718884, 35.042187, 26.701439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690022, 34.806023, 26.669920>,  <34.641914, 34.412415, 26.617388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690022, 34.806023, 26.669920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005106, 0.131677, -0.991279,
		-0.992729, 0.119886, 0.010812,
		0.120264, 0.984016, 0.131332,
		34.726101, 35.101227, 26.709320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202057, 34.793289, 26.192642>,  <34.641914, 34.412415, 26.617388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202057, 34.793289, 26.192642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478012, 35.075500, 26.257496>,  <34.643585, 35.244827, 26.296408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478012, 35.075500, 26.257496>,  <34.202057, 34.793289, 26.192642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478012, 35.075500, 26.257496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038526, 0.187868, -0.981438,
		-0.722889, 0.683330, 0.102427,
		0.689889, 0.705525, 0.162134,
		34.684978, 35.287159, 26.306135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966537, 35.468559, 25.923658>,  <34.202057, 34.793289, 26.192642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966537, 35.468559, 25.923658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365662, 35.489292, 25.940054>,  <34.605137, 35.501732, 25.949892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365662, 35.489292, 25.940054>,  <33.966537, 35.468559, 25.923658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365662, 35.489292, 25.940054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016895, 0.399581, -0.916542,
		-0.063885, 0.915231, 0.397832,
		0.997814, 0.051832, 0.040990,
		34.665005, 35.504841, 25.952351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124191, 36.144688, 25.897488>,  <33.966537, 35.468559, 25.923658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124191, 36.144688, 25.897488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455879, 35.963142, 25.767014>,  <34.654892, 35.854214, 25.688730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455879, 35.963142, 25.767014>,  <34.124191, 36.144688, 25.897488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455879, 35.963142, 25.767014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075063, 0.487879, -0.869678,
		0.553854, 0.745642, 0.370492,
		0.829223, -0.453865, -0.326184,
		34.704647, 35.826984, 25.669159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667427, 36.688602, 25.852274>,  <34.124191, 36.144688, 25.897488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667427, 36.688602, 25.852274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756721, 36.379089, 25.615147>,  <34.810299, 36.193382, 25.472870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756721, 36.379089, 25.615147>,  <34.667427, 36.688602, 25.852274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756721, 36.379089, 25.615147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081223, 0.591284, -0.802363,
		0.971375, 0.227264, 0.069145,
		0.223233, -0.773779, -0.592818,
		34.823692, 36.146957, 25.437302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872818, 37.074074, 25.242971>,  <34.667427, 36.688602, 25.852274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872818, 37.074074, 25.242971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882923, 36.692139, 25.124548>,  <34.888985, 36.462978, 25.053493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882923, 36.692139, 25.124548>,  <34.872818, 37.074074, 25.242971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882923, 36.692139, 25.124548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092866, 0.292633, -0.951705,
		0.995358, 0.051536, -0.081279,
		0.025262, -0.954835, -0.296061,
		34.890503, 36.405689, 25.035730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428219, 36.992966, 24.783497>,  <34.872818, 37.074074, 25.242971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428219, 36.992966, 24.783497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190464, 36.697903, 24.655394>,  <35.047810, 36.520866, 24.578531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190464, 36.697903, 24.655394>,  <35.428219, 36.992966, 24.783497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190464, 36.697903, 24.655394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025680, 0.415452, -0.909252,
		0.803766, -0.532227, -0.265884,
		-0.594390, -0.737655, -0.320259,
		35.012146, 36.476608, 24.559317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784252, 36.746117, 24.172873>,  <35.428219, 36.992966, 24.783497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784252, 36.746117, 24.172873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410152, 36.609253, 24.136570>,  <35.185692, 36.527134, 24.114788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410152, 36.609253, 24.136570>,  <35.784252, 36.746117, 24.172873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410152, 36.609253, 24.136570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079147, 0.452006, -0.888497,
		0.345032, -0.823781, -0.449818,
		-0.935248, -0.342162, -0.090757,
		35.129578, 36.506603, 24.109343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757236, 36.447479, 23.597700>,  <35.784252, 36.746117, 24.172873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757236, 36.447479, 23.597700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365776, 36.487617, 23.669443>,  <35.130898, 36.511700, 23.712488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365776, 36.487617, 23.669443>,  <35.757236, 36.447479, 23.597700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365776, 36.487617, 23.669443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143349, 0.292085, -0.945588,
		-0.147271, -0.951114, -0.271466,
		-0.978653, 0.100343, 0.179357,
		35.072182, 36.517719, 23.723249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348221, 36.257751, 23.009928>,  <35.757236, 36.447479, 23.597700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348221, 36.257751, 23.009928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088970, 36.493599, 23.202707>,  <34.933418, 36.635109, 23.318375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088970, 36.493599, 23.202707>,  <35.348221, 36.257751, 23.009928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088970, 36.493599, 23.202707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287251, 0.396830, -0.871787,
		-0.705276, -0.703471, -0.087828,
		-0.648130, 0.589622, 0.481947,
		34.894531, 36.670486, 23.347292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789513, 36.369133, 22.475313>,  <35.348221, 36.257751, 23.009928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789513, 36.369133, 22.475313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721439, 36.652073, 22.749741>,  <34.680595, 36.821838, 22.914396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721439, 36.652073, 22.749741>,  <34.789513, 36.369133, 22.475313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721439, 36.652073, 22.749741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089853, 0.682184, -0.725639,
		-0.981308, -0.185136, -0.052537,
		-0.170182, 0.707354, 0.686067,
		34.670383, 36.864281, 22.955561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213978, 36.702286, 22.323978>,  <34.789513, 36.369133, 22.475313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213978, 36.702286, 22.323978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457043, 36.953754, 22.518101>,  <34.602882, 37.104637, 22.634575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457043, 36.953754, 22.518101>,  <34.213978, 36.702286, 22.323978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457043, 36.953754, 22.518101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035145, 0.631753, -0.774373,
		-0.793420, 0.453499, 0.405986,
		0.607659, 0.628671, 0.485307,
		34.639339, 37.142357, 22.663692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952095, 37.408325, 22.175623>,  <34.213978, 36.702286, 22.323978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952095, 37.408325, 22.175623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318558, 37.473953, 22.321907>,  <34.538433, 37.513329, 22.409678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318558, 37.473953, 22.321907>,  <33.952095, 37.408325, 22.175623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318558, 37.473953, 22.321907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074800, 0.826383, -0.558118,
		-0.393787, 0.538677, 0.744821,
		0.916153, 0.164067, 0.365712,
		34.593403, 37.523174, 22.431622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947811, 38.058090, 22.490845>,  <33.952095, 37.408325, 22.175623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947811, 38.058090, 22.490845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336578, 38.002796, 22.414669>,  <34.569839, 37.969620, 22.368963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336578, 38.002796, 22.414669>,  <33.947811, 38.058090, 22.490845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336578, 38.002796, 22.414669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009274, 0.786137, -0.617982,
		0.235139, 0.602394, 0.762779,
		0.971917, -0.138238, -0.190438,
		34.628155, 37.961327, 22.357538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175941, 38.690475, 22.643570>,  <33.947811, 38.058090, 22.490845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175941, 38.690475, 22.643570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455547, 38.516502, 22.416515>,  <34.623310, 38.412117, 22.280283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455547, 38.516502, 22.416515>,  <34.175941, 38.690475, 22.643570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455547, 38.516502, 22.416515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018370, 0.782593, -0.622262,
		0.714872, 0.445398, 0.539054,
		0.699014, -0.434935, -0.567636,
		34.665253, 38.386021, 22.246225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662315, 39.148148, 22.545521>,  <34.175941, 38.690475, 22.643570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662315, 39.148148, 22.545521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741627, 38.897877, 22.243736>,  <34.789215, 38.747715, 22.062666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741627, 38.897877, 22.243736>,  <34.662315, 39.148148, 22.545521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741627, 38.897877, 22.243736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239806, 0.777316, -0.581611,
		0.950357, -0.065603, 0.304167,
		0.198279, -0.625680, -0.754460,
		34.801109, 38.710175, 22.017399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337116, 39.311600, 22.340805>,  <34.662315, 39.148148, 22.545521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337116, 39.311600, 22.340805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132301, 39.153259, 22.035881>,  <35.009411, 39.058254, 21.852928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132301, 39.153259, 22.035881>,  <35.337116, 39.311600, 22.340805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132301, 39.153259, 22.035881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180005, 0.818320, -0.545849,
		0.839891, -0.416714, -0.347753,
		-0.512036, -0.395857, -0.762310,
		34.978687, 39.034504, 21.807188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779339, 39.282887, 21.728807>,  <35.337116, 39.311600, 22.340805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779339, 39.282887, 21.728807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395741, 39.322857, 21.622721>,  <35.165581, 39.346840, 21.559069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395741, 39.322857, 21.622721>,  <35.779339, 39.282887, 21.728807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395741, 39.322857, 21.622721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236326, 0.798492, -0.553679,
		0.156443, -0.593654, -0.789367,
		-0.958997, 0.099929, -0.265214,
		35.108040, 39.352837, 21.543156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818123, 39.180988, 21.002150>,  <35.779339, 39.282887, 21.728807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818123, 39.180988, 21.002150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465420, 39.362568, 21.053421>,  <35.253796, 39.471516, 21.084185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465420, 39.362568, 21.053421>,  <35.818123, 39.180988, 21.002150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465420, 39.362568, 21.053421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181149, 0.576792, -0.796552,
		-0.435525, -0.679149, -0.590825,
		-0.881761, 0.453945, 0.128180,
		35.200890, 39.498753, 21.091875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443417, 39.213146, 20.383741>,  <35.818123, 39.180988, 21.002150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443417, 39.213146, 20.383741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276245, 39.523682, 20.572477>,  <35.175941, 39.710003, 20.685719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276245, 39.523682, 20.572477>,  <35.443417, 39.213146, 20.383741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276245, 39.523682, 20.572477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148559, 0.570783, -0.807550,
		-0.896253, -0.267398, -0.353876,
		-0.417924, 0.776341, 0.471841,
		35.150867, 39.756584, 20.714029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148376, 39.596977, 19.861813>,  <35.443417, 39.213146, 20.383741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148376, 39.596977, 19.861813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141266, 39.871513, 20.152637>,  <35.137001, 40.036236, 20.327133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141266, 39.871513, 20.152637>,  <35.148376, 39.596977, 19.861813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141266, 39.871513, 20.152637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040596, 0.727074, -0.685358,
		-0.999017, 0.017332, -0.040787,
		-0.017777, 0.686340, 0.727063,
		35.135933, 40.077415, 20.370756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571415, 40.069538, 19.676216>,  <35.148376, 39.596977, 19.861813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571415, 40.069538, 19.676216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843235, 40.256557, 19.902351>,  <35.006329, 40.368771, 20.038033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843235, 40.256557, 19.902351>,  <34.571415, 40.069538, 19.676216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843235, 40.256557, 19.902351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014038, 0.778749, -0.627178,
		-0.733495, 0.418263, 0.535762,
		0.679550, 0.467553, 0.565337,
		35.047100, 40.396824, 20.071953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393837, 40.785629, 19.680902>,  <34.571415, 40.069538, 19.676216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393837, 40.785629, 19.680902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753746, 40.840244, 19.846685>,  <34.969692, 40.873013, 19.946156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753746, 40.840244, 19.846685>,  <34.393837, 40.785629, 19.680902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753746, 40.840244, 19.846685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189739, 0.732888, -0.653356,
		-0.392956, 0.666508, 0.633524,
		0.899769, 0.136536, 0.414455,
		35.023678, 40.881207, 19.971022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461323, 41.450806, 19.799994>,  <34.393837, 40.785629, 19.680902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461323, 41.450806, 19.799994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844688, 41.337864, 19.783443>,  <35.074707, 41.270100, 19.773514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844688, 41.337864, 19.783443>,  <34.461323, 41.450806, 19.799994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844688, 41.337864, 19.783443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236876, 0.868013, -0.436398,
		0.159133, 0.408451, 0.898802,
		0.958419, -0.282350, -0.041377,
		35.132214, 41.253159, 19.771030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857845, 41.948101, 20.133471>,  <34.461323, 41.450806, 19.799994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857845, 41.948101, 20.133471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110256, 41.784180, 19.869995>,  <35.261703, 41.685829, 19.711910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110256, 41.784180, 19.869995>,  <34.857845, 41.948101, 20.133471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110256, 41.784180, 19.869995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363206, 0.906343, -0.215927,
		0.685485, -0.102985, 0.720766,
		0.631024, -0.409801, -0.658689,
		35.299564, 41.661240, 19.672388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477898, 42.265179, 20.209873>,  <34.857845, 41.948101, 20.133471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477898, 42.265179, 20.209873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507187, 42.111938, 19.841553>,  <35.524761, 42.019997, 19.620560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507187, 42.111938, 19.841553>,  <35.477898, 42.265179, 20.209873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507187, 42.111938, 19.841553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269921, 0.896434, -0.351495,
		0.960095, -0.222807, 0.169042,
		0.073219, -0.383097, -0.920802,
		35.529152, 41.997009, 19.565311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069534, 42.570213, 19.853992>,  <35.477898, 42.265179, 20.209873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069534, 42.570213, 19.853992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871784, 42.424179, 19.538446>,  <35.753136, 42.336559, 19.349119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871784, 42.424179, 19.538446>,  <36.069534, 42.570213, 19.853992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871784, 42.424179, 19.538446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031270, 0.899468, -0.435867,
		0.868688, -0.240149, -0.433256,
		-0.494372, -0.365084, -0.788866,
		35.723473, 42.314655, 19.301786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480560, 42.718460, 19.301159>,  <36.069534, 42.570213, 19.853992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480560, 42.718460, 19.301159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111942, 42.655685, 19.159101>,  <35.890770, 42.618019, 19.073866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111942, 42.655685, 19.159101>,  <36.480560, 42.718460, 19.301159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111942, 42.655685, 19.159101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082208, 0.815075, -0.573493,
		0.379471, -0.557695, -0.738226,
		-0.921544, -0.156936, -0.355145,
		35.835480, 42.608604, 19.052559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585922, 42.869823, 18.616020>,  <36.480560, 42.718460, 19.301159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585922, 42.869823, 18.616020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190502, 42.880562, 18.675406>,  <35.953251, 42.887005, 18.711037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190502, 42.880562, 18.675406>,  <36.585922, 42.869823, 18.616020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190502, 42.880562, 18.675406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082436, 0.728038, -0.680562,
		-0.126360, -0.685011, -0.717491,
		-0.988553, 0.026849, 0.148464,
		35.893936, 42.888615, 18.719944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402523, 43.018528, 17.913733>,  <36.585922, 42.869823, 18.616020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402523, 43.018528, 17.913733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086975, 43.109547, 18.142088>,  <35.897648, 43.164158, 18.279100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086975, 43.109547, 18.142088>,  <36.402523, 43.018528, 17.913733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086975, 43.109547, 18.142088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263495, 0.713986, -0.648687,
		-0.555211, -0.662153, -0.503283,
		-0.788867, 0.227546, 0.570887,
		35.850315, 43.177811, 18.313354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768856, 42.987415, 17.490057>,  <36.402523, 43.018528, 17.913733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768856, 42.987415, 17.490057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687592, 43.222767, 17.803116>,  <35.638832, 43.363979, 17.990952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687592, 43.222767, 17.803116>,  <35.768856, 42.987415, 17.490057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687592, 43.222767, 17.803116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464068, 0.645976, -0.606099,
		-0.862186, -0.486339, 0.141808,
		-0.203165, 0.588378, 0.782646,
		35.626640, 43.399281, 18.037910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200111, 43.296856, 17.351089>,  <35.768856, 42.987415, 17.490057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200111, 43.296856, 17.351089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346157, 43.555397, 17.619097>,  <35.433784, 43.710522, 17.779902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346157, 43.555397, 17.619097>,  <35.200111, 43.296856, 17.351089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346157, 43.555397, 17.619097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408925, 0.757903, -0.508294,
		-0.836345, -0.088404, 0.541028,
		0.365112, 0.646349, 0.670019,
		35.455692, 43.749302, 17.820103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925083, 43.891087, 17.062668>,  <35.200111, 43.296856, 17.351089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925083, 43.891087, 17.062668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103775, 44.033257, 17.391085>,  <35.210991, 44.118557, 17.588135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103775, 44.033257, 17.391085>,  <34.925083, 43.891087, 17.062668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103775, 44.033257, 17.391085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090031, 0.930903, -0.353997,
		-0.890129, 0.084221, 0.447859,
		0.446727, 0.355424, 0.821041,
		35.237793, 44.139885, 17.637398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478889, 44.444393, 17.435020>,  <34.925083, 43.891087, 17.062668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478889, 44.444393, 17.435020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875759, 44.480152, 17.469902>,  <35.113880, 44.501606, 17.490831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875759, 44.480152, 17.469902>,  <34.478889, 44.444393, 17.435020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875759, 44.480152, 17.469902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046472, 0.912421, -0.406606,
		-0.115916, 0.399370, 0.909432,
		0.992171, 0.089395, 0.087205,
		35.173412, 44.506969, 17.496063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675800, 45.081196, 17.727779>,  <34.478889, 44.444393, 17.435020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675800, 45.081196, 17.727779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982864, 44.951206, 17.506842>,  <35.167103, 44.873211, 17.374279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982864, 44.951206, 17.506842>,  <34.675800, 45.081196, 17.727779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982864, 44.951206, 17.506842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164541, 0.932944, -0.320221,
		0.619368, 0.154939, 0.769660,
		0.767664, -0.324975, -0.552342,
		35.213165, 44.853714, 17.341139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781933, 45.296795, 17.139458>,  <34.675800, 45.081196, 17.727779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781933, 45.296795, 17.139458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961380, 45.557434, 16.894783>,  <35.069050, 45.713818, 16.747978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961380, 45.557434, 16.894783>,  <34.781933, 45.296795, 17.139458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961380, 45.557434, 16.894783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281110, 0.752566, 0.595502,
		0.848361, -0.095204, 0.520787,
		0.448621, 0.651599, -0.611685,
		35.095966, 45.752914, 16.711277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034698, 45.984596, 17.521542>,  <34.781933, 45.296795, 17.139458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034698, 45.984596, 17.521542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946396, 46.120647, 17.155901>,  <34.893414, 46.202278, 16.936518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946396, 46.120647, 17.155901>,  <35.034698, 45.984596, 17.521542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946396, 46.120647, 17.155901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335214, 0.853669, 0.398599,
		0.915913, 0.394413, -0.074438,
		-0.220758, 0.340130, -0.914099,
		34.880169, 46.222687, 16.881672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687809, 46.237091, 17.065910>,  <35.034698, 45.984596, 17.521542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687809, 46.237091, 17.065910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033047, 46.438801, 17.077057>,  <36.240189, 46.559826, 17.083744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033047, 46.438801, 17.077057>,  <35.687809, 46.237091, 17.065910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033047, 46.438801, 17.077057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168050, 0.234718, 0.957427,
		0.476268, -0.831031, 0.287327,
		0.863092, 0.504277, 0.027866,
		36.291973, 46.590084, 17.085417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924030, 45.822689, 17.551428>,  <35.687809, 46.237091, 17.065910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924030, 45.822689, 17.551428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996002, 46.216011, 17.540531>,  <36.039185, 46.452003, 17.533993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996002, 46.216011, 17.540531>,  <35.924030, 45.822689, 17.551428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996002, 46.216011, 17.540531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414447, 0.100896, 0.904463,
		0.892109, -0.151453, 0.425681,
		0.179933, 0.983301, -0.027240,
		36.049984, 46.511002, 17.532358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456085, 45.930885, 18.006903>,  <35.924030, 45.822689, 17.551428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456085, 45.930885, 18.006903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196480, 46.231594, 17.960209>,  <36.040718, 46.412018, 17.932192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196480, 46.231594, 17.960209>,  <36.456085, 45.930885, 18.006903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196480, 46.231594, 17.960209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433802, -0.239637, 0.868556,
		0.624979, 0.614343, 0.481646,
		-0.649012, 0.751769, -0.116735,
		36.001778, 46.457127, 17.925188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412037, 46.543365, 18.500992>,  <36.456085, 45.930885, 18.006903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412037, 46.543365, 18.500992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055889, 46.438282, 18.352278>,  <35.842201, 46.375233, 18.263050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055889, 46.438282, 18.352278>,  <36.412037, 46.543365, 18.500992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055889, 46.438282, 18.352278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286687, -0.310816, 0.906203,
		-0.353621, 0.913444, 0.201427,
		-0.890372, -0.262706, -0.371784,
		35.788776, 46.359470, 18.240742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817081, 46.871727, 18.973963>,  <36.412037, 46.543365, 18.500992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817081, 46.871727, 18.973963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714741, 46.541924, 18.772079>,  <35.653336, 46.344044, 18.650949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714741, 46.541924, 18.772079>,  <35.817081, 46.871727, 18.973963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714741, 46.541924, 18.772079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317316, -0.421531, 0.849483,
		-0.913153, 0.377495, -0.153779,
		-0.255853, -0.824505, -0.504708,
		35.637985, 46.294571, 18.620667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138584, 46.641697, 19.181250>,  <35.817081, 46.871727, 18.973963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138584, 46.641697, 19.181250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370010, 46.331589, 19.079884>,  <35.508865, 46.145523, 19.019064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370010, 46.331589, 19.079884>,  <35.138584, 46.641697, 19.181250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370010, 46.331589, 19.079884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268641, -0.474488, 0.838268,
		-0.770129, -0.416911, -0.482790,
		0.578561, -0.775272, -0.253418,
		35.543579, 46.099007, 19.003859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807701, 46.090710, 19.388206>,  <35.138584, 46.641697, 19.181250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807701, 46.090710, 19.388206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175186, 45.933094, 19.377659>,  <35.395679, 45.838524, 19.371330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175186, 45.933094, 19.377659>,  <34.807701, 46.090710, 19.388206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175186, 45.933094, 19.377659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176610, -0.469656, 0.865004,
		-0.353226, -0.790037, -0.501072,
		0.918717, -0.394036, -0.026366,
		35.450802, 45.814884, 19.369749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760799, 45.410587, 19.426640>,  <34.807701, 46.090710, 19.388206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760799, 45.410587, 19.426640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126057, 45.496632, 19.565147>,  <35.345211, 45.548260, 19.648252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126057, 45.496632, 19.565147>,  <34.760799, 45.410587, 19.426640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126057, 45.496632, 19.565147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252935, -0.367170, 0.895103,
		0.319686, -0.904938, -0.280869,
		0.913140, 0.215110, 0.346270,
		35.399998, 45.561165, 19.669029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959091, 44.843292, 19.738422>,  <34.760799, 45.410587, 19.426640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959091, 44.843292, 19.738422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225574, 45.109089, 19.873842>,  <35.385464, 45.268566, 19.955093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225574, 45.109089, 19.873842>,  <34.959091, 44.843292, 19.738422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225574, 45.109089, 19.873842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078983, -0.514277, 0.853980,
		0.741572, -0.542188, -0.395098,
		0.666207, 0.664494, 0.338550,
		35.425438, 45.308437, 19.975407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560829, 44.401669, 19.810335>,  <34.959091, 44.843292, 19.738422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560829, 44.401669, 19.810335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561138, 44.718937, 20.053932>,  <35.561325, 44.909298, 20.200090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561138, 44.718937, 20.053932>,  <35.560829, 44.401669, 19.810335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561138, 44.718937, 20.053932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055404, -0.608026, 0.791982,
		0.998464, -0.034354, 0.043474,
		0.000775, 0.793174, 0.608995,
		35.561371, 44.956890, 20.236631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052746, 44.325939, 20.290878>,  <35.560829, 44.401669, 19.810335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052746, 44.325939, 20.290878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823250, 44.601353, 20.468302>,  <35.685551, 44.766602, 20.574755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823250, 44.601353, 20.468302>,  <36.052746, 44.325939, 20.290878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823250, 44.601353, 20.468302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120542, -0.464677, 0.877237,
		0.810118, 0.556774, 0.183607,
		-0.573741, 0.688533, 0.443558,
		35.651127, 44.807911, 20.601370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336227, 44.356033, 20.961420>,  <36.052746, 44.325939, 20.290878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336227, 44.356033, 20.961420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985798, 44.545372, 20.998158>,  <35.775539, 44.658978, 21.020201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985798, 44.545372, 20.998158>,  <36.336227, 44.356033, 20.961420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985798, 44.545372, 20.998158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205183, -0.538346, 0.817364,
		0.436344, 0.697226, 0.568754,
		-0.876073, 0.473350, 0.091845,
		35.722977, 44.687378, 21.025711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294376, 44.596748, 21.702669>,  <36.336227, 44.356033, 20.961420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294376, 44.596748, 21.702669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922432, 44.584270, 21.556040>,  <35.699265, 44.576782, 21.468061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922432, 44.584270, 21.556040>,  <36.294376, 44.596748, 21.702669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922432, 44.584270, 21.556040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305618, -0.489192, 0.816877,
		-0.204811, 0.871618, 0.445348,
		-0.929866, -0.031199, -0.366574,
		35.643471, 44.574909, 21.446068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808483, 44.794483, 22.271849>,  <36.294376, 44.596748, 21.702669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808483, 44.794483, 22.271849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600441, 44.570450, 22.013922>,  <35.475616, 44.436028, 21.859165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600441, 44.570450, 22.013922>,  <35.808483, 44.794483, 22.271849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600441, 44.570450, 22.013922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269202, -0.608984, 0.746103,
		-0.810565, 0.561641, 0.165962,
		-0.520110, -0.560088, -0.644816,
		35.444408, 44.402424, 21.820477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182922, 44.565624, 22.728706>,  <35.808483, 44.794483, 22.271849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182922, 44.565624, 22.728706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200851, 44.308975, 22.422422>,  <35.211609, 44.154987, 22.238651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200851, 44.308975, 22.422422>,  <35.182922, 44.565624, 22.728706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200851, 44.308975, 22.422422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154122, -0.761746, 0.629277,
		-0.987035, 0.089807, -0.133032,
		0.044823, -0.641621, -0.765711,
		35.214298, 44.116489, 22.192709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655895, 44.129784, 22.717304>,  <35.182922, 44.565624, 22.728706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655895, 44.129784, 22.717304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908035, 43.926582, 22.482498>,  <35.059319, 43.804661, 22.341614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908035, 43.926582, 22.482498>,  <34.655895, 44.129784, 22.717304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908035, 43.926582, 22.482498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121163, -0.811278, 0.571969,
		-0.766794, -0.289419, -0.572943,
		0.630354, -0.508002, -0.587016,
		35.097141, 43.774181, 22.306393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404842, 43.449158, 22.706312>,  <34.655895, 44.129784, 22.717304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404842, 43.449158, 22.706312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759434, 43.363464, 22.542233>,  <34.972187, 43.312046, 22.443785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759434, 43.363464, 22.542233>,  <34.404842, 43.449158, 22.706312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759434, 43.363464, 22.542233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018377, -0.869394, 0.493778,
		-0.462411, -0.445261, -0.766759,
		0.886475, -0.214238, -0.410200,
		35.025375, 43.299194, 22.419172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290924, 42.842827, 22.465105>,  <34.404842, 43.449158, 22.706312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290924, 42.842827, 22.465105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686958, 42.856594, 22.519567>,  <34.924580, 42.864853, 22.552246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686958, 42.856594, 22.519567>,  <34.290924, 42.842827, 22.465105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686958, 42.856594, 22.519567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024639, -0.911911, 0.409648,
		0.138262, -0.408943, -0.902025,
		0.990089, 0.034414, 0.136158,
		34.983986, 42.866917, 22.560415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505978, 42.286545, 22.259243>,  <34.290924, 42.842827, 22.465105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505978, 42.286545, 22.259243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791172, 42.411591, 22.510298>,  <34.962288, 42.486618, 22.660931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791172, 42.411591, 22.510298>,  <34.505978, 42.286545, 22.259243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791172, 42.411591, 22.510298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063388, -0.862713, 0.501705,
		0.698309, -0.397492, -0.595286,
		0.712985, 0.312611, 0.627636,
		35.005066, 42.505375, 22.698589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067944, 41.749928, 22.310625>,  <34.505978, 42.286545, 22.259243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067944, 41.749928, 22.310625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077095, 41.991611, 22.629225>,  <35.082588, 42.136620, 22.820385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077095, 41.991611, 22.629225>,  <35.067944, 41.749928, 22.310625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077095, 41.991611, 22.629225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086823, -0.794898, 0.600499,
		0.995961, 0.055413, -0.070648,
		0.022882, 0.604207, 0.796499,
		35.083961, 42.172874, 22.868174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285851, 41.246082, 22.741331>,  <35.067944, 41.749928, 22.310625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285851, 41.246082, 22.741331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224545, 41.545307, 22.999609>,  <35.187763, 41.724842, 23.154575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224545, 41.545307, 22.999609>,  <35.285851, 41.246082, 22.741331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224545, 41.545307, 22.999609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020168, -0.655645, 0.754800,
		0.987980, 0.102661, 0.115573,
		-0.153263, 0.748058, 0.645693,
		35.178566, 41.769726, 23.193317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760357, 41.190609, 23.298544>,  <35.285851, 41.246082, 22.741331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760357, 41.190609, 23.298544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450253, 41.385677, 23.459118>,  <35.264191, 41.502720, 23.555462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450253, 41.385677, 23.459118>,  <35.760357, 41.190609, 23.298544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450253, 41.385677, 23.459118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016777, -0.651213, 0.758710,
		0.631419, 0.581462, 0.513041,
		-0.775260, 0.487671, 0.401433,
		35.217674, 41.531979, 23.579548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835361, 40.997898, 23.938578>,  <35.760357, 41.190609, 23.298544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835361, 40.997898, 23.938578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476730, 41.173862, 23.959055>,  <35.261551, 41.279442, 23.971342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476730, 41.173862, 23.959055>,  <35.835361, 40.997898, 23.938578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476730, 41.173862, 23.959055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272730, -0.639497, 0.718792,
		0.348942, 0.630493, 0.693338,
		-0.896581, 0.439911, 0.051193,
		35.207756, 41.305836, 23.974413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744389, 41.070862, 24.597500>,  <35.835361, 40.997898, 23.938578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744389, 41.070862, 24.597500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381725, 41.081028, 24.429062>,  <35.164127, 41.087128, 24.327999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381725, 41.081028, 24.429062>,  <35.744389, 41.070862, 24.597500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381725, 41.081028, 24.429062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380813, -0.478797, 0.791034,
		-0.181518, 0.877558, 0.443783,
		-0.906660, 0.025411, -0.421096,
		35.109726, 41.088650, 24.302732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311226, 41.201286, 25.180626>,  <35.744389, 41.070862, 24.597500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311226, 41.201286, 25.180626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062416, 41.074947, 24.894039>,  <34.913132, 40.999142, 24.722088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062416, 41.074947, 24.894039>,  <35.311226, 41.201286, 25.180626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062416, 41.074947, 24.894039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444959, -0.610331, 0.655368,
		-0.644279, 0.726453, 0.239101,
		-0.622025, -0.315850, -0.716466,
		34.875809, 40.980194, 24.679100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623909, 41.208714, 25.448887>,  <35.311226, 41.201286, 25.180626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623909, 41.208714, 25.448887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606094, 40.949966, 25.144367>,  <34.595406, 40.794716, 24.961657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606094, 40.949966, 25.144367>,  <34.623909, 41.208714, 25.448887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606094, 40.949966, 25.144367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339451, -0.706914, 0.620521,
		-0.939569, 0.286060, -0.188096,
		-0.044539, -0.646871, -0.761298,
		34.592731, 40.755905, 24.915977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953831, 41.064148, 25.325657>,  <34.623909, 41.208714, 25.448887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953831, 41.064148, 25.325657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168346, 40.751877, 25.197329>,  <34.297058, 40.564514, 25.120331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168346, 40.751877, 25.197329>,  <33.953831, 41.064148, 25.325657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168346, 40.751877, 25.197329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481110, -0.595058, 0.643770,
		-0.693487, -0.190897, -0.694718,
		0.536291, -0.780682, -0.320822,
		34.329235, 40.517673, 25.101082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538635, 40.576073, 25.414036>,  <33.953831, 41.064148, 25.325657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538635, 40.576073, 25.414036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851017, 40.337318, 25.340450>,  <34.038445, 40.194065, 25.296299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851017, 40.337318, 25.340450>,  <33.538635, 40.576073, 25.414036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851017, 40.337318, 25.340450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344260, -0.657103, 0.670597,
		-0.521152, -0.460373, -0.718649,
		0.780952, -0.596886, -0.183962,
		34.085304, 40.158253, 25.285261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256210, 39.893898, 25.389687>,  <33.538635, 40.576073, 25.414036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256210, 39.893898, 25.389687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646214, 39.839405, 25.459888>,  <33.880215, 39.806709, 25.502010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646214, 39.839405, 25.459888>,  <33.256210, 39.893898, 25.389687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646214, 39.839405, 25.459888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222175, -0.595278, 0.772193,
		-0.000725, -0.791886, -0.610668,
		0.975006, -0.136235, 0.175505,
		33.938717, 39.798534, 25.512541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300472, 39.158970, 25.520693>,  <33.256210, 39.893898, 25.389687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300472, 39.158970, 25.520693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627663, 39.328346, 25.676447>,  <33.823975, 39.429970, 25.769899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627663, 39.328346, 25.676447>,  <33.300472, 39.158970, 25.520693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627663, 39.328346, 25.676447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000108, -0.677000, 0.735983,
		0.575257, -0.601972, -0.553813,
		0.817973, 0.423439, 0.389384,
		33.873055, 39.455379, 25.793262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786594, 38.525639, 25.743916>,  <33.300472, 39.158970, 25.520693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786594, 38.525639, 25.743916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884636, 38.851101, 25.954779>,  <33.943462, 39.046379, 26.081297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884636, 38.851101, 25.954779>,  <33.786594, 38.525639, 25.743916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884636, 38.851101, 25.954779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032685, -0.550371, 0.834281,
		0.968946, -0.187254, -0.161491,
		0.245102, 0.813651, 0.527159,
		33.958168, 39.095196, 26.112926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177807, 38.245636, 26.175968>,  <33.786594, 38.525639, 25.743916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177807, 38.245636, 26.175968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078094, 38.593262, 26.346893>,  <34.018269, 38.801838, 26.449448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078094, 38.593262, 26.346893>,  <34.177807, 38.245636, 26.175968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078094, 38.593262, 26.346893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005434, -0.442488, 0.896758,
		0.968417, 0.221220, 0.115025,
		-0.249279, 0.869060, 0.427311,
		34.003311, 38.853981, 26.475086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638577, 38.415592, 26.659288>,  <34.177807, 38.245636, 26.175968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638577, 38.415592, 26.659288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314217, 38.624027, 26.765808>,  <34.119602, 38.749088, 26.829720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314217, 38.624027, 26.765808>,  <34.638577, 38.415592, 26.659288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314217, 38.624027, 26.765808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089181, -0.339707, 0.936293,
		0.578355, 0.782986, 0.228996,
		-0.810896, 0.521088, 0.266299,
		34.070950, 38.780354, 26.845697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759956, 38.675694, 27.368092>,  <34.638577, 38.415592, 26.659288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759956, 38.675694, 27.368092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364689, 38.731609, 27.342867>,  <34.127529, 38.765160, 27.327732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364689, 38.731609, 27.342867>,  <34.759956, 38.675694, 27.368092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364689, 38.731609, 27.342867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107418, -0.337441, 0.935198,
		0.109455, 0.930909, 0.348466,
		-0.988170, 0.139794, -0.063062,
		34.068237, 38.773548, 27.323948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492542, 39.063557, 28.035126>,  <34.759956, 38.675694, 27.368092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492542, 39.063557, 28.035126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173088, 38.904861, 27.854115>,  <33.981415, 38.809643, 27.745508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173088, 38.904861, 27.854115>,  <34.492542, 39.063557, 28.035126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173088, 38.904861, 27.854115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318361, -0.359596, 0.877119,
		-0.510714, 0.844565, 0.160880,
		-0.798635, -0.396739, -0.452526,
		33.933498, 38.785839, 27.718357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949661, 39.212288, 28.467924>,  <34.492542, 39.063557, 28.035126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949661, 39.212288, 28.467924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796097, 38.929008, 28.230923>,  <33.703957, 38.759041, 28.088722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796097, 38.929008, 28.230923>,  <33.949661, 39.212288, 28.467924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796097, 38.929008, 28.230923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413655, -0.441775, 0.796068,
		-0.825529, 0.550715, -0.123346,
		-0.383915, -0.708200, -0.592504,
		33.680923, 38.716549, 28.053171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203079, 39.093204, 28.648447>,  <33.949661, 39.212288, 28.467924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203079, 39.093204, 28.648447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322956, 38.751751, 28.478041>,  <33.394882, 38.546879, 28.375797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322956, 38.751751, 28.478041>,  <33.203079, 39.093204, 28.648447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322956, 38.751751, 28.478041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284589, -0.506203, 0.814106,
		-0.910601, -0.122741, -0.394640,
		0.299692, -0.853635, -0.426018,
		33.412865, 38.495659, 28.350235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508854, 38.683769, 28.706274>,  <33.203079, 39.093204, 28.648447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508854, 38.683769, 28.706274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832016, 38.453785, 28.654570>,  <33.025913, 38.315792, 28.623547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832016, 38.453785, 28.654570>,  <32.508854, 38.683769, 28.706274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832016, 38.453785, 28.654570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349059, -0.643605, 0.681124,
		-0.474812, -0.505165, -0.720667,
		0.807905, -0.574962, -0.129259,
		33.074387, 38.281296, 28.615791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291969, 38.008682, 28.731764>,  <32.508854, 38.683769, 28.706274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291969, 38.008682, 28.731764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680565, 37.983204, 28.823105>,  <32.913723, 37.967918, 28.877911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680565, 37.983204, 28.823105>,  <32.291969, 38.008682, 28.731764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680565, 37.983204, 28.823105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212520, -0.660841, 0.719808,
		0.105061, -0.747818, -0.655538,
		0.971493, -0.063691, 0.228355,
		32.972012, 37.964096, 28.891611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331776, 37.411263, 28.964424>,  <32.291969, 38.008682, 28.731764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331776, 37.411263, 28.964424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695644, 37.530487, 29.080122>,  <32.913963, 37.602024, 29.149542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695644, 37.530487, 29.080122>,  <32.331776, 37.411263, 28.964424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695644, 37.530487, 29.080122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001964, -0.699492, 0.714637,
		0.415333, -0.649514, -0.636891,
		0.909667, 0.298064, 0.289247,
		32.968544, 37.619907, 29.166897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741943, 36.864910, 29.043875>,  <32.331776, 37.411263, 28.964424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741943, 36.864910, 29.043875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932156, 37.132622, 29.272238>,  <33.046284, 37.293247, 29.409256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932156, 37.132622, 29.272238>,  <32.741943, 36.864910, 29.043875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932156, 37.132622, 29.272238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244146, -0.723898, 0.645263,
		0.845139, -0.167460, -0.507639,
		0.475534, 0.669275, 0.570910,
		33.074818, 37.333405, 29.443510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367249, 36.577869, 29.272974>,  <32.741943, 36.864910, 29.043875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367249, 36.577869, 29.272974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291878, 36.872097, 29.533260>,  <33.246655, 37.048634, 29.689432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291878, 36.872097, 29.533260>,  <33.367249, 36.577869, 29.272974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291878, 36.872097, 29.533260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247013, -0.605787, 0.756311,
		0.950515, 0.303247, -0.067546,
		-0.188430, 0.735570, 0.650716,
		33.235348, 37.092770, 29.728476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938774, 36.525932, 29.808628>,  <33.367249, 36.577869, 29.272974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938774, 36.525932, 29.808628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628094, 36.717609, 29.972139>,  <33.441685, 36.832615, 30.070248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628094, 36.717609, 29.972139>,  <33.938774, 36.525932, 29.808628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628094, 36.717609, 29.972139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003786, -0.645433, 0.763808,
		0.629855, 0.594800, 0.499496,
		-0.776704, 0.479197, 0.408781,
		33.395084, 36.861370, 30.094774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137058, 36.723988, 30.458820>,  <33.938774, 36.525932, 29.808628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137058, 36.723988, 30.458820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737152, 36.724194, 30.467403>,  <33.497208, 36.724316, 30.472553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737152, 36.724194, 30.467403>,  <34.137058, 36.723988, 30.458820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737152, 36.724194, 30.467403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016478, -0.622213, 0.782675,
		0.013755, 0.782848, 0.622061,
		-0.999770, 0.000515, 0.021459,
		33.437222, 36.724350, 30.473841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941334, 36.681885, 30.316141>,  <34.137058, 36.723988, 30.458820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941334, 36.681885, 30.316141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319077, 36.709812, 30.444717>,  <35.545723, 36.726566, 30.521864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319077, 36.709812, 30.444717>,  <34.941334, 36.681885, 30.316141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319077, 36.709812, 30.444717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098570, 0.872247, -0.479030,
		-0.313819, 0.484058, 0.816826,
		0.944352, 0.069814, 0.321441,
		35.602383, 36.730755, 30.541149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000343, 37.322453, 30.540331>,  <34.941334, 36.681885, 30.316141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000343, 37.322453, 30.540331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385971, 37.226971, 30.493689>,  <35.617348, 37.169682, 30.465702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385971, 37.226971, 30.493689>,  <35.000343, 37.322453, 30.540331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385971, 37.226971, 30.493689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172460, 0.896195, -0.408769,
		0.202078, 0.373970, 0.905158,
		0.964065, -0.238707, -0.116607,
		35.675190, 37.155357, 30.458706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317173, 37.873951, 30.835245>,  <35.000343, 37.322453, 30.540331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317173, 37.873951, 30.835245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547363, 37.679276, 30.572348>,  <35.685478, 37.562469, 30.414610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547363, 37.679276, 30.572348>,  <35.317173, 37.873951, 30.835245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547363, 37.679276, 30.572348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367026, 0.871866, -0.324255,
		0.730838, -0.054625, 0.680362,
		0.575472, -0.486688, -0.657241,
		35.720005, 37.533268, 30.375175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930725, 38.258690, 30.868132>,  <35.317173, 37.873951, 30.835245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930725, 38.258690, 30.868132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897095, 38.034401, 30.538641>,  <35.876915, 37.899830, 30.340946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897095, 38.034401, 30.538641>,  <35.930725, 38.258690, 30.868132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897095, 38.034401, 30.538641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238493, 0.791304, -0.562991,
		0.967498, -0.243788, 0.067195,
		-0.084079, -0.560718, -0.823727,
		35.871872, 37.866184, 30.291523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436020, 38.449982, 30.490105>,  <35.930725, 38.258690, 30.868132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436020, 38.449982, 30.490105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230263, 38.252792, 30.209425>,  <36.106808, 38.134480, 30.041018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230263, 38.252792, 30.209425>,  <36.436020, 38.449982, 30.490105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230263, 38.252792, 30.209425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172595, 0.741994, -0.647808,
		0.840008, -0.454336, -0.296589,
		-0.514390, -0.492974, -0.701697,
		36.075947, 38.104900, 29.998917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929115, 38.334023, 29.926540>,  <36.436020, 38.449982, 30.490105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929115, 38.334023, 29.926540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581669, 38.277328, 29.736629>,  <36.373199, 38.243313, 29.622683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581669, 38.277328, 29.736629>,  <36.929115, 38.334023, 29.926540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581669, 38.277328, 29.736629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310644, 0.590722, -0.744679,
		0.386004, -0.794330, -0.469086,
		-0.868620, -0.141730, -0.474775,
		36.321083, 38.234810, 29.594196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171207, 38.063557, 29.234413>,  <36.929115, 38.334023, 29.926540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171207, 38.063557, 29.234413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795391, 38.194809, 29.195236>,  <36.569901, 38.273560, 29.171730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795391, 38.194809, 29.195236>,  <37.171207, 38.063557, 29.234413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795391, 38.194809, 29.195236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301609, 0.657502, -0.690452,
		-0.162163, -0.678247, -0.716717,
		-0.939540, 0.328134, -0.097943,
		36.513531, 38.293247, 29.165854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118076, 38.083866, 28.537052>,  <37.171207, 38.063557, 29.234413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118076, 38.083866, 28.537052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851452, 38.312004, 28.729057>,  <36.691479, 38.448887, 28.844259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851452, 38.312004, 28.729057>,  <37.118076, 38.083866, 28.537052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851452, 38.312004, 28.729057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288235, 0.791023, -0.539632,
		-0.687475, -0.221340, -0.691655,
		-0.666557, 0.570343, 0.480011,
		36.651485, 38.483109, 28.873060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580830, 38.247040, 28.087515>,  <37.118076, 38.083866, 28.537052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580830, 38.247040, 28.087515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575859, 38.532585, 28.367586>,  <36.572876, 38.703911, 28.535629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575859, 38.532585, 28.367586>,  <36.580830, 38.247040, 28.087515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575859, 38.532585, 28.367586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190475, 0.689101, -0.699184,
		-0.981613, 0.124680, -0.144534,
		-0.012425, 0.713859, 0.700180,
		36.572132, 38.746742, 28.577641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131702, 38.776905, 27.794733>,  <36.580830, 38.247040, 28.087515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131702, 38.776905, 27.794733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339645, 38.969212, 28.077181>,  <36.464413, 39.084595, 28.246649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339645, 38.969212, 28.077181>,  <36.131702, 38.776905, 27.794733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339645, 38.969212, 28.077181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161617, 0.756314, -0.633932,
		-0.838824, 0.443677, 0.315477,
		0.519860, 0.480771, 0.706119,
		36.495602, 39.113441, 28.289017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933456, 39.466656, 27.756048>,  <36.131702, 38.776905, 27.794733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933456, 39.466656, 27.756048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292347, 39.477180, 27.932364>,  <36.507679, 39.483494, 28.038153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292347, 39.477180, 27.932364>,  <35.933456, 39.466656, 27.756048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292347, 39.477180, 27.932364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233998, 0.818217, -0.525134,
		-0.374478, 0.574307, 0.727968,
		0.897224, 0.026308, 0.440791,
		36.561516, 39.485073, 28.064600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050308, 40.092762, 27.818632>,  <35.933456, 39.466656, 27.756048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050308, 40.092762, 27.818632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423866, 39.966015, 27.884880>,  <36.648003, 39.889969, 27.924629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423866, 39.966015, 27.884880>,  <36.050308, 40.092762, 27.818632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423866, 39.966015, 27.884880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353255, 0.746255, -0.564194,
		0.055178, 0.585406, 0.808860,
		0.933898, -0.316865, 0.165621,
		36.704037, 39.870956, 27.934566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407829, 40.656982, 27.956209>,  <36.050308, 40.092762, 27.818632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407829, 40.656982, 27.956209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677361, 40.394707, 27.819956>,  <36.839081, 40.237343, 27.738203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677361, 40.394707, 27.819956>,  <36.407829, 40.656982, 27.956209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677361, 40.394707, 27.819956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360775, 0.694279, -0.622750,
		0.644825, 0.296733, 0.704379,
		0.673827, -0.655687, -0.340634,
		36.879509, 40.198002, 27.717766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955299, 41.106255, 27.847752>,  <36.407829, 40.656982, 27.956209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955299, 41.106255, 27.847752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051117, 40.775604, 27.644062>,  <37.108608, 40.577213, 27.521849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051117, 40.775604, 27.644062>,  <36.955299, 41.106255, 27.847752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051117, 40.775604, 27.644062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215871, 0.556712, -0.802167,
		0.946582, 0.082232, 0.311804,
		0.239549, -0.826626, -0.509222,
		37.122982, 40.527618, 27.491295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542152, 41.349224, 27.531107>,  <36.955299, 41.106255, 27.847752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542152, 41.349224, 27.531107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405060, 41.026417, 27.338753>,  <37.322803, 40.832733, 27.223339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405060, 41.026417, 27.338753>,  <37.542152, 41.349224, 27.531107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405060, 41.026417, 27.338753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180720, 0.445691, -0.876755,
		0.921886, -0.387399, -0.006909,
		-0.342734, -0.807020, -0.480888,
		37.302238, 40.784309, 27.194487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109711, 41.125584, 27.101076>,  <37.542152, 41.349224, 27.531107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109711, 41.125584, 27.101076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767967, 41.004993, 26.931759>,  <37.562920, 40.932640, 26.830168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767967, 41.004993, 26.931759>,  <38.109711, 41.125584, 27.101076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767967, 41.004993, 26.931759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279504, 0.420115, -0.863354,
		0.438113, -0.855929, -0.274667,
		-0.854362, -0.301476, -0.423294,
		37.511658, 40.914551, 26.804771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220997, 40.949711, 26.434391>,  <38.109711, 41.125584, 27.101076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220997, 40.949711, 26.434391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824825, 41.003040, 26.448639>,  <37.587120, 41.035038, 26.457188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824825, 41.003040, 26.448639>,  <38.220997, 40.949711, 26.434391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824825, 41.003040, 26.448639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008928, 0.319495, -0.947546,
		-0.137707, -0.938163, -0.317628,
		-0.990432, 0.133319, 0.035621,
		37.527695, 41.043037, 26.459326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102688, 40.654118, 25.822367>,  <38.220997, 40.949711, 26.434391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102688, 40.654118, 25.822367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778187, 40.871090, 25.909670>,  <37.583485, 41.001274, 25.962051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778187, 40.871090, 25.909670>,  <38.102688, 40.654118, 25.822367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778187, 40.871090, 25.909670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028241, 0.336495, -0.941261,
		-0.584015, -0.769763, -0.257663,
		-0.811251, 0.542434, 0.218257,
		37.534813, 41.033821, 25.975147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599018, 40.529964, 25.301743>,  <38.102688, 40.654118, 25.822367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599018, 40.529964, 25.301743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472431, 40.872463, 25.465055>,  <37.396481, 41.077961, 25.563044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472431, 40.872463, 25.465055>,  <37.599018, 40.529964, 25.301743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472431, 40.872463, 25.465055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141566, 0.382954, -0.912856,
		-0.937981, -0.346688, 0.000023,
		-0.316468, 0.856244, 0.408282,
		37.377491, 41.129337, 25.587540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978210, 40.790951, 24.864925>,  <37.599018, 40.529964, 25.301743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978210, 40.790951, 24.864925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113655, 41.094185, 25.087870>,  <37.194923, 41.276123, 25.221636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113655, 41.094185, 25.087870>,  <36.978210, 40.790951, 24.864925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113655, 41.094185, 25.087870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193373, 0.635776, -0.747259,
		-0.920840, 0.145256, 0.361877,
		0.338616, 0.758083, 0.557360,
		37.215240, 41.321609, 25.255077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449867, 41.351795, 24.770378>,  <36.978210, 40.790951, 24.864925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449867, 41.351795, 24.770378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775826, 41.542019, 24.902912>,  <36.971401, 41.656155, 24.982431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775826, 41.542019, 24.902912>,  <36.449867, 41.351795, 24.770378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775826, 41.542019, 24.902912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129115, 0.706238, -0.696102,
		-0.565038, 0.524473, 0.636915,
		0.814900, 0.475559, 0.331334,
		37.020294, 41.684685, 25.002312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370888, 42.037815, 24.856577>,  <36.449867, 41.351795, 24.770378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370888, 42.037815, 24.856577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765812, 42.033909, 24.793173>,  <37.002766, 42.031567, 24.755131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765812, 42.033909, 24.793173>,  <36.370888, 42.037815, 24.856577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765812, 42.033909, 24.793173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111816, 0.666029, -0.737497,
		0.112773, 0.745862, 0.656485,
		0.987309, -0.009764, -0.158510,
		37.062004, 42.030979, 24.745621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663624, 42.774200, 24.824392>,  <36.370888, 42.037815, 24.856577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663624, 42.774200, 24.824392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950924, 42.562946, 24.643202>,  <37.123306, 42.436195, 24.534487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950924, 42.562946, 24.643202>,  <36.663624, 42.774200, 24.824392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950924, 42.562946, 24.643202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063111, 0.697802, -0.713504,
		0.692914, 0.483889, 0.534530,
		0.718253, -0.528132, -0.452978,
		37.166401, 42.404507, 24.507309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286942, 43.257168, 24.693104>,  <36.663624, 42.774200, 24.824392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286942, 43.257168, 24.693104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304840, 42.941246, 24.448416>,  <37.315578, 42.751694, 24.301603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304840, 42.941246, 24.448416>,  <37.286942, 43.257168, 24.693104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304840, 42.941246, 24.448416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338874, 0.588026, -0.734432,
		0.939767, -0.174433, 0.293957,
		0.044745, -0.789809, -0.611718,
		37.318264, 42.704304, 24.264900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923737, 43.391136, 24.474638>,  <37.286942, 43.257168, 24.693104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923737, 43.391136, 24.474638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783653, 43.132843, 24.203232>,  <37.699604, 42.977867, 24.040388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783653, 43.132843, 24.203232>,  <37.923737, 43.391136, 24.474638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783653, 43.132843, 24.203232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498003, 0.485163, -0.718756,
		0.793316, -0.589615, 0.151672,
		-0.350204, -0.645733, -0.678517,
		37.678593, 42.939125, 23.999676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483398, 43.245079, 23.977180>,  <37.923737, 43.391136, 24.474638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483398, 43.245079, 23.977180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143677, 43.146370, 23.790510>,  <37.939842, 43.087143, 23.678509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143677, 43.146370, 23.790510>,  <38.483398, 43.245079, 23.977180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143677, 43.146370, 23.790510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344741, 0.410219, -0.844319,
		0.399801, -0.877963, -0.263324,
		-0.849301, -0.246781, -0.466676,
		37.888885, 43.072338, 23.650507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657440, 42.880024, 23.409534>,  <38.483398, 43.245079, 23.977180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657440, 42.880024, 23.409534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281944, 42.996918, 23.336473>,  <38.056644, 43.067055, 23.292637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281944, 42.996918, 23.336473>,  <38.657440, 42.880024, 23.409534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281944, 42.996918, 23.336473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266399, 0.279142, -0.922557,
		-0.218616, -0.914702, -0.339894,
		-0.938743, 0.292233, -0.182650,
		38.000320, 43.084587, 23.281679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523151, 42.688820, 22.682777>,  <38.657440, 42.880024, 23.409534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523151, 42.688820, 22.682777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254139, 42.974087, 22.761866>,  <38.092731, 43.145248, 22.809319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254139, 42.974087, 22.761866>,  <38.523151, 42.688820, 22.682777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254139, 42.974087, 22.761866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121441, 0.369890, -0.921105,
		-0.730038, -0.595459, -0.335369,
		-0.672530, 0.713169, 0.197721,
		38.052380, 43.188038, 22.821182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989277, 42.682220, 22.114208>,  <38.523151, 42.688820, 22.682777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989277, 42.682220, 22.114208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963192, 43.051926, 22.264666>,  <37.947540, 43.273750, 22.354940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963192, 43.051926, 22.264666>,  <37.989277, 42.682220, 22.114208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963192, 43.051926, 22.264666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104091, 0.368589, -0.923746,
		-0.992427, -0.099397, 0.072170,
		-0.065217, 0.924263, 0.376144,
		37.943626, 43.329205, 22.377508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379341, 42.943081, 21.836637>,  <37.989277, 42.682220, 22.114208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379341, 42.943081, 21.836637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575909, 43.274624, 21.943602>,  <37.693848, 43.473549, 22.007780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575909, 43.274624, 21.943602>,  <37.379341, 42.943081, 21.836637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575909, 43.274624, 21.943602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037917, 0.327110, -0.944225,
		-0.870099, 0.453869, 0.192175,
		0.491417, 0.828856, 0.267408,
		37.723335, 43.523281, 22.023825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085510, 43.582989, 21.489658>,  <37.379341, 42.943081, 21.836637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085510, 43.582989, 21.489658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463470, 43.689548, 21.565763>,  <37.690247, 43.753483, 21.611427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463470, 43.689548, 21.565763>,  <37.085510, 43.582989, 21.489658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463470, 43.689548, 21.565763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128265, 0.233460, -0.963870,
		-0.301194, 0.935162, 0.186426,
		0.944897, 0.266399, 0.190265,
		37.746941, 43.769470, 21.622843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125580, 44.188625, 21.178825>,  <37.085510, 43.582989, 21.489658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125580, 44.188625, 21.178825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507637, 44.091240, 21.246264>,  <37.736870, 44.032806, 21.286726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507637, 44.091240, 21.246264>,  <37.125580, 44.188625, 21.178825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507637, 44.091240, 21.246264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243169, 0.319845, -0.915734,
		0.169027, 0.915654, 0.364701,
		0.955143, -0.243468, 0.168596,
		37.794182, 44.018200, 21.296843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555088, 44.863903, 21.121689>,  <37.125580, 44.188625, 21.178825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555088, 44.863903, 21.121689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761284, 44.531548, 21.037891>,  <37.885002, 44.332134, 20.987614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761284, 44.531548, 21.037891>,  <37.555088, 44.863903, 21.121689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761284, 44.531548, 21.037891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236748, 0.373063, -0.897093,
		0.823542, 0.412845, 0.389022,
		0.515490, -0.830893, -0.209493,
		37.915932, 44.282280, 20.975044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100674, 45.180481, 20.834803>,  <37.555088, 44.863903, 21.121689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100674, 45.180481, 20.834803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150112, 44.798717, 20.726122>,  <38.179775, 44.569660, 20.660913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150112, 44.798717, 20.726122>,  <38.100674, 45.180481, 20.834803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150112, 44.798717, 20.726122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323030, 0.297584, -0.898384,
		0.938282, 0.023273, 0.345086,
		0.123600, -0.954412, -0.271700,
		38.187191, 44.512394, 20.644611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756264, 45.137497, 20.414991>,  <38.100674, 45.180481, 20.834803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756264, 45.137497, 20.414991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583202, 44.787773, 20.327002>,  <38.479366, 44.577938, 20.274208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583202, 44.787773, 20.327002>,  <38.756264, 45.137497, 20.414991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583202, 44.787773, 20.327002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047004, 0.221784, -0.973962,
		0.900335, -0.431727, -0.054859,
		-0.432653, -0.874313, -0.219973,
		38.453407, 44.525478, 20.261009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201134, 44.847202, 19.925161>,  <38.756264, 45.137497, 20.414991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201134, 44.847202, 19.925161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839600, 44.683380, 19.875601>,  <38.622681, 44.585087, 19.845865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839600, 44.683380, 19.875601>,  <39.201134, 44.847202, 19.925161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839600, 44.683380, 19.875601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125715, 0.022609, -0.991809,
		0.409002, -0.912005, 0.031052,
		-0.903832, -0.409555, -0.123900,
		38.568451, 44.560513, 19.838430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318378, 44.525475, 19.338625>,  <39.201134, 44.847202, 19.925161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318378, 44.525475, 19.338625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919334, 44.550072, 19.351255>,  <38.679909, 44.564831, 19.358833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919334, 44.550072, 19.351255>,  <39.318378, 44.525475, 19.338625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919334, 44.550072, 19.351255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034802, -0.052133, -0.998034,
		-0.059759, -0.996743, 0.054149,
		-0.997606, 0.061526, 0.031573,
		38.620052, 44.568520, 19.360727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782730, 43.928974, 19.216791>,  <39.318378, 44.525475, 19.338625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782730, 43.928974, 19.216791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080292, 43.777260, 18.996704>,  <39.258831, 43.686230, 18.864653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080292, 43.777260, 18.996704>,  <38.782730, 43.928974, 19.216791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080292, 43.777260, 18.996704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063304, -0.779637, 0.623025,
		-0.665276, -0.498305, -0.555968,
		0.743909, -0.379288, -0.550218,
		39.303463, 43.663475, 18.831638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622974, 43.242798, 19.025402>,  <38.782730, 43.928974, 19.216791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622974, 43.242798, 19.025402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021915, 43.228577, 19.000040>,  <39.261280, 43.220043, 18.984823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021915, 43.228577, 19.000040>,  <38.622974, 43.242798, 19.025402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021915, 43.228577, 19.000040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010354, -0.793846, 0.608031,
		-0.071954, -0.607079, -0.791378,
		0.997354, -0.035556, -0.063406,
		39.321121, 43.217911, 18.981018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821182, 42.623795, 18.735962>,  <38.622974, 43.242798, 19.025402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821182, 42.623795, 18.735962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143810, 42.733730, 18.945305>,  <39.337387, 42.799690, 19.070910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143810, 42.733730, 18.945305>,  <38.821182, 42.623795, 18.735962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143810, 42.733730, 18.945305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114436, -0.795999, 0.594382,
		0.579950, -0.539304, -0.610581,
		0.806575, 0.274839, 0.523355,
		39.385784, 42.816181, 19.102312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222015, 41.927597, 18.968405>,  <38.821182, 42.623795, 18.735962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222015, 41.927597, 18.968405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391052, 42.218151, 19.185213>,  <39.492474, 42.392483, 19.315298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391052, 42.218151, 19.185213>,  <39.222015, 41.927597, 18.968405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391052, 42.218151, 19.185213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167385, -0.650308, 0.741000,
		0.890730, -0.222413, -0.396400,
		0.422590, 0.726382, 0.542020,
		39.517830, 42.436066, 19.347818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580532, 41.497608, 19.399691>,  <39.222015, 41.927597, 18.968405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580532, 41.497608, 19.399691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607628, 41.853592, 19.580082>,  <39.623886, 42.067184, 19.688316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607628, 41.853592, 19.580082>,  <39.580532, 41.497608, 19.399691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607628, 41.853592, 19.580082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213551, -0.454472, 0.864784,
		0.974581, 0.037728, -0.220837,
		0.067738, 0.889962, 0.450976,
		39.627949, 42.120579, 19.715374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220196, 41.600174, 19.736517>,  <39.580532, 41.497608, 19.399691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220196, 41.600174, 19.736517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956398, 41.814621, 19.947287>,  <39.798119, 41.943291, 20.073748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956398, 41.814621, 19.947287>,  <40.220196, 41.600174, 19.736517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956398, 41.814621, 19.947287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391885, -0.352973, 0.849610,
		0.641481, 0.766804, 0.022686,
		-0.659491, 0.536118, 0.526924,
		39.758549, 41.975456, 20.105364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632000, 41.834103, 20.334274>,  <40.220196, 41.600174, 19.736517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632000, 41.834103, 20.334274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241100, 41.871799, 20.410286>,  <40.006561, 41.894417, 20.455893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241100, 41.871799, 20.410286>,  <40.632000, 41.834103, 20.334274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241100, 41.871799, 20.410286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143923, -0.363507, 0.920407,
		0.155816, 0.926813, 0.341672,
		-0.977245, 0.094240, 0.190030,
		39.947926, 41.900070, 20.467295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577171, 42.078789, 21.035686>,  <40.632000, 41.834103, 20.334274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577171, 42.078789, 21.035686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221245, 41.909801, 20.966702>,  <40.007687, 41.808411, 20.925310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221245, 41.909801, 20.966702>,  <40.577171, 42.078789, 21.035686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221245, 41.909801, 20.966702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023761, -0.334535, 0.942084,
		-0.455692, 0.842383, 0.287638,
		-0.889821, -0.422465, -0.172461,
		39.954300, 41.783062, 20.914963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100811, 42.254848, 21.571741>,  <40.577171, 42.078789, 21.035686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100811, 42.254848, 21.571741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962883, 41.918720, 21.404430>,  <39.880127, 41.717041, 21.304043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962883, 41.918720, 21.404430>,  <40.100811, 42.254848, 21.571741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962883, 41.918720, 21.404430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231439, -0.355739, 0.905475,
		-0.909690, 0.409031, -0.071818,
		-0.344819, -0.840323, -0.418278,
		39.859436, 41.666622, 21.278948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506977, 42.097134, 21.889048>,  <40.100811, 42.254848, 21.571741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506977, 42.097134, 21.889048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581142, 41.738045, 21.729185>,  <39.625641, 41.522591, 21.633268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581142, 41.738045, 21.729185>,  <39.506977, 42.097134, 21.889048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581142, 41.738045, 21.729185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353969, -0.440421, 0.825067,
		-0.916693, -0.011516, -0.399426,
		0.185416, -0.897718, -0.399654,
		39.636768, 41.468731, 21.609289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033833, 41.702377, 22.207676>,  <39.506977, 42.097134, 21.889048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033833, 41.702377, 22.207676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292145, 41.441059, 22.049601>,  <39.447132, 41.284267, 21.954756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292145, 41.441059, 22.049601>,  <39.033833, 41.702377, 22.207676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292145, 41.441059, 22.049601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084900, -0.575815, 0.813160,
		-0.758788, -0.491571, -0.427315,
		0.645780, -0.653295, -0.395187,
		39.485878, 41.245071, 21.931044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775764, 41.019405, 22.333233>,  <39.033833, 41.702377, 22.207676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775764, 41.019405, 22.333233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167465, 40.977180, 22.264032>,  <39.402485, 40.951847, 22.222511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167465, 40.977180, 22.264032>,  <38.775764, 41.019405, 22.333233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167465, 40.977180, 22.264032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098307, -0.499073, 0.860966,
		-0.177227, -0.860106, -0.478339,
		0.979248, -0.105563, -0.173004,
		39.461239, 40.945511, 22.212132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900864, 40.397224, 22.592899>,  <38.775764, 41.019405, 22.333233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900864, 40.397224, 22.592899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269226, 40.552998, 22.599503>,  <39.490242, 40.646461, 22.603464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269226, 40.552998, 22.599503>,  <38.900864, 40.397224, 22.592899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269226, 40.552998, 22.599503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146291, -0.384573, 0.911429,
		0.361289, -0.836926, -0.411127,
		0.920907, 0.389433, 0.016507,
		39.545498, 40.669827, 22.604454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492294, 39.869240, 22.657768>,  <38.900864, 40.397224, 22.592899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492294, 39.869240, 22.657768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630119, 40.213978, 22.806633>,  <39.712814, 40.420818, 22.895952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630119, 40.213978, 22.806633>,  <39.492294, 39.869240, 22.657768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630119, 40.213978, 22.806633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335544, -0.483317, 0.808588,
		0.876748, -0.153732, -0.455719,
		0.344563, 0.861842, 0.372163,
		39.733490, 40.472530, 22.918282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867355, 39.595428, 23.262135>,  <39.492294, 39.869240, 22.657768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867355, 39.595428, 23.262135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930355, 39.987694, 23.308603>,  <39.968155, 40.223053, 23.336485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930355, 39.987694, 23.308603>,  <39.867355, 39.595428, 23.262135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930355, 39.987694, 23.308603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415057, -0.172486, 0.893295,
		0.896058, -0.092477, -0.434197,
		0.157503, 0.980661, 0.116174,
		39.977608, 40.281891, 23.343456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504848, 39.609398, 23.657135>,  <39.867355, 39.595428, 23.262135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504848, 39.609398, 23.657135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303165, 39.952328, 23.698658>,  <40.182156, 40.158085, 23.723572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303165, 39.952328, 23.698658>,  <40.504848, 39.609398, 23.657135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303165, 39.952328, 23.698658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203362, 0.001048, 0.979103,
		0.839297, 0.514781, -0.174875,
		-0.504207, 0.857321, 0.103807,
		40.151905, 40.209522, 23.729799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928093, 40.050461, 24.127291>,  <40.504848, 39.609398, 23.657135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928093, 40.050461, 24.127291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547005, 40.165367, 24.166910>,  <40.318352, 40.234310, 24.190681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547005, 40.165367, 24.166910>,  <40.928093, 40.050461, 24.127291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547005, 40.165367, 24.166910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073012, -0.100000, 0.992305,
		0.294957, 0.952617, 0.074298,
		-0.952717, 0.287263, 0.099048,
		40.261189, 40.251545, 24.196625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934677, 40.287109, 24.732195>,  <40.928093, 40.050461, 24.127291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934677, 40.287109, 24.732195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537941, 40.273376, 24.683079>,  <40.299900, 40.265137, 24.653608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537941, 40.273376, 24.683079>,  <40.934677, 40.287109, 24.732195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537941, 40.273376, 24.683079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123225, 0.010786, 0.992320,
		-0.032744, 0.999352, -0.014929,
		-0.991838, -0.034332, -0.122792,
		40.240391, 40.263077, 24.646242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688538, 40.833382, 25.142267>,  <40.934677, 40.287109, 24.732195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688538, 40.833382, 25.142267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380795, 40.582726, 25.092606>,  <40.196148, 40.432331, 25.062809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380795, 40.582726, 25.092606>,  <40.688538, 40.833382, 25.142267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380795, 40.582726, 25.092606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115407, -0.054814, 0.991805,
		-0.628310, 0.777379, -0.030147,
		-0.769356, -0.626640, -0.124156,
		40.149986, 40.394733, 25.055359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038292, 41.060200, 25.532677>,  <40.688538, 40.833382, 25.142267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038292, 41.060200, 25.532677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994278, 40.663460, 25.507008>,  <39.967869, 40.425415, 25.491606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994278, 40.663460, 25.507008>,  <40.038292, 41.060200, 25.532677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994278, 40.663460, 25.507008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397907, -0.015207, 0.917300,
		-0.910803, 0.126468, -0.392993,
		-0.110033, -0.991854, -0.064173,
		39.961269, 40.365902, 25.487755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510807, 40.980362, 25.964064>,  <40.038292, 41.060200, 25.532677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510807, 40.980362, 25.964064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631680, 40.606335, 25.889940>,  <39.704205, 40.381920, 25.845467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631680, 40.606335, 25.889940>,  <39.510807, 40.980362, 25.964064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631680, 40.606335, 25.889940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428845, -0.306963, 0.849627,
		-0.851339, -0.177275, -0.493757,
		0.302183, -0.935065, -0.185306,
		39.722336, 40.325813, 25.834349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985367, 40.540195, 26.190041>,  <39.510807, 40.980362, 25.964064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985367, 40.540195, 26.190041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304653, 40.299427, 26.180695>,  <39.496223, 40.154968, 26.175087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304653, 40.299427, 26.180695>,  <38.985367, 40.540195, 26.190041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304653, 40.299427, 26.180695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333463, -0.473848, 0.815028,
		-0.501660, -0.642771, -0.578950,
		0.798210, -0.601925, -0.023370,
		39.544117, 40.118851, 26.173685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740559, 39.800983, 26.260399>,  <38.985367, 40.540195, 26.190041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740559, 39.800983, 26.260399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121544, 39.852009, 26.371065>,  <39.350136, 39.882626, 26.437466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121544, 39.852009, 26.371065>,  <38.740559, 39.800983, 26.260399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121544, 39.852009, 26.371065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151517, -0.589506, 0.793427,
		0.264311, -0.797628, -0.542153,
		0.952461, 0.127566, 0.276667,
		39.407284, 39.890278, 26.454065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007504, 39.120258, 26.438047>,  <38.740559, 39.800983, 26.260399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007504, 39.120258, 26.438047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253529, 39.377640, 26.620329>,  <39.401146, 39.532066, 26.729698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253529, 39.377640, 26.620329>,  <39.007504, 39.120258, 26.438047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253529, 39.377640, 26.620329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128834, -0.488173, 0.863185,
		0.777880, -0.589625, -0.217359,
		0.615064, 0.643451, 0.455704,
		39.438049, 39.570675, 26.757040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440907, 38.666828, 26.741014>,  <39.007504, 39.120258, 26.438047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440907, 38.666828, 26.741014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489288, 39.024288, 26.913881>,  <39.518318, 39.238762, 27.017601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489288, 39.024288, 26.913881>,  <39.440907, 38.666828, 26.741014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489288, 39.024288, 26.913881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014255, -0.433754, 0.900919,
		0.992556, -0.115127, -0.039724,
		0.120951, 0.893646, 0.432166,
		39.525574, 39.292381, 27.043531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103706, 38.632736, 27.217110>,  <39.440907, 38.666828, 26.741014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103706, 38.632736, 27.217110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897217, 38.943661, 27.360945>,  <39.773323, 39.130215, 27.447247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897217, 38.943661, 27.360945>,  <40.103706, 38.632736, 27.217110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897217, 38.943661, 27.360945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038458, -0.398395, 0.916407,
		0.855587, 0.486904, 0.175769,
		-0.516228, 0.777307, 0.359587,
		39.742348, 39.176853, 27.468821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359005, 38.805065, 27.946136>,  <40.103706, 38.632736, 27.217110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359005, 38.805065, 27.946136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012623, 39.004738, 27.933943>,  <39.804794, 39.124542, 27.926626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012623, 39.004738, 27.933943>,  <40.359005, 38.805065, 27.946136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012623, 39.004738, 27.933943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272622, -0.420072, 0.865573,
		0.419274, 0.757863, 0.499854,
		-0.865960, 0.499183, -0.030485,
		39.752834, 39.154491, 27.924797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338730, 39.218651, 28.502636>,  <40.359005, 38.805065, 27.946136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338730, 39.218651, 28.502636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961266, 39.144135, 28.393232>,  <39.734787, 39.099426, 28.327591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961266, 39.144135, 28.393232>,  <40.338730, 39.218651, 28.502636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961266, 39.144135, 28.393232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173230, -0.426133, 0.887920,
		-0.281959, 0.885272, 0.369854,
		-0.943658, -0.186287, -0.273507,
		39.678169, 39.088249, 28.311180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878326, 39.434555, 29.012365>,  <40.338730, 39.218651, 28.502636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878326, 39.434555, 29.012365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639153, 39.179348, 28.818291>,  <39.495647, 39.026222, 28.701847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639153, 39.179348, 28.818291>,  <39.878326, 39.434555, 29.012365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639153, 39.179348, 28.818291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164471, -0.494772, 0.853317,
		-0.784489, 0.590027, 0.190906,
		-0.597935, -0.638019, -0.485185,
		39.459770, 38.987942, 28.672735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195873, 39.250679, 29.459805>,  <39.878326, 39.434555, 29.012365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195873, 39.250679, 29.459805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241428, 38.944202, 29.206827>,  <39.268761, 38.760319, 29.055040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241428, 38.944202, 29.206827>,  <39.195873, 39.250679, 29.459805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241428, 38.944202, 29.206827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247503, -0.638395, 0.728831,
		-0.962171, 0.073529, -0.262337,
		0.113884, -0.766189, -0.632444,
		39.275593, 38.714344, 29.017094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533321, 38.777824, 29.614937>,  <39.195873, 39.250679, 29.459805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533321, 38.777824, 29.614937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805069, 38.563316, 29.414589>,  <38.968117, 38.434612, 29.294380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805069, 38.563316, 29.414589>,  <38.533321, 38.777824, 29.614937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805069, 38.563316, 29.414589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194223, -0.789645, 0.582011,
		-0.707624, -0.298121, -0.640619,
		0.679372, -0.536268, -0.500870,
		39.008881, 38.402435, 29.264328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202679, 38.111500, 29.730755>,  <38.533321, 38.777824, 29.614937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202679, 38.111500, 29.730755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580822, 38.042068, 29.620363>,  <38.807709, 38.000408, 29.554129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580822, 38.042068, 29.620363>,  <38.202679, 38.111500, 29.730755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580822, 38.042068, 29.620363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005307, -0.854569, 0.519311,
		-0.325985, -0.489471, -0.808797,
		0.945360, -0.173579, -0.275979,
		38.864429, 37.989994, 29.537569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209732, 37.409119, 29.560431>,  <38.202679, 38.111500, 29.730755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209732, 37.409119, 29.560431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592484, 37.505444, 29.625420>,  <38.822136, 37.563236, 29.664413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592484, 37.505444, 29.625420>,  <38.209732, 37.409119, 29.560431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592484, 37.505444, 29.625420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123027, -0.842598, 0.524302,
		0.263154, -0.481705, -0.835889,
		0.956878, 0.240809, 0.162471,
		38.879547, 37.577686, 29.674160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682449, 36.742973, 29.399851>,  <38.209732, 37.409119, 29.560431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682449, 36.742973, 29.399851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891666, 36.997578, 29.626577>,  <39.017197, 37.150341, 29.762613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891666, 36.997578, 29.626577>,  <38.682449, 36.742973, 29.399851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891666, 36.997578, 29.626577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246393, -0.749563, 0.614366,
		0.815915, -0.181681, -0.548886,
		0.523043, 0.636512, 0.566815,
		39.048580, 37.188530, 29.796621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173878, 36.397884, 29.499041>,  <38.682449, 36.742973, 29.399851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173878, 36.397884, 29.499041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199207, 36.669655, 29.791443>,  <39.214405, 36.832718, 29.966885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199207, 36.669655, 29.791443>,  <39.173878, 36.397884, 29.499041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199207, 36.669655, 29.791443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154035, -0.730354, 0.665474,
		0.986034, 0.070457, -0.150907,
		0.063328, 0.679425, 0.731007,
		39.218204, 36.873482, 30.010744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846424, 36.254391, 29.887251>,  <39.173878, 36.397884, 29.499041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846424, 36.254391, 29.887251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635845, 36.461765, 30.156794>,  <39.509499, 36.586189, 30.318520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635845, 36.461765, 30.156794>,  <39.846424, 36.254391, 29.887251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635845, 36.461765, 30.156794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292097, -0.634046, 0.716006,
		0.798459, 0.573768, 0.182356,
		-0.526444, 0.518436, 0.673856,
		39.477913, 36.617294, 30.358950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260696, 36.330700, 30.467119>,  <39.846424, 36.254391, 29.887251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260696, 36.330700, 30.467119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895218, 36.392036, 30.617661>,  <39.675930, 36.428837, 30.707985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895218, 36.392036, 30.617661>,  <40.260696, 36.330700, 30.467119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895218, 36.392036, 30.617661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205515, -0.624590, 0.753426,
		0.350599, 0.765750, 0.539172,
		-0.913698, 0.153342, 0.376354,
		39.621109, 36.438038, 30.730566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345409, 36.633274, 31.138981>,  <40.260696, 36.330700, 30.467119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345409, 36.633274, 31.138981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990562, 36.450809, 31.110876>,  <39.777653, 36.341331, 31.094013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990562, 36.450809, 31.110876>,  <40.345409, 36.633274, 31.138981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990562, 36.450809, 31.110876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279245, -0.651691, 0.705209,
		-0.367476, 0.605985, 0.705509,
		-0.887121, -0.456157, -0.070263,
		39.724426, 36.313961, 31.089798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172482, 36.514549, 31.782503>,  <40.345409, 36.633274, 31.138981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172482, 36.514549, 31.782503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930187, 36.266041, 31.583660>,  <39.784813, 36.116936, 31.464354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930187, 36.266041, 31.583660>,  <40.172482, 36.514549, 31.782503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930187, 36.266041, 31.583660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030200, -0.642270, 0.765883,
		-0.795096, 0.448907, 0.407806,
		-0.605732, -0.621266, -0.497109,
		39.748466, 36.079662, 31.434528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814548, 36.319180, 32.289776>,  <40.172482, 36.514549, 31.782503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814548, 36.319180, 32.289776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742443, 36.058720, 31.994886>,  <39.699181, 35.902443, 31.817951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742443, 36.058720, 31.994886>,  <39.814548, 36.319180, 32.289776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742443, 36.058720, 31.994886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011966, -0.747999, 0.663592,
		-0.983545, 0.128446, 0.127048,
		-0.180267, -0.651152, -0.737228,
		39.688362, 35.863373, 31.773718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204437, 35.860794, 32.487221>,  <39.814548, 36.319180, 32.289776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204437, 35.860794, 32.487221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420261, 35.653286, 32.221966>,  <39.549755, 35.528782, 32.062813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420261, 35.653286, 32.221966>,  <39.204437, 35.860794, 32.487221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420261, 35.653286, 32.221966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018224, -0.794636, 0.606813,
		-0.841749, -0.315328, -0.438209,
		0.539562, -0.518770, -0.663137,
		39.582130, 35.497654, 32.023026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805470, 35.230419, 32.308224>,  <39.204437, 35.860794, 32.487221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805470, 35.230419, 32.308224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204350, 35.203228, 32.295792>,  <39.443680, 35.186913, 32.288334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204350, 35.203228, 32.295792>,  <38.805470, 35.230419, 32.308224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204350, 35.203228, 32.295792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032768, -0.771273, 0.635660,
		-0.067185, -0.632863, -0.771343,
		0.997203, -0.067982, -0.031080,
		39.503510, 35.182835, 32.286469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894016, 34.523499, 32.346451>,  <38.805470, 35.230419, 32.308224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894016, 34.523499, 32.346451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263409, 34.663998, 32.408173>,  <39.485043, 34.748299, 32.445206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263409, 34.663998, 32.408173>,  <38.894016, 34.523499, 32.346451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263409, 34.663998, 32.408173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244426, -0.848675, 0.469049,
		0.295711, -0.395440, -0.869588,
		0.923478, 0.351252, 0.154307,
		39.540451, 34.769375, 32.454464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350285, 34.114048, 31.897993>,  <38.894016, 34.523499, 32.346451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350285, 34.114048, 31.897993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570641, 34.282440, 32.186241>,  <39.702854, 34.383476, 32.359192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570641, 34.282440, 32.186241>,  <39.350285, 34.114048, 31.897993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570641, 34.282440, 32.186241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307422, -0.905102, 0.293738,
		0.775895, 0.059717, -0.628030,
		0.550890, 0.420980, 0.720622,
		39.735909, 34.408733, 32.402428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917965, 33.778095, 31.936661>,  <39.350285, 34.114048, 31.897993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917965, 33.778095, 31.936661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926640, 33.960320, 32.292637>,  <39.931847, 34.069653, 32.506222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926640, 33.960320, 32.292637>,  <39.917965, 33.778095, 31.936661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926640, 33.960320, 32.292637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174852, -0.878160, 0.445267,
		0.984356, 0.145949, -0.098704,
		0.021691, 0.455559, 0.889941,
		39.933147, 34.096989, 32.559620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580914, 33.640614, 32.231495>,  <39.917965, 33.778095, 31.936661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580914, 33.640614, 32.231495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347984, 33.749870, 32.537773>,  <40.208225, 33.815426, 32.721539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347984, 33.749870, 32.537773>,  <40.580914, 33.640614, 32.231495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347984, 33.749870, 32.537773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195154, -0.867358, 0.457826,
		0.789184, 0.416032, 0.451780,
		-0.582326, 0.273142, 0.765696,
		40.173286, 33.831814, 32.767483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997478, 33.499104, 32.728310>,  <40.580914, 33.640614, 32.231495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997478, 33.499104, 32.728310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620728, 33.488888, 32.862305>,  <40.394676, 33.482758, 32.942703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620728, 33.488888, 32.862305>,  <40.997478, 33.499104, 32.728310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620728, 33.488888, 32.862305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204049, -0.835622, 0.509999,
		0.266900, 0.548710, 0.792264,
		-0.941875, -0.025542, 0.334991,
		40.338165, 33.481224, 32.962803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061111, 33.241989, 33.406761>,  <40.997478, 33.499104, 32.728310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061111, 33.241989, 33.406761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670982, 33.199696, 33.329235>,  <40.436905, 33.174320, 33.282719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670982, 33.199696, 33.329235>,  <41.061111, 33.241989, 33.406761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670982, 33.199696, 33.329235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041792, -0.950415, 0.308164,
		-0.216784, 0.292460, 0.931382,
		-0.975325, -0.105729, -0.193812,
		40.378384, 33.167976, 33.271091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686974, 33.003677, 33.995625>,  <41.061111, 33.241989, 33.406761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686974, 33.003677, 33.995625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462265, 32.886669, 33.686085>,  <40.327438, 32.816463, 33.500362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462265, 32.886669, 33.686085>,  <40.686974, 33.003677, 33.995625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462265, 32.886669, 33.686085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031028, -0.942193, 0.333631,
		-0.826707, 0.163415, 0.538378,
		-0.561776, -0.292521, -0.773847,
		40.293732, 32.798912, 33.453930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994129, 32.686131, 34.230061>,  <40.686974, 33.003677, 33.995625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994129, 32.686131, 34.230061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092407, 32.528389, 33.875858>,  <40.151375, 32.433743, 33.663338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092407, 32.528389, 33.875858>,  <39.994129, 32.686131, 34.230061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092407, 32.528389, 33.875858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112751, -0.895677, 0.430173,
		-0.962767, -0.205533, -0.175601,
		0.245697, -0.394357, -0.885503,
		40.166115, 32.410080, 33.610207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529430, 32.151299, 34.058834>,  <39.994129, 32.686131, 34.230061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529430, 32.151299, 34.058834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854752, 32.059952, 33.844772>,  <40.049946, 32.005142, 33.716335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854752, 32.059952, 33.844772>,  <39.529430, 32.151299, 34.058834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854752, 32.059952, 33.844772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069406, -0.875112, 0.478917,
		-0.577687, -0.426647, -0.695881,
		0.813302, -0.228366, -0.535153,
		40.098743, 31.991442, 33.684227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457130, 31.458069, 33.671238>,  <39.529430, 32.151299, 34.058834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457130, 31.458069, 33.671238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844418, 31.520699, 33.749260>,  <40.076790, 31.558277, 33.796074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844418, 31.520699, 33.749260>,  <39.457130, 31.458069, 33.671238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844418, 31.520699, 33.749260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048057, -0.881747, 0.469268,
		0.245461, -0.444978, -0.861245,
		0.968214, 0.156576, 0.195050,
		40.134880, 31.567671, 33.807774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806103, 31.276382, 32.925003>,  <39.457130, 31.458069, 33.671238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806103, 31.276382, 32.925003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188702, 31.392067, 32.940376>,  <40.418259, 31.461477, 32.949600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188702, 31.392067, 32.940376>,  <39.806103, 31.276382, 32.925003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188702, 31.392067, 32.940376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282845, -0.951510, 0.120948,
		0.071553, -0.104814, -0.991914,
		0.956493, 0.289212, 0.038437,
		40.475651, 31.478830, 32.951908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226910, 30.942171, 32.419868>,  <39.806103, 31.276382, 32.925003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226910, 30.942171, 32.419868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437489, 31.041189, 32.745216>,  <40.563835, 31.100599, 32.940426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437489, 31.041189, 32.745216>,  <40.226910, 30.942171, 32.419868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437489, 31.041189, 32.745216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381568, -0.923709, 0.034159,
		0.759776, 0.292374, -0.580739,
		0.526447, 0.247544, 0.813373,
		40.595425, 31.115452, 32.989227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968422, 30.701181, 32.350552>,  <40.226910, 30.942171, 32.419868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968422, 30.701181, 32.350552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932949, 30.756542, 32.745110>,  <40.911667, 30.789759, 32.981846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932949, 30.756542, 32.745110>,  <40.968422, 30.701181, 32.350552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932949, 30.756542, 32.745110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466202, -0.869364, 0.163894,
		0.880222, 0.474395, 0.012569,
		-0.088678, 0.138403, 0.986398,
		40.906345, 30.798063, 33.041031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706249, 30.647116, 32.568531>,  <40.968422, 30.701181, 32.350552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706249, 30.647116, 32.568531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483521, 30.585833, 32.895084>,  <41.349884, 30.549063, 33.091015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483521, 30.585833, 32.895084>,  <41.706249, 30.647116, 32.568531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483521, 30.585833, 32.895084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509201, -0.839466, 0.189767,
		0.656250, 0.521368, 0.545446,
		-0.556822, -0.153207, 0.816381,
		41.316475, 30.539871, 33.139999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182899, 30.480478, 33.162926>,  <41.706249, 30.647116, 32.568531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182899, 30.480478, 33.162926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833126, 30.292538, 33.211273>,  <41.623264, 30.179773, 33.240280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833126, 30.292538, 33.211273>,  <42.182899, 30.480478, 33.162926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833126, 30.292538, 33.211273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481807, -0.811821, 0.329861,
		-0.056863, 0.346675, 0.936260,
		-0.874430, -0.469854, 0.120868,
		41.570797, 30.151581, 33.247532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353336, 30.186062, 33.782856>,  <42.182899, 30.480478, 33.162926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353336, 30.186062, 33.782856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017185, 30.014698, 33.650055>,  <41.815495, 29.911880, 33.570374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017185, 30.014698, 33.650055>,  <42.353336, 30.186062, 33.782856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017185, 30.014698, 33.650055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367068, -0.900559, 0.232925,
		-0.398778, 0.073877, 0.914067,
		-0.840379, -0.428410, -0.332005,
		41.765072, 29.886175, 33.550453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292660, 29.712786, 34.266262>,  <42.353336, 30.186062, 33.782856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292660, 29.712786, 34.266262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059731, 29.598475, 33.961834>,  <41.919971, 29.529888, 33.779179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059731, 29.598475, 33.961834>,  <42.292660, 29.712786, 34.266262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059731, 29.598475, 33.961834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321966, -0.940699, 0.106879,
		-0.746483, -0.182801, 0.639803,
		-0.582324, -0.285778, -0.761071,
		41.885033, 29.512741, 33.733513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785923, 29.252844, 34.532978>,  <42.292660, 29.712786, 34.266262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785923, 29.252844, 34.532978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870270, 29.184319, 34.148022>,  <41.920879, 29.143204, 33.917049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870270, 29.184319, 34.148022>,  <41.785923, 29.252844, 34.532978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870270, 29.184319, 34.148022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409059, -0.878711, 0.246046,
		-0.887810, -0.445555, -0.115211,
		0.210864, -0.171314, -0.962387,
		41.933529, 29.132925, 33.859306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629292, 28.576023, 34.345791>,  <41.785923, 29.252844, 34.532978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629292, 28.576023, 34.345791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931118, 28.671335, 34.101215>,  <42.112213, 28.728523, 33.954472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931118, 28.671335, 34.101215>,  <41.629292, 28.576023, 34.345791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931118, 28.671335, 34.101215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339545, -0.939092, 0.053055,
		-0.561553, -0.247643, -0.789513,
		0.754564, 0.238282, -0.611436,
		42.157486, 28.742819, 33.917786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734413, 28.019363, 33.866062>,  <41.629292, 28.576023, 34.345791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734413, 28.019363, 33.866062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073380, 28.229647, 33.895771>,  <42.276760, 28.355816, 33.913597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073380, 28.229647, 33.895771>,  <41.734413, 28.019363, 33.866062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073380, 28.229647, 33.895771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530069, -0.845684, -0.062014,
		0.030206, 0.091919, -0.995308,
		0.847416, 0.525709, 0.074268,
		42.327606, 28.387360, 33.918053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265377, 27.829784, 33.297470>,  <41.734413, 28.019363, 33.866062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265377, 27.829784, 33.297470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416080, 27.932539, 33.653461>,  <42.506504, 27.994192, 33.867058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416080, 27.932539, 33.653461>,  <42.265377, 27.829784, 33.297470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416080, 27.932539, 33.653461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589545, -0.807567, -0.016475,
		0.714485, 0.530890, -0.455705,
		0.376759, 0.256888, 0.889978,
		42.529110, 28.009605, 33.920456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939198, 27.980509, 33.143044>,  <42.265377, 27.829784, 33.297470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939198, 27.980509, 33.143044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848320, 27.801910, 33.489227>,  <42.793793, 27.694752, 33.696938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848320, 27.801910, 33.489227>,  <42.939198, 27.980509, 33.143044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848320, 27.801910, 33.489227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519753, -0.807140, -0.279967,
		0.823554, 0.386220, 0.415442,
		-0.227191, -0.446496, 0.865463,
		42.780163, 27.667961, 33.748867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121708, 28.095318, 32.345928>,  <42.939198, 27.980509, 33.143044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121708, 28.095318, 32.345928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239227, 28.349915, 32.060673>,  <43.309738, 28.502672, 31.889521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239227, 28.349915, 32.060673>,  <43.121708, 28.095318, 32.345928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239227, 28.349915, 32.060673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813305, -0.225524, -0.536352,
		-0.502212, 0.737576, 0.451402,
		0.293799, 0.636490, -0.713135,
		43.327366, 28.540861, 31.846731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685955, 28.630581, 32.156815>,  <43.121708, 28.095318, 32.345928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685955, 28.630581, 32.156815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876556, 28.611816, 31.805647>,  <42.990917, 28.600557, 31.594946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876556, 28.611816, 31.805647>,  <42.685955, 28.630581, 32.156815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876556, 28.611816, 31.805647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865315, -0.201626, -0.458886,
		-0.155484, 0.978338, -0.136669,
		0.476502, -0.046912, -0.877921,
		43.019508, 28.597742, 31.542271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591927, 29.099302, 32.762283>,  <42.685955, 28.630581, 32.156815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591927, 29.099302, 32.762283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418346, 28.925076, 33.077744>,  <42.314198, 28.820539, 33.267021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418346, 28.925076, 33.077744>,  <42.591927, 29.099302, 32.762283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418346, 28.925076, 33.077744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703744, 0.710435, 0.005140,
		-0.562523, -0.552777, -0.614822,
		-0.433950, -0.435569, 0.788649,
		42.288162, 28.794405, 33.314339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926266, 28.999414, 32.613506>,  <42.591927, 29.099302, 32.762283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926266, 28.999414, 32.613506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918995, 29.004030, 33.013412>,  <41.914631, 29.006800, 33.253357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918995, 29.004030, 33.013412>,  <41.926266, 28.999414, 32.613506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918995, 29.004030, 33.013412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655515, 0.754900, -0.020632,
		-0.754963, -0.655738, -0.006163,
		-0.018182, 0.011537, 0.999768,
		41.913540, 29.007492, 33.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173069, 29.094278, 32.724323>,  <41.926266, 28.999414, 32.613506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173069, 29.094278, 32.724323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375084, 29.224550, 33.044041>,  <41.496292, 29.302713, 33.235870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375084, 29.224550, 33.044041>,  <41.173069, 29.094278, 32.724323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375084, 29.224550, 33.044041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418209, 0.902439, -0.103462,
		-0.755009, -0.282019, 0.591969,
		0.505038, 0.325681, 0.799292,
		41.526596, 29.322254, 33.283829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681732, 29.450338, 33.027519>,  <41.173069, 29.094278, 32.724323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681732, 29.450338, 33.027519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009617, 29.556355, 33.230629>,  <41.206348, 29.619965, 33.352493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009617, 29.556355, 33.230629>,  <40.681732, 29.450338, 33.027519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009617, 29.556355, 33.230629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335675, 0.940600, 0.050925,
		-0.464113, -0.212190, 0.859985,
		0.819708, 0.265041, 0.507772,
		41.255527, 29.635866, 33.382961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452526, 29.728970, 33.686443>,  <40.681732, 29.450338, 33.027519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452526, 29.728970, 33.686443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807423, 29.883352, 33.585377>,  <41.020359, 29.975983, 33.524738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807423, 29.883352, 33.585377>,  <40.452526, 29.728970, 33.686443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807423, 29.883352, 33.585377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396329, 0.918047, 0.010633,
		0.236063, 0.090705, 0.967495,
		0.887241, 0.385957, -0.252666,
		41.073593, 29.999140, 33.509579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540184, 30.242392, 34.134815>,  <40.452526, 29.728970, 33.686443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540184, 30.242392, 34.134815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758099, 30.325846, 33.809933>,  <40.888847, 30.375919, 33.615005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758099, 30.325846, 33.809933>,  <40.540184, 30.242392, 34.134815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758099, 30.325846, 33.809933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325521, 0.945218, 0.024461,
		0.772813, 0.251063, 0.582861,
		0.544790, 0.208637, -0.812204,
		40.921535, 30.388437, 33.566273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908985, 30.885479, 34.313858>,  <40.540184, 30.242392, 34.134815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908985, 30.885479, 34.313858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894764, 30.877954, 33.914181>,  <40.886230, 30.873440, 33.674374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894764, 30.877954, 33.914181>,  <40.908985, 30.885479, 34.313858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894764, 30.877954, 33.914181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099963, 0.994876, -0.015172,
		0.994356, 0.099343, -0.037257,
		-0.035558, -0.018811, -0.999191,
		40.884098, 30.872311, 33.614422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765862, 31.541319, 34.647228>,  <40.908985, 30.885479, 34.313858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765862, 31.541319, 34.647228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840343, 31.822304, 34.922001>,  <40.885033, 31.990894, 35.086864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840343, 31.822304, 34.922001>,  <40.765862, 31.541319, 34.647228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840343, 31.822304, 34.922001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982133, 0.152476, 0.110302,
		-0.027257, -0.695195, 0.718305,
		0.186206, 0.702464, 0.686930,
		40.896206, 32.033043, 35.128078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221054, 31.673931, 34.026447>,  <40.765862, 31.541319, 34.647228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221054, 31.673931, 34.026447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017429, 31.473804, 33.746292>,  <40.895252, 31.353729, 33.578201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017429, 31.473804, 33.746292>,  <41.221054, 31.673931, 34.026447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017429, 31.473804, 33.746292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293857, 0.865844, -0.404923,
		0.809012, -0.000319, -0.587792,
		-0.509065, -0.500314, -0.700384,
		40.864712, 31.323709, 33.536175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394405, 31.740004, 33.348141>,  <41.221054, 31.673931, 34.026447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394405, 31.740004, 33.348141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000729, 31.669382, 33.353672>,  <40.764523, 31.627008, 33.356991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000729, 31.669382, 33.353672>,  <41.394405, 31.740004, 33.348141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000729, 31.669382, 33.353672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166644, 0.896861, -0.409719,
		0.059935, -0.405547, -0.912107,
		-0.984194, -0.176553, 0.013828,
		40.705471, 31.616417, 33.357819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020699, 31.948704, 32.698765>,  <41.394405, 31.740004, 33.348141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020699, 31.948704, 32.698765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739582, 31.922594, 32.982124>,  <40.570911, 31.906927, 33.152142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739582, 31.922594, 32.982124>,  <41.020699, 31.948704, 32.698765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739582, 31.922594, 32.982124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510944, 0.739192, -0.438783,
		-0.495002, -0.670324, -0.552846,
		-0.702787, -0.065275, 0.708400,
		40.528748, 31.903011, 33.194645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309830, 31.891964, 32.404217>,  <41.020699, 31.948704, 32.698765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309830, 31.891964, 32.404217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291584, 32.050858, 32.770851>,  <40.280636, 32.146194, 32.990829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291584, 32.050858, 32.770851>,  <40.309830, 31.891964, 32.404217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291584, 32.050858, 32.770851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514648, 0.777059, -0.362377,
		-0.856188, -0.488246, 0.168993,
		-0.045612, 0.397234, 0.916583,
		40.277901, 32.170029, 33.045826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019188, 32.458160, 32.245396>,  <40.309830, 31.891964, 32.404217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019188, 32.458160, 32.245396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981606, 32.426907, 32.642399>,  <39.959057, 32.408154, 32.880600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981606, 32.426907, 32.642399>,  <40.019188, 32.458160, 32.245396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981606, 32.426907, 32.642399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236711, 0.970081, 0.053962,
		-0.967026, -0.229866, -0.109642,
		-0.093957, -0.078136, 0.992505,
		39.953419, 32.403465, 32.940151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414898, 32.767677, 32.453960>,  <40.019188, 32.458160, 32.245396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414898, 32.767677, 32.453960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660984, 32.766705, 32.769302>,  <39.808636, 32.766121, 32.958508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660984, 32.766705, 32.769302>,  <39.414898, 32.767677, 32.453960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660984, 32.766705, 32.769302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004296, 0.999991, -0.000263,
		-0.788348, 0.003548, 0.615219,
		0.615214, -0.002435, 0.788356,
		39.845547, 32.765972, 33.005810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123215, 33.232372, 32.929077>,  <39.414898, 32.767677, 32.453960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123215, 33.232372, 32.929077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510902, 33.199135, 33.021786>,  <39.743515, 33.179192, 33.077412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510902, 33.199135, 33.021786>,  <39.123215, 33.232372, 32.929077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510902, 33.199135, 33.021786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081347, 0.996539, 0.017088,
		-0.232389, 0.002292, 0.972620,
		0.969215, -0.083090, 0.231771,
		39.801666, 33.174210, 33.091316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143276, 33.532085, 33.517799>,  <39.123215, 33.232372, 32.929077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143276, 33.532085, 33.517799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508461, 33.534946, 33.354603>,  <39.727570, 33.536663, 33.256683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508461, 33.534946, 33.354603>,  <39.143276, 33.532085, 33.517799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508461, 33.534946, 33.354603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032252, 0.997983, -0.054677,
		0.406776, 0.063076, 0.911347,
		0.912958, 0.007152, -0.407990,
		39.782349, 33.537090, 33.232204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386265, 34.245136, 33.730469>,  <39.143276, 33.532085, 33.517799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386265, 34.245136, 33.730469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635479, 34.120499, 33.443489>,  <39.785007, 34.045715, 33.271301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635479, 34.120499, 33.443489>,  <39.386265, 34.245136, 33.730469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635479, 34.120499, 33.443489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170350, 0.949264, -0.264345,
		0.763417, 0.042479, 0.644507,
		0.623037, -0.311598, -0.717448,
		39.822392, 34.027020, 33.228256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124985, 34.589455, 33.672646>,  <39.386265, 34.245136, 33.730469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124985, 34.589455, 33.672646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005280, 34.487392, 33.304874>,  <39.933456, 34.426155, 33.084213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005280, 34.487392, 33.304874>,  <40.124985, 34.589455, 33.672646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005280, 34.487392, 33.304874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245577, 0.910527, -0.332616,
		0.922028, -0.325328, -0.209825,
		-0.299261, -0.255153, -0.919424,
		39.915501, 34.410847, 33.029049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546421, 35.079037, 33.291790>,  <40.124985, 34.589455, 33.672646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546421, 35.079037, 33.291790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308430, 34.867142, 33.050003>,  <40.165634, 34.740005, 32.904930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308430, 34.867142, 33.050003>,  <40.546421, 35.079037, 33.291790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308430, 34.867142, 33.050003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045346, 0.772990, -0.632796,
		0.802466, -0.349086, -0.483929,
		-0.594972, -0.529742, -0.604468,
		40.129936, 34.708221, 32.868664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711090, 35.369186, 32.625992>,  <40.546421, 35.079037, 33.291790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711090, 35.369186, 32.625992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382080, 35.150913, 32.561890>,  <40.184673, 35.019951, 32.523430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382080, 35.150913, 32.561890>,  <40.711090, 35.369186, 32.625992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382080, 35.150913, 32.561890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219665, 0.564730, -0.795504,
		0.524590, -0.619123, -0.584373,
		-0.822528, -0.545680, -0.160252,
		40.135323, 34.987209, 32.513813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804508, 35.052162, 31.844547>,  <40.711090, 35.369186, 32.625992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804508, 35.052162, 31.844547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430164, 35.052753, 31.985497>,  <40.205559, 35.053108, 32.070065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430164, 35.052753, 31.985497>,  <40.804508, 35.052162, 31.844547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430164, 35.052753, 31.985497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319409, 0.418765, -0.850066,
		-0.148820, -0.908093, -0.391432,
		-0.935858, 0.001480, 0.352374,
		40.149406, 35.053196, 32.091209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321438, 34.651684, 32.199207>,  <40.804508, 35.052162, 31.844547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321438, 34.651684, 32.199207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200081, 34.732582, 31.826746>,  <41.127266, 34.781120, 31.603270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200081, 34.732582, 31.826746>,  <41.321438, 34.651684, 32.199207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200081, 34.732582, 31.826746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906846, 0.361304, -0.217002,
		0.292542, -0.910252, -0.293020,
		-0.303396, 0.202242, -0.931155,
		41.109062, 34.793255, 31.547400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789658, 34.340576, 31.698858>,  <41.321438, 34.651684, 32.199207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789658, 34.340576, 31.698858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604733, 34.658920, 31.542463>,  <41.493778, 34.849926, 31.448626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604733, 34.658920, 31.542463>,  <41.789658, 34.340576, 31.698858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604733, 34.658920, 31.542463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886691, 0.418390, -0.196793,
		0.006965, -0.437664, -0.899112,
		-0.462309, 0.795864, -0.390987,
		41.466042, 34.897678, 31.425167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063271, 34.533493, 30.873751>,  <41.789658, 34.340576, 31.698858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063271, 34.533493, 30.873751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947945, 34.832958, 31.112543>,  <41.878750, 35.012638, 31.255817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947945, 34.832958, 31.112543>,  <42.063271, 34.533493, 30.873751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947945, 34.832958, 31.112543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867638, 0.467996, -0.167880,
		-0.405069, 0.469561, -0.784495,
		-0.288310, 0.748660, 0.596980,
		41.861450, 35.057556, 31.291637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413799, 34.977016, 30.488756>,  <42.063271, 34.533493, 30.873751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413799, 34.977016, 30.488756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419258, 35.139751, 30.854116>,  <42.422531, 35.237392, 31.073332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419258, 35.139751, 30.854116>,  <42.413799, 34.977016, 30.488756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419258, 35.139751, 30.854116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967759, 0.224396, -0.114404,
		-0.251506, 0.885511, -0.390659,
		0.013644, 0.406837, 0.913399,
		42.423351, 35.261803, 31.128136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577602, 35.719524, 30.486992>,  <42.413799, 34.977016, 30.488756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577602, 35.719524, 30.486992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702957, 35.496933, 30.794788>,  <42.778168, 35.363377, 30.979465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702957, 35.496933, 30.794788>,  <42.577602, 35.719524, 30.486992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702957, 35.496933, 30.794788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942785, 0.085232, -0.322323,
		0.113782, 0.826476, 0.551354,
		0.313385, -0.556482, 0.769491,
		42.796974, 35.329987, 31.025637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874931, 35.831879, 31.081343>,  <42.577602, 35.719524, 30.486992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874931, 35.831879, 31.081343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082561, 35.493423, 31.032999>,  <43.207138, 35.290348, 31.003992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082561, 35.493423, 31.032999>,  <42.874931, 35.831879, 31.081343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082561, 35.493423, 31.032999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631775, 0.284577, 0.721024,
		-0.575695, -0.450621, 0.682287,
		0.519072, -0.846142, -0.120861,
		43.238285, 35.239582, 30.996740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855804, 35.391712, 31.625507>,  <42.874931, 35.831879, 31.081343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855804, 35.391712, 31.625507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197952, 35.333214, 31.426731>,  <43.403240, 35.298115, 31.307465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197952, 35.333214, 31.426731>,  <42.855804, 35.391712, 31.625507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197952, 35.333214, 31.426731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512263, 0.381370, 0.769508,
		0.076978, -0.912780, 0.401132,
		0.855372, -0.146250, -0.496941,
		43.454563, 35.289337, 31.277649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409100, 35.056541, 32.082253>,  <42.855804, 35.391712, 31.625507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409100, 35.056541, 32.082253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536980, 34.753979, 31.853992>,  <42.613708, 34.572441, 31.717037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536980, 34.753979, 31.853992>,  <42.409100, 35.056541, 32.082253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536980, 34.753979, 31.853992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916123, 0.400509, -0.017638,
		0.241891, -0.517144, 0.821006,
		0.319699, -0.756409, -0.570647,
		42.632889, 34.527058, 31.682798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028614, 34.571026, 32.385685>,  <42.409100, 35.056541, 32.082253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028614, 34.571026, 32.385685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014069, 34.670345, 31.998486>,  <43.005341, 34.729935, 31.766165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014069, 34.670345, 31.998486>,  <43.028614, 34.571026, 32.385685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014069, 34.670345, 31.998486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920120, 0.386286, 0.064522,
		0.389946, -0.888331, -0.242508,
		-0.036361, 0.248297, -0.968001,
		43.003159, 34.744835, 31.708086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972664, 35.156727, 32.837799>,  <43.028614, 34.571026, 32.385685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972664, 35.156727, 32.837799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167263, 35.082268, 32.496349>,  <43.284023, 35.037594, 32.291481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167263, 35.082268, 32.496349>,  <42.972664, 35.156727, 32.837799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167263, 35.082268, 32.496349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669238, 0.707484, 0.227129,
		0.561645, -0.681774, 0.468763,
		0.486493, -0.186148, -0.853624,
		43.313210, 35.026424, 32.240261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655193, 35.197262, 33.026001>,  <42.972664, 35.156727, 32.837799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655193, 35.197262, 33.026001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673347, 35.288330, 32.636929>,  <43.684238, 35.342972, 32.403484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673347, 35.288330, 32.636929>,  <43.655193, 35.197262, 33.026001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673347, 35.288330, 32.636929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680440, 0.705838, 0.196961,
		0.731396, -0.670790, -0.122879,
		0.045387, 0.227669, -0.972680,
		43.686962, 35.356632, 32.345123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256775, 35.637943, 32.953537>,  <43.655193, 35.197262, 33.026001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256775, 35.637943, 32.953537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078743, 35.737797, 32.609539>,  <43.971924, 35.797710, 32.403141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078743, 35.737797, 32.609539>,  <44.256775, 35.637943, 32.953537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078743, 35.737797, 32.609539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575806, 0.815282, -0.061344,
		0.685822, -0.522492, -0.506606,
		-0.445078, 0.249636, -0.859993,
		43.945221, 35.812687, 32.351540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685287, 35.039936, 32.804352>,  <44.256775, 35.637943, 32.953537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685287, 35.039936, 32.804352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.895302, 35.103115, 33.138870>,  <45.021309, 35.141022, 33.339581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.895302, 35.103115, 33.138870>,  <44.685287, 35.039936, 32.804352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895302, 35.103115, 33.138870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835850, 0.089382, -0.541633,
		-0.160298, 0.983394, -0.085090,
		0.525033, 0.157946, 0.836298,
		45.052811, 35.150497, 33.389759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219437, 35.538120, 32.579407>,  <44.685287, 35.039936, 32.804352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219437, 35.538120, 32.579407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335011, 35.364262, 32.920605>,  <45.404354, 35.259945, 33.125324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335011, 35.364262, 32.920605>,  <45.219437, 35.538120, 32.579407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335011, 35.364262, 32.920605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944090, -0.018416, -0.329174,
		0.158784, 0.900412, 0.405026,
		0.288933, -0.434649, 0.852994,
		45.421692, 35.233868, 33.176502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864906, 35.809410, 32.771801>,  <45.219437, 35.538120, 32.579407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864906, 35.809410, 32.771801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862537, 35.452515, 32.952408>,  <45.861115, 35.238377, 33.060772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862537, 35.452515, 32.952408>,  <45.864906, 35.809410, 32.771801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.862537, 35.452515, 32.952408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989126, -0.071584, -0.128476,
		0.146953, 0.445845, 0.882965,
		-0.005926, -0.892243, 0.451517,
		45.860760, 35.184841, 33.087864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401920, 35.732330, 33.397263>,  <45.864906, 35.809410, 32.771801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401920, 35.732330, 33.397263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288010, 36.043869, 33.620800>,  <45.219662, 36.230793, 33.754921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288010, 36.043869, 33.620800>,  <45.401920, 35.732330, 33.397263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288010, 36.043869, 33.620800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015837, -0.586723, 0.809633,
		0.958463, 0.221714, 0.179420,
		-0.284776, 0.778845, 0.558841,
		45.202576, 36.277523, 33.788452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794464, 35.778889, 34.019234>,  <45.401920, 35.732330, 33.397263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794464, 35.778889, 34.019234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427010, 35.930851, 34.062645>,  <45.206535, 36.022030, 34.088692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427010, 35.930851, 34.062645>,  <45.794464, 35.778889, 34.019234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427010, 35.930851, 34.062645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166849, -0.622003, 0.765032,
		0.358144, 0.684679, 0.634781,
		-0.918637, 0.379904, 0.108528,
		45.151417, 36.044823, 34.095203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643074, 35.964542, 34.695610>,  <45.794464, 35.778889, 34.019234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643074, 35.964542, 34.695610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265522, 35.929008, 34.568359>,  <45.038990, 35.907688, 34.492008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265522, 35.929008, 34.568359>,  <45.643074, 35.964542, 34.695610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.265522, 35.929008, 34.568359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245096, -0.457278, 0.854883,
		-0.221419, 0.884875, 0.409840,
		-0.943876, -0.088837, -0.318129,
		44.982361, 35.902359, 34.472919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938793, 35.280357, 34.766365>,  <45.643074, 35.964542, 34.695610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.938793, 35.280357, 34.766365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.926876, 35.033787, 34.451626>,  <45.919724, 34.885845, 34.262783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.926876, 35.033787, 34.451626>,  <45.938793, 35.280357, 34.766365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.926876, 35.033787, 34.451626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629305, 0.600029, -0.493903,
		0.776587, -0.509884, 0.370043,
		-0.029797, -0.616428, -0.786847,
		45.917938, 34.848858, 34.215572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.673100, 34.977463, 34.547409>,  <45.938793, 35.280357, 34.766365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.673100, 34.977463, 34.547409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391544, 35.085106, 34.284466>,  <46.222610, 35.149693, 34.126701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391544, 35.085106, 34.284466>,  <46.673100, 34.977463, 34.547409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391544, 35.085106, 34.284466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654097, 0.606401, -0.452145,
		0.276944, -0.748236, -0.602865,
		-0.703889, 0.269113, -0.657358,
		46.180378, 35.165840, 34.087257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.391422, 34.864418, 34.546329>,  <46.673100, 34.977463, 34.547409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.391422, 34.864418, 34.546329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731663, 34.870003, 34.756584>,  <47.935806, 34.873352, 34.882736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731663, 34.870003, 34.756584>,  <47.391422, 34.864418, 34.546329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.731663, 34.870003, 34.756584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491519, 0.334014, -0.804266,
		-0.186799, 0.942465, 0.277248,
		0.850597, 0.013963, 0.525633,
		47.986843, 34.874191, 34.914272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.497036, 36.717148, 21.884319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104652, 36.725979, 21.961506>,  <37.869225, 36.731277, 22.007818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104652, 36.725979, 21.961506>,  <38.497036, 36.717148, 21.884319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104652, 36.725979, 21.961506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154204, -0.515509, 0.842894,
		0.118085, 0.856599, 0.502288,
		-0.980957, 0.022079, 0.192965,
		37.810364, 36.732601, 22.019396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507126, 36.737812, 22.536634>,  <38.497036, 36.717148, 21.884319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507126, 36.737812, 22.536634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122948, 36.650414, 22.467569>,  <37.892441, 36.597973, 22.426130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122948, 36.650414, 22.467569>,  <38.507126, 36.737812, 22.536634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122948, 36.650414, 22.467569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038647, -0.509436, 0.859640,
		-0.275788, 0.832307, 0.480839,
		-0.960441, -0.218496, -0.172662,
		37.834816, 36.584866, 22.415771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134773, 36.940067, 23.127947>,  <38.507126, 36.737812, 22.536634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134773, 36.940067, 23.127947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914303, 36.656723, 22.951572>,  <37.782021, 36.486717, 22.845747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.914303, 36.656723, 22.951572>,  <38.134773, 36.940067, 23.127947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914303, 36.656723, 22.951572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035261, -0.508210, 0.860511,
		-0.833641, 0.489845, 0.255137,
		-0.551180, -0.708361, -0.440937,
		37.748947, 36.444214, 22.819292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465763, 36.999695, 23.478855>,  <38.134773, 36.940067, 23.127947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465763, 36.999695, 23.478855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468220, 36.631317, 23.322994>,  <37.469692, 36.410290, 23.229477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.468220, 36.631317, 23.322994>,  <37.465763, 36.999695, 23.478855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468220, 36.631317, 23.322994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146859, -0.386266, 0.910621,
		-0.989138, 0.051631, -0.137621,
		0.006142, -0.920941, -0.389653,
		37.470062, 36.355034, 23.206099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822418, 36.759319, 23.688559>,  <37.465763, 36.999695, 23.478855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822418, 36.759319, 23.688559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.067669, 36.458542, 23.591681>,  <37.214821, 36.278076, 23.533554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.067669, 36.458542, 23.591681>,  <36.822418, 36.759319, 23.688559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067669, 36.458542, 23.591681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252019, -0.476741, 0.842143,
		-0.748707, -0.455302, -0.481806,
		0.613126, -0.751943, -0.242195,
		37.251606, 36.232960, 23.519022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479118, 36.132431, 23.698450>,  <36.822418, 36.759319, 23.688559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479118, 36.132431, 23.698450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856728, 36.008202, 23.742928>,  <37.083294, 35.933666, 23.769613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856728, 36.008202, 23.742928>,  <36.479118, 36.132431, 23.698450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856728, 36.008202, 23.742928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264584, -0.511557, 0.817500,
		-0.197008, -0.801160, -0.565094,
		0.944025, -0.310569, 0.111193,
		37.139935, 35.915031, 23.776285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351940, 35.449299, 23.791731>,  <36.479118, 36.132431, 23.698450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351940, 35.449299, 23.791731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.725620, 35.509140, 23.921276>,  <36.949829, 35.545044, 23.999002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.725620, 35.509140, 23.921276>,  <36.351940, 35.449299, 23.791731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725620, 35.509140, 23.921276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200690, -0.530166, 0.823801,
		0.294944, -0.834592, -0.465258,
		0.934201, 0.149603, 0.323864,
		37.005882, 35.554020, 24.018435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579853, 34.762348, 23.938396>,  <36.351940, 35.449299, 23.791731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579853, 34.762348, 23.938396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.799389, 35.020794, 24.150551>,  <36.931110, 35.175861, 24.277843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.799389, 35.020794, 24.150551>,  <36.579853, 34.762348, 23.938396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799389, 35.020794, 24.150551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089562, -0.585386, 0.805793,
		0.831115, -0.489755, -0.263417,
		0.548841, 0.646114, 0.530386,
		36.964043, 35.214626, 24.309668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065014, 34.332165, 24.338579>,  <36.579853, 34.762348, 23.938396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065014, 34.332165, 24.338579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085884, 34.675465, 24.542810>,  <37.098404, 34.881443, 24.665350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085884, 34.675465, 24.542810>,  <37.065014, 34.332165, 24.338579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085884, 34.675465, 24.542810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054372, -0.512959, 0.856689,
		0.997157, -0.016934, -0.073427,
		0.052172, 0.858246, 0.510580,
		37.101536, 34.932938, 24.695984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557224, 34.140167, 24.793798>,  <37.065014, 34.332165, 24.338579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557224, 34.140167, 24.793798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368923, 34.450970, 24.960966>,  <37.255943, 34.637451, 25.061266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368923, 34.450970, 24.960966>,  <37.557224, 34.140167, 24.793798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368923, 34.450970, 24.960966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249992, -0.336800, 0.907783,
		0.846105, 0.531820, -0.035695,
		-0.470755, 0.777003, 0.417919,
		37.227695, 34.684071, 25.086342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994453, 34.452503, 25.260809>,  <37.557224, 34.140167, 24.793798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994453, 34.452503, 25.260809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624214, 34.547901, 25.378376>,  <37.402069, 34.605141, 25.448915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624214, 34.547901, 25.378376>,  <37.994453, 34.452503, 25.260809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624214, 34.547901, 25.378376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246114, -0.210731, 0.946055,
		0.287569, 0.948004, 0.136355,
		-0.925598, 0.238497, 0.293916,
		37.346535, 34.619450, 25.466551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009502, 34.920956, 25.745628>,  <37.994453, 34.452503, 25.260809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009502, 34.920956, 25.745628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634346, 34.807358, 25.825329>,  <37.409252, 34.739201, 25.873150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634346, 34.807358, 25.825329>,  <38.009502, 34.920956, 25.745628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634346, 34.807358, 25.825329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243605, -0.130200, 0.961095,
		-0.247004, 0.949945, 0.191296,
		-0.937894, -0.283995, 0.199252,
		37.352978, 34.722160, 25.885105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838524, 35.292606, 26.262678>,  <38.009502, 34.920956, 25.745628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838524, 35.292606, 26.262678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560722, 35.004822, 26.260321>,  <37.394043, 34.832150, 26.258907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560722, 35.004822, 26.260321>,  <37.838524, 35.292606, 26.262678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560722, 35.004822, 26.260321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100675, -0.105284, 0.989333,
		-0.712412, 0.686501, 0.145552,
		-0.694503, -0.719466, -0.005893,
		37.352371, 34.788982, 26.258553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422386, 35.468876, 26.803183>,  <37.838524, 35.292606, 26.262678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422386, 35.468876, 26.803183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.339527, 35.079491, 26.764263>,  <37.289810, 34.845860, 26.740911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.339527, 35.079491, 26.764263>,  <37.422386, 35.468876, 26.803183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339527, 35.079491, 26.764263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020965, -0.095016, 0.995255,
		-0.978085, 0.208204, -0.000727,
		-0.207147, -0.973459, -0.097299,
		37.277382, 34.787453, 26.735073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942810, 35.207886, 27.370670>,  <37.422386, 35.468876, 26.803183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942810, 35.207886, 27.370670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.072041, 34.856148, 27.230743>,  <37.149578, 34.645103, 27.146788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.072041, 34.856148, 27.230743>,  <36.942810, 35.207886, 27.370670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072041, 34.856148, 27.230743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021902, -0.376486, 0.926163,
		-0.946120, -0.291558, -0.140893,
		0.323075, -0.879347, -0.349815,
		37.168964, 34.592342, 27.125799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488117, 34.705395, 27.624063>,  <36.942810, 35.207886, 27.370670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488117, 34.705395, 27.624063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819485, 34.497162, 27.541388>,  <37.018303, 34.372223, 27.491783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819485, 34.497162, 27.541388>,  <36.488117, 34.705395, 27.624063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819485, 34.497162, 27.541388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039350, -0.422193, 0.905652,
		-0.558730, -0.742123, -0.370236,
		0.828416, -0.520584, -0.206689,
		37.068008, 34.340988, 27.479382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324432, 34.081295, 27.881636>,  <36.488117, 34.705395, 27.624063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324432, 34.081295, 27.881636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.722973, 34.105179, 27.857271>,  <36.962097, 34.119511, 27.842653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.722973, 34.105179, 27.857271>,  <36.324432, 34.081295, 27.881636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722973, 34.105179, 27.857271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078948, -0.375242, 0.923559,
		0.032288, -0.925002, -0.378588,
		0.996356, 0.059709, -0.060912,
		37.021881, 34.123093, 27.838997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522182, 33.519615, 28.328175>,  <36.324432, 34.081295, 27.881636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522182, 33.519615, 28.328175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849674, 33.741505, 28.268900>,  <37.046169, 33.874638, 28.233335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849674, 33.741505, 28.268900>,  <36.522182, 33.519615, 28.328175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849674, 33.741505, 28.268900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198136, -0.030720, 0.979693,
		0.538906, -0.831468, -0.135062,
		0.818733, 0.554723, -0.148188,
		37.095295, 33.907921, 28.224443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157833, 33.171131, 28.586882>,  <36.522182, 33.519615, 28.328175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157833, 33.171131, 28.586882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.233387, 33.563778, 28.597879>,  <37.278721, 33.799366, 28.604479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.233387, 33.563778, 28.597879>,  <37.157833, 33.171131, 28.586882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233387, 33.563778, 28.597879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529246, -0.125347, 0.839158,
		0.827176, -0.143955, -0.543192,
		0.188888, 0.981614, 0.027496,
		37.290054, 33.858261, 28.606129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916855, 33.274551, 28.759111>,  <37.157833, 33.171131, 28.586882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916855, 33.274551, 28.759111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796516, 33.643078, 28.857641>,  <37.724316, 33.864193, 28.916759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796516, 33.643078, 28.857641>,  <37.916855, 33.274551, 28.759111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796516, 33.643078, 28.857641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420861, -0.103522, 0.901199,
		0.855786, 0.374788, -0.356601,
		-0.300843, 0.921313, 0.246326,
		37.706264, 33.919472, 28.931540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573967, 33.597866, 29.089212>,  <37.916855, 33.274551, 28.759111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573967, 33.597866, 29.089212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.273712, 33.846344, 29.179249>,  <38.093559, 33.995430, 29.233271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.273712, 33.846344, 29.179249>,  <38.573967, 33.597866, 29.089212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273712, 33.846344, 29.179249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432202, 0.203972, 0.878406,
		0.499748, 0.756646, -0.421589,
		-0.750635, 0.621194, 0.225090,
		38.048523, 34.032703, 29.246777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881130, 34.208237, 29.091387>,  <38.573967, 33.597866, 29.089212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881130, 34.208237, 29.091387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.571705, 34.201839, 29.344791>,  <38.386047, 34.198002, 29.496834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.571705, 34.201839, 29.344791>,  <38.881130, 34.208237, 29.091387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571705, 34.201839, 29.344791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631671, 0.060791, 0.772850,
		-0.050868, 0.998022, -0.036926,
		-0.773566, -0.015989, 0.633514,
		38.339634, 34.197044, 29.534845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097023, 33.964500, 29.730284>,  <38.881130, 34.208237, 29.091387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097023, 33.964500, 29.730284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.474102, 33.975403, 29.597267>,  <39.700348, 33.981945, 29.517456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.474102, 33.975403, 29.597267>,  <39.097023, 33.964500, 29.730284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474102, 33.975403, 29.597267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246751, 0.727832, -0.639824,
		0.224594, 0.685213, 0.692849,
		0.942694, 0.027261, -0.332544,
		39.756908, 33.983582, 29.497503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244934, 34.658871, 29.710295>,  <39.097023, 33.964500, 29.730284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244934, 34.658871, 29.710295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.526985, 34.503822, 29.472794>,  <39.696217, 34.410793, 29.330294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.526985, 34.503822, 29.472794>,  <39.244934, 34.658871, 29.710295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526985, 34.503822, 29.472794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027413, 0.821832, -0.569070,
		0.708546, 0.417546, 0.568874,
		0.705132, -0.387618, -0.593752,
		39.738525, 34.387539, 29.294668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722881, 35.271282, 29.411602>,  <39.244934, 34.658871, 29.710295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722881, 35.271282, 29.411602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.797382, 34.958679, 29.173426>,  <39.842083, 34.771118, 29.030519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.797382, 34.958679, 29.173426>,  <39.722881, 35.271282, 29.411602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797382, 34.958679, 29.173426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023955, 0.602255, -0.797944,
		0.982210, 0.162881, 0.093450,
		0.186251, -0.781510, -0.595443,
		39.853256, 34.724228, 28.994793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309124, 35.517040, 28.994970>,  <39.722881, 35.271282, 29.411602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309124, 35.517040, 28.994970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.118931, 35.212578, 28.818537>,  <40.004814, 35.029900, 28.712677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.118931, 35.212578, 28.818537>,  <40.309124, 35.517040, 28.994970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118931, 35.212578, 28.818537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025306, 0.513014, -0.858007,
		0.879364, -0.396801, -0.263189,
		-0.475478, -0.761160, -0.441085,
		39.976288, 34.984230, 28.686211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638535, 35.560730, 28.452393>,  <40.309124, 35.517040, 28.994970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638535, 35.560730, 28.452393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325493, 35.327663, 28.364733>,  <40.137669, 35.187824, 28.312138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325493, 35.327663, 28.364733>,  <40.638535, 35.560730, 28.452393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325493, 35.327663, 28.364733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078526, 0.441624, -0.893757,
		0.617544, -0.682251, -0.391372,
		-0.782607, -0.582667, -0.219148,
		40.090710, 35.152863, 28.298988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762707, 35.317329, 27.868599>,  <40.638535, 35.560730, 28.452393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762707, 35.317329, 27.868599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365288, 35.272743, 27.877047>,  <40.126839, 35.245991, 27.882114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365288, 35.272743, 27.877047>,  <40.762707, 35.317329, 27.868599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365288, 35.272743, 27.877047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066746, 0.423799, -0.903293,
		0.091736, -0.898871, -0.428503,
		-0.993544, -0.111465, 0.021118,
		40.067226, 35.239304, 27.883383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552792, 34.859024, 27.343950>,  <40.762707, 35.317329, 27.868599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552792, 34.859024, 27.343950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.233101, 35.080032, 27.438570>,  <40.041286, 35.212639, 27.495342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.233101, 35.080032, 27.438570>,  <40.552792, 34.859024, 27.343950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233101, 35.080032, 27.438570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030067, 0.356321, -0.933879,
		-0.600279, -0.753493, -0.268168,
		-0.799225, 0.552525, 0.236548,
		39.993332, 35.245789, 27.509535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127155, 34.724033, 26.824902>,  <40.552792, 34.859024, 27.343950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127155, 34.724033, 26.824902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.993000, 35.062721, 26.990105>,  <39.912506, 35.265934, 27.089226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.993000, 35.062721, 26.990105>,  <40.127155, 34.724033, 26.824902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993000, 35.062721, 26.990105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129395, 0.392842, -0.910457,
		-0.933150, -0.358801, -0.022194,
		-0.335392, 0.846721, 0.413008,
		39.892384, 35.316738, 27.114006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629272, 34.850609, 26.420845>,  <40.127155, 34.724033, 26.824902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629272, 34.850609, 26.420845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657379, 35.203533, 26.607002>,  <39.674244, 35.415287, 26.718697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657379, 35.203533, 26.607002>,  <39.629272, 34.850609, 26.420845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657379, 35.203533, 26.607002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185286, 0.469971, -0.863016,
		-0.980169, -0.025591, 0.196502,
		0.070265, 0.882311, 0.465393,
		39.678459, 35.468227, 26.746620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047398, 35.322697, 26.227488>,  <39.629272, 34.850609, 26.420845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047398, 35.322697, 26.227488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327488, 35.578712, 26.354000>,  <39.495541, 35.732323, 26.429907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327488, 35.578712, 26.354000>,  <39.047398, 35.322697, 26.227488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327488, 35.578712, 26.354000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116083, 0.539195, -0.834142,
		-0.704422, 0.547372, 0.451856,
		0.700225, 0.640041, 0.316280,
		39.537556, 35.770725, 26.448885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840927, 35.958027, 25.937664>,  <39.047398, 35.322697, 26.227488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840927, 35.958027, 25.937664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.230236, 36.004143, 26.017115>,  <39.463821, 36.031811, 26.064785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.230236, 36.004143, 26.017115>,  <38.840927, 35.958027, 25.937664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230236, 36.004143, 26.017115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094242, 0.588210, -0.803198,
		-0.209430, 0.800449, 0.561624,
		0.973271, 0.115286, 0.198625,
		39.522217, 36.038727, 26.076702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869083, 36.669468, 25.802038>,  <38.840927, 35.958027, 25.937664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869083, 36.669468, 25.802038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.237038, 36.512634, 25.798370>,  <39.457809, 36.418533, 25.796169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.237038, 36.512634, 25.798370>,  <38.869083, 36.669468, 25.802038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237038, 36.512634, 25.798370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212134, 0.517095, -0.829224,
		0.329866, 0.760845, 0.558841,
		0.919884, -0.392082, -0.009171,
		39.513004, 36.395008, 25.795620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338104, 37.248707, 25.585896>,  <38.869083, 36.669468, 25.802038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338104, 37.248707, 25.585896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.532524, 36.907116, 25.511627>,  <39.649178, 36.702160, 25.467066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.532524, 36.907116, 25.511627>,  <39.338104, 37.248707, 25.585896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532524, 36.907116, 25.511627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364110, 0.391019, -0.845298,
		0.794469, 0.343252, 0.500997,
		0.486049, -0.853980, -0.185671,
		39.678337, 36.650921, 25.455925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096134, 37.464947, 25.374733>,  <39.338104, 37.248707, 25.585896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096134, 37.464947, 25.374733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996731, 37.097084, 25.253092>,  <39.937088, 36.876366, 25.180107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996731, 37.097084, 25.253092>,  <40.096134, 37.464947, 25.374733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996731, 37.097084, 25.253092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238347, 0.246242, -0.939444,
		0.938847, -0.305943, 0.158003,
		-0.248510, -0.919654, -0.304104,
		39.922176, 36.821186, 25.161861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582474, 37.366196, 24.975521>,  <40.096134, 37.464947, 25.374733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582474, 37.366196, 24.975521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.294956, 37.108173, 24.871796>,  <40.122448, 36.953362, 24.809561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.294956, 37.108173, 24.871796>,  <40.582474, 37.366196, 24.975521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294956, 37.108173, 24.871796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203261, 0.161707, -0.965679,
		0.664851, -0.746828, 0.014882,
		-0.718790, -0.645057, -0.259312,
		40.079319, 36.914658, 24.794003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956978, 36.847294, 24.545340>,  <40.582474, 37.366196, 24.975521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956978, 36.847294, 24.545340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.564999, 36.816780, 24.471710>,  <40.329811, 36.798473, 24.427532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.564999, 36.816780, 24.471710>,  <40.956978, 36.847294, 24.545340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564999, 36.816780, 24.471710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173395, 0.128645, -0.976414,
		0.098161, -0.988752, -0.112839,
		-0.979948, -0.076280, -0.184073,
		40.271015, 36.793896, 24.416489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969582, 36.375172, 23.999088>,  <40.956978, 36.847294, 24.545340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969582, 36.375172, 23.999088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.625591, 36.579067, 23.989185>,  <40.419197, 36.701405, 23.983244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.625591, 36.579067, 23.989185>,  <40.969582, 36.375172, 23.999088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625591, 36.579067, 23.989185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101021, 0.122483, -0.987316,
		-0.500239, -0.851567, -0.156826,
		-0.859974, 0.509737, -0.024755,
		40.367599, 36.731987, 23.981758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625591, 36.203293, 23.378410>,  <40.969582, 36.375172, 23.999088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625591, 36.203293, 23.378410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.477760, 36.557087, 23.492327>,  <40.389061, 36.769363, 23.560677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.477760, 36.557087, 23.492327>,  <40.625591, 36.203293, 23.378410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477760, 36.557087, 23.492327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080740, 0.274761, -0.958117,
		-0.925687, -0.377088, -0.030131,
		-0.369573, 0.884483, 0.284789,
		40.366890, 36.822433, 23.577763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.018215, 36.342602, 22.942680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.111942, 36.708076, 23.075512>,  <40.168179, 36.927361, 23.155210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.111942, 36.708076, 23.075512>,  <40.018215, 36.342602, 22.942680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111942, 36.708076, 23.075512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290309, 0.391765, -0.873064,
		-0.927803, 0.108165, 0.357047,
		0.234314, 0.913686, 0.332079,
		40.182236, 36.982182, 23.175135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462746, 36.749981, 22.676695>,  <40.018215, 36.342602, 22.942680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462746, 36.749981, 22.676695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762299, 37.000996, 22.761892>,  <39.942032, 37.151604, 22.813011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762299, 37.000996, 22.761892>,  <39.462746, 36.749981, 22.676695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762299, 37.000996, 22.761892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342425, 0.641596, -0.686367,
		-0.567379, 0.441075, 0.695366,
		0.748884, 0.627541, 0.212993,
		39.986965, 37.189259, 22.825790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122459, 37.319397, 22.762304>,  <39.462746, 36.749981, 22.676695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122459, 37.319397, 22.762304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500069, 37.412636, 22.668941>,  <39.726635, 37.468578, 22.612923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500069, 37.412636, 22.668941>,  <39.122459, 37.319397, 22.762304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500069, 37.412636, 22.668941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329723, 0.645914, -0.688533,
		-0.009731, 0.726954, 0.686617,
		0.944028, 0.233093, -0.233408,
		39.783276, 37.482563, 22.598919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003075, 37.966454, 22.460901>,  <39.122459, 37.319397, 22.762304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003075, 37.966454, 22.460901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.370770, 37.853081, 22.351595>,  <39.591385, 37.785057, 22.286011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.370770, 37.853081, 22.351595>,  <39.003075, 37.966454, 22.460901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370770, 37.853081, 22.351595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080923, 0.543247, -0.835664,
		0.385303, 0.790285, 0.476436,
		0.919235, -0.283429, -0.273267,
		39.646542, 37.768051, 22.269615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298893, 38.562050, 22.290970>,  <39.003075, 37.966454, 22.460901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298893, 38.562050, 22.290970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.489098, 38.263264, 22.105095>,  <39.603218, 38.083992, 21.993570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.489098, 38.263264, 22.105095>,  <39.298893, 38.562050, 22.290970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489098, 38.263264, 22.105095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055000, 0.552437, -0.831738,
		0.877991, 0.369940, 0.303772,
		0.475508, -0.746966, -0.464688,
		39.631748, 38.039173, 21.965689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595970, 38.940479, 21.735468>,  <39.298893, 38.562050, 22.290970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595970, 38.940479, 21.735468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.632782, 38.561153, 21.613989>,  <39.654869, 38.333557, 21.541101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.632782, 38.561153, 21.613989>,  <39.595970, 38.940479, 21.735468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632782, 38.561153, 21.613989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006560, 0.305563, -0.952149,
		0.995735, 0.085635, 0.034342,
		0.092031, -0.948313, -0.303698,
		39.660393, 38.276661, 21.522879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175991, 38.910637, 21.310110>,  <39.595970, 38.940479, 21.735468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175991, 38.910637, 21.310110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.972641, 38.582455, 21.205492>,  <39.850632, 38.385544, 21.142721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.972641, 38.582455, 21.205492>,  <40.175991, 38.910637, 21.310110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972641, 38.582455, 21.205492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056242, 0.271441, -0.960810,
		0.859298, -0.503161, -0.091849,
		-0.508374, -0.820457, -0.261548,
		39.820129, 38.336319, 21.127028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425083, 38.725365, 20.708307>,  <40.175991, 38.910637, 21.310110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425083, 38.725365, 20.708307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.078072, 38.526794, 20.695944>,  <39.869865, 38.407654, 20.688526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.078072, 38.526794, 20.695944>,  <40.425083, 38.725365, 20.708307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078072, 38.526794, 20.695944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059718, 0.165647, -0.984375,
		0.493786, -0.852130, -0.173349,
		-0.867530, -0.496423, -0.030907,
		39.817814, 38.377869, 20.686672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422596, 38.193153, 20.139763>,  <40.425083, 38.725365, 20.708307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422596, 38.193153, 20.139763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.037731, 38.276123, 20.210442>,  <39.806812, 38.325905, 20.252848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.037731, 38.276123, 20.210442>,  <40.422596, 38.193153, 20.139763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037731, 38.276123, 20.210442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135165, 0.199731, -0.970483,
		-0.236598, -0.957643, -0.164136,
		-0.962160, 0.207429, 0.176696,
		39.749084, 38.338352, 20.263451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014256, 37.949978, 19.633261>,  <40.422596, 38.193153, 20.139763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014256, 37.949978, 19.633261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.797207, 38.248932, 19.786612>,  <39.666977, 38.428303, 19.878622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.797207, 38.248932, 19.786612>,  <40.014256, 37.949978, 19.633261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797207, 38.248932, 19.786612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117331, 0.384499, -0.915639,
		-0.831742, -0.541827, -0.120946,
		-0.542622, 0.747384, 0.383377,
		39.634418, 38.473148, 19.901625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628197, 38.064682, 19.085722>,  <40.014256, 37.949978, 19.633261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628197, 38.064682, 19.085722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.544559, 38.369423, 19.330952>,  <39.494377, 38.552269, 19.478090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.544559, 38.369423, 19.330952>,  <39.628197, 38.064682, 19.085722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544559, 38.369423, 19.330952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209823, 0.577380, -0.789054,
		-0.955121, -0.293621, 0.039130,
		-0.209090, 0.761852, 0.613076,
		39.481831, 38.597980, 19.514875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036484, 38.303551, 18.827953>,  <39.628197, 38.064682, 19.085722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036484, 38.303551, 18.827953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215080, 38.616894, 19.000927>,  <39.322239, 38.804901, 19.104712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215080, 38.616894, 19.000927>,  <39.036484, 38.303551, 18.827953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215080, 38.616894, 19.000927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098788, 0.523480, -0.846292,
		-0.889318, 0.335143, 0.311116,
		0.446492, 0.783356, 0.432432,
		39.349030, 38.851902, 19.130657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690651, 38.800098, 18.573744>,  <39.036484, 38.303551, 18.827953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690651, 38.800098, 18.573744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000076, 38.986694, 18.745321>,  <39.185730, 39.098652, 18.848269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000076, 38.986694, 18.745321>,  <38.690651, 38.800098, 18.573744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000076, 38.986694, 18.745321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047584, 0.717711, -0.694714,
		-0.631931, 0.516993, 0.577391,
		0.773562, 0.466486, 0.428943,
		39.232143, 39.126640, 18.874004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574879, 39.510567, 18.830032>,  <38.690651, 38.800098, 18.573744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574879, 39.510567, 18.830032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.965084, 39.497189, 18.743076>,  <39.199207, 39.489162, 18.690903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.965084, 39.497189, 18.743076>,  <38.574879, 39.510567, 18.830032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965084, 39.497189, 18.743076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135918, 0.685400, -0.715369,
		0.172924, 0.727398, 0.664070,
		0.975512, -0.033445, -0.217389,
		39.257736, 39.487156, 18.677860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739426, 40.233391, 18.670183>,  <38.574879, 39.510567, 18.830032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739426, 40.233391, 18.670183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077885, 40.050686, 18.560350>,  <39.280960, 39.941063, 18.494452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077885, 40.050686, 18.560350>,  <38.739426, 40.233391, 18.670183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077885, 40.050686, 18.560350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131091, 0.677766, -0.723498,
		0.516571, 0.576192, 0.633370,
		0.846150, -0.456767, -0.274581,
		39.331730, 39.913654, 18.477976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203983, 40.733925, 18.660187>,  <38.739426, 40.233391, 18.670183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203983, 40.733925, 18.660187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.342018, 40.446316, 18.418884>,  <39.424839, 40.273750, 18.274103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.342018, 40.446316, 18.418884>,  <39.203983, 40.733925, 18.660187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342018, 40.446316, 18.418884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172438, 0.680368, -0.712295,
		0.922595, 0.141777, 0.358772,
		0.345084, -0.719027, -0.603256,
		39.445545, 40.230606, 18.237907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838837, 40.942699, 18.513334>,  <39.203983, 40.733925, 18.660187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838837, 40.942699, 18.513334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.739689, 40.687916, 18.221350>,  <39.680202, 40.535046, 18.046158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.739689, 40.687916, 18.221350>,  <39.838837, 40.942699, 18.513334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739689, 40.687916, 18.221350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146625, 0.720132, -0.678167,
		0.957635, -0.275125, -0.085102,
		-0.247865, -0.636958, -0.729963,
		39.665329, 40.496830, 18.002361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362225, 41.000622, 18.015894>,  <39.838837, 40.942699, 18.513334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362225, 41.000622, 18.015894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.054012, 40.838230, 17.819338>,  <39.869083, 40.740795, 17.701405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.054012, 40.838230, 17.819338>,  <40.362225, 41.000622, 18.015894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054012, 40.838230, 17.819338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209859, 0.566364, -0.796988,
		0.601869, -0.717225, -0.351201,
		-0.770528, -0.405980, -0.491394,
		39.822853, 40.716438, 17.671921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579983, 41.123730, 17.381521>,  <40.362225, 41.000622, 18.015894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579983, 41.123730, 17.381521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.198349, 41.030800, 17.305897>,  <39.969368, 40.975040, 17.260523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.198349, 41.030800, 17.305897>,  <40.579983, 41.123730, 17.381521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198349, 41.030800, 17.305897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046571, 0.738568, -0.672568,
		0.295887, -0.632883, -0.715478,
		-0.954087, -0.232325, -0.189059,
		39.912125, 40.961102, 17.249180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497650, 41.027180, 16.659164>,  <40.579983, 41.123730, 17.381521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497650, 41.027180, 16.659164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.154221, 41.144363, 16.827459>,  <39.948162, 41.214676, 16.928436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.154221, 41.144363, 16.827459>,  <40.497650, 41.027180, 16.659164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154221, 41.144363, 16.827459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039840, 0.780047, -0.624451,
		-0.511136, -0.552901, -0.658058,
		-0.858576, 0.292962, 0.420738,
		39.896648, 41.232250, 16.953680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226242, 41.308353, 16.172178>,  <40.497650, 41.027180, 16.659164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226242, 41.308353, 16.172178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960480, 41.452843, 16.433891>,  <39.801022, 41.539536, 16.590919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960480, 41.452843, 16.433891>,  <40.226242, 41.308353, 16.172178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960480, 41.452843, 16.433891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234930, 0.730125, -0.641659,
		-0.709492, -0.580030, -0.400233,
		-0.664401, 0.361225, 0.654284,
		39.761158, 41.561211, 16.630177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637001, 41.452648, 15.872926>,  <40.226242, 41.308353, 16.172178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637001, 41.452648, 15.872926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589027, 41.678936, 16.199257>,  <39.560242, 41.814709, 16.395056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589027, 41.678936, 16.199257>,  <39.637001, 41.452648, 15.872926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589027, 41.678936, 16.199257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311611, 0.758780, -0.571972,
		-0.942610, -0.322820, 0.085281,
		-0.119934, 0.565721, 0.815828,
		39.553047, 41.848652, 16.444006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953609, 41.789043, 16.008062>,  <39.637001, 41.452648, 15.872926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953609, 41.789043, 16.008062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275719, 41.991913, 16.130901>,  <39.468983, 42.113636, 16.204605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275719, 41.991913, 16.130901>,  <38.953609, 41.789043, 16.008062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275719, 41.991913, 16.130901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326411, 0.811620, -0.484489,
		-0.494968, 0.289906, 0.819123,
		0.805272, 0.507177, 0.307097,
		39.517300, 42.144066, 16.223030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642185, 41.988819, 15.267295>,  <38.953609, 41.789043, 16.008062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642185, 41.988819, 15.267295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.699196, 42.302387, 15.509009>,  <38.733402, 42.490528, 15.654037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.699196, 42.302387, 15.509009>,  <38.642185, 41.988819, 15.267295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699196, 42.302387, 15.509009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988032, -0.076297, -0.134057,
		-0.058984, 0.616160, -0.785409,
		0.142525, 0.783916, 0.604286,
		38.741955, 42.537563, 15.690295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055965, 41.805473, 15.814433>,  <38.642185, 41.988819, 15.267295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055965, 41.805473, 15.814433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656158, 41.799637, 15.803517>,  <37.416275, 41.796135, 15.796968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656158, 41.799637, 15.803517>,  <38.055965, 41.805473, 15.814433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656158, 41.799637, 15.803517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016756, -0.486192, 0.873691,
		-0.026015, 0.873730, 0.485715,
		-0.999521, -0.014590, -0.027288,
		37.356300, 41.795261, 15.795331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869049, 41.965611, 16.500317>,  <38.055965, 41.805473, 15.814433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869049, 41.965611, 16.500317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547577, 41.791050, 16.338505>,  <37.354694, 41.686314, 16.241417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547577, 41.791050, 16.338505>,  <37.869049, 41.965611, 16.500317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547577, 41.791050, 16.338505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060822, -0.616016, 0.785382,
		-0.591939, 0.655803, 0.468540,
		-0.803684, -0.436401, -0.404532,
		37.306473, 41.660130, 16.217146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481750, 41.800930, 17.146805>,  <37.869049, 41.965611, 16.500317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481750, 41.800930, 17.146805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348129, 41.570866, 16.848114>,  <37.267956, 41.432827, 16.668900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348129, 41.570866, 16.848114>,  <37.481750, 41.800930, 17.146805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348129, 41.570866, 16.848114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229503, -0.718758, 0.656289,
		-0.914186, 0.390612, 0.108104,
		-0.334056, -0.575160, -0.746725,
		37.247913, 41.398319, 16.624096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840637, 41.504532, 17.331625>,  <37.481750, 41.800930, 17.146805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840637, 41.504532, 17.331625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.938187, 41.247925, 17.040699>,  <36.996716, 41.093964, 16.866142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.938187, 41.247925, 17.040699>,  <36.840637, 41.504532, 17.331625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938187, 41.247925, 17.040699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248193, -0.766268, 0.592650,
		-0.937511, 0.035985, -0.346089,
		0.243870, -0.641513, -0.727316,
		37.011349, 41.055470, 16.822504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257603, 41.124672, 17.269913>,  <36.840637, 41.504532, 17.331625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257603, 41.124672, 17.269913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568153, 40.904716, 17.146713>,  <36.754482, 40.772743, 17.072794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568153, 40.904716, 17.146713>,  <36.257603, 41.124672, 17.269913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568153, 40.904716, 17.146713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264398, -0.727756, 0.632822,
		-0.572128, -0.409875, -0.710403,
		0.776378, -0.549884, -0.307999,
		36.801067, 40.739750, 17.054314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047722, 40.417419, 17.132992>,  <36.257603, 41.124672, 17.269913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047722, 40.417419, 17.132992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.437851, 40.412468, 17.221167>,  <36.671928, 40.409496, 17.274073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.437851, 40.412468, 17.221167>,  <36.047722, 40.417419, 17.132992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437851, 40.412468, 17.221167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133629, -0.827898, 0.544728,
		0.175756, -0.560742, -0.809122,
		0.975322, -0.012383, 0.220439,
		36.730446, 40.408752, 17.287298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044838, 39.704468, 17.345160>,  <36.047722, 40.417419, 17.132992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044838, 39.704468, 17.345160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.400631, 39.865234, 17.432133>,  <36.614109, 39.961693, 17.484316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.400631, 39.865234, 17.432133>,  <36.044838, 39.704468, 17.345160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400631, 39.865234, 17.432133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125511, -0.672406, 0.729464,
		0.439386, -0.621558, -0.648541,
		0.889487, 0.401915, 0.217433,
		36.667477, 39.985809, 17.497362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370327, 39.125935, 17.469383>,  <36.044838, 39.704468, 17.345160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370327, 39.125935, 17.469383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.594757, 39.412594, 17.635086>,  <36.729416, 39.584587, 17.734509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.594757, 39.412594, 17.635086>,  <36.370327, 39.125935, 17.469383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594757, 39.412594, 17.635086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188056, -0.597728, 0.779331,
		0.806117, -0.359363, -0.470142,
		0.561079, 0.716645, 0.414258,
		36.763081, 39.627586, 17.759363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892082, 38.752167, 17.751549>,  <36.370327, 39.125935, 17.469383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892082, 38.752167, 17.751549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.876545, 39.102379, 17.944187>,  <36.867222, 39.312508, 18.059771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.876545, 39.102379, 17.944187>,  <36.892082, 38.752167, 17.751549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876545, 39.102379, 17.944187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282537, -0.452668, 0.845733,
		0.958469, 0.168922, -0.229786,
		-0.038846, 0.875532, 0.481596,
		36.864891, 39.365040, 18.088665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445644, 38.785900, 18.120693>,  <36.892082, 38.752167, 17.751549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445644, 38.785900, 18.120693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217995, 39.031754, 18.339170>,  <37.081406, 39.179264, 18.470257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217995, 39.031754, 18.339170>,  <37.445644, 38.785900, 18.120693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217995, 39.031754, 18.339170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218971, -0.526984, 0.821182,
		0.792556, 0.586957, 0.165335,
		-0.569127, 0.614629, 0.546192,
		37.047256, 39.216141, 18.503029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795685, 38.975212, 18.740377>,  <37.445644, 38.785900, 18.120693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795685, 38.975212, 18.740377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.434822, 39.104313, 18.854879>,  <37.218304, 39.181774, 18.923580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.434822, 39.104313, 18.854879>,  <37.795685, 38.975212, 18.740377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434822, 39.104313, 18.854879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063361, -0.557215, 0.827947,
		0.426728, 0.765076, 0.482246,
		-0.902158, 0.322753, 0.286255,
		37.164173, 39.201138, 18.940756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836311, 39.313480, 19.510021>,  <37.795685, 38.975212, 18.740377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836311, 39.313480, 19.510021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475830, 39.162590, 19.424665>,  <37.259541, 39.072056, 19.373451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475830, 39.162590, 19.424665>,  <37.836311, 39.313480, 19.510021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475830, 39.162590, 19.424665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063676, -0.602262, 0.795755,
		-0.428698, 0.703547, 0.566779,
		-0.901201, -0.377229, -0.213390,
		37.205471, 39.049423, 19.360649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395699, 39.445602, 20.100121>,  <37.836311, 39.313480, 19.510021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395699, 39.445602, 20.100121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237698, 39.137245, 19.900238>,  <37.142899, 38.952232, 19.780310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237698, 39.137245, 19.900238>,  <37.395699, 39.445602, 20.100121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237698, 39.137245, 19.900238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000156, -0.543993, 0.839090,
		-0.918681, 0.331363, 0.214998,
		-0.395001, -0.770889, -0.499704,
		37.119198, 38.905979, 19.750326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047981, 39.096378, 20.631304>,  <37.395699, 39.445602, 20.100121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047981, 39.096378, 20.631304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048267, 38.830013, 20.332891>,  <37.048439, 38.670197, 20.153843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048267, 38.830013, 20.332891>,  <37.047981, 39.096378, 20.631304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048267, 38.830013, 20.332891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086765, -0.743260, 0.663352,
		-0.996228, 0.064256, -0.058308,
		0.000714, -0.665909, -0.746032,
		37.048481, 38.630241, 20.109081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576214, 38.742695, 20.959118>,  <37.047981, 39.096378, 20.631304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576214, 38.742695, 20.959118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.787563, 38.546658, 20.681808>,  <36.914371, 38.429035, 20.515423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.787563, 38.546658, 20.681808>,  <36.576214, 38.742695, 20.959118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787563, 38.546658, 20.681808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089804, -0.844248, 0.528375,
		-0.844248, -0.216921, -0.490092,
		-0.528375, 0.490092, 0.693275,
		36.946075, 38.399632, 20.473825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251873, 38.084869, 20.861895>,  <36.576214, 38.742695, 20.959118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251873, 38.084869, 20.861895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629311, 38.032536, 20.740238>,  <36.855774, 38.001133, 20.667244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.629311, 38.032536, 20.740238>,  <36.251873, 38.084869, 20.861895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629311, 38.032536, 20.740238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046286, -0.857458, 0.512469,
		-0.327840, -0.497642, -0.803040,
		0.943599, -0.130838, -0.304143,
		36.912392, 37.993282, 20.648994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336174, 37.336475, 20.660671>,  <36.251873, 38.084869, 20.861895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336174, 37.336475, 20.660671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.695839, 37.488426, 20.747576>,  <36.911636, 37.579597, 20.799719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.695839, 37.488426, 20.747576>,  <36.336174, 37.336475, 20.660671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695839, 37.488426, 20.747576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165025, -0.754141, 0.635640,
		0.405312, -0.535689, -0.740784,
		0.899160, 0.379880, 0.217260,
		36.965588, 37.602390, 20.812754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795464, 36.812752, 20.625679>,  <36.336174, 37.336475, 20.660671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795464, 36.812752, 20.625679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967030, 37.094109, 20.852400>,  <37.069969, 37.262924, 20.988432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.967030, 37.094109, 20.852400>,  <36.795464, 36.812752, 20.625679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967030, 37.094109, 20.852400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307481, -0.703662, 0.640559,
		0.849402, -0.100467, -0.518095,
		0.428918, 0.703396, 0.566800,
		37.095707, 37.305126, 21.022440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399975, 36.479221, 20.810591>,  <36.795464, 36.812752, 20.625679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399975, 36.479221, 20.810591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.358612, 36.785725, 21.064253>,  <37.333794, 36.969627, 21.216450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.358612, 36.785725, 21.064253>,  <37.399975, 36.479221, 20.810591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358612, 36.785725, 21.064253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501737, -0.510324, 0.698448,
		0.858818, 0.390402, -0.331691,
		-0.103406, 0.766261, 0.634154,
		37.327591, 37.015602, 21.254499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147751, 36.584766, 21.077881>,  <37.399975, 36.479221, 20.810591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147751, 36.584766, 21.077881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.886250, 36.720455, 21.348446>,  <37.729351, 36.801868, 21.510786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.886250, 36.720455, 21.348446>,  <38.147751, 36.584766, 21.077881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886250, 36.720455, 21.348446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504483, -0.470872, 0.723723,
		0.564008, 0.814375, 0.136702,
		-0.653752, 0.339222, 0.676415,
		37.690125, 36.822224, 21.551371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.787102, 35.938423, 25.792072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.410648, 36.073009, 25.805063>,  <40.184776, 36.153763, 25.812857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.410648, 36.073009, 25.805063>,  <40.787102, 35.938423, 25.792072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410648, 36.073009, 25.805063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096014, -0.358198, 0.928696,
		0.324109, 0.870910, 0.369418,
		-0.941135, 0.336467, 0.032476,
		40.128307, 36.173950, 25.814806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734043, 36.286301, 26.383667>,  <40.787102, 35.938423, 25.792072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734043, 36.286301, 26.383667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351151, 36.210285, 26.296404>,  <40.121414, 36.164677, 26.244045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351151, 36.210285, 26.296404>,  <40.734043, 36.286301, 26.383667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351151, 36.210285, 26.296404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133160, -0.380049, 0.915331,
		-0.256858, 0.905234, 0.338489,
		-0.957231, -0.190037, -0.218160,
		40.063980, 36.153275, 26.230955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358242, 36.588287, 26.953215>,  <40.734043, 36.286301, 26.383667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358242, 36.588287, 26.953215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.102371, 36.335270, 26.778542>,  <39.948849, 36.183460, 26.673737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.102371, 36.335270, 26.778542>,  <40.358242, 36.588287, 26.953215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102371, 36.335270, 26.778542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267631, -0.349282, 0.897984,
		-0.720543, 0.691293, 0.054139,
		-0.639680, -0.632547, -0.436684,
		39.910469, 36.145504, 26.647535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834549, 36.687794, 27.277916>,  <40.358242, 36.588287, 26.953215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834549, 36.687794, 27.277916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.801132, 36.312149, 27.144600>,  <39.781082, 36.086761, 27.064611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.801132, 36.312149, 27.144600>,  <39.834549, 36.687794, 27.277916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801132, 36.312149, 27.144600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226936, -0.307741, 0.924010,
		-0.970320, 0.152826, -0.187411,
		-0.083539, -0.939116, -0.333289,
		39.776070, 36.030415, 27.044613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402859, 36.360931, 27.691229>,  <39.834549, 36.687794, 27.277916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402859, 36.360931, 27.691229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.508698, 36.033688, 27.487000>,  <39.572201, 35.837341, 27.364462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.508698, 36.033688, 27.487000>,  <39.402859, 36.360931, 27.691229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508698, 36.033688, 27.487000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224120, -0.567117, 0.792559,
		-0.937955, -0.095279, -0.333411,
		0.264597, -0.818108, -0.510575,
		39.588078, 35.788254, 27.333826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944229, 35.881027, 27.963009>,  <39.402859, 36.360931, 27.691229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944229, 35.881027, 27.963009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.254482, 35.686596, 27.801949>,  <39.440632, 35.569939, 27.705313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.254482, 35.686596, 27.801949>,  <38.944229, 35.881027, 27.963009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254482, 35.686596, 27.801949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030141, -0.665722, 0.745591,
		-0.630464, -0.566168, -0.531007,
		0.775634, -0.486073, -0.402649,
		39.487171, 35.540771, 27.681152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773880, 35.169708, 28.013613>,  <38.944229, 35.881027, 27.963009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773880, 35.169708, 28.013613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.171822, 35.174042, 27.973309>,  <39.410587, 35.176643, 27.949127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.171822, 35.174042, 27.973309>,  <38.773880, 35.169708, 28.013613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171822, 35.174042, 27.973309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082772, -0.660534, 0.746219,
		-0.058468, -0.750718, -0.658031,
		0.994852, 0.010837, -0.100758,
		39.470276, 35.177292, 27.943081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983868, 34.466473, 27.977551>,  <38.773880, 35.169708, 28.013613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983868, 34.466473, 27.977551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.298649, 34.682266, 28.097321>,  <39.487518, 34.811741, 28.169182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.298649, 34.682266, 28.097321>,  <38.983868, 34.466473, 27.977551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298649, 34.682266, 28.097321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178309, -0.663429, 0.726683,
		0.590680, -0.518478, -0.618286,
		0.786958, 0.539483, 0.299425,
		39.534737, 34.844112, 28.187149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514172, 34.000648, 27.981003>,  <38.983868, 34.466473, 27.977551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514172, 34.000648, 27.981003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.648575, 34.301590, 28.207655>,  <39.729218, 34.482155, 28.343647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.648575, 34.301590, 28.207655>,  <39.514172, 34.000648, 27.981003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648575, 34.301590, 28.207655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333469, -0.657667, 0.675480,
		0.880850, -0.038013, -0.471866,
		0.336008, 0.752349, 0.566630,
		39.749378, 34.527294, 28.377644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115139, 33.723255, 28.221855>,  <39.514172, 34.000648, 27.981003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115139, 33.723255, 28.221855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.026157, 34.034729, 28.456518>,  <39.972771, 34.221611, 28.597317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.026157, 34.034729, 28.456518>,  <40.115139, 33.723255, 28.221855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026157, 34.034729, 28.456518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435650, -0.458928, 0.774335,
		0.872195, 0.427830, -0.237144,
		-0.222452, 0.778683, 0.586659,
		39.959423, 34.268333, 28.632515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724010, 33.748951, 28.673510>,  <40.115139, 33.723255, 28.221855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724010, 33.748951, 28.673510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.444000, 33.969242, 28.855350>,  <40.275993, 34.101418, 28.964455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.444000, 33.969242, 28.855350>,  <40.724010, 33.748951, 28.673510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444000, 33.969242, 28.855350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319094, -0.328274, 0.889053,
		0.638861, 0.767420, 0.054066,
		-0.700026, 0.550729, 0.454601,
		40.233994, 34.134460, 28.991730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008575, 33.900433, 29.253096>,  <40.724010, 33.748951, 28.673510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008575, 33.900433, 29.253096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.615341, 33.925789, 29.321821>,  <40.379398, 33.941002, 29.363056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.615341, 33.925789, 29.321821>,  <41.008575, 33.900433, 29.253096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615341, 33.925789, 29.321821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114957, -0.516717, 0.848403,
		0.142559, 0.853806, 0.500691,
		-0.983088, 0.063389, 0.171813,
		40.320415, 33.944805, 29.373365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817020, 34.198467, 29.967110>,  <41.008575, 33.900433, 29.253096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817020, 34.198467, 29.967110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.504131, 33.968208, 29.871815>,  <40.316399, 33.830051, 29.814638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.504131, 33.968208, 29.871815>,  <40.817020, 34.198467, 29.967110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504131, 33.968208, 29.871815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185125, -0.579899, 0.793376,
		-0.594860, 0.576492, 0.560177,
		-0.782221, -0.575651, -0.238236,
		40.269466, 33.795513, 29.800344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626045, 34.783974, 30.457792>,  <40.817020, 34.198467, 29.967110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626045, 34.783974, 30.457792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.807056, 34.991283, 30.167522>,  <40.915665, 35.115669, 29.993361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.807056, 34.991283, 30.167522>,  <40.626045, 34.783974, 30.457792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807056, 34.991283, 30.167522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667566, -0.736429, -0.109669,
		-0.591249, -0.434809, -0.679239,
		0.452527, 0.518279, -0.725677,
		40.942814, 35.146767, 29.949820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244785, 35.041061, 31.002918>,  <40.626045, 34.783974, 30.457792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244785, 35.041061, 31.002918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.014957, 35.143661, 31.313808>,  <39.877060, 35.205223, 31.500343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.014957, 35.143661, 31.313808>,  <40.244785, 35.041061, 31.002918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014957, 35.143661, 31.313808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406836, 0.734486, -0.543152,
		-0.710182, -0.628281, -0.317655,
		-0.574565, 0.256503, 0.777226,
		39.842587, 35.220612, 31.546976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571766, 35.039680, 30.701447>,  <40.244785, 35.041061, 31.002918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571766, 35.039680, 30.701447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.562790, 35.256088, 31.037729>,  <39.557404, 35.385933, 31.239500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.562790, 35.256088, 31.037729>,  <39.571766, 35.039680, 30.701447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562790, 35.256088, 31.037729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428180, 0.754690, -0.497096,
		-0.903415, -0.371130, 0.214718,
		-0.022442, 0.541022, 0.840709,
		39.556057, 35.418396, 31.289942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976727, 35.164745, 30.869049>,  <39.571766, 35.039680, 30.701447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976727, 35.164745, 30.869049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.183731, 35.469185, 31.025465>,  <39.307934, 35.651848, 31.119314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.183731, 35.469185, 31.025465>,  <38.976727, 35.164745, 30.869049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183731, 35.469185, 31.025465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456767, 0.632154, -0.625896,
		-0.723566, 0.145293, 0.674790,
		0.517510, 0.761099, 0.391040,
		39.338985, 35.697514, 31.142776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539082, 35.720242, 31.029657>,  <38.976727, 35.164745, 30.869049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539082, 35.720242, 31.029657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888550, 35.914211, 31.045408>,  <39.098228, 36.030594, 31.054859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.888550, 35.914211, 31.045408>,  <38.539082, 35.720242, 31.029657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888550, 35.914211, 31.045408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346918, 0.677669, -0.648392,
		-0.341108, 0.552819, 0.760288,
		0.873667, 0.484929, 0.039375,
		39.150650, 36.059689, 31.057220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421318, 36.465858, 31.027740>,  <38.539082, 35.720242, 31.029657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421318, 36.465858, 31.027740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.816525, 36.473122, 30.966436>,  <39.053650, 36.477478, 30.929653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.816525, 36.473122, 30.966436>,  <38.421318, 36.465858, 31.027740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816525, 36.473122, 30.966436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099440, 0.834323, -0.542233,
		0.118025, 0.550977, 0.826132,
		0.988019, 0.018154, -0.153260,
		39.112930, 36.478569, 30.920458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682629, 37.197830, 31.161533>,  <38.421318, 36.465858, 31.027740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682629, 37.197830, 31.161533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.942219, 37.029228, 30.908184>,  <39.097973, 36.928066, 30.756174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.942219, 37.029228, 30.908184>,  <38.682629, 37.197830, 31.161533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942219, 37.029228, 30.908184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083552, 0.866949, -0.491344,
		0.756209, 0.265949, 0.597845,
		0.648973, -0.421510, -0.633375,
		39.136909, 36.902775, 30.718172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212677, 37.628284, 31.039698>,  <38.682629, 37.197830, 31.161533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212677, 37.628284, 31.039698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.210045, 37.393570, 30.715811>,  <39.208466, 37.252743, 30.521479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.210045, 37.393570, 30.715811>,  <39.212677, 37.628284, 31.039698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210045, 37.393570, 30.715811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050224, 0.808520, -0.586323,
		0.998716, -0.044523, 0.024152,
		-0.006578, -0.586783, -0.809718,
		39.208073, 37.217537, 30.472895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785343, 37.847961, 30.637476>,  <39.212677, 37.628284, 31.039698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785343, 37.847961, 30.637476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525417, 37.678089, 30.385323>,  <39.369461, 37.576164, 30.234030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525417, 37.678089, 30.385323>,  <39.785343, 37.847961, 30.637476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525417, 37.678089, 30.385323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040444, 0.808860, -0.586608,
		0.759014, -0.406683, -0.508435,
		-0.649816, -0.424681, -0.630384,
		39.330471, 37.550686, 30.196207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081829, 37.929062, 30.027302>,  <39.785343, 37.847961, 30.637476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081829, 37.929062, 30.027302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.716679, 37.819744, 29.905996>,  <39.497589, 37.754154, 29.833214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.716679, 37.819744, 29.905996>,  <40.081829, 37.929062, 30.027302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716679, 37.819744, 29.905996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112961, 0.544753, -0.830954,
		0.392296, -0.792815, -0.466421,
		-0.912876, -0.273293, -0.303262,
		39.442818, 37.737755, 29.815018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184284, 37.845776, 29.339443>,  <40.081829, 37.929062, 30.027302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184284, 37.845776, 29.339443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784538, 37.853546, 29.351343>,  <39.544689, 37.858208, 29.358482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784538, 37.853546, 29.351343>,  <40.184284, 37.845776, 29.339443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784538, 37.853546, 29.351343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012008, 0.603357, -0.797381,
		-0.033439, -0.797235, -0.602742,
		-0.999369, 0.019426, 0.029749,
		39.484726, 37.859375, 29.360268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910091, 37.645988, 28.650238>,  <40.184284, 37.845776, 29.339443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910091, 37.645988, 28.650238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.641933, 37.872795, 28.841682>,  <39.481037, 38.008877, 28.956549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.641933, 37.872795, 28.841682>,  <39.910091, 37.645988, 28.650238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641933, 37.872795, 28.841682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134243, 0.541696, -0.829786,
		-0.729761, -0.620534, -0.287032,
		-0.670394, 0.567013, 0.478611,
		39.440815, 38.042900, 28.985266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312531, 37.735268, 28.215794>,  <39.910091, 37.645988, 28.650238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312531, 37.735268, 28.215794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303871, 38.045471, 28.468180>,  <39.298676, 38.231594, 28.619610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303871, 38.045471, 28.468180>,  <39.312531, 37.735268, 28.215794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303871, 38.045471, 28.468180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335715, 0.588827, -0.735240,
		-0.941715, -0.227739, 0.247604,
		-0.021647, 0.775511, 0.630963,
		39.297379, 38.278126, 28.657469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691456, 38.126030, 28.096819>,  <39.312531, 37.735268, 28.215794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691456, 38.126030, 28.096819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.937382, 38.395061, 28.261570>,  <39.084938, 38.556480, 28.360420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.937382, 38.395061, 28.261570>,  <38.691456, 38.126030, 28.096819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937382, 38.395061, 28.261570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124114, 0.598245, -0.791643,
		-0.778845, 0.435594, 0.451286,
		0.614814, 0.672578, 0.411877,
		39.121826, 38.596836, 28.385134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385269, 38.848331, 28.083088>,  <38.691456, 38.126030, 28.096819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385269, 38.848331, 28.083088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.774086, 38.929863, 28.129709>,  <39.007378, 38.978783, 28.157682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.774086, 38.929863, 28.129709>,  <38.385269, 38.848331, 28.083088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774086, 38.929863, 28.129709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035907, 0.619590, -0.784104,
		-0.232039, 0.757998, 0.609587,
		0.972043, 0.203832, 0.116552,
		39.065701, 38.991013, 28.164675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944000, 39.519943, 28.160378>,  <38.385269, 38.848331, 28.083088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944000, 39.519943, 28.160378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.563534, 39.624474, 28.094666>,  <37.335255, 39.687191, 28.055239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.563534, 39.624474, 28.094666>,  <37.944000, 39.519943, 28.160378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563534, 39.624474, 28.094666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298646, -0.644548, 0.703824,
		0.078042, 0.718516, 0.691117,
		-0.951168, 0.261327, -0.164280,
		37.278183, 39.702873, 28.045382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628189, 39.656025, 28.781221>,  <37.944000, 39.519943, 28.160378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628189, 39.656025, 28.781221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.309246, 39.596722, 28.547215>,  <37.117882, 39.561142, 28.406811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.309246, 39.596722, 28.547215>,  <37.628189, 39.656025, 28.781221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309246, 39.596722, 28.547215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366927, -0.650531, 0.664962,
		-0.479155, 0.744870, 0.464306,
		-0.797355, -0.148253, -0.585018,
		37.070038, 39.552246, 28.371710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144707, 39.627174, 29.283596>,  <37.628189, 39.656025, 28.781221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144707, 39.627174, 29.283596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.960587, 39.477604, 28.961527>,  <36.850113, 39.387863, 28.768286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.960587, 39.477604, 28.961527>,  <37.144707, 39.627174, 29.283596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960587, 39.477604, 28.961527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371306, -0.742738, 0.557200,
		-0.806382, 0.555446, 0.203044,
		-0.460303, -0.373924, -0.805172,
		36.822495, 39.365425, 28.719975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403915, 39.658951, 29.463425>,  <37.144707, 39.627174, 29.283596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403915, 39.658951, 29.463425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.483158, 39.369892, 29.198538>,  <36.530704, 39.196457, 29.039606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.483158, 39.369892, 29.198538>,  <36.403915, 39.658951, 29.463425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483158, 39.369892, 29.198538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596248, -0.625080, 0.503749,
		-0.777972, 0.295050, -0.554712,
		0.198108, -0.722649, -0.662218,
		36.542591, 39.153099, 28.999872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823997, 39.372829, 29.345516>,  <36.403915, 39.658951, 29.463425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823997, 39.372829, 29.345516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.076302, 39.088142, 29.221836>,  <36.227684, 38.917332, 29.147627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.076302, 39.088142, 29.221836>,  <35.823997, 39.372829, 29.345516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076302, 39.088142, 29.221836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650515, -0.702220, 0.289338,
		-0.423054, 0.018638, -0.905913,
		0.630758, -0.711716, -0.309201,
		36.265530, 38.874626, 29.129076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305305, 38.900600, 29.103716>,  <35.823997, 39.372829, 29.345516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305305, 38.900600, 29.103716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.665600, 38.735985, 29.159306>,  <35.881775, 38.637215, 29.192659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.665600, 38.735985, 29.159306>,  <35.305305, 38.900600, 29.103716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665600, 38.735985, 29.159306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408724, -0.694702, 0.591890,
		-0.147040, -0.589938, -0.793947,
		0.900735, -0.411537, 0.138973,
		35.935822, 38.612522, 29.200998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178200, 38.221256, 29.021805>,  <35.305305, 38.900600, 29.103716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178200, 38.221256, 29.021805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.535675, 38.228268, 29.201143>,  <35.750160, 38.232475, 29.308746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.535675, 38.228268, 29.201143>,  <35.178200, 38.221256, 29.021805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535675, 38.228268, 29.201143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257953, -0.797523, 0.545360,
		0.367129, -0.603033, -0.708214,
		0.893687, 0.017532, 0.448348,
		35.803780, 38.233528, 29.335648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464825, 37.591045, 28.997711>,  <35.178200, 38.221256, 29.021805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464825, 37.591045, 28.997711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.660042, 37.755836, 29.305498>,  <35.777172, 37.854713, 29.490171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.660042, 37.755836, 29.305498>,  <35.464825, 37.591045, 28.997711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660042, 37.755836, 29.305498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274374, -0.764485, 0.583336,
		0.828571, -0.495817, -0.260068,
		0.488046, 0.411980, 0.769469,
		35.806458, 37.879429, 29.536339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078804, 37.256027, 29.228085>,  <35.464825, 37.591045, 28.997711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078804, 37.256027, 29.228085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.024311, 37.441017, 29.578526>,  <35.991615, 37.552010, 29.788792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.024311, 37.441017, 29.578526>,  <36.078804, 37.256027, 29.228085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024311, 37.441017, 29.578526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092883, -0.874491, 0.476065,
		0.986314, 0.146229, 0.076175,
		-0.136229, 0.462474, 0.876105,
		35.983444, 37.579758, 29.841356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747833, 37.050900, 29.629700>,  <36.078804, 37.256027, 29.228085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747833, 37.050900, 29.629700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.440620, 37.179611, 29.851181>,  <36.256294, 37.256840, 29.984070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.440620, 37.179611, 29.851181>,  <36.747833, 37.050900, 29.629700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440620, 37.179611, 29.851181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093262, -0.799186, 0.593805,
		0.633586, 0.507700, 0.583790,
		-0.768031, 0.321781, 0.553702,
		36.210213, 37.276146, 30.017292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881050, 36.823753, 30.277605>,  <36.747833, 37.050900, 29.629700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881050, 36.823753, 30.277605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.506241, 36.944416, 30.348024>,  <36.281357, 37.016815, 30.390276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.506241, 36.944416, 30.348024>,  <36.881050, 36.823753, 30.277605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506241, 36.944416, 30.348024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074978, -0.666017, 0.742159,
		0.341132, 0.682219, 0.646689,
		-0.937020, 0.301661, 0.176049,
		36.225136, 37.034916, 30.400839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820187, 37.003036, 30.953260>,  <36.881050, 36.823753, 30.277605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820187, 37.003036, 30.953260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.456001, 36.888844, 30.833551>,  <36.237492, 36.820328, 30.761726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.456001, 36.888844, 30.833551>,  <36.820187, 37.003036, 30.953260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456001, 36.888844, 30.833551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070757, -0.605407, 0.792765,
		-0.407498, 0.742956, 0.531000,
		-0.910460, -0.285479, -0.299272,
		36.182861, 36.803200, 30.743771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.166939, 42.248695, 25.441347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823639, 42.084568, 25.318031>,  <37.617661, 41.986092, 25.244041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823639, 42.084568, 25.318031>,  <38.166939, 42.248695, 25.441347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823639, 42.084568, 25.318031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057798, -0.519592, 0.852458,
		-0.509968, 0.749440, 0.422224,
		-0.858250, -0.410322, -0.308291,
		37.566162, 41.961472, 25.225544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555748, 42.358322, 25.951099>,  <38.166939, 42.248695, 25.441347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555748, 42.358322, 25.951099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455311, 42.036892, 25.735239>,  <37.395050, 41.844036, 25.605722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455311, 42.036892, 25.735239>,  <37.555748, 42.358322, 25.951099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455311, 42.036892, 25.735239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171652, -0.511712, 0.841835,
		-0.952622, 0.304011, -0.009448,
		-0.251092, -0.803572, -0.539652,
		37.379982, 41.795822, 25.573343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919159, 42.197498, 26.167124>,  <37.555748, 42.358322, 25.951099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919159, 42.197498, 26.167124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048054, 41.865807, 25.984461>,  <37.125389, 41.666790, 25.874863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048054, 41.865807, 25.984461>,  <36.919159, 42.197498, 26.167124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048054, 41.865807, 25.984461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263456, -0.541886, 0.798092,
		-0.909262, -0.136862, -0.393079,
		0.322232, -0.829234, -0.456659,
		37.144722, 41.617035, 25.847464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463795, 41.649876, 26.324251>,  <36.919159, 42.197498, 26.167124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463795, 41.649876, 26.324251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794193, 41.448376, 26.223087>,  <36.992432, 41.327477, 26.162390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794193, 41.448376, 26.223087>,  <36.463795, 41.649876, 26.324251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794193, 41.448376, 26.223087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233303, -0.713985, 0.660148,
		-0.513119, -0.486279, -0.707277,
		0.826001, -0.503745, -0.252909,
		37.041992, 41.297253, 26.147215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191139, 40.964279, 26.360538>,  <36.463795, 41.649876, 26.324251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191139, 40.964279, 26.360538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588158, 40.998810, 26.394943>,  <36.826370, 41.019527, 26.415586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588158, 40.998810, 26.394943>,  <36.191139, 40.964279, 26.360538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588158, 40.998810, 26.394943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003258, -0.724365, 0.689409,
		0.121820, -0.683991, -0.719247,
		0.992547, 0.086327, 0.086013,
		36.885921, 41.024708, 26.420748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421227, 40.247169, 26.336142>,  <36.191139, 40.964279, 26.360538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421227, 40.247169, 26.336142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722980, 40.460613, 26.489067>,  <36.904034, 40.588680, 26.580822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722980, 40.460613, 26.489067>,  <36.421227, 40.247169, 26.336142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722980, 40.460613, 26.489067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172358, -0.722991, 0.669012,
		0.633404, -0.438795, -0.637384,
		0.754382, 0.533613, 0.382316,
		36.949295, 40.620697, 26.603762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868912, 39.824436, 26.425005>,  <36.421227, 40.247169, 26.336142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868912, 39.824436, 26.425005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021641, 40.100098, 26.671350>,  <37.113277, 40.265495, 26.819159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021641, 40.100098, 26.671350>,  <36.868912, 39.824436, 26.425005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021641, 40.100098, 26.671350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073685, -0.686924, 0.722984,
		0.921296, -0.230668, -0.313061,
		0.381818, 0.689149, 0.615864,
		37.136185, 40.306843, 26.856110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407436, 39.488079, 26.776474>,  <36.868912, 39.824436, 26.425005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407436, 39.488079, 26.776474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325153, 39.811535, 26.996944>,  <37.275784, 40.005608, 27.129227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325153, 39.811535, 26.996944>,  <37.407436, 39.488079, 26.776474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325153, 39.811535, 26.996944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052809, -0.553227, 0.831355,
		0.977188, 0.200123, 0.071100,
		-0.205708, 0.808635, 0.551175,
		37.263439, 40.054127, 27.162296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838055, 39.346767, 27.414726>,  <37.407436, 39.488079, 26.776474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838055, 39.346767, 27.414726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546696, 39.605656, 27.504652>,  <37.371880, 39.760990, 27.558607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546696, 39.605656, 27.504652>,  <37.838055, 39.346767, 27.414726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546696, 39.605656, 27.504652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192455, -0.508185, 0.839470,
		0.657569, 0.568202, 0.494722,
		-0.728398, 0.647221, 0.224813,
		37.328175, 39.799824, 27.572096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551437, 39.643982, 27.768942>,  <37.838055, 39.346767, 27.414726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551437, 39.643982, 27.768942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917858, 39.507153, 27.852684>,  <39.137711, 39.425056, 27.902929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917858, 39.507153, 27.852684>,  <38.551437, 39.643982, 27.768942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917858, 39.507153, 27.852684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389757, 0.636315, -0.665728,
		0.094509, 0.691442, 0.716224,
		0.916056, -0.342070, 0.209357,
		39.192677, 39.404533, 27.915491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987110, 40.190266, 27.880358>,  <38.551437, 39.643982, 27.768942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987110, 40.190266, 27.880358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207321, 39.885452, 27.743988>,  <39.339447, 39.702564, 27.662167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207321, 39.885452, 27.743988>,  <38.987110, 40.190266, 27.880358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207321, 39.885452, 27.743988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205367, 0.519453, -0.829454,
		0.809165, 0.386620, 0.442468,
		0.550524, -0.762033, -0.340924,
		39.372478, 39.656841, 27.641710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635639, 40.447029, 27.581160>,  <38.987110, 40.190266, 27.880358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635639, 40.447029, 27.581160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600063, 40.082382, 27.420635>,  <39.578716, 39.863594, 27.324320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600063, 40.082382, 27.420635>,  <39.635639, 40.447029, 27.581160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600063, 40.082382, 27.420635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151992, 0.385767, -0.909990,
		0.984372, -0.141931, 0.104248,
		-0.088941, -0.911614, -0.401311,
		39.573380, 39.808899, 27.300241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341797, 40.335148, 27.263983>,  <39.635639, 40.447029, 27.581160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341797, 40.335148, 27.263983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049763, 40.106480, 27.114229>,  <39.874542, 39.969280, 27.024378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049763, 40.106480, 27.114229>,  <40.341797, 40.335148, 27.263983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049763, 40.106480, 27.114229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221658, 0.320128, -0.921079,
		0.646405, -0.755453, -0.107006,
		-0.730088, -0.571671, -0.374385,
		39.830738, 39.934978, 27.001913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670486, 39.855724, 26.775921>,  <40.341797, 40.335148, 27.263983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670486, 39.855724, 26.775921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283379, 39.869492, 26.676126>,  <40.051113, 39.877754, 26.616249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283379, 39.869492, 26.676126>,  <40.670486, 39.855724, 26.775921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283379, 39.869492, 26.676126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250069, 0.248911, -0.935686,
		0.029892, -0.967914, -0.249496,
		-0.967766, 0.034421, -0.249486,
		39.993050, 39.879818, 26.601280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613811, 39.417381, 26.191139>,  <40.670486, 39.855724, 26.775921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613811, 39.417381, 26.191139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275242, 39.630386, 26.192074>,  <40.072102, 39.758190, 26.192635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275242, 39.630386, 26.192074>,  <40.613811, 39.417381, 26.191139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275242, 39.630386, 26.192074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094381, 0.154336, -0.983500,
		-0.524085, -0.832234, -0.180892,
		-0.846420, 0.532510, 0.002338,
		40.021317, 39.790138, 26.192776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129742, 39.067059, 25.691116>,  <40.613811, 39.417381, 26.191139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129742, 39.067059, 25.691116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003803, 39.445129, 25.725811>,  <39.928242, 39.671970, 25.746628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003803, 39.445129, 25.725811>,  <40.129742, 39.067059, 25.691116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003803, 39.445129, 25.725811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086011, 0.119418, -0.989111,
		-0.945239, -0.303954, -0.118893,
		-0.314842, 0.945173, 0.086735,
		39.909351, 39.728680, 25.751831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626968, 39.125801, 25.224064>,  <40.129742, 39.067059, 25.691116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626968, 39.125801, 25.224064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757671, 39.495895, 25.301191>,  <39.836094, 39.717953, 25.347467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757671, 39.495895, 25.301191>,  <39.626968, 39.125801, 25.224064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757671, 39.495895, 25.301191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042712, 0.189351, -0.980980,
		-0.944144, 0.328774, 0.022353,
		0.326753, 0.925232, 0.192817,
		39.855698, 39.773464, 25.359037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164825, 39.511391, 24.842781>,  <39.626968, 39.125801, 25.224064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164825, 39.511391, 24.842781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483215, 39.746059, 24.902428>,  <39.674252, 39.886860, 24.938215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483215, 39.746059, 24.902428>,  <39.164825, 39.511391, 24.842781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483215, 39.746059, 24.902428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004474, 0.252039, -0.967707,
		-0.605310, 0.769605, 0.203242,
		0.795977, 0.586672, 0.149118,
		39.722008, 39.922062, 24.947163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024982, 40.029968, 24.361485>,  <39.164825, 39.511391, 24.842781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024982, 40.029968, 24.361485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397884, 40.109554, 24.482363>,  <39.621624, 40.157307, 24.554890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397884, 40.109554, 24.482363>,  <39.024982, 40.029968, 24.361485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397884, 40.109554, 24.482363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217547, 0.359142, -0.907574,
		-0.289107, 0.911828, 0.291526,
		0.932250, 0.198965, 0.302196,
		39.677559, 40.169243, 24.573021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090816, 40.799683, 24.443703>,  <39.024982, 40.029968, 24.361485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090816, 40.799683, 24.443703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439056, 40.621307, 24.360573>,  <39.648003, 40.514282, 24.310694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439056, 40.621307, 24.360573>,  <39.090816, 40.799683, 24.443703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439056, 40.621307, 24.360573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021839, 0.386977, -0.921831,
		0.491502, 0.807087, 0.327164,
		0.870603, -0.445937, -0.207826,
		39.700237, 40.487526, 24.298225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414200, 41.231415, 23.973063>,  <39.090816, 40.799683, 24.443703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414200, 41.231415, 23.973063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676472, 40.938919, 23.897829>,  <39.833836, 40.763420, 23.852690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676472, 40.938919, 23.897829>,  <39.414200, 41.231415, 23.973063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676472, 40.938919, 23.897829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049964, 0.290575, -0.955547,
		0.753388, 0.617132, 0.227058,
		0.655676, -0.731242, -0.188081,
		39.873173, 40.719547, 23.841404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019310, 41.534836, 23.643518>,  <39.414200, 41.231415, 23.973063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019310, 41.534836, 23.643518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007172, 41.149284, 23.537672>,  <39.999889, 40.917953, 23.474163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007172, 41.149284, 23.537672>,  <40.019310, 41.534836, 23.643518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007172, 41.149284, 23.537672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149929, 0.266133, -0.952205,
		0.988231, 0.010782, -0.152588,
		-0.030342, -0.963876, -0.264617,
		39.998070, 40.860123, 23.458286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551281, 41.450901, 23.182222>,  <40.019310, 41.534836, 23.643518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551281, 41.450901, 23.182222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301125, 41.152283, 23.091396>,  <40.151031, 40.973110, 23.036901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301125, 41.152283, 23.091396>,  <40.551281, 41.450901, 23.182222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301125, 41.152283, 23.091396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027228, 0.269935, -0.962493,
		0.779840, -0.608113, -0.148487,
		-0.625387, -0.746547, -0.227064,
		40.113510, 40.928318, 23.023277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.638805, 38.306961, 20.889091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.859020, 38.522434, 21.144192>,  <34.991150, 38.651718, 21.297253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.859020, 38.522434, 21.144192>,  <34.638805, 38.306961, 20.889091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859020, 38.522434, 21.144192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105550, -0.712899, 0.693278,
		0.828112, -0.448988, -0.335618,
		0.550535, 0.538688, 0.637751,
		35.024181, 38.684040, 21.335518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067471, 37.836731, 21.119951>,  <34.638805, 38.306961, 20.889091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067471, 37.836731, 21.119951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996803, 38.123756, 21.389437>,  <34.954403, 38.295971, 21.551128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996803, 38.123756, 21.389437>,  <35.067471, 37.836731, 21.119951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996803, 38.123756, 21.389437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016330, -0.682249, 0.730938,
		0.984136, 0.140133, 0.108812,
		-0.176665, 0.717565, 0.673713,
		34.943802, 38.339027, 21.591551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491501, 37.684315, 21.573641>,  <35.067471, 37.836731, 21.119951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491501, 37.684315, 21.573641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215107, 37.906403, 21.758795>,  <35.049271, 38.039658, 21.869888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215107, 37.906403, 21.758795>,  <35.491501, 37.684315, 21.573641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215107, 37.906403, 21.758795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051429, -0.676484, 0.734659,
		0.721035, 0.483835, 0.495996,
		-0.690987, 0.555224, 0.462886,
		35.007812, 38.072971, 21.897661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842186, 37.619343, 22.095882>,  <35.491501, 37.684315, 21.573641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842186, 37.619343, 22.095882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.472477, 37.744770, 22.182966>,  <35.250652, 37.820026, 22.235216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.472477, 37.744770, 22.182966>,  <35.842186, 37.619343, 22.095882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472477, 37.744770, 22.182966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015987, -0.601613, 0.798628,
		0.381400, 0.734669, 0.561067,
		-0.924272, 0.313566, 0.217710,
		35.195194, 37.838840, 22.248280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829254, 37.864727, 22.826868>,  <35.842186, 37.619343, 22.095882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829254, 37.864727, 22.826868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.468681, 37.739258, 22.707520>,  <35.252338, 37.663975, 22.635910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.468681, 37.739258, 22.707520>,  <35.829254, 37.864727, 22.826868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468681, 37.739258, 22.707520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095537, -0.528084, 0.843801,
		-0.422246, 0.789135, 0.446064,
		-0.901433, -0.313676, -0.298373,
		35.198250, 37.645157, 22.618008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359928, 37.783936, 23.464998>,  <35.829254, 37.864727, 22.826868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359928, 37.783936, 23.464998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.136028, 37.590340, 23.195946>,  <35.001686, 37.474182, 23.034513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.136028, 37.590340, 23.195946>,  <35.359928, 37.783936, 23.464998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136028, 37.590340, 23.195946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436085, -0.518173, 0.735748,
		-0.704633, 0.705162, 0.078989,
		-0.559752, -0.483987, -0.672633,
		34.968102, 37.445145, 22.994156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638451, 37.816994, 23.777311>,  <35.359928, 37.783936, 23.464998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638451, 37.816994, 23.777311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.676609, 37.507019, 23.527393>,  <34.699505, 37.321033, 23.377443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.676609, 37.507019, 23.527393>,  <34.638451, 37.816994, 23.777311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676609, 37.507019, 23.527393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298998, -0.620980, 0.724558,
		-0.949473, 0.117693, -0.290944,
		0.095395, -0.774940, -0.624794,
		34.705227, 37.274536, 23.339954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032753, 37.423939, 23.893551>,  <34.638451, 37.816994, 23.777311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032753, 37.423939, 23.893551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.322189, 37.199512, 23.732744>,  <34.495853, 37.064857, 23.636261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.322189, 37.199512, 23.732744>,  <34.032753, 37.423939, 23.893551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322189, 37.199512, 23.732744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072771, -0.641207, 0.763910,
		-0.686381, -0.523504, -0.504802,
		0.723592, -0.561068, -0.402017,
		34.539268, 37.031193, 23.612139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792606, 36.729389, 24.000160>,  <34.032753, 37.423939, 23.893551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792606, 36.729389, 24.000160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.174984, 36.657478, 23.907337>,  <34.404411, 36.614330, 23.851643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.174984, 36.657478, 23.907337>,  <33.792606, 36.729389, 24.000160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174984, 36.657478, 23.907337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039681, -0.704126, 0.708966,
		-0.290857, -0.686940, -0.665970,
		0.955943, -0.179781, -0.232058,
		34.461765, 36.603542, 23.837719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925781, 36.016407, 23.988195>,  <33.792606, 36.729389, 24.000160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925781, 36.016407, 23.988195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.301949, 36.144264, 24.034567>,  <34.527649, 36.220978, 24.062389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.301949, 36.144264, 24.034567>,  <33.925781, 36.016407, 23.988195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301949, 36.144264, 24.034567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139247, -0.673093, 0.726331,
		0.310198, -0.666913, -0.677499,
		0.940419, 0.319646, 0.115927,
		34.584076, 36.240158, 24.069345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351898, 35.454315, 24.148117>,  <33.925781, 36.016407, 23.988195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351898, 35.454315, 24.148117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.588444, 35.747356, 24.282925>,  <34.730370, 35.923180, 24.363810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.588444, 35.747356, 24.282925>,  <34.351898, 35.454315, 24.148117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588444, 35.747356, 24.282925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148842, -0.509909, 0.847254,
		0.792552, -0.450871, -0.410582,
		0.591361, 0.732604, 0.337021,
		34.765854, 35.967136, 24.384031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835270, 35.142612, 24.509766>,  <34.351898, 35.454315, 24.148117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835270, 35.142612, 24.509766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.865376, 35.512840, 24.658173>,  <34.883438, 35.734978, 24.747217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.865376, 35.512840, 24.658173>,  <34.835270, 35.142612, 24.509766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865376, 35.512840, 24.658173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267011, -0.377192, 0.886810,
		0.960750, 0.032325, -0.275525,
		0.075260, 0.925571, 0.371018,
		34.887955, 35.790512, 24.769478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564678, 35.237434, 24.832642>,  <34.835270, 35.142612, 24.509766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564678, 35.237434, 24.832642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.332302, 35.509071, 25.012127>,  <35.192879, 35.672054, 25.119818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.332302, 35.509071, 25.012127>,  <35.564678, 35.237434, 24.832642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332302, 35.509071, 25.012127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205195, -0.411285, 0.888110,
		0.787658, 0.608011, 0.099585,
		-0.580938, 0.679093, 0.448713,
		35.158020, 35.712799, 25.146740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961903, 35.604588, 25.413549>,  <35.564678, 35.237434, 24.832642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961903, 35.604588, 25.413549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.566162, 35.617718, 25.470278>,  <35.328720, 35.625595, 25.504314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.566162, 35.617718, 25.470278>,  <35.961903, 35.604588, 25.413549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566162, 35.617718, 25.470278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135890, -0.141114, 0.980623,
		0.052198, 0.989449, 0.135150,
		-0.989348, 0.032821, 0.141822,
		35.269360, 35.627563, 25.512825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660706, 35.744240, 25.581238>,  <35.961903, 35.604588, 25.413549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660706, 35.744240, 25.581238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847786, 35.416706, 25.448111>,  <36.960033, 35.220188, 25.368235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847786, 35.416706, 25.448111>,  <36.660706, 35.744240, 25.581238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847786, 35.416706, 25.448111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197593, 0.463871, -0.863586,
		0.861516, 0.338140, 0.378749,
		0.467704, -0.818832, -0.332818,
		36.988098, 35.171055, 25.348265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187141, 36.050179, 25.382710>,  <36.660706, 35.744240, 25.581238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187141, 36.050179, 25.382710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190006, 35.699600, 25.190130>,  <37.191727, 35.489254, 25.074583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190006, 35.699600, 25.190130>,  <37.187141, 36.050179, 25.382710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190006, 35.699600, 25.190130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332977, 0.456072, -0.825302,
		0.942908, -0.154400, 0.295103,
		0.007162, -0.876447, -0.481446,
		37.192154, 35.436665, 25.045696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754726, 36.126499, 24.974400>,  <37.187141, 36.050179, 25.382710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754726, 36.126499, 24.974400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.549244, 35.829365, 24.802679>,  <37.425953, 35.651085, 24.699646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.549244, 35.829365, 24.802679>,  <37.754726, 36.126499, 24.974400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549244, 35.829365, 24.802679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324737, 0.294801, -0.898687,
		0.794134, -0.601074, 0.089784,
		-0.513710, -0.742834, -0.429303,
		37.395130, 35.606514, 24.673889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177082, 35.838333, 24.568542>,  <37.754726, 36.126499, 24.974400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177082, 35.838333, 24.568542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.825947, 35.743256, 24.402218>,  <37.615265, 35.686207, 24.302423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.825947, 35.743256, 24.402218>,  <38.177082, 35.838333, 24.568542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825947, 35.743256, 24.402218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332295, 0.322977, -0.886153,
		0.344940, -0.916070, -0.204533,
		-0.877836, -0.237704, -0.415812,
		37.562595, 35.671947, 24.277475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340603, 35.459637, 23.883451>,  <38.177082, 35.838333, 24.568542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340603, 35.459637, 23.883451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963722, 35.584209, 23.834017>,  <37.737595, 35.658955, 23.804356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963722, 35.584209, 23.834017>,  <38.340603, 35.459637, 23.883451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963722, 35.584209, 23.834017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224713, 0.313743, -0.922534,
		-0.248531, -0.896981, -0.365591,
		-0.942198, 0.311431, -0.123589,
		37.681065, 35.677639, 23.796940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051296, 35.219910, 23.126020>,  <38.340603, 35.459637, 23.883451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051296, 35.219910, 23.126020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.818596, 35.526054, 23.236139>,  <37.678974, 35.709740, 23.302212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.818596, 35.526054, 23.236139>,  <38.051296, 35.219910, 23.126020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818596, 35.526054, 23.236139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070040, 0.290072, -0.954439,
		-0.810346, -0.574527, -0.115144,
		-0.581751, 0.765361, 0.275298,
		37.644070, 35.755661, 23.318729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504276, 35.245872, 22.618019>,  <38.051296, 35.219910, 23.126020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504276, 35.245872, 22.618019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.456032, 35.600834, 22.795998>,  <37.427086, 35.813808, 22.902784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.456032, 35.600834, 22.795998>,  <37.504276, 35.245872, 22.618019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456032, 35.600834, 22.795998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173203, 0.422530, -0.889646,
		-0.977473, -0.184366, 0.102739,
		-0.120610, 0.887399, 0.444944,
		37.419849, 35.867054, 22.929482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936581, 35.519012, 22.364611>,  <37.504276, 35.245872, 22.618019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936581, 35.519012, 22.364611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.193695, 35.804470, 22.475988>,  <37.347965, 35.975746, 22.542816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.193695, 35.804470, 22.475988>,  <36.936581, 35.519012, 22.364611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193695, 35.804470, 22.475988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201910, 0.508465, -0.837075,
		-0.738957, 0.481839, 0.470928,
		0.642786, 0.713648, 0.278446,
		37.386532, 36.018566, 22.559523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669655, 36.098328, 22.070412>,  <36.936581, 35.519012, 22.364611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669655, 36.098328, 22.070412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012501, 36.254536, 22.204782>,  <37.218208, 36.348263, 22.285404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012501, 36.254536, 22.204782>,  <36.669655, 36.098328, 22.070412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012501, 36.254536, 22.204782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035552, 0.695417, -0.717727,
		-0.513898, 0.603231, 0.609935,
		0.857114, 0.390523, 0.335927,
		37.269634, 36.371693, 22.305561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556908, 36.817616, 22.201437>,  <36.669655, 36.098328, 22.070412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556908, 36.817616, 22.201437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.952110, 36.795940, 22.143614>,  <37.189232, 36.782936, 22.108919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.952110, 36.795940, 22.143614>,  <36.556908, 36.817616, 22.201437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952110, 36.795940, 22.143614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050400, 0.771863, -0.633788,
		0.145924, 0.633475, 0.759879,
		0.988011, -0.054187, -0.144560,
		37.248512, 36.779686, 22.100246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908966, 37.549583, 22.312860>,  <36.556908, 36.817616, 22.201437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908966, 37.549583, 22.312860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.144146, 37.323708, 22.081190>,  <37.285252, 37.188183, 21.942188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.144146, 37.323708, 22.081190>,  <36.908966, 37.549583, 22.312860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144146, 37.323708, 22.081190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031817, 0.731595, -0.680996,
		0.808273, 0.381963, 0.448106,
		0.587948, -0.564688, -0.579176,
		37.320530, 37.154301, 21.907436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454170, 37.991459, 22.089502>,  <36.908966, 37.549583, 22.312860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454170, 37.991459, 22.089502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.428490, 37.682747, 21.836449>,  <37.413082, 37.497520, 21.684616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.428490, 37.682747, 21.836449>,  <37.454170, 37.991459, 22.089502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428490, 37.682747, 21.836449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114282, 0.635458, -0.763631,
		0.991372, 0.023271, -0.128999,
		-0.064203, -0.771785, -0.632635,
		37.409229, 37.451210, 21.646658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950134, 38.102322, 21.609388>,  <37.454170, 37.991459, 22.089502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950134, 38.102322, 21.609388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.685635, 37.861439, 21.430458>,  <37.526936, 37.716911, 21.323099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.685635, 37.861439, 21.430458>,  <37.950134, 38.102322, 21.609388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685635, 37.861439, 21.430458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012463, 0.587400, -0.809201,
		0.750064, -0.540657, -0.380912,
		-0.661248, -0.602205, -0.447326,
		37.487259, 37.680779, 21.296261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143742, 38.066532, 20.985739>,  <37.950134, 38.102322, 21.609388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143742, 38.066532, 20.985739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768185, 37.934486, 20.946728>,  <37.542850, 37.855259, 20.923321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768185, 37.934486, 20.946728>,  <38.143742, 38.066532, 20.985739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768185, 37.934486, 20.946728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095023, 0.520882, -0.848324,
		0.330846, -0.787214, -0.520418,
		-0.938889, -0.330117, -0.097528,
		37.486519, 37.835449, 20.917469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700329, 37.705952, 20.660255>,  <38.143742, 38.066532, 20.985739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700329, 37.705952, 20.660255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.044502, 37.909401, 20.672663>,  <39.251007, 38.031471, 20.680107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.044502, 37.909401, 20.672663>,  <38.700329, 37.705952, 20.660255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044502, 37.909401, 20.672663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182378, -0.364219, 0.913281,
		0.475816, -0.780156, -0.406147,
		0.860429, 0.508626, 0.031018,
		39.302631, 38.061989, 20.681969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130520, 37.224430, 21.011261>,  <38.700329, 37.705952, 20.660255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130520, 37.224430, 21.011261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.321930, 37.574577, 21.038824>,  <39.436775, 37.784664, 21.055361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.321930, 37.574577, 21.038824>,  <39.130520, 37.224430, 21.011261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321930, 37.574577, 21.038824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306292, -0.239951, 0.921200,
		0.822922, -0.419711, -0.382940,
		0.478524, 0.875367, 0.068907,
		39.465488, 37.837189, 21.059496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808853, 37.042355, 21.101652>,  <39.130520, 37.224430, 21.011261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808853, 37.042355, 21.101652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.759296, 37.415688, 21.236439>,  <39.729561, 37.639687, 21.317310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.759296, 37.415688, 21.236439>,  <39.808853, 37.042355, 21.101652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759296, 37.415688, 21.236439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485910, -0.239020, 0.840691,
		0.865183, 0.267892, -0.423901,
		-0.123894, 0.933329, 0.336967,
		39.722130, 37.695686, 21.337528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394371, 37.134708, 21.364677>,  <39.808853, 37.042355, 21.101652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394371, 37.134708, 21.364677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.181702, 37.423180, 21.542322>,  <40.054100, 37.596260, 21.648909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.181702, 37.423180, 21.542322>,  <40.394371, 37.134708, 21.364677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181702, 37.423180, 21.542322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517276, -0.138711, 0.844503,
		0.670637, 0.678725, -0.299297,
		-0.531669, 0.721174, 0.444113,
		40.022202, 37.639530, 21.675556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858212, 37.455112, 21.908484>,  <40.394371, 37.134708, 21.364677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858212, 37.455112, 21.908484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.477062, 37.537106, 21.997932>,  <40.248371, 37.586300, 22.051601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.477062, 37.537106, 21.997932>,  <40.858212, 37.455112, 21.908484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477062, 37.537106, 21.997932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190102, -0.170979, 0.966761,
		0.236405, 0.963716, 0.123955,
		-0.952877, 0.204983, 0.223624,
		40.191200, 37.598602, 22.065020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943409, 37.962532, 22.351006>,  <40.858212, 37.455112, 21.908484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943409, 37.962532, 22.351006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.590740, 37.787144, 22.420736>,  <40.379139, 37.681911, 22.462576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.590740, 37.787144, 22.420736>,  <40.943409, 37.962532, 22.351006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590740, 37.787144, 22.420736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297207, -0.229089, 0.926923,
		-0.366496, 0.869055, 0.332300,
		-0.881674, -0.438475, 0.174329,
		40.326237, 37.655602, 22.473036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934242, 38.061691, 23.045090>,  <40.943409, 37.962532, 22.351006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934242, 38.061691, 23.045090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.647404, 37.790154, 22.981909>,  <40.475300, 37.627232, 22.944000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.647404, 37.790154, 22.981909>,  <40.934242, 38.061691, 23.045090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647404, 37.790154, 22.981909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121300, -0.344720, 0.930836,
		-0.686338, 0.648339, 0.329540,
		-0.717096, -0.678841, -0.157951,
		40.432274, 37.586502, 22.934523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480453, 38.189022, 23.596403>,  <40.934242, 38.061691, 23.045090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480453, 38.189022, 23.596403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.417168, 37.818489, 23.459652>,  <40.379196, 37.596169, 23.377602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.417168, 37.818489, 23.459652>,  <40.480453, 38.189022, 23.596403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417168, 37.818489, 23.459652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017762, -0.348852, 0.937010,
		-0.987244, 0.142180, 0.071648,
		-0.158218, -0.926330, -0.341877,
		40.369701, 37.540588, 23.357088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762260, 37.904671, 23.924955>,  <40.480453, 38.189022, 23.596403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762260, 37.904671, 23.924955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947353, 37.567516, 23.815098>,  <40.058411, 37.365223, 23.749184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947353, 37.567516, 23.815098>,  <39.762260, 37.904671, 23.924955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947353, 37.567516, 23.815098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319572, -0.447579, 0.835192,
		-0.826894, -0.298700, -0.476471,
		0.462731, -0.842882, -0.274644,
		40.086174, 37.314651, 23.732704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196915, 37.319988, 23.963381>,  <39.762260, 37.904671, 23.924955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196915, 37.319988, 23.963381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.542034, 37.117954, 23.954674>,  <39.749104, 36.996735, 23.949450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.542034, 37.117954, 23.954674>,  <39.196915, 37.319988, 23.963381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542034, 37.117954, 23.954674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268758, -0.494715, 0.826454,
		-0.428194, -0.707213, -0.562583,
		0.862797, -0.505081, -0.021765,
		39.800873, 36.966431, 23.948143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022667, 36.589855, 24.150057>,  <39.196915, 37.319988, 23.963381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022667, 36.589855, 24.150057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.409218, 36.662136, 24.223217>,  <39.641148, 36.705505, 24.267113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.409218, 36.662136, 24.223217>,  <39.022667, 36.589855, 24.150057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409218, 36.662136, 24.223217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085525, -0.444923, 0.891476,
		0.242470, -0.877148, -0.414510,
		0.966382, 0.180705, 0.182899,
		39.699131, 36.716347, 24.278086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255947, 35.996113, 24.380066>,  <39.022667, 36.589855, 24.150057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255947, 35.996113, 24.380066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505653, 36.284546, 24.500284>,  <39.655479, 36.457607, 24.572414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505653, 36.284546, 24.500284>,  <39.255947, 35.996113, 24.380066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505653, 36.284546, 24.500284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146196, -0.485757, 0.861781,
		0.767407, -0.494046, -0.408662,
		0.624270, 0.721082, 0.300546,
		39.692936, 36.500870, 24.590448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672714, 35.613834, 24.720797>,  <39.255947, 35.996113, 24.380066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672714, 35.613834, 24.720797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.747723, 35.981731, 24.858732>,  <39.792728, 36.202469, 24.941494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.747723, 35.981731, 24.858732>,  <39.672714, 35.613834, 24.720797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747723, 35.981731, 24.858732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238275, -0.383176, 0.892413,
		0.952922, -0.085180, -0.291005,
		0.187522, 0.919739, 0.344841,
		39.803978, 36.257652, 24.962185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295631, 35.607838, 25.104387>,  <39.672714, 35.613834, 24.720797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295631, 35.607838, 25.104387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.042862, 35.900547, 25.206503>,  <39.891201, 36.076172, 25.267773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.042862, 35.900547, 25.206503>,  <40.295631, 35.607838, 25.104387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042862, 35.900547, 25.206503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009801, -0.321821, 0.946750,
		0.774966, 0.600779, 0.196195,
		-0.631928, 0.731776, 0.255288,
		39.853283, 36.120079, 25.283089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.769428, 41.130455, 22.537540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.390057, 41.006802, 22.565578>,  <40.162434, 40.932610, 22.582401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.390057, 41.006802, 22.565578>,  <40.769428, 41.130455, 22.537540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390057, 41.006802, 22.565578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152859, 0.252321, -0.955494,
		0.277703, -0.916931, -0.286564,
		-0.948428, -0.309147, 0.070091,
		40.105526, 40.914062, 22.586607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722641, 40.703953, 22.067188>,  <40.769428, 41.130455, 22.537540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722641, 40.703953, 22.067188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.340092, 40.805042, 22.125811>,  <40.110561, 40.865696, 22.160984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.340092, 40.805042, 22.125811>,  <40.722641, 40.703953, 22.067188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340092, 40.805042, 22.125811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091101, 0.218649, -0.971542,
		-0.277580, -0.942508, -0.186086,
		-0.956373, 0.252728, 0.146556,
		40.053181, 40.880859, 22.169777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369446, 40.320927, 21.599253>,  <40.722641, 40.703953, 22.067188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369446, 40.320927, 21.599253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.132927, 40.624054, 21.709579>,  <39.991016, 40.805931, 21.775776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.132927, 40.624054, 21.709579>,  <40.369446, 40.320927, 21.599253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132927, 40.624054, 21.709579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224304, 0.173972, -0.958865,
		-0.774629, -0.628844, 0.067112,
		-0.591301, 0.757818, 0.275816,
		39.955536, 40.851398, 21.792324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943005, 40.346207, 20.981272>,  <40.369446, 40.320927, 21.599253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943005, 40.346207, 20.981272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.864964, 40.684265, 21.180334>,  <39.818138, 40.887100, 21.299772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.864964, 40.684265, 21.180334>,  <39.943005, 40.346207, 20.981272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864964, 40.684265, 21.180334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344652, 0.415969, -0.841537,
		-0.918232, -0.335703, 0.210126,
		-0.195101, 0.845147, 0.497657,
		39.806435, 40.937809, 21.329632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245880, 40.660286, 20.680609>,  <39.943005, 40.346207, 20.981272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245880, 40.660286, 20.680609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.410236, 40.966568, 20.878546>,  <39.508850, 41.150337, 20.997309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.410236, 40.966568, 20.878546>,  <39.245880, 40.660286, 20.680609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410236, 40.966568, 20.878546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445040, 0.642175, -0.624139,
		-0.795680, 0.036228, 0.604632,
		0.410891, 0.765701, 0.494844,
		39.533504, 41.196278, 21.026999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788689, 41.257450, 20.714403>,  <39.245880, 40.660286, 20.680609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788689, 41.257450, 20.714403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151325, 41.419968, 20.760057>,  <39.368908, 41.517479, 20.787451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151325, 41.419968, 20.760057>,  <38.788689, 41.257450, 20.714403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151325, 41.419968, 20.760057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240742, 0.720023, -0.650854,
		-0.346618, 0.562578, 0.750575,
		0.906587, 0.406292, 0.114136,
		39.423302, 41.541855, 20.794298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694031, 41.894932, 20.716814>,  <38.788689, 41.257450, 20.714403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694031, 41.894932, 20.716814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088196, 41.912292, 20.650995>,  <39.324696, 41.922707, 20.611504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088196, 41.912292, 20.650995>,  <38.694031, 41.894932, 20.716814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088196, 41.912292, 20.650995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148058, 0.695319, -0.703286,
		0.083891, 0.717390, 0.691602,
		0.985414, 0.043398, -0.164546,
		39.383820, 41.925312, 20.601631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898735, 42.698734, 20.709455>,  <38.694031, 41.894932, 20.716814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898735, 42.698734, 20.709455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.197796, 42.503860, 20.528936>,  <39.377232, 42.386936, 20.420626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.197796, 42.503860, 20.528936>,  <38.898735, 42.698734, 20.709455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197796, 42.503860, 20.528936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004842, 0.683552, -0.729885,
		0.664073, 0.543516, 0.513418,
		0.747653, -0.487183, -0.451297,
		39.422092, 42.357704, 20.393547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412472, 43.194427, 20.473612>,  <38.898735, 42.698734, 20.709455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412472, 43.194427, 20.473612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.476688, 42.880856, 20.233719>,  <39.515217, 42.692711, 20.089783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.476688, 42.880856, 20.233719>,  <39.412472, 43.194427, 20.473612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476688, 42.880856, 20.233719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073883, 0.615451, -0.784704,
		0.984261, 0.081665, 0.156723,
		0.160538, -0.783933, -0.599731,
		39.524849, 42.645676, 20.053799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027008, 43.323418, 20.081202>,  <39.412472, 43.194427, 20.473612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027008, 43.323418, 20.081202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.850296, 43.038742, 19.862724>,  <39.744270, 42.867935, 19.731638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.850296, 43.038742, 19.862724>,  <40.027008, 43.323418, 20.081202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850296, 43.038742, 19.862724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255181, 0.483992, -0.837039,
		0.860066, -0.509165, -0.032207,
		-0.441779, -0.711690, -0.546195,
		39.717762, 42.825233, 19.698866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549480, 43.112427, 19.581793>,  <40.027008, 43.323418, 20.081202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549480, 43.112427, 19.581793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.189167, 43.041325, 19.423306>,  <39.972977, 42.998661, 19.328213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.189167, 43.041325, 19.423306>,  <40.549480, 43.112427, 19.581793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189167, 43.041325, 19.423306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193615, 0.652294, -0.732820,
		0.388714, -0.736827, -0.553161,
		-0.900785, -0.177757, -0.396217,
		39.918930, 42.987999, 19.304440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668125, 43.345261, 18.854527>,  <40.549480, 43.112427, 19.581793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668125, 43.345261, 18.854527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.273056, 43.296478, 18.893787>,  <40.036015, 43.267208, 18.917345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.273056, 43.296478, 18.893787>,  <40.668125, 43.345261, 18.854527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273056, 43.296478, 18.893787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146145, 0.493538, -0.857358,
		0.056117, -0.861132, -0.505276,
		-0.987670, -0.121955, 0.098154,
		39.976753, 43.259892, 18.923233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406361, 43.191181, 18.201820>,  <40.668125, 43.345261, 18.854527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406361, 43.191181, 18.201820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.081104, 43.336067, 18.384075>,  <39.885952, 43.422997, 18.493427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.081104, 43.336067, 18.384075>,  <40.406361, 43.191181, 18.201820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081104, 43.336067, 18.384075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161641, 0.611483, -0.774571,
		-0.559174, -0.703484, -0.438673,
		-0.813140, 0.362213, 0.455638,
		39.837162, 43.444733, 18.520767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795612, 43.071472, 17.804033>,  <40.406361, 43.191181, 18.201820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795612, 43.071472, 17.804033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.819023, 43.398655, 18.032951>,  <39.833069, 43.594963, 18.170303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.819023, 43.398655, 18.032951>,  <39.795612, 43.071472, 17.804033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819023, 43.398655, 18.032951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129096, 0.574668, -0.808141,
		-0.989904, -0.026584, 0.139228,
		0.058526, 0.817955, 0.572298,
		39.836582, 43.644043, 18.204641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483788, 42.558712, 17.460045>,  <39.795612, 43.071472, 17.804033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483788, 42.558712, 17.460045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.469093, 42.344604, 17.122490>,  <39.460278, 42.216141, 16.919958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.469093, 42.344604, 17.122490>,  <39.483788, 42.558712, 17.460045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469093, 42.344604, 17.122490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149441, -0.832017, 0.534243,
		-0.988088, 0.145737, -0.049426,
		-0.036736, -0.535265, -0.843885,
		39.458073, 42.184025, 16.869324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043255, 42.041950, 17.544870>,  <39.483788, 42.558712, 17.460045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043255, 42.041950, 17.544870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.253723, 41.873753, 17.249214>,  <39.380005, 41.772835, 17.071821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.253723, 41.873753, 17.249214>,  <39.043255, 42.041950, 17.544870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253723, 41.873753, 17.249214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057834, -0.884872, 0.462231,
		-0.848410, -0.200465, -0.489912,
		0.526170, -0.420495, -0.739141,
		39.411575, 41.747604, 17.027472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636925, 41.494347, 17.385174>,  <39.043255, 42.041950, 17.544870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636925, 41.494347, 17.385174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.015629, 41.426769, 17.275555>,  <39.242851, 41.386223, 17.209784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.015629, 41.426769, 17.275555>,  <38.636925, 41.494347, 17.385174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015629, 41.426769, 17.275555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006172, -0.860607, 0.509232,
		-0.321882, -0.480429, -0.815831,
		0.946760, -0.168948, -0.274048,
		39.299656, 41.376083, 17.193340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625301, 40.851227, 17.146940>,  <38.636925, 41.494347, 17.385174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625301, 40.851227, 17.146940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018517, 40.890488, 17.208918>,  <39.254444, 40.914043, 17.246105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018517, 40.890488, 17.208918>,  <38.625301, 40.851227, 17.146940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018517, 40.890488, 17.208918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018364, -0.893194, 0.449297,
		0.182495, -0.438829, -0.879843,
		0.983035, 0.098152, 0.154945,
		39.313427, 40.919933, 17.255402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868969, 40.182167, 16.956762>,  <38.625301, 40.851227, 17.146940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868969, 40.182167, 16.956762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.167995, 40.341518, 17.169342>,  <39.347412, 40.437130, 17.296890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.167995, 40.341518, 17.169342>,  <38.868969, 40.182167, 16.956762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167995, 40.341518, 17.169342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093623, -0.855370, 0.509487,
		0.657554, -0.331120, -0.676744,
		0.747567, 0.398375, 0.531452,
		39.392265, 40.461029, 17.328777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282471, 39.640965, 17.155064>,  <38.868969, 40.182167, 16.956762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282471, 39.640965, 17.155064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.422718, 39.927586, 17.396267>,  <39.506866, 40.099560, 17.540989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.422718, 39.927586, 17.396267>,  <39.282471, 39.640965, 17.155064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422718, 39.927586, 17.396267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253724, -0.692482, 0.675346,
		0.901492, -0.083794, -0.424606,
		0.350622, 0.716552, 0.603007,
		39.527905, 40.142551, 17.577169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977474, 39.399017, 17.361937>,  <39.282471, 39.640965, 17.155064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977474, 39.399017, 17.361937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.840275, 39.652332, 17.639439>,  <39.757954, 39.804321, 17.805939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.840275, 39.652332, 17.639439>,  <39.977474, 39.399017, 17.361937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840275, 39.652332, 17.639439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238055, -0.655842, 0.716380,
		0.908670, 0.410870, 0.074195,
		-0.342999, 0.633291, 0.693754,
		39.737373, 39.842319, 17.847565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353313, 39.288628, 17.968102>,  <39.977474, 39.399017, 17.361937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353313, 39.288628, 17.968102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.032948, 39.475937, 18.117373>,  <39.840729, 39.588322, 18.206934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.032948, 39.475937, 18.117373>,  <40.353313, 39.288628, 17.968102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032948, 39.475937, 18.117373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081811, -0.531805, 0.842906,
		0.593165, 0.705625, 0.387620,
		-0.800914, 0.468270, 0.373176,
		39.792675, 39.616417, 18.229324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525833, 39.537586, 18.624132>,  <40.353313, 39.288628, 17.968102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525833, 39.537586, 18.624132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.130184, 39.484093, 18.599606>,  <39.892796, 39.451996, 18.584890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.130184, 39.484093, 18.599606>,  <40.525833, 39.537586, 18.624132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130184, 39.484093, 18.599606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020587, -0.538478, 0.842388,
		-0.145676, 0.831959, 0.535371,
		-0.989118, -0.133737, -0.061316,
		39.833450, 39.443970, 18.581211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326317, 39.799568, 19.252876>,  <40.525833, 39.537586, 18.624132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326317, 39.799568, 19.252876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014725, 39.578053, 19.135229>,  <39.827770, 39.445145, 19.064642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014725, 39.578053, 19.135229>,  <40.326317, 39.799568, 19.252876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014725, 39.578053, 19.135229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101139, -0.351943, 0.930541,
		-0.618836, 0.754622, 0.218147,
		-0.778982, -0.553789, -0.294117,
		39.781029, 39.411915, 19.046993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797672, 39.874043, 19.822020>,  <40.326317, 39.799568, 19.252876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797672, 39.874043, 19.822020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.669823, 39.553066, 19.620453>,  <39.593113, 39.360481, 19.499512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.669823, 39.553066, 19.620453>,  <39.797672, 39.874043, 19.822020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669823, 39.553066, 19.620453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227045, -0.451464, 0.862920,
		-0.919940, 0.390224, -0.037889,
		-0.319627, -0.802437, -0.503918,
		39.573936, 39.312336, 19.469278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218235, 39.734821, 20.085350>,  <39.797672, 39.874043, 19.822020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218235, 39.734821, 20.085350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.323582, 39.381920, 19.929268>,  <39.386787, 39.170177, 19.835619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.323582, 39.381920, 19.929268>,  <39.218235, 39.734821, 20.085350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323582, 39.381920, 19.929268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287517, -0.457889, 0.841232,
		-0.920854, -0.109360, -0.374256,
		0.263365, -0.882257, -0.390206,
		39.402592, 39.117241, 19.812206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774281, 39.291592, 20.317827>,  <39.218235, 39.734821, 20.085350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774281, 39.291592, 20.317827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.049057, 39.024975, 20.202015>,  <39.213924, 38.865005, 20.132528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.049057, 39.024975, 20.202015>,  <38.774281, 39.291592, 20.317827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049057, 39.024975, 20.202015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123631, -0.499793, 0.857276,
		-0.716118, -0.553105, -0.425735,
		0.686943, -0.666545, -0.289530,
		39.255138, 38.825012, 20.115156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507393, 38.570499, 20.461132>,  <38.774281, 39.291592, 20.317827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507393, 38.570499, 20.461132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.905060, 38.549004, 20.423712>,  <39.143658, 38.536106, 20.401260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.905060, 38.549004, 20.423712>,  <38.507393, 38.570499, 20.461132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905060, 38.549004, 20.423712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055016, -0.493348, 0.868090,
		-0.092806, -0.868170, -0.487512,
		0.994163, -0.053743, -0.093549,
		39.203308, 38.532879, 20.395647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140148, 37.886662, 20.255041>,  <38.507393, 38.570499, 20.461132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140148, 37.886662, 20.255041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752293, 37.900574, 20.351870>,  <37.519581, 37.908920, 20.409967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.752293, 37.900574, 20.351870>,  <38.140148, 37.886662, 20.255041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752293, 37.900574, 20.351870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143613, 0.720212, -0.678727,
		-0.197949, -0.692882, -0.693348,
		-0.969635, 0.034779, 0.242072,
		37.461403, 37.911007, 20.424492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700695, 37.832649, 19.615585>,  <38.140148, 37.886662, 20.255041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700695, 37.832649, 19.615585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454250, 37.997894, 19.883835>,  <37.306381, 38.097042, 20.044785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454250, 37.997894, 19.883835>,  <37.700695, 37.832649, 19.615585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454250, 37.997894, 19.883835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323281, 0.643771, -0.693577,
		-0.718255, -0.644124, -0.263086,
		-0.616116, 0.413114, 0.670625,
		37.269417, 38.121830, 20.085022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021416, 37.736851, 19.219919>,  <37.700695, 37.832649, 19.615585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021416, 37.736851, 19.219919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.013771, 38.027927, 19.494173>,  <37.009182, 38.202576, 19.658726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.013771, 38.027927, 19.494173>,  <37.021416, 37.736851, 19.219919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013771, 38.027927, 19.494173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283128, 0.653750, -0.701748,
		-0.958892, -0.207535, 0.193536,
		-0.019113, 0.727696, 0.685634,
		37.008038, 38.246235, 19.699863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374004, 38.073868, 19.178642>,  <37.021416, 37.736851, 19.219919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374004, 38.073868, 19.178642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.622921, 38.333904, 19.353062>,  <36.772270, 38.489925, 19.457714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.622921, 38.333904, 19.353062>,  <36.374004, 38.073868, 19.178642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622921, 38.333904, 19.353062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264943, 0.699089, -0.664139,
		-0.736585, 0.297760, 0.607274,
		0.622292, 0.650088, 0.436049,
		36.809608, 38.528931, 19.483877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958500, 38.692677, 19.163792>,  <36.374004, 38.073868, 19.178642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958500, 38.692677, 19.163792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335709, 38.813503, 19.219610>,  <36.562035, 38.885998, 19.253101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335709, 38.813503, 19.219610>,  <35.958500, 38.692677, 19.163792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335709, 38.813503, 19.219610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143860, 0.748287, -0.647589,
		-0.300037, 0.590612, 0.749103,
		0.943017, 0.302067, 0.139548,
		36.618614, 38.904121, 19.261475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880436, 39.444126, 19.191105>,  <35.958500, 38.692677, 19.163792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880436, 39.444126, 19.191105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.268013, 39.370533, 19.125004>,  <36.500557, 39.326378, 19.085342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.268013, 39.370533, 19.125004>,  <35.880436, 39.444126, 19.191105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268013, 39.370533, 19.125004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025249, 0.738339, -0.673957,
		0.246007, 0.648851, 0.720051,
		0.968939, -0.183979, -0.165254,
		36.558693, 39.315338, 19.075428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231354, 40.110229, 19.099625>,  <35.880436, 39.444126, 19.191105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231354, 40.110229, 19.099625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.463173, 39.843811, 18.911795>,  <36.602264, 39.683960, 18.799097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.463173, 39.843811, 18.911795>,  <36.231354, 40.110229, 19.099625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463173, 39.843811, 18.911795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172418, 0.663384, -0.728144,
		0.796488, 0.341033, 0.499303,
		0.579551, -0.666047, -0.469577,
		36.637039, 39.643997, 18.770922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284431, 40.702705, 19.626337>,  <36.231354, 40.110229, 19.099625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284431, 40.702705, 19.626337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930008, 40.877338, 19.688681>,  <35.717354, 40.982121, 19.726088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930008, 40.877338, 19.688681>,  <36.284431, 40.702705, 19.626337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930008, 40.877338, 19.688681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220594, -0.692802, 0.686559,
		0.407721, 0.573950, 0.710172,
		-0.886060, 0.436585, 0.155860,
		35.664188, 41.008312, 19.735439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285973, 40.852592, 20.431396>,  <36.284431, 40.702705, 19.626337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285973, 40.852592, 20.431396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.912563, 40.862141, 20.288305>,  <35.688519, 40.867870, 20.202450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.912563, 40.862141, 20.288305>,  <36.285973, 40.852592, 20.431396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912563, 40.862141, 20.288305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319038, -0.510508, 0.798497,
		-0.163566, 0.859542, 0.484184,
		-0.933521, 0.023866, -0.357728,
		35.632507, 40.869301, 20.180986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825756, 40.922115, 20.983130>,  <36.285973, 40.852592, 20.431396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825756, 40.922115, 20.983130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.601707, 40.775646, 20.685896>,  <35.467278, 40.687763, 20.507555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.601707, 40.775646, 20.685896>,  <35.825756, 40.922115, 20.983130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601707, 40.775646, 20.685896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551987, -0.503888, 0.664385,
		-0.617712, 0.782313, 0.080116,
		-0.560126, -0.366175, -0.743084,
		35.433670, 40.665794, 20.462971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215641, 40.883503, 21.365944>,  <35.825756, 40.922115, 20.983130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215641, 40.883503, 21.365944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.192158, 40.633316, 21.054729>,  <35.178066, 40.483204, 20.868000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.192158, 40.633316, 21.054729>,  <35.215641, 40.883503, 21.365944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192158, 40.633316, 21.054729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578164, -0.614057, 0.537272,
		-0.813806, 0.481377, -0.325571,
		-0.058711, -0.625468, -0.778038,
		35.174545, 40.445675, 20.821318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585934, 40.708885, 21.339489>,  <35.215641, 40.883503, 21.365944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585934, 40.708885, 21.339489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.782333, 40.412621, 21.156038>,  <34.900173, 40.234859, 21.045969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.782333, 40.412621, 21.156038>,  <34.585934, 40.708885, 21.339489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782333, 40.412621, 21.156038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478163, -0.669190, 0.568810,
		-0.728205, -0.059986, -0.682729,
		0.490996, -0.740666, -0.458625,
		34.929630, 40.190422, 21.018450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078011, 40.133327, 21.327801>,  <34.585934, 40.708885, 21.339489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078011, 40.133327, 21.327801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424706, 39.944225, 21.264219>,  <34.632721, 39.830765, 21.226070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424706, 39.944225, 21.264219>,  <34.078011, 40.133327, 21.327801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424706, 39.944225, 21.264219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383947, -0.835841, 0.392371,
		-0.318358, -0.279052, -0.905968,
		0.866737, -0.472758, -0.158955,
		34.684727, 39.802399, 21.216532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843895, 39.432999, 21.127686>,  <34.078011, 40.133327, 21.327801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843895, 39.432999, 21.127686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.220299, 39.418484, 21.262260>,  <34.446140, 39.409775, 21.343006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.220299, 39.418484, 21.262260>,  <33.843895, 39.432999, 21.127686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220299, 39.418484, 21.262260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261509, -0.708978, 0.654953,
		0.214758, -0.704297, -0.676643,
		0.941006, -0.036292, 0.336438,
		34.502602, 39.407597, 21.363192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.991737, 45.118095, 19.203403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.375084, 45.176880, 19.105482>,  <38.605091, 45.212151, 19.046728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.375084, 45.176880, 19.105482>,  <37.991737, 45.118095, 19.203403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375084, 45.176880, 19.105482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260996, 0.798575, -0.542363,
		0.115790, 0.583678, 0.803687,
		0.958370, 0.146959, -0.244805,
		38.662594, 45.220966, 19.032042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403687, 44.712860, 19.356878>,  <37.991737, 45.118095, 19.203403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403687, 44.712860, 19.356878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.784634, 44.593483, 19.331841>,  <38.013203, 44.521854, 19.316818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.784634, 44.593483, 19.331841>,  <37.403687, 44.712860, 19.356878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784634, 44.593483, 19.331841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024471, -0.129808, 0.991237,
		-0.303957, -0.945558, -0.116322,
		0.952372, -0.298447, -0.062595,
		38.070347, 44.503948, 19.313063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420578, 44.043037, 19.698072>,  <37.403687, 44.712860, 19.356878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420578, 44.043037, 19.698072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.796520, 44.175983, 19.729584>,  <38.022083, 44.255753, 19.748491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.796520, 44.175983, 19.729584>,  <37.420578, 44.043037, 19.698072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796520, 44.175983, 19.729584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061522, -0.391577, 0.918086,
		0.335992, -0.858020, -0.388473,
		0.939853, 0.332369, 0.078779,
		38.078476, 44.275696, 19.753218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735359, 43.502712, 19.962036>,  <37.420578, 44.043037, 19.698072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735359, 43.502712, 19.962036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.987240, 43.799164, 20.055168>,  <38.138367, 43.977036, 20.111048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.987240, 43.799164, 20.055168>,  <37.735359, 43.502712, 19.962036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987240, 43.799164, 20.055168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009684, -0.292206, 0.956306,
		0.776777, -0.604442, -0.176825,
		0.629701, 0.741125, 0.232832,
		38.176151, 44.021500, 20.125017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205757, 43.257542, 20.339685>,  <37.735359, 43.502712, 19.962036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205757, 43.257542, 20.339685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.235825, 43.644356, 20.437000>,  <38.253864, 43.876446, 20.495390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.235825, 43.644356, 20.437000>,  <38.205757, 43.257542, 20.339685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235825, 43.644356, 20.437000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003277, -0.243736, 0.969836,
		0.997165, -0.073700, -0.015153,
		0.075170, 0.967037, 0.243287,
		38.258377, 43.934467, 20.509987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812023, 43.376518, 20.897802>,  <38.205757, 43.257542, 20.339685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812023, 43.376518, 20.897802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.545189, 43.673874, 20.917297>,  <38.385090, 43.852287, 20.928995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.545189, 43.673874, 20.917297>,  <38.812023, 43.376518, 20.897802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545189, 43.673874, 20.917297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081684, 0.007958, 0.996626,
		0.740492, 0.668814, -0.066032,
		-0.667083, 0.743387, 0.048738,
		38.345062, 43.896889, 20.931919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033691, 43.684185, 21.402308>,  <38.812023, 43.376518, 20.897802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033691, 43.684185, 21.402308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.650436, 43.798519, 21.395699>,  <38.420483, 43.867119, 21.391733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.650436, 43.798519, 21.395699>,  <39.033691, 43.684185, 21.402308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650436, 43.798519, 21.395699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031734, -0.048667, 0.998311,
		0.284553, 0.957041, 0.055701,
		-0.958135, 0.285840, -0.016522,
		38.362995, 43.884270, 21.390741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968369, 44.194805, 21.931705>,  <39.033691, 43.684185, 21.402308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968369, 44.194805, 21.931705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.598862, 44.056751, 21.865324>,  <38.377159, 43.973919, 21.825495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.598862, 44.056751, 21.865324>,  <38.968369, 44.194805, 21.931705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598862, 44.056751, 21.865324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187474, 0.029690, 0.981821,
		-0.333936, 0.938082, -0.092131,
		-0.923764, -0.345138, -0.165952,
		38.321732, 43.953209, 21.815538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571938, 44.436729, 22.450134>,  <38.968369, 44.194805, 21.931705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571938, 44.436729, 22.450134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.263046, 44.207752, 22.339876>,  <38.077713, 44.070366, 22.273722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.263046, 44.207752, 22.339876>,  <38.571938, 44.436729, 22.450134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263046, 44.207752, 22.339876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141361, -0.268170, 0.952944,
		-0.619422, 0.774854, 0.126167,
		-0.772226, -0.572439, -0.275645,
		38.031380, 44.036022, 22.257183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859093, 44.570305, 22.797209>,  <38.571938, 44.436729, 22.450134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859093, 44.570305, 22.797209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.906025, 44.191395, 22.677942>,  <37.934185, 43.964050, 22.606382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.906025, 44.191395, 22.677942>,  <37.859093, 44.570305, 22.797209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906025, 44.191395, 22.677942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336777, -0.320401, 0.885395,
		-0.934246, -0.003466, -0.356613,
		0.117328, -0.947276, -0.298166,
		37.941223, 43.907211, 22.588493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209507, 44.180031, 23.151354>,  <37.859093, 44.570305, 22.797209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209507, 44.180031, 23.151354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.460163, 43.887775, 23.042915>,  <37.610558, 43.712421, 22.977852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.460163, 43.887775, 23.042915>,  <37.209507, 44.180031, 23.151354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460163, 43.887775, 23.042915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395229, -0.597764, 0.697475,
		-0.671654, -0.329918, -0.663351,
		0.626637, -0.730638, -0.271098,
		37.648155, 43.668583, 22.961586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762035, 43.525578, 23.100595>,  <37.209507, 44.180031, 23.151354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762035, 43.525578, 23.100595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143578, 43.424320, 23.165180>,  <37.372505, 43.363564, 23.203932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143578, 43.424320, 23.165180>,  <36.762035, 43.525578, 23.100595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143578, 43.424320, 23.165180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281292, -0.565331, 0.775420,
		-0.105013, -0.785060, -0.610454,
		0.953859, -0.253145, 0.161464,
		37.429737, 43.348377, 23.213619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236824, 43.129963, 22.808096>,  <36.762035, 43.525578, 23.100595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236824, 43.129963, 22.808096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.852005, 43.040619, 22.745388>,  <35.621113, 42.987015, 22.707764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.852005, 43.040619, 22.745388>,  <36.236824, 43.129963, 22.808096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852005, 43.040619, 22.745388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071438, 0.760602, -0.645276,
		0.263367, -0.609587, -0.747691,
		-0.962047, -0.223358, -0.156770,
		35.563393, 42.973610, 22.698357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273972, 43.003735, 22.072624>,  <36.236824, 43.129963, 22.808096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273972, 43.003735, 22.072624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.896763, 43.100574, 22.163931>,  <35.670437, 43.158680, 22.218716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.896763, 43.100574, 22.163931>,  <36.273972, 43.003735, 22.072624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896763, 43.100574, 22.163931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001429, 0.683063, -0.730358,
		-0.332741, -0.689066, -0.643794,
		-0.943017, 0.242100, 0.228268,
		35.613857, 43.173206, 22.232410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016983, 43.303806, 21.492472>,  <36.273972, 43.003735, 22.072624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016983, 43.303806, 21.492472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.709618, 43.412918, 21.724031>,  <35.525196, 43.478386, 21.862967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.709618, 43.412918, 21.724031>,  <36.016983, 43.303806, 21.492472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709618, 43.412918, 21.724031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340635, 0.591458, -0.730852,
		-0.541758, -0.758793, -0.361568,
		-0.768418, 0.272783, 0.578899,
		35.479092, 43.494751, 21.897701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374344, 43.376942, 21.094534>,  <36.016983, 43.303806, 21.492472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374344, 43.376942, 21.094534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.314098, 43.619118, 21.407139>,  <35.277950, 43.764423, 21.594702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.314098, 43.619118, 21.407139>,  <35.374344, 43.376942, 21.094534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314098, 43.619118, 21.407139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125488, 0.772427, -0.622583,
		-0.980596, -0.191840, -0.040364,
		-0.150615, 0.605437, 0.781512,
		35.268913, 43.800751, 21.641592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794254, 43.825298, 20.860327>,  <35.374344, 43.376942, 21.094534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794254, 43.825298, 20.860327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.988667, 43.997162, 21.164738>,  <35.105316, 44.100281, 21.347385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.988667, 43.997162, 21.164738>,  <34.794254, 43.825298, 20.860327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988667, 43.997162, 21.164738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065373, 0.886236, -0.458599,
		-0.871492, 0.173143, 0.458828,
		0.486033, 0.429660, 0.761028,
		35.134476, 44.126060, 21.393045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421555, 44.446873, 21.034220>,  <34.794254, 43.825298, 20.860327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421555, 44.446873, 21.034220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.799629, 44.481335, 21.160208>,  <35.026474, 44.502010, 21.235800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.799629, 44.481335, 21.160208>,  <34.421555, 44.446873, 21.034220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799629, 44.481335, 21.160208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160305, 0.717910, -0.677427,
		-0.284484, 0.690784, 0.664745,
		0.945183, 0.086156, 0.314970,
		35.083183, 44.507183, 21.254698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504955, 45.166981, 21.151524>,  <34.421555, 44.446873, 21.034220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504955, 45.166981, 21.151524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.880672, 45.033207, 21.120855>,  <35.106102, 44.952942, 21.102455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.880672, 45.033207, 21.120855>,  <34.504955, 45.166981, 21.151524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880672, 45.033207, 21.120855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201944, 0.719509, -0.664474,
		0.277389, 0.608654, 0.743368,
		0.939295, -0.334436, -0.076670,
		35.162460, 44.932877, 21.097855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980946, 45.733303, 21.147127>,  <34.504955, 45.166981, 21.151524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980946, 45.733303, 21.147127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.217865, 45.449810, 20.993828>,  <35.360016, 45.279713, 20.901848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.217865, 45.449810, 20.993828>,  <34.980946, 45.733303, 21.147127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217865, 45.449810, 20.993828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354455, 0.656361, -0.665997,
		0.723563, 0.258625, 0.639976,
		0.592299, -0.708733, -0.383248,
		35.395554, 45.237190, 20.878853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561737, 46.110832, 20.936113>,  <34.980946, 45.733303, 21.147127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561737, 46.110832, 20.936113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.572475, 45.759987, 20.744297>,  <35.578918, 45.549480, 20.629208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.572475, 45.759987, 20.744297>,  <35.561737, 46.110832, 20.936113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572475, 45.759987, 20.744297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408335, 0.447489, -0.795623,
		0.912437, -0.174454, 0.370168,
		0.026847, -0.877109, -0.479541,
		35.580528, 45.496853, 20.600435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165440, 46.163418, 20.560043>,  <35.561737, 46.110832, 20.936113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165440, 46.163418, 20.560043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.955193, 45.878975, 20.373257>,  <35.829044, 45.708309, 20.261185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.955193, 45.878975, 20.373257>,  <36.165440, 46.163418, 20.560043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955193, 45.878975, 20.373257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397935, 0.279643, -0.873755,
		0.751915, -0.645083, 0.135988,
		-0.525616, -0.711103, -0.466968,
		35.797508, 45.665646, 20.233166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585899, 45.937061, 20.022293>,  <36.165440, 46.163418, 20.560043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585899, 45.937061, 20.022293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.231190, 45.782516, 19.920813>,  <36.018364, 45.689789, 19.859924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.231190, 45.782516, 19.920813>,  <36.585899, 45.937061, 20.022293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231190, 45.782516, 19.920813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243605, 0.075791, -0.966909,
		0.392803, -0.919229, 0.026910,
		-0.886771, -0.386360, -0.253700,
		35.965157, 45.666607, 19.844702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667625, 45.462280, 19.360020>,  <36.585899, 45.937061, 20.022293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667625, 45.462280, 19.360020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.285622, 45.579723, 19.376745>,  <36.056419, 45.650188, 19.386780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.285622, 45.579723, 19.376745>,  <36.667625, 45.462280, 19.360020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285622, 45.579723, 19.376745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047868, 0.291744, -0.955298,
		-0.292682, -0.910318, -0.292673,
		-0.955011, 0.293608, 0.041813,
		35.999119, 45.667805, 19.389290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287373, 45.113373, 18.736494>,  <36.667625, 45.462280, 19.360020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287373, 45.113373, 18.736494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.095989, 45.446507, 18.847830>,  <35.981159, 45.646385, 18.914631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.095989, 45.446507, 18.847830>,  <36.287373, 45.113373, 18.736494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095989, 45.446507, 18.847830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008209, 0.312716, -0.949811,
		-0.878074, -0.456726, -0.142783,
		-0.478454, 0.832833, 0.278337,
		35.952454, 45.696358, 18.931332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897564, 44.407341, 18.820553>,  <36.287373, 45.113373, 18.736494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897564, 44.407341, 18.820553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.717533, 44.202324, 18.528051>,  <35.609516, 44.079315, 18.352551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.717533, 44.202324, 18.528051>,  <35.897564, 44.407341, 18.820553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717533, 44.202324, 18.528051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008238, -0.821230, 0.570538,
		-0.892952, 0.250761, 0.373838,
		-0.450076, -0.512543, -0.731253,
		35.582512, 44.048561, 18.308676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301624, 44.062305, 19.095242>,  <35.897564, 44.407341, 18.820553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301624, 44.062305, 19.095242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.386658, 43.854225, 18.764376>,  <35.437675, 43.729378, 18.565855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.386658, 43.854225, 18.764376>,  <35.301624, 44.062305, 19.095242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386658, 43.854225, 18.764376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093900, -0.853472, 0.512609,
		-0.972621, -0.031300, -0.230278,
		0.212580, -0.520198, -0.827166,
		35.450432, 43.698166, 18.516226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780205, 43.485271, 18.993355>,  <35.301624, 44.062305, 19.095242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780205, 43.485271, 18.993355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.109283, 43.388645, 18.787518>,  <35.306732, 43.330669, 18.664015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.109283, 43.388645, 18.787518>,  <34.780205, 43.485271, 18.993355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109283, 43.388645, 18.787518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052347, -0.933566, 0.354562,
		-0.566060, -0.264761, -0.780691,
		0.822700, -0.241570, -0.514595,
		35.356094, 43.316174, 18.633139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569473, 42.983326, 18.656599>,  <34.780205, 43.485271, 18.993355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569473, 42.983326, 18.656599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.965008, 42.929752, 18.682699>,  <35.202328, 42.897610, 18.698360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.965008, 42.929752, 18.682699>,  <34.569473, 42.983326, 18.656599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965008, 42.929752, 18.682699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148981, -0.887637, 0.435781,
		-0.000444, -0.440639, -0.897684,
		0.988840, -0.133931, 0.065253,
		35.261662, 42.889572, 18.702274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625355, 42.301285, 18.557001>,  <34.569473, 42.983326, 18.656599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625355, 42.301285, 18.557001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.991379, 42.396561, 18.687189>,  <35.210995, 42.453728, 18.765303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.991379, 42.396561, 18.687189>,  <34.625355, 42.301285, 18.557001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991379, 42.396561, 18.687189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029004, -0.843754, 0.535946,
		0.402274, -0.480983, -0.778994,
		0.915060, 0.238192, 0.325470,
		35.265896, 42.468018, 18.784830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075909, 41.904533, 18.253460>,  <34.625355, 42.301285, 18.557001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075909, 41.904533, 18.253460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.252373, 42.021549, 18.592823>,  <35.358253, 42.091759, 18.796440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.252373, 42.021549, 18.592823>,  <35.075909, 41.904533, 18.253460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252373, 42.021549, 18.592823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095914, -0.924594, 0.368683,
		0.892286, -0.244024, -0.379839,
		0.441164, 0.292539, 0.848407,
		35.384724, 42.109310, 18.847345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683025, 41.373421, 18.437616>,  <35.075909, 41.904533, 18.253460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683025, 41.373421, 18.437616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.629486, 41.566204, 18.783981>,  <35.597363, 41.681873, 18.991800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.629486, 41.566204, 18.783981>,  <35.683025, 41.373421, 18.437616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629486, 41.566204, 18.783981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190129, -0.845055, 0.499733,
		0.972592, 0.231523, 0.021475,
		-0.133847, 0.481954, 0.865913,
		35.589333, 41.710789, 19.043755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233963, 41.056480, 18.932093>,  <35.683025, 41.373421, 18.437616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233963, 41.056480, 18.932093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.953972, 41.231701, 19.157707>,  <35.785976, 41.336834, 19.293076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.953972, 41.231701, 19.157707>,  <36.233963, 41.056480, 18.932093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953972, 41.231701, 19.157707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050720, -0.818284, 0.572572,
		0.712359, 0.372181, 0.595000,
		-0.699980, 0.438056, 0.564035,
		35.743977, 41.363117, 19.326918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858173, 40.526314, 18.643383>,  <36.233963, 41.056480, 18.932093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858173, 40.526314, 18.643383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.882229, 40.161598, 18.480886>,  <36.896660, 39.942768, 18.383389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.882229, 40.161598, 18.480886>,  <36.858173, 40.526314, 18.643383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882229, 40.161598, 18.480886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280835, 0.405994, -0.869656,
		0.957870, -0.061789, 0.280476,
		0.060137, -0.911785, -0.406242,
		36.900269, 39.888062, 18.359015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516373, 40.435707, 18.448740>,  <36.858173, 40.526314, 18.643383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516373, 40.435707, 18.448740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.283314, 40.196800, 18.228268>,  <37.143478, 40.053455, 18.095984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.283314, 40.196800, 18.228268>,  <37.516373, 40.435707, 18.448740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283314, 40.196800, 18.228268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309697, 0.463856, -0.830015,
		0.751407, -0.654303, -0.085292,
		-0.582645, -0.597265, -0.551180,
		37.108521, 40.017620, 18.062914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894341, 40.416386, 17.916967>,  <37.516373, 40.435707, 18.448740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894341, 40.416386, 17.916967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.534439, 40.302742, 17.784462>,  <37.318501, 40.234558, 17.704958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.534439, 40.302742, 17.784462>,  <37.894341, 40.416386, 17.916967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534439, 40.302742, 17.784462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183404, 0.442617, -0.877755,
		0.395998, -0.850514, -0.346138,
		-0.899749, -0.284106, -0.331263,
		37.264515, 40.217510, 17.685083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969044, 40.132931, 17.181566>,  <37.894341, 40.416386, 17.916967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969044, 40.132931, 17.181566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.581566, 40.222237, 17.224977>,  <37.349079, 40.275822, 17.251024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.581566, 40.222237, 17.224977>,  <37.969044, 40.132931, 17.181566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581566, 40.222237, 17.224977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007622, 0.410229, -0.911950,
		-0.248129, -0.884231, -0.395686,
		-0.968697, 0.223265, 0.108529,
		37.290958, 40.289215, 17.257536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735588, 40.032764, 16.530729>,  <37.969044, 40.132931, 17.181566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735588, 40.032764, 16.530729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.447212, 40.247074, 16.706539>,  <37.274185, 40.375660, 16.812025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.447212, 40.247074, 16.706539>,  <37.735588, 40.032764, 16.530729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447212, 40.247074, 16.706539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077152, 0.568245, -0.819235,
		-0.688686, -0.624532, -0.368336,
		-0.720943, 0.535778, 0.439526,
		37.230930, 40.407806, 16.838396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392620, 40.181042, 15.935411>,  <37.735588, 40.032764, 16.530729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392620, 40.181042, 15.935411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.255089, 40.440563, 16.206951>,  <37.172569, 40.596275, 16.369875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.255089, 40.440563, 16.206951>,  <37.392620, 40.181042, 15.935411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255089, 40.440563, 16.206951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083803, 0.698839, -0.710352,
		-0.935286, -0.301127, -0.185907,
		-0.343826, 0.648803, 0.678850,
		37.151939, 40.635204, 16.410606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942257, 40.628384, 15.601083>,  <37.392620, 40.181042, 15.935411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942257, 40.628384, 15.601083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.029354, 40.865971, 15.910868>,  <37.081612, 41.008522, 16.096739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.029354, 40.865971, 15.910868>,  <36.942257, 40.628384, 15.601083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029354, 40.865971, 15.910868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146362, 0.804401, -0.575775,
		-0.964969, 0.012021, 0.262090,
		0.217747, 0.593965, 0.774463,
		37.094677, 41.044159, 16.143206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329823, 41.004318, 15.600951>,  <36.942257, 40.628384, 15.601083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329823, 41.004318, 15.600951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.608982, 41.218849, 15.790812>,  <36.776478, 41.347569, 15.904728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.608982, 41.218849, 15.790812>,  <36.329823, 41.004318, 15.600951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608982, 41.218849, 15.790812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230345, 0.795612, -0.560305,
		-0.678143, 0.281704, 0.678797,
		0.697899, 0.536325, 0.474650,
		36.818352, 41.379745, 15.933207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039478, 41.660881, 15.782516>,  <36.329823, 41.004318, 15.600951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039478, 41.660881, 15.782516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.437187, 41.692245, 15.753461>,  <36.675812, 41.711063, 15.736028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.437187, 41.692245, 15.753461>,  <36.039478, 41.660881, 15.782516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437187, 41.692245, 15.753461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106810, 0.754894, -0.647091,
		0.004091, 0.651142, 0.758944,
		0.994271, 0.078415, -0.072637,
		36.735470, 41.715771, 15.731669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.225033, 34.213341, 30.285789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545101, 34.218124, 30.045925>,  <37.737141, 34.220993, 29.902006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545101, 34.218124, 30.045925>,  <37.225033, 34.213341, 30.285789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545101, 34.218124, 30.045925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598815, -0.040695, -0.799853,
		-0.033969, 0.999100, -0.025401,
		0.800166, 0.011959, -0.599659,
		37.785152, 34.221714, 29.866028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104050, 34.725609, 29.671799>,  <37.225033, 34.213341, 30.285789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104050, 34.725609, 29.671799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394375, 34.494938, 29.521793>,  <37.568569, 34.356537, 29.431789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394375, 34.494938, 29.521793>,  <37.104050, 34.725609, 29.671799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394375, 34.494938, 29.521793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402975, 0.085376, -0.911220,
		0.557496, 0.812500, -0.170418,
		0.725816, -0.576676, -0.375014,
		37.612122, 34.321934, 29.409288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346260, 35.120270, 29.126793>,  <37.104050, 34.725609, 29.671799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346260, 35.120270, 29.126793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.439625, 34.734486, 29.077261>,  <37.495644, 34.503014, 29.047543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.439625, 34.734486, 29.077261>,  <37.346260, 35.120270, 29.126793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439625, 34.734486, 29.077261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315460, 0.045351, -0.947854,
		0.919785, 0.260303, -0.293664,
		0.233412, -0.964461, -0.123829,
		37.509647, 34.445148, 29.040112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705753, 35.100594, 28.535629>,  <37.346260, 35.120270, 29.126793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705753, 35.100594, 28.535629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592751, 34.718704, 28.572927>,  <37.524948, 34.489571, 28.595306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592751, 34.718704, 28.572927>,  <37.705753, 35.100594, 28.535629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592751, 34.718704, 28.572927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083613, -0.072325, -0.993870,
		0.955613, -0.288576, -0.059395,
		-0.282511, -0.954721, 0.093244,
		37.507996, 34.432289, 28.600901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126064, 34.785572, 28.081268>,  <37.705753, 35.100594, 28.535629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126064, 34.785572, 28.081268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.827976, 34.523865, 28.132780>,  <37.649124, 34.366840, 28.163687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.827976, 34.523865, 28.132780>,  <38.126064, 34.785572, 28.081268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827976, 34.523865, 28.132780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043997, -0.240944, -0.969541,
		0.665370, -0.716852, 0.208341,
		-0.745216, -0.654271, 0.128778,
		37.604412, 34.327583, 28.171413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347958, 34.330853, 27.697811>,  <38.126064, 34.785572, 28.081268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347958, 34.330853, 27.697811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955555, 34.265636, 27.739853>,  <37.720116, 34.226505, 27.765078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.955555, 34.265636, 27.739853>,  <38.347958, 34.330853, 27.697811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955555, 34.265636, 27.739853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106163, -0.002244, -0.994346,
		0.162361, -0.986616, -0.015109,
		-0.981004, -0.163046, 0.105106,
		37.661255, 34.216724, 27.771385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189606, 33.772289, 27.318823>,  <38.347958, 34.330853, 27.697811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189606, 33.772289, 27.318823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834534, 33.951046, 27.363220>,  <37.621490, 34.058300, 27.389858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834534, 33.951046, 27.363220>,  <38.189606, 33.772289, 27.318823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834534, 33.951046, 27.363220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137690, -0.027597, -0.990091,
		-0.439399, -0.894163, 0.086029,
		-0.887677, 0.446891, 0.110991,
		37.568230, 34.085114, 27.396517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731960, 33.530205, 26.794447>,  <38.189606, 33.772289, 27.318823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731960, 33.530205, 26.794447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551548, 33.870987, 26.900841>,  <37.443298, 34.075455, 26.964676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551548, 33.870987, 26.900841>,  <37.731960, 33.530205, 26.794447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551548, 33.870987, 26.900841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385369, 0.082906, -0.919031,
		-0.805021, -0.517016, 0.290922,
		-0.451035, 0.851951, 0.265983,
		37.416237, 34.126572, 26.980637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938972, 33.470947, 26.603363>,  <37.731960, 33.530205, 26.794447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938972, 33.470947, 26.603363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054234, 33.853336, 26.625591>,  <37.123390, 34.082767, 26.638927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054234, 33.853336, 26.625591>,  <36.938972, 33.470947, 26.603363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054234, 33.853336, 26.625591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450927, 0.186658, -0.872825,
		-0.844767, 0.226452, 0.484859,
		0.288156, 0.955970, 0.055569,
		37.140682, 34.140129, 26.642262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466980, 33.798153, 26.301203>,  <36.938972, 33.470947, 26.603363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466980, 33.798153, 26.301203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727615, 34.101555, 26.296993>,  <36.883995, 34.283596, 26.294468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727615, 34.101555, 26.296993>,  <36.466980, 33.798153, 26.301203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727615, 34.101555, 26.296993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365248, 0.301546, -0.880718,
		-0.664852, 0.577707, 0.473524,
		0.651587, 0.758501, -0.010523,
		36.923092, 34.329105, 26.293837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147842, 34.356205, 25.820772>,  <36.466980, 33.798153, 26.301203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147842, 34.356205, 25.820772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532043, 34.453346, 25.875113>,  <36.762566, 34.511631, 25.907717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532043, 34.453346, 25.875113>,  <36.147842, 34.356205, 25.820772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532043, 34.453346, 25.875113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048168, 0.625930, -0.778391,
		-0.274067, 0.741104, 0.612906,
		0.960504, 0.242853, 0.135849,
		36.820194, 34.526203, 25.915867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137108, 35.063900, 25.856606>,  <36.147842, 34.356205, 25.820772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137108, 35.063900, 25.856606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.502647, 34.957577, 25.733816>,  <36.721970, 34.893784, 25.660143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.502647, 34.957577, 25.733816>,  <36.137108, 35.063900, 25.856606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502647, 34.957577, 25.733816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090695, 0.603271, -0.792363,
		0.395803, 0.751939, 0.527189,
		0.913846, -0.265806, -0.306973,
		36.776802, 34.877834, 25.641724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949390, 35.632545, 26.216099>,  <36.137108, 35.063900, 25.856606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949390, 35.632545, 26.216099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559982, 35.613728, 26.126619>,  <35.326336, 35.602436, 26.072931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559982, 35.613728, 26.126619>,  <35.949390, 35.632545, 26.216099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559982, 35.613728, 26.126619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220846, -0.058996, 0.973523,
		-0.058996, 0.997149, 0.047044,
		-0.973523, -0.047044, -0.223697,
		35.267925, 35.599613, 26.059509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555229, 36.233601, 26.557161>,  <35.949390, 35.632545, 26.216099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555229, 36.233601, 26.557161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290421, 35.940090, 26.496115>,  <35.131535, 35.763985, 26.459488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290421, 35.940090, 26.496115>,  <35.555229, 36.233601, 26.557161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290421, 35.940090, 26.496115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294970, 0.067896, 0.953091,
		-0.688998, 0.675986, -0.261392,
		-0.662024, -0.733780, -0.152615,
		35.091812, 35.719955, 26.450331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985149, 36.429417, 26.751818>,  <35.555229, 36.233601, 26.557161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985149, 36.429417, 26.751818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909599, 36.036625, 26.754118>,  <34.864269, 35.800949, 26.755499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.909599, 36.036625, 26.754118>,  <34.985149, 36.429417, 26.751818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909599, 36.036625, 26.754118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301736, 0.063608, 0.951267,
		-0.934495, 0.177937, -0.308314,
		-0.188877, -0.981984, 0.005751,
		34.852936, 35.742031, 26.755844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343357, 36.266998, 27.105057>,  <34.985149, 36.429417, 26.751818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343357, 36.266998, 27.105057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503807, 35.901169, 27.125643>,  <34.600079, 35.681671, 27.137995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503807, 35.901169, 27.125643>,  <34.343357, 36.266998, 27.105057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503807, 35.901169, 27.125643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432574, -0.139601, 0.890725,
		-0.807451, -0.379555, -0.451620,
		0.401126, -0.914576, 0.051465,
		34.624146, 35.626797, 27.141083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781681, 35.845371, 27.527258>,  <34.343357, 36.266998, 27.105057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781681, 35.845371, 27.527258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100288, 35.603539, 27.530003>,  <34.291454, 35.458439, 27.531651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.100288, 35.603539, 27.530003>,  <33.781681, 35.845371, 27.527258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100288, 35.603539, 27.530003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274715, -0.351773, 0.894867,
		-0.538603, -0.714662, -0.446280,
		0.796517, -0.604578, 0.006862,
		34.339245, 35.422165, 27.532061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614986, 35.174686, 27.578827>,  <33.781681, 35.845371, 27.527258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614986, 35.174686, 27.578827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.984062, 35.180763, 27.732924>,  <34.205509, 35.184410, 27.825382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.984062, 35.180763, 27.732924>,  <33.614986, 35.174686, 27.578827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984062, 35.180763, 27.732924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341912, -0.429478, 0.835850,
		0.178155, -0.902950, -0.391079,
		0.922690, 0.015196, 0.385243,
		34.260868, 35.185322, 27.848495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629589, 34.520023, 27.918818>,  <33.614986, 35.174686, 27.578827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629589, 34.520023, 27.918818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921410, 34.727383, 28.097261>,  <34.096504, 34.851799, 28.204329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921410, 34.727383, 28.097261>,  <33.629589, 34.520023, 27.918818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921410, 34.727383, 28.097261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302937, -0.339863, 0.890350,
		0.613172, -0.784701, -0.090907,
		0.729555, 0.518398, 0.446109,
		34.140278, 34.882904, 28.231094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011631, 34.036549, 28.306761>,  <33.629589, 34.520023, 27.918818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011631, 34.036549, 28.306761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.111702, 34.378166, 28.489195>,  <34.171745, 34.583138, 28.598656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.111702, 34.378166, 28.489195>,  <34.011631, 34.036549, 28.306761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111702, 34.378166, 28.489195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283551, -0.385783, 0.877935,
		0.925749, -0.348963, 0.145652,
		0.250176, 0.854047, 0.456087,
		34.186756, 34.634380, 28.626020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307045, 33.810505, 28.906176>,  <34.011631, 34.036549, 28.306761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307045, 33.810505, 28.906176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200607, 34.193916, 28.947006>,  <34.136745, 34.423962, 28.971504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200607, 34.193916, 28.947006>,  <34.307045, 33.810505, 28.906176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200607, 34.193916, 28.947006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406337, -0.207563, 0.889836,
		0.874119, 0.195302, 0.444716,
		-0.266094, 0.958527, 0.102077,
		34.120781, 34.481476, 28.977629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538422, 34.017345, 29.602806>,  <34.307045, 33.810505, 28.906176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538422, 34.017345, 29.602806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.241589, 34.258137, 29.484861>,  <34.063488, 34.402611, 29.414095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.241589, 34.258137, 29.484861>,  <34.538422, 34.017345, 29.602806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241589, 34.258137, 29.484861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357992, 0.015980, 0.933588,
		0.566707, 0.798356, 0.203643,
		-0.742081, 0.601974, -0.294861,
		34.018963, 34.438728, 29.396402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460434, 34.483017, 30.224163>,  <34.538422, 34.017345, 29.602806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460434, 34.483017, 30.224163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.117626, 34.555973, 30.031389>,  <33.911942, 34.599747, 29.915726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.117626, 34.555973, 30.031389>,  <34.460434, 34.483017, 30.224163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117626, 34.555973, 30.031389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448846, 0.195161, 0.872038,
		0.253104, 0.963663, -0.085391,
		-0.857016, 0.182388, -0.481933,
		33.860523, 34.610691, 29.886810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110363, 34.982197, 30.685087>,  <34.460434, 34.483017, 30.224163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110363, 34.982197, 30.685087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843773, 34.846668, 30.419453>,  <33.683819, 34.765350, 30.260071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843773, 34.846668, 30.419453>,  <34.110363, 34.982197, 30.685087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843773, 34.846668, 30.419453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744989, 0.336505, 0.575983,
		0.028316, 0.878616, -0.476688,
		-0.666476, -0.338818, -0.664087,
		33.643829, 34.745022, 30.220226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681530, 35.547985, 30.612505>,  <34.110363, 34.982197, 30.685087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681530, 35.547985, 30.612505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502663, 35.194443, 30.557610>,  <33.395344, 34.982315, 30.524672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502663, 35.194443, 30.557610>,  <33.681530, 35.547985, 30.612505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502663, 35.194443, 30.557610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693249, 0.245523, 0.677587,
		-0.565196, 0.398135, -0.722524,
		-0.447167, -0.883859, -0.137239,
		33.368511, 34.929283, 30.516438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974415, 35.646961, 30.722124>,  <33.681530, 35.547985, 30.612505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974415, 35.646961, 30.722124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.986691, 35.247684, 30.742825>,  <32.994057, 35.008118, 30.755245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.986691, 35.247684, 30.742825>,  <32.974415, 35.646961, 30.722124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986691, 35.247684, 30.742825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687809, 0.016481, 0.725705,
		-0.725243, -0.057865, -0.686057,
		0.030686, -0.998189, 0.051753,
		32.995895, 34.948227, 30.758350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342636, 35.776257, 31.148739>,  <32.974415, 35.646961, 30.722124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342636, 35.776257, 31.148739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.619949, 36.063221, 31.176079>,  <32.786339, 36.235401, 31.192482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.619949, 36.063221, 31.176079>,  <32.342636, 35.776257, 31.148739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619949, 36.063221, 31.176079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340972, 0.410097, -0.845907,
		-0.634894, 0.563151, 0.528933,
		0.693287, 0.717413, 0.068350,
		32.827934, 36.278446, 31.196583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057266, 36.384907, 30.988638>,  <32.342636, 35.776257, 31.148739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057266, 36.384907, 30.988638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431255, 36.486671, 30.889767>,  <32.655647, 36.547729, 30.830444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431255, 36.486671, 30.889767>,  <32.057266, 36.384907, 30.988638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431255, 36.486671, 30.889767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350803, 0.559990, -0.750565,
		-0.052536, 0.788470, 0.612825,
		0.934974, 0.254413, -0.247178,
		32.711746, 36.562996, 30.815613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153450, 37.005444, 30.690662>,  <32.057266, 36.384907, 30.988638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153450, 37.005444, 30.690662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533352, 36.909946, 30.609707>,  <32.761295, 36.852650, 30.561132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533352, 36.909946, 30.609707>,  <32.153450, 37.005444, 30.690662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533352, 36.909946, 30.609707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122582, 0.878733, -0.461304,
		0.287979, 0.413318, 0.863850,
		0.949759, -0.238738, -0.202391,
		32.818279, 36.838326, 30.548990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613461, 37.604748, 30.741301>,  <32.153450, 37.005444, 30.690662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613461, 37.604748, 30.741301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.861683, 37.384853, 30.517624>,  <33.010616, 37.252914, 30.383419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.861683, 37.384853, 30.517624>,  <32.613461, 37.604748, 30.741301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861683, 37.384853, 30.517624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331957, 0.830226, -0.447806,
		0.710430, 0.092263, 0.697694,
		0.620559, -0.549739, -0.559190,
		33.047852, 37.219933, 30.349867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003899, 38.069290, 30.604586>,  <32.613461, 37.604748, 30.741301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003899, 38.069290, 30.604586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084003, 37.776119, 30.344519>,  <33.132065, 37.600216, 30.188478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084003, 37.776119, 30.344519>,  <33.003899, 38.069290, 30.604586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084003, 37.776119, 30.344519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169651, 0.679525, -0.713768,
		0.964942, 0.032638, 0.260425,
		0.200261, -0.732926, -0.650165,
		33.144081, 37.556240, 30.149469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651642, 38.172894, 30.255922>,  <33.003899, 38.069290, 30.604586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651642, 38.172894, 30.255922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442463, 37.929489, 30.017178>,  <33.316956, 37.783447, 29.873930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442463, 37.929489, 30.017178>,  <33.651642, 38.172894, 30.255922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442463, 37.929489, 30.017178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160414, 0.617467, -0.770067,
		0.837137, -0.498446, -0.225286,
		-0.522943, -0.608512, -0.596861,
		33.285580, 37.746937, 29.838120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954933, 38.311188, 29.664810>,  <33.651642, 38.172894, 30.255922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954933, 38.311188, 29.664810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664551, 38.071697, 29.529457>,  <33.490322, 37.928001, 29.448244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664551, 38.071697, 29.529457>,  <33.954933, 38.311188, 29.664810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664551, 38.071697, 29.529457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075354, 0.419816, -0.904476,
		0.683596, -0.682112, -0.259653,
		-0.725960, -0.598730, -0.338385,
		33.446762, 37.892078, 29.427942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262348, 38.010166, 29.119368>,  <33.954933, 38.311188, 29.664810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262348, 38.010166, 29.119368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866985, 37.999935, 29.059498>,  <33.629768, 37.993797, 29.023577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866985, 37.999935, 29.059498>,  <34.262348, 38.010166, 29.119368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866985, 37.999935, 29.059498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135725, 0.293142, -0.946386,
		0.068079, -0.955727, -0.286271,
		-0.988405, -0.025575, -0.149673,
		33.570465, 37.992264, 29.014595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098362, 37.463032, 28.589310>,  <34.262348, 38.010166, 29.119368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098362, 37.463032, 28.589310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788559, 37.715706, 28.602684>,  <33.602676, 37.867310, 28.610708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788559, 37.715706, 28.602684>,  <34.098362, 37.463032, 28.589310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788559, 37.715706, 28.602684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138975, 0.221487, -0.965209,
		-0.617114, -0.742911, -0.259331,
		-0.774504, 0.631685, 0.033437,
		33.556210, 37.905212, 28.612715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603806, 37.291588, 27.936172>,  <34.098362, 37.463032, 28.589310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603806, 37.291588, 27.936172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.573269, 37.667477, 28.069500>,  <33.554947, 37.893009, 28.149496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.573269, 37.667477, 28.069500>,  <33.603806, 37.291588, 27.936172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573269, 37.667477, 28.069500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060858, 0.338062, -0.939154,
		-0.995222, -0.051414, -0.082999,
		-0.076344, 0.939719, 0.333318,
		33.550365, 37.949390, 28.169495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314846, 37.604916, 27.391172>,  <33.603806, 37.291588, 27.936172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314846, 37.604916, 27.391172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419022, 37.932903, 27.595066>,  <33.481525, 38.129696, 27.717402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419022, 37.932903, 27.595066>,  <33.314846, 37.604916, 27.391172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419022, 37.932903, 27.595066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053146, 0.514979, -0.855554,
		-0.964027, 0.249910, 0.090542,
		0.260438, 0.819965, 0.509735,
		33.497154, 38.178894, 27.747986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944584, 38.126625, 27.162909>,  <33.314846, 37.604916, 27.391172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944584, 38.126625, 27.162909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.239227, 38.325657, 27.346134>,  <33.416012, 38.445076, 27.456070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.239227, 38.325657, 27.346134>,  <32.944584, 38.126625, 27.162909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239227, 38.325657, 27.346134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045444, 0.639343, -0.767578,
		-0.674792, 0.586220, 0.448333,
		0.736608, 0.497581, 0.458063,
		33.460209, 38.474930, 27.483553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817238, 38.876469, 27.193521>,  <32.944584, 38.126625, 27.162909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817238, 38.876469, 27.193521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216557, 38.858547, 27.208485>,  <33.456146, 38.847794, 27.217463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216557, 38.858547, 27.208485>,  <32.817238, 38.876469, 27.193521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216557, 38.858547, 27.208485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057450, 0.641040, -0.765355,
		0.010311, 0.766199, 0.642521,
		0.998295, -0.044805, 0.037409,
		33.516045, 38.845104, 27.219707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112221, 39.577877, 27.101242>,  <32.817238, 38.876469, 27.193521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112221, 39.577877, 27.101242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.402359, 39.317677, 27.011154>,  <33.576443, 39.161556, 26.957102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.402359, 39.317677, 27.011154>,  <33.112221, 39.577877, 27.101242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402359, 39.317677, 27.011154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187836, 0.501780, -0.844354,
		0.662267, 0.570141, 0.486150,
		0.725341, -0.650505, -0.225220,
		33.619961, 39.122524, 26.943588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612629, 39.986938, 27.029648>,  <33.112221, 39.577877, 27.101242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612629, 39.986938, 27.029648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757919, 39.646046, 26.879042>,  <33.845093, 39.441509, 26.788677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757919, 39.646046, 26.879042>,  <33.612629, 39.986938, 27.029648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757919, 39.646046, 26.879042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271827, 0.483472, -0.832085,
		0.891165, 0.199890, 0.407271,
		0.363229, -0.852232, -0.376517,
		33.866890, 39.390377, 26.766087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353176, 40.088078, 26.837784>,  <33.612629, 39.986938, 27.029648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353176, 40.088078, 26.837784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232361, 39.787266, 26.603445>,  <34.159870, 39.606777, 26.462841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232361, 39.787266, 26.603445>,  <34.353176, 40.088078, 26.837784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232361, 39.787266, 26.603445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319277, 0.499255, -0.805486,
		0.898239, -0.430337, 0.089312,
		-0.302041, -0.752034, -0.585847,
		34.141750, 39.561657, 26.427691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896214, 40.005623, 26.339947>,  <34.353176, 40.088078, 26.837784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896214, 40.005623, 26.339947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593231, 39.809715, 26.167255>,  <34.411442, 39.692169, 26.063641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593231, 39.809715, 26.167255>,  <34.896214, 40.005623, 26.339947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593231, 39.809715, 26.167255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264531, 0.374327, -0.888764,
		0.596899, -0.787403, -0.153975,
		-0.757453, -0.489771, -0.431728,
		34.365997, 39.662785, 26.037737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189388, 39.583103, 25.866777>,  <34.896214, 40.005623, 26.339947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189388, 39.583103, 25.866777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809418, 39.632168, 25.751818>,  <34.581436, 39.661606, 25.682842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809418, 39.632168, 25.751818>,  <35.189388, 39.583103, 25.866777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809418, 39.632168, 25.751818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312481, 0.369031, -0.875312,
		-0.001311, -0.921287, -0.388882,
		-0.949923, 0.122665, -0.287401,
		34.524441, 39.668968, 25.665598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114868, 39.409111, 25.174656>,  <35.189388, 39.583103, 25.866777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114868, 39.409111, 25.174656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799061, 39.651455, 25.213858>,  <34.609577, 39.796860, 25.237379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799061, 39.651455, 25.213858>,  <35.114868, 39.409111, 25.174656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799061, 39.651455, 25.213858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329459, 0.553111, -0.765196,
		-0.517807, -0.571844, -0.636294,
		-0.789514, 0.605857, 0.098005,
		34.562206, 39.833214, 25.243259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907761, 39.593399, 24.435459>,  <35.114868, 39.409111, 25.174656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907761, 39.593399, 24.435459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703823, 39.864758, 24.647055>,  <34.581459, 40.027573, 24.774012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703823, 39.864758, 24.647055>,  <34.907761, 39.593399, 24.435459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703823, 39.864758, 24.647055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153858, 0.676908, -0.719808,
		-0.846396, -0.285601, -0.449495,
		-0.509845, 0.678401, 0.528990,
		34.550869, 40.068279, 24.805752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763229, 39.983356, 23.856524>,  <34.907761, 39.593399, 24.435459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763229, 39.983356, 23.856524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.661629, 40.213604, 24.167431>,  <34.600670, 40.351753, 24.353975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.661629, 40.213604, 24.167431>,  <34.763229, 39.983356, 23.856524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661629, 40.213604, 24.167431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088695, 0.786377, -0.611347,
		-0.963129, -0.224223, -0.148686,
		-0.254001, 0.575618, 0.777269,
		34.585430, 40.386288, 24.400612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176254, 40.371384, 23.689308>,  <34.763229, 39.983356, 23.856524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176254, 40.371384, 23.689308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.388256, 40.563877, 23.968596>,  <34.515457, 40.679375, 24.136168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.388256, 40.563877, 23.968596>,  <34.176254, 40.371384, 23.689308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388256, 40.563877, 23.968596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003171, 0.822247, -0.569122,
		-0.847990, 0.303851, 0.434267,
		0.530003, 0.481233, 0.698220,
		34.547256, 40.708248, 24.178062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995369, 41.028423, 23.609035>,  <34.176254, 40.371384, 23.689308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995369, 41.028423, 23.609035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315590, 41.053268, 23.847448>,  <34.507725, 41.068176, 23.990496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315590, 41.053268, 23.847448>,  <33.995369, 41.028423, 23.609035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315590, 41.053268, 23.847448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135630, 0.950024, -0.281176,
		-0.583710, 0.305936, 0.752121,
		0.800555, 0.062115, 0.596032,
		34.555756, 41.071903, 24.026258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010159, 41.741009, 23.787294>,  <33.995369, 41.028423, 23.609035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010159, 41.741009, 23.787294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381424, 41.606178, 23.850407>,  <34.604183, 41.525280, 23.888275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381424, 41.606178, 23.850407>,  <34.010159, 41.741009, 23.787294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381424, 41.606178, 23.850407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370204, 0.879740, -0.298338,
		-0.038246, 0.335318, 0.941328,
		0.928163, -0.337074, 0.157783,
		34.659874, 41.505054, 23.897741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278610, 42.165707, 24.257801>,  <34.010159, 41.741009, 23.787294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278610, 42.165707, 24.257801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.546528, 41.990707, 24.017809>,  <34.707279, 41.885708, 23.873814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.546528, 41.990707, 24.017809>,  <34.278610, 42.165707, 24.257801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546528, 41.990707, 24.017809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225154, 0.889620, -0.397343,
		0.707588, 0.131050, 0.694366,
		0.669794, -0.437494, -0.599979,
		34.747467, 41.859459, 23.837814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722786, 42.646790, 24.083424>,  <34.278610, 42.165707, 24.257801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722786, 42.646790, 24.083424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869030, 42.372112, 23.832100>,  <34.956776, 42.207306, 23.681305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869030, 42.372112, 23.832100>,  <34.722786, 42.646790, 24.083424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869030, 42.372112, 23.832100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406484, 0.725071, -0.555916,
		0.837316, -0.052147, 0.544227,
		0.365614, -0.686697, -0.628311,
		34.978714, 42.166103, 23.643606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486065, 42.831997, 23.944910>,  <34.722786, 42.646790, 24.083424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486065, 42.831997, 23.944910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354404, 42.635063, 23.622602>,  <35.275410, 42.516903, 23.429218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354404, 42.635063, 23.622602>,  <35.486065, 42.831997, 23.944910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354404, 42.635063, 23.622602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425543, 0.684416, -0.592020,
		0.842955, -0.537754, -0.015766,
		-0.329152, -0.492337, -0.805769,
		35.255657, 42.487362, 23.380873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979237, 42.895580, 23.477654>,  <35.486065, 42.831997, 23.944910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979237, 42.895580, 23.477654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674480, 42.791912, 23.240215>,  <35.491627, 42.729710, 23.097754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674480, 42.791912, 23.240215>,  <35.979237, 42.895580, 23.477654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674480, 42.791912, 23.240215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312078, 0.656173, -0.687055,
		0.567566, -0.708707, -0.419049,
		-0.761890, -0.259173, -0.593593,
		35.445915, 42.714161, 23.062138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783428, 42.779209, 23.112431>,  <35.979237, 42.895580, 23.477654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783428, 42.779209, 23.112431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.146019, 42.871235, 23.254059>,  <37.363575, 42.926449, 23.339037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.146019, 42.871235, 23.254059>,  <36.783428, 42.779209, 23.112431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146019, 42.871235, 23.254059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087501, -0.717986, 0.690536,
		0.413085, -0.656938, -0.630709,
		0.906479, 0.230063, 0.354072,
		37.417961, 42.940254, 23.360281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281033, 42.122261, 23.065338>,  <36.783428, 42.779209, 23.112431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281033, 42.122261, 23.065338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369602, 42.367645, 23.368559>,  <37.422745, 42.514877, 23.550491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369602, 42.367645, 23.368559>,  <37.281033, 42.122261, 23.065338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369602, 42.367645, 23.368559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162696, -0.743211, 0.648974,
		0.961510, -0.267030, -0.064758,
		0.221424, 0.613459, 0.758050,
		37.436031, 42.551682, 23.595974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732452, 41.702557, 23.606680>,  <37.281033, 42.122261, 23.065338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732452, 41.702557, 23.606680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587883, 42.007812, 23.820965>,  <37.501141, 42.190968, 23.949535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587883, 42.007812, 23.820965>,  <37.732452, 41.702557, 23.606680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587883, 42.007812, 23.820965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229364, -0.629664, 0.742237,
		0.903749, 0.145393, 0.402615,
		-0.361428, 0.763141, 0.535710,
		37.479454, 42.236755, 23.981678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962395, 41.463493, 24.298214>,  <37.732452, 41.702557, 23.606680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962395, 41.463493, 24.298214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729523, 41.786686, 24.334503>,  <37.589798, 41.980602, 24.356277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729523, 41.786686, 24.334503>,  <37.962395, 41.463493, 24.298214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729523, 41.786686, 24.334503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181769, -0.238100, 0.954080,
		0.792481, 0.538956, 0.285484,
		-0.582181, 0.807982, 0.090724,
		37.554867, 42.029079, 24.361721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364349, 41.971008, 24.730494>,  <37.962395, 41.463493, 24.298214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364349, 41.971008, 24.730494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965637, 42.001797, 24.739508>,  <37.726410, 42.020271, 24.744915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965637, 42.001797, 24.739508>,  <38.364349, 41.971008, 24.730494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965637, 42.001797, 24.739508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007000, -0.363363, 0.931621,
		0.079899, 0.928462, 0.362731,
		-0.996778, 0.076975, 0.022533,
		37.666603, 42.024891, 24.746267>
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
