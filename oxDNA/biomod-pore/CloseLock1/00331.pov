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
	<24.227591, 34.725597, 35.384190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.161716, 34.898857, 35.029732>,  <24.122192, 35.002811, 34.817055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.161716, 34.898857, 35.029732>,  <24.227591, 34.725597, 35.384190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.161716, 34.898857, 35.029732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982933, 0.002602, 0.183946,
		0.081982, 0.901318, 0.425330,
		-0.164686, 0.433151, -0.886148,
		24.112310, 35.028801, 34.763885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588083, 34.648960, 34.752975>,  <24.227591, 34.725597, 35.384190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588083, 34.648960, 34.752975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216648, 34.574360, 34.881310>,  <23.993786, 34.529598, 34.958309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216648, 34.574360, 34.881310>,  <24.588083, 34.648960, 34.752975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.216648, 34.574360, 34.881310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039771, 0.809550, 0.585702,
		-0.368969, 0.556637, -0.744323,
		-0.928590, -0.186503, 0.320838,
		23.938070, 34.518410, 34.977562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387556, 35.048374, 34.196823>,  <24.588083, 34.648960, 34.752975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387556, 35.048374, 34.196823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.773851, 35.087029, 34.100483>,  <25.005629, 35.110222, 34.042679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.773851, 35.087029, 34.100483>,  <24.387556, 35.048374, 34.196823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.773851, 35.087029, 34.100483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250192, 0.100187, -0.962999,
		-0.068929, 0.990265, 0.120932,
		0.965739, 0.096635, -0.240850,
		25.063574, 35.116020, 34.028229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.881235, 34.681099, 33.723598>,  <24.387556, 35.048374, 34.196823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.881235, 34.681099, 33.723598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141808, 34.984180, 33.739216>,  <25.298151, 35.166031, 33.748585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141808, 34.984180, 33.739216>,  <24.881235, 34.681099, 33.723598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141808, 34.984180, 33.739216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723850, -0.605257, -0.331217,
		-0.227332, 0.244027, -0.942747,
		0.651430, 0.757704, 0.039044,
		25.337236, 35.211491, 33.750931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257975, 34.831787, 33.018528>,  <24.881235, 34.681099, 33.723598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257975, 34.831787, 33.018528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483175, 34.948463, 33.327835>,  <25.618296, 35.018467, 33.513420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483175, 34.948463, 33.327835>,  <25.257975, 34.831787, 33.018528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483175, 34.948463, 33.327835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695022, -0.673369, -0.252029,
		0.447182, 0.679332, -0.581838,
		0.563003, 0.291687, 0.773270,
		25.652077, 35.035969, 33.559814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917120, 34.713821, 32.778858>,  <25.257975, 34.831787, 33.018528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917120, 34.713821, 32.778858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965389, 34.740433, 33.175041>,  <25.994350, 34.756401, 33.412750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965389, 34.740433, 33.175041>,  <25.917120, 34.713821, 32.778858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965389, 34.740433, 33.175041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727836, -0.684420, -0.042706,
		0.675049, 0.726047, -0.131013,
		0.120674, 0.066528, 0.990460,
		26.001593, 34.760391, 33.472179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571280, 34.595432, 32.806133>,  <25.917120, 34.713821, 32.778858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571280, 34.595432, 32.806133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414095, 34.526077, 33.167358>,  <26.319784, 34.484467, 33.384094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414095, 34.526077, 33.167358>,  <26.571280, 34.595432, 32.806133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414095, 34.526077, 33.167358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464723, -0.884865, 0.032332,
		0.793481, 0.432379, 0.428295,
		-0.392963, -0.173384, 0.903060,
		26.296206, 34.474064, 33.438278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060694, 34.173462, 33.083385>,  <26.571280, 34.595432, 32.806133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060694, 34.173462, 33.083385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753572, 34.145561, 33.338135>,  <26.569300, 34.128819, 33.490986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753572, 34.145561, 33.338135>,  <27.060694, 34.173462, 33.083385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753572, 34.145561, 33.338135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284113, -0.928040, 0.240877,
		0.574244, 0.365891, 0.732371,
		-0.767805, -0.069754, 0.636876,
		26.523232, 34.124634, 33.529198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446978, 33.713932, 33.507595>,  <27.060694, 34.173462, 33.083385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446978, 33.713932, 33.507595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051134, 33.707165, 33.564716>,  <26.813629, 33.703106, 33.598988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051134, 33.707165, 33.564716>,  <27.446978, 33.713932, 33.507595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051134, 33.707165, 33.564716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037753, -0.988784, 0.144502,
		0.138756, 0.148391, 0.979146,
		-0.989607, -0.016915, 0.142802,
		26.754251, 33.702091, 33.607555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265905, 33.394745, 34.120007>,  <27.446978, 33.713932, 33.507595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265905, 33.394745, 34.120007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949942, 33.351883, 33.878490>,  <26.760363, 33.326164, 33.733582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949942, 33.351883, 33.878490>,  <27.265905, 33.394745, 34.120007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949942, 33.351883, 33.878490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082073, -0.994230, 0.069073,
		-0.607707, 0.005007, 0.794145,
		-0.789909, -0.107154, -0.603790,
		26.712969, 33.319736, 33.697353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008951, 32.766380, 34.333416>,  <27.265905, 33.394745, 34.120007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008951, 32.766380, 34.333416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794979, 32.805878, 33.997772>,  <26.666595, 32.829575, 33.796387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794979, 32.805878, 33.997772>,  <27.008951, 32.766380, 34.333416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794979, 32.805878, 33.997772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076470, -0.983413, -0.164473,
		-0.841428, -0.152148, 0.518507,
		-0.534930, 0.098742, -0.839106,
		26.634501, 32.835499, 33.746040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442152, 32.272980, 34.385284>,  <27.008951, 32.766380, 34.333416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442152, 32.272980, 34.385284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496304, 32.373562, 34.001942>,  <26.528795, 32.433910, 33.771935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496304, 32.373562, 34.001942>,  <26.442152, 32.272980, 34.385284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496304, 32.373562, 34.001942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055871, -0.967659, -0.245999,
		-0.989217, -0.020242, -0.145049,
		0.135378, 0.251451, -0.958356,
		26.536917, 32.448997, 33.714436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953608, 31.871166, 33.945084>,  <26.442152, 32.272980, 34.385284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953608, 31.871166, 33.945084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275261, 31.973125, 33.730274>,  <26.468252, 32.034302, 33.601387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275261, 31.973125, 33.730274>,  <25.953608, 31.871166, 33.945084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275261, 31.973125, 33.730274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282345, -0.958769, -0.032303,
		-0.523119, -0.125651, -0.842946,
		0.804132, 0.254900, -0.537027,
		26.516500, 32.049595, 33.569164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061172, 31.255646, 33.457729>,  <25.953608, 31.871166, 33.945084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061172, 31.255646, 33.457729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401760, 31.464727, 33.474598>,  <26.606113, 31.590178, 33.484718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401760, 31.464727, 33.474598>,  <26.061172, 31.255646, 33.457729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401760, 31.464727, 33.474598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520789, -0.852287, 0.048842,
		0.061476, -0.019623, -0.997916,
		0.851469, 0.522706, 0.042176,
		26.657200, 31.621540, 33.487251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494034, 30.861261, 33.005882>,  <26.061172, 31.255646, 33.457729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494034, 30.861261, 33.005882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770596, 31.080387, 33.194290>,  <26.936533, 31.211863, 33.307335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770596, 31.080387, 33.194290>,  <26.494034, 30.861261, 33.005882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770596, 31.080387, 33.194290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619732, -0.784807, 0.003066,
		0.371341, 0.289788, -0.882116,
		0.691403, 0.547814, 0.471022,
		26.978016, 31.244732, 33.335598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076418, 30.696407, 32.698578>,  <26.494034, 30.861261, 33.005882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076418, 30.696407, 32.698578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208847, 30.833696, 33.050167>,  <27.288305, 30.916069, 33.261120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208847, 30.833696, 33.050167>,  <27.076418, 30.696407, 32.698578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208847, 30.833696, 33.050167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664368, -0.746271, 0.041163,
		0.670078, 0.570332, -0.475097,
		0.331075, 0.343222, 0.878970,
		27.308170, 30.936663, 33.313858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779303, 30.688128, 32.635433>,  <27.076418, 30.696407, 32.698578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779303, 30.688128, 32.635433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706507, 30.711929, 33.028034>,  <27.662828, 30.726210, 33.263596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706507, 30.711929, 33.028034>,  <27.779303, 30.688128, 32.635433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706507, 30.711929, 33.028034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596590, -0.786775, 0.158319,
		0.781639, 0.614365, 0.107685,
		-0.181989, 0.059505, 0.981498,
		27.651911, 30.729780, 33.322483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429396, 30.583248, 32.891087>,  <27.779303, 30.688128, 32.635433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429396, 30.583248, 32.891087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185701, 30.498329, 33.196705>,  <28.039486, 30.447378, 33.380074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185701, 30.498329, 33.196705>,  <28.429396, 30.583248, 32.891087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185701, 30.498329, 33.196705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529769, -0.825906, 0.192938,
		0.590068, 0.522311, 0.615639,
		-0.609234, -0.212300, 0.764044,
		28.002932, 30.434639, 33.425919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903454, 30.352083, 33.449516>,  <28.429396, 30.583248, 32.891087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903454, 30.352083, 33.449516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545155, 30.206593, 33.551765>,  <28.330175, 30.119299, 33.613113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545155, 30.206593, 33.551765>,  <28.903454, 30.352083, 33.449516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545155, 30.206593, 33.551765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440579, -0.803109, 0.401131,
		0.059388, 0.471932, 0.879632,
		-0.895747, -0.363725, 0.255618,
		28.276430, 30.097475, 33.628452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956583, 30.056265, 34.107269>,  <28.903454, 30.352083, 33.449516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956583, 30.056265, 34.107269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626896, 29.877501, 33.968166>,  <28.429083, 29.770243, 33.884705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626896, 29.877501, 33.968166>,  <28.956583, 30.056265, 34.107269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626896, 29.877501, 33.968166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211568, -0.812675, 0.542953,
		-0.525263, 0.373938, 0.764375,
		-0.824220, -0.446910, -0.347755,
		28.379629, 29.743427, 33.863838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633820, 29.735912, 34.729450>,  <28.956583, 30.056265, 34.107269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633820, 29.735912, 34.729450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522886, 29.556852, 34.389404>,  <28.456326, 29.449417, 34.185375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522886, 29.556852, 34.389404>,  <28.633820, 29.735912, 34.729450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522886, 29.556852, 34.389404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275262, -0.884753, 0.376090,
		-0.920498, -0.129701, 0.368594,
		-0.277335, -0.447649, -0.850115,
		28.439686, 29.422558, 34.134369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331480, 29.083029, 34.921944>,  <28.633820, 29.735912, 34.729450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331480, 29.083029, 34.921944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402840, 29.034159, 34.531406>,  <28.445656, 29.004837, 34.297085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402840, 29.034159, 34.531406>,  <28.331480, 29.083029, 34.921944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402840, 29.034159, 34.531406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189599, -0.969398, 0.155950,
		-0.965518, -0.212935, -0.149776,
		0.178400, -0.122176, -0.976344,
		28.456360, 28.997505, 34.238503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783676, 28.557297, 34.676025>,  <28.331480, 29.083029, 34.921944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783676, 28.557297, 34.676025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113968, 28.566875, 34.450603>,  <28.312143, 28.572622, 34.315350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113968, 28.566875, 34.450603>,  <27.783676, 28.557297, 34.676025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113968, 28.566875, 34.450603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228967, -0.927313, 0.296082,
		-0.515504, -0.373519, -0.771193,
		0.825730, 0.023946, -0.563558,
		28.361687, 28.574059, 34.281536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840183, 27.998186, 34.271454>,  <27.783676, 28.557297, 34.676025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840183, 27.998186, 34.271454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217630, 28.126404, 34.304516>,  <28.444099, 28.203335, 34.324352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217630, 28.126404, 34.304516>,  <27.840183, 27.998186, 34.271454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217630, 28.126404, 34.304516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271701, -0.892602, 0.359778,
		0.189103, -0.317036, -0.929370,
		0.943620, 0.320545, 0.082655,
		28.500717, 28.222567, 34.329311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318888, 27.473526, 33.990234>,  <27.840183, 27.998186, 34.271454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318888, 27.473526, 33.990234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554148, 27.697828, 34.223347>,  <28.695303, 27.832409, 34.363213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554148, 27.697828, 34.223347>,  <28.318888, 27.473526, 33.990234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554148, 27.697828, 34.223347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390326, -0.827928, 0.402718,
		0.708327, -0.009383, -0.705822,
		0.588148, 0.560757, 0.582781,
		28.730593, 27.866055, 34.398182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063992, 27.269175, 33.916325>,  <28.318888, 27.473526, 33.990234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063992, 27.269175, 33.916325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006609, 27.455439, 34.265629>,  <28.972179, 27.567198, 34.475212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006609, 27.455439, 34.265629>,  <29.063992, 27.269175, 33.916325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006609, 27.455439, 34.265629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224882, -0.843965, 0.486982,
		0.963768, 0.266241, 0.016354,
		-0.143457, 0.465660, 0.873259,
		28.963572, 27.595137, 34.527607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531708, 27.152283, 34.617813>,  <29.063992, 27.269175, 33.916325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531708, 27.152283, 34.617813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155104, 27.251768, 34.708763>,  <28.929140, 27.311459, 34.763332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155104, 27.251768, 34.708763>,  <29.531708, 27.152283, 34.617813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155104, 27.251768, 34.708763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001430, -0.677674, 0.735361,
		0.336977, 0.692026, 0.638394,
		-0.941512, 0.248712, 0.227371,
		28.872650, 27.326382, 34.776974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876730, 27.237911, 35.360283>,  <29.531708, 27.152283, 34.617813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876730, 27.237911, 35.360283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676298, 27.129452, 35.689014>,  <29.556040, 27.064377, 35.886253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676298, 27.129452, 35.689014>,  <29.876730, 27.237911, 35.360283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676298, 27.129452, 35.689014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618771, 0.776168, -0.121188,
		-0.605015, -0.569247, -0.556700,
		-0.501078, -0.271149, 0.821827,
		29.525974, 27.048107, 35.935562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945061, 26.539434, 35.548351>,  <29.876730, 27.237911, 35.360283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945061, 26.539434, 35.548351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995975, 26.677221, 35.176300>,  <30.026524, 26.759893, 34.953068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995975, 26.677221, 35.176300>,  <29.945061, 26.539434, 35.548351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995975, 26.677221, 35.176300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986356, 0.054746, 0.155254,
		0.104401, -0.937201, -0.332798,
		0.127285, 0.344466, -0.930130,
		30.034161, 26.780561, 34.897263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314688, 26.126492, 35.214607>,  <29.945061, 26.539434, 35.548351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314688, 26.126492, 35.214607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393314, 26.470802, 35.026814>,  <30.440491, 26.677389, 34.914135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393314, 26.470802, 35.026814>,  <30.314688, 26.126492, 35.214607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393314, 26.470802, 35.026814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958687, -0.068316, 0.276136,
		0.205619, -0.504373, -0.838647,
		0.196568, 0.860779, -0.469489,
		30.452286, 26.729036, 34.885967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647604, 26.787981, 35.383972>,  <30.314688, 26.126492, 35.214607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647604, 26.787981, 35.383972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919159, 26.814531, 35.676468>,  <31.082092, 26.830462, 35.851967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919159, 26.814531, 35.676468>,  <30.647604, 26.787981, 35.383972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919159, 26.814531, 35.676468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360278, 0.897887, 0.252980,
		-0.639777, -0.435194, 0.633476,
		0.678885, 0.066377, 0.731238,
		31.122824, 26.834444, 35.895840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468529, 27.063877, 36.048634>,  <30.647604, 26.787981, 35.383972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468529, 27.063877, 36.048634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849915, 27.182009, 36.024330>,  <31.078745, 27.252888, 36.009750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849915, 27.182009, 36.024330>,  <30.468529, 27.063877, 36.048634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849915, 27.182009, 36.024330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279498, 0.941301, 0.189297,
		0.113093, -0.163506, 0.980038,
		0.953462, 0.295327, -0.060755,
		31.135954, 27.270607, 36.006104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643454, 27.467850, 36.555824>,  <30.468529, 27.063877, 36.048634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643454, 27.467850, 36.555824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905067, 27.565559, 36.269447>,  <31.062037, 27.624186, 36.097622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905067, 27.565559, 36.269447>,  <30.643454, 27.467850, 36.555824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905067, 27.565559, 36.269447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295665, 0.953690, 0.055293,
		0.696289, 0.175514, 0.695971,
		0.654036, 0.244274, -0.715937,
		31.101278, 27.638842, 36.054665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098005, 27.929996, 36.858902>,  <30.643454, 27.467850, 36.555824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098005, 27.929996, 36.858902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077131, 27.953825, 36.460159>,  <31.064608, 27.968122, 36.220913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077131, 27.953825, 36.460159>,  <31.098005, 27.929996, 36.858902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077131, 27.953825, 36.460159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344027, 0.936044, 0.073946,
		0.937509, 0.346805, -0.028353,
		-0.052185, 0.059570, -0.996859,
		31.061476, 27.971697, 36.161102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265280, 28.611019, 36.705151>,  <31.098005, 27.929996, 36.858902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265280, 28.611019, 36.705151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096626, 28.476484, 36.368317>,  <30.995434, 28.395763, 36.166218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096626, 28.476484, 36.368317>,  <31.265280, 28.611019, 36.705151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096626, 28.476484, 36.368317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362403, 0.913775, -0.183518,
		0.831198, 0.227796, -0.507168,
		-0.421633, -0.336339, -0.842082,
		30.970137, 28.375582, 36.115692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238783, 29.197088, 36.072865>,  <31.265280, 28.611019, 36.705151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238783, 29.197088, 36.072865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958782, 28.914286, 36.032589>,  <30.790783, 28.744604, 36.008423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958782, 28.914286, 36.032589>,  <31.238783, 29.197088, 36.072865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958782, 28.914286, 36.032589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655067, 0.691831, -0.303738,
		0.284406, -0.146658, -0.947420,
		-0.700001, -0.707009, -0.100690,
		30.748781, 28.702183, 36.002380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901606, 29.238089, 35.375839>,  <31.238783, 29.197088, 36.072865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901606, 29.238089, 35.375839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654596, 29.084044, 35.650169>,  <30.506392, 28.991617, 35.814766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654596, 29.084044, 35.650169>,  <30.901606, 29.238089, 35.375839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654596, 29.084044, 35.650169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675285, 0.706666, -0.211219,
		-0.403304, -0.593559, -0.696444,
		-0.617523, -0.385113, 0.685823,
		30.469339, 28.968510, 35.855915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232309, 29.274479, 35.075462>,  <30.901606, 29.238089, 35.375839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232309, 29.274479, 35.075462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166395, 29.248262, 35.469124>,  <30.126846, 29.232533, 35.705318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166395, 29.248262, 35.469124>,  <30.232309, 29.274479, 35.075462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166395, 29.248262, 35.469124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530392, 0.847134, -0.032392,
		-0.831583, -0.527322, -0.174356,
		-0.164784, -0.065540, 0.984150,
		30.116961, 29.228600, 35.764370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617540, 29.480549, 35.143173>,  <30.232309, 29.274479, 35.075462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617540, 29.480549, 35.143173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732098, 29.480259, 35.526417>,  <29.800831, 29.480085, 35.756363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732098, 29.480259, 35.526417>,  <29.617540, 29.480549, 35.143173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732098, 29.480259, 35.526417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479910, 0.865402, 0.144107,
		-0.829257, -0.501078, 0.247496,
		0.286392, -0.000726, 0.958112,
		29.818016, 29.480042, 35.813850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965498, 29.587925, 35.557339>,  <29.617540, 29.480549, 35.143173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965498, 29.587925, 35.557339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285223, 29.739624, 35.743786>,  <29.477058, 29.830643, 35.855656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285223, 29.739624, 35.743786>,  <28.965498, 29.587925, 35.557339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285223, 29.739624, 35.743786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491371, 0.859014, 0.143700,
		-0.345908, -0.343900, 0.872972,
		0.799314, 0.379246, 0.466122,
		29.525017, 29.853397, 35.883621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725641, 30.030966, 36.048016>,  <28.965498, 29.587925, 35.557339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725641, 30.030966, 36.048016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096502, 30.179026, 36.024776>,  <29.319019, 30.267860, 36.010834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096502, 30.179026, 36.024776>,  <28.725641, 30.030966, 36.048016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096502, 30.179026, 36.024776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368141, 0.928798, 0.042492,
		0.069686, -0.018010, 0.997406,
		0.927155, 0.370148, -0.058094,
		29.374649, 30.290070, 36.007347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831701, 30.545221, 36.576401>,  <28.725641, 30.030966, 36.048016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831701, 30.545221, 36.576401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122332, 30.638611, 36.317921>,  <29.296709, 30.694645, 36.162830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122332, 30.638611, 36.317921>,  <28.831701, 30.545221, 36.576401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122332, 30.638611, 36.317921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370005, 0.925434, -0.081665,
		0.578951, 0.298434, 0.758783,
		0.726575, 0.233474, -0.646203,
		29.340303, 30.708652, 36.124062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897093, 31.255445, 36.645500>,  <28.831701, 30.545221, 36.576401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897093, 31.255445, 36.645500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088484, 31.186056, 36.301182>,  <29.203320, 31.144423, 36.094593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088484, 31.186056, 36.301182>,  <28.897093, 31.255445, 36.645500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088484, 31.186056, 36.301182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140563, 0.952519, -0.270093,
		0.866776, 0.250230, 0.431376,
		0.478479, -0.173475, -0.860793,
		29.232027, 31.134014, 36.042942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276564, 31.856724, 36.557468>,  <28.897093, 31.255445, 36.645500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276564, 31.856724, 36.557468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292366, 31.660591, 36.209213>,  <29.301847, 31.542912, 36.000259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292366, 31.660591, 36.209213>,  <29.276564, 31.856724, 36.557468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292366, 31.660591, 36.209213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079315, 0.867032, -0.491899,
		0.996066, 0.088488, -0.004638,
		0.039506, -0.490332, -0.870640,
		29.304218, 31.513491, 35.948021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868704, 32.186237, 36.153416>,  <29.276564, 31.856724, 36.557468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868704, 32.186237, 36.153416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580437, 32.011555, 35.938034>,  <29.407476, 31.906746, 35.808807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580437, 32.011555, 35.938034>,  <29.868704, 32.186237, 36.153416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580437, 32.011555, 35.938034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204588, 0.876043, -0.436683,
		0.662406, -0.204543, -0.720680,
		-0.720668, -0.436704, -0.538449,
		29.364237, 31.880543, 35.776501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940023, 32.299618, 35.533356>,  <29.868704, 32.186237, 36.153416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940023, 32.299618, 35.533356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555738, 32.194427, 35.497856>,  <29.325167, 32.131313, 35.476555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555738, 32.194427, 35.497856>,  <29.940023, 32.299618, 35.533356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555738, 32.194427, 35.497856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187904, 0.851604, -0.489349,
		0.204265, -0.453448, -0.867561,
		-0.960712, -0.262975, -0.088748,
		29.267525, 32.115536, 35.471233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799416, 32.758495, 34.988575>,  <29.940023, 32.299618, 35.533356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799416, 32.758495, 34.988575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436560, 32.616222, 35.078548>,  <29.218847, 32.530861, 35.132530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436560, 32.616222, 35.078548>,  <29.799416, 32.758495, 34.988575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436560, 32.616222, 35.078548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418076, 0.822745, -0.385102,
		-0.048087, -0.443378, -0.895044,
		-0.907139, -0.355678, 0.224929,
		29.164417, 32.509518, 35.146027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307959, 32.744267, 34.315857>,  <29.799416, 32.758495, 34.988575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307959, 32.744267, 34.315857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112125, 32.778076, 34.662998>,  <28.994625, 32.798363, 34.871281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112125, 32.778076, 34.662998>,  <29.307959, 32.744267, 34.315857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112125, 32.778076, 34.662998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538895, 0.753119, -0.377364,
		-0.685491, -0.652431, -0.323165,
		-0.489585, 0.084528, 0.867848,
		28.965250, 32.803436, 34.923351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681242, 33.114391, 34.147377>,  <29.307959, 32.744267, 34.315857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681242, 33.114391, 34.147377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625370, 33.157669, 34.541084>,  <28.591846, 33.183636, 34.777309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625370, 33.157669, 34.541084>,  <28.681242, 33.114391, 34.147377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625370, 33.157669, 34.541084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487134, 0.857899, -0.163431,
		-0.862085, -0.502299, -0.067127,
		-0.139679, 0.108191, 0.984268,
		28.583466, 33.190128, 34.836365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992077, 33.405033, 34.270626>,  <28.681242, 33.114391, 34.147377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992077, 33.405033, 34.270626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217184, 33.500927, 34.587063>,  <28.352249, 33.558464, 34.776924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217184, 33.500927, 34.587063>,  <27.992077, 33.405033, 34.270626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217184, 33.500927, 34.587063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244041, 0.962548, -0.118088,
		-0.789770, -0.126601, 0.600196,
		0.562768, 0.239735, 0.791088,
		28.386015, 33.572849, 34.824390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560822, 33.812527, 34.780346>,  <27.992077, 33.405033, 34.270626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560822, 33.812527, 34.780346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935741, 33.922745, 34.865711>,  <28.160694, 33.988876, 34.916931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935741, 33.922745, 34.865711>,  <27.560822, 33.812527, 34.780346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935741, 33.922745, 34.865711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300005, 0.949526, 0.091637,
		-0.177388, -0.149915, 0.972656,
		0.937300, 0.275546, 0.213410,
		28.216930, 34.005409, 34.929733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496908, 34.300491, 35.219002>,  <27.560822, 33.812527, 34.780346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496908, 34.300491, 35.219002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888165, 34.357910, 35.158821>,  <28.122919, 34.392361, 35.122715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888165, 34.357910, 35.158821>,  <27.496908, 34.300491, 35.219002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888165, 34.357910, 35.158821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120315, 0.980782, 0.153594,
		0.169606, -0.132136, 0.976613,
		0.978140, 0.143552, -0.150449,
		28.181606, 34.400974, 35.113686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812807, 34.651405, 35.774216>,  <27.496908, 34.300491, 35.219002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812807, 34.651405, 35.774216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058903, 34.728157, 35.468361>,  <28.206560, 34.774208, 35.284847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058903, 34.728157, 35.468361>,  <27.812807, 34.651405, 35.774216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058903, 34.728157, 35.468361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052976, 0.977798, 0.202741,
		0.786557, -0.084228, 0.611746,
		0.615241, 0.191875, -0.764632,
		28.243475, 34.785721, 35.238972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283590, 35.037746, 36.059029>,  <27.812807, 34.651405, 35.774216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283590, 35.037746, 36.059029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282093, 35.118042, 35.667175>,  <28.281195, 35.166218, 35.432064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282093, 35.118042, 35.667175>,  <28.283590, 35.037746, 36.059029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282093, 35.118042, 35.667175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005344, 0.979626, 0.200758,
		0.999979, 0.005986, -0.002595,
		-0.003744, 0.200740, -0.979638,
		28.280970, 35.178265, 35.373283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456947, 35.772915, 35.944199>,  <28.283590, 35.037746, 36.059029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456947, 35.772915, 35.944199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356705, 35.698780, 35.564125>,  <28.296558, 35.654301, 35.336082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356705, 35.698780, 35.564125>,  <28.456947, 35.772915, 35.944199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356705, 35.698780, 35.564125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257179, 0.958981, -0.119223,
		0.933303, 0.214489, -0.287993,
		-0.250608, -0.185338, -0.950182,
		28.281523, 35.643177, 35.279072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725489, 36.294228, 35.402649>,  <28.456947, 35.772915, 35.944199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725489, 36.294228, 35.402649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378609, 36.155701, 35.259521>,  <28.170481, 36.072586, 35.173645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378609, 36.155701, 35.259521>,  <28.725489, 36.294228, 35.402649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378609, 36.155701, 35.259521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334994, 0.937382, -0.095361,
		0.368434, 0.037169, -0.928910,
		-0.867200, -0.346314, -0.357815,
		28.118448, 36.051807, 35.152176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730772, 36.658737, 34.823170>,  <28.725489, 36.294228, 35.402649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730772, 36.658737, 34.823170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358004, 36.552788, 34.922253>,  <28.134342, 36.489220, 34.981705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358004, 36.552788, 34.922253>,  <28.730772, 36.658737, 34.823170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358004, 36.552788, 34.922253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323743, 0.915434, -0.239105,
		-0.163430, -0.303023, -0.938865,
		-0.931923, -0.264874, 0.247711,
		28.078426, 36.473324, 34.996567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609444, 36.624290, 33.992779>,  <28.730772, 36.658737, 34.823170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609444, 36.624290, 33.992779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950954, 36.416607, 33.977329>,  <29.155861, 36.291996, 33.968060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950954, 36.416607, 33.977329>,  <28.609444, 36.624290, 33.992779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950954, 36.416607, 33.977329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041979, 0.005300, -0.999104,
		0.518948, 0.854632, -0.017271,
		0.853775, -0.519208, -0.038627,
		29.207087, 36.260845, 33.965740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004959, 36.959255, 33.644703>,  <28.609444, 36.624290, 33.992779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004959, 36.959255, 33.644703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145679, 36.585552, 33.621361>,  <29.230112, 36.361332, 33.607353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145679, 36.585552, 33.621361>,  <29.004959, 36.959255, 33.644703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145679, 36.585552, 33.621361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026857, 0.052244, -0.998273,
		0.935689, 0.352762, -0.006712,
		0.351802, -0.934254, -0.058358,
		29.251221, 36.305275, 33.603855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546448, 37.153145, 34.036839>,  <29.004959, 36.959255, 33.644703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546448, 37.153145, 34.036839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803242, 36.860920, 33.943775>,  <29.957317, 36.685585, 33.887936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803242, 36.860920, 33.943775>,  <29.546448, 37.153145, 34.036839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803242, 36.860920, 33.943775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103202, 0.218350, -0.970398,
		0.759739, 0.646992, 0.064782,
		0.641985, -0.730564, -0.232660,
		29.995838, 36.641750, 33.873978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879972, 37.424805, 33.540615>,  <29.546448, 37.153145, 34.036839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879972, 37.424805, 33.540615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927717, 37.034462, 33.467457>,  <29.956364, 36.800255, 33.423561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927717, 37.034462, 33.467457>,  <29.879972, 37.424805, 33.540615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927717, 37.034462, 33.467457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110023, 0.170076, -0.979270,
		0.986736, 0.137009, -0.087066,
		0.119360, -0.975860, -0.182894,
		29.963526, 36.741703, 33.412590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381611, 37.308987, 32.967415>,  <29.879972, 37.424805, 33.540615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381611, 37.308987, 32.967415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144480, 36.987267, 32.951096>,  <30.002201, 36.794235, 32.941303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144480, 36.987267, 32.951096>,  <30.381611, 37.308987, 32.967415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144480, 36.987267, 32.951096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018806, 0.064474, -0.997742,
		0.805111, -0.590720, -0.053347,
		-0.592826, -0.804297, -0.040800,
		29.966633, 36.745979, 32.938854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652786, 36.753693, 32.510754>,  <30.381611, 37.308987, 32.967415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652786, 36.753693, 32.510754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253527, 36.729401, 32.512131>,  <30.013971, 36.714825, 32.512959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253527, 36.729401, 32.512131>,  <30.652786, 36.753693, 32.510754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253527, 36.729401, 32.512131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002726, -0.101252, -0.994857,
		0.060765, -0.993006, 0.101230,
		-0.998148, -0.060729, 0.003446,
		29.954082, 36.711182, 32.513165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339682, 36.359150, 32.440044>,  <30.652786, 36.753693, 32.510754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339682, 36.359150, 32.440044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513912, 36.035236, 32.597282>,  <31.618450, 35.840889, 32.691624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513912, 36.035236, 32.597282>,  <31.339682, 36.359150, 32.440044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513912, 36.035236, 32.597282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035931, 0.451993, 0.891298,
		-0.899434, -0.374105, 0.225974,
		0.435578, -0.809783, 0.393096,
		31.644585, 35.792301, 32.715210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017845, 36.056599, 33.119473>,  <31.339682, 36.359150, 32.440044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017845, 36.056599, 33.119473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405855, 35.959396, 33.119232>,  <31.638660, 35.901073, 33.119087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405855, 35.959396, 33.119232>,  <31.017845, 36.056599, 33.119473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405855, 35.959396, 33.119232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076018, 0.301103, 0.950557,
		-0.230815, -0.922108, 0.310550,
		0.970024, -0.243011, -0.000598,
		31.696863, 35.886494, 33.119053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118614, 36.107384, 33.743408>,  <31.017845, 36.056599, 33.119473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118614, 36.107384, 33.743408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496637, 36.031769, 33.636726>,  <31.723452, 35.986401, 33.572716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496637, 36.031769, 33.636726>,  <31.118614, 36.107384, 33.743408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496637, 36.031769, 33.636726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289101, 0.102424, 0.951804,
		-0.152610, -0.976613, 0.151448,
		0.945056, -0.189039, -0.266709,
		31.780153, 35.975056, 33.556713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428471, 35.698643, 34.291958>,  <31.118614, 36.107384, 33.743408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428471, 35.698643, 34.291958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726891, 35.886730, 34.103363>,  <31.905943, 35.999584, 33.990208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726891, 35.886730, 34.103363>,  <31.428471, 35.698643, 34.291958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726891, 35.886730, 34.103363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404999, 0.241612, 0.881816,
		0.528567, -0.848830, -0.010185,
		0.746052, 0.470224, -0.471483,
		31.950706, 36.027798, 33.961918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074451, 35.460861, 34.617920>,  <31.428471, 35.698643, 34.291958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074451, 35.460861, 34.617920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164738, 35.809219, 34.443295>,  <32.218910, 36.018234, 34.338520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164738, 35.809219, 34.443295>,  <32.074451, 35.460861, 34.617920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164738, 35.809219, 34.443295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560845, 0.250249, 0.789195,
		0.796559, -0.422976, -0.431955,
		0.225715, 0.870900, -0.436562,
		32.232452, 36.070488, 34.312325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826565, 35.523464, 34.479198>,  <32.074451, 35.460861, 34.617920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826565, 35.523464, 34.479198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689152, 35.896389, 34.524406>,  <32.606705, 36.120144, 34.551529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689152, 35.896389, 34.524406>,  <32.826565, 35.523464, 34.479198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689152, 35.896389, 34.524406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690445, 0.169152, 0.703330,
		0.636608, 0.319650, -0.701822,
		-0.343534, 0.932315, 0.113017,
		32.586090, 36.176083, 34.558311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444355, 35.849476, 34.582020>,  <32.826565, 35.523464, 34.479198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444355, 35.849476, 34.582020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168819, 36.122021, 34.681015>,  <33.003498, 36.285549, 34.740414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168819, 36.122021, 34.681015>,  <33.444355, 35.849476, 34.582020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168819, 36.122021, 34.681015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587508, 0.324723, 0.741208,
		0.424665, 0.655973, -0.623986,
		-0.688835, 0.681362, 0.247491,
		32.962170, 36.326431, 34.755260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731590, 36.625137, 34.654541>,  <33.444355, 35.849476, 34.582020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731590, 36.625137, 34.654541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395691, 36.627918, 34.871716>,  <33.194153, 36.629585, 35.002022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395691, 36.627918, 34.871716>,  <33.731590, 36.625137, 34.654541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395691, 36.627918, 34.871716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531913, 0.211400, 0.819987,
		-0.109076, 0.977375, -0.181219,
		-0.839744, 0.006952, 0.542937,
		33.143768, 36.630005, 35.034595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777451, 37.243774, 35.070045>,  <33.731590, 36.625137, 34.654541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777451, 37.243774, 35.070045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521832, 37.006496, 35.265896>,  <33.368462, 36.864128, 35.383408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521832, 37.006496, 35.265896>,  <33.777451, 37.243774, 35.070045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521832, 37.006496, 35.265896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506729, 0.154216, 0.848200,
		-0.578656, 0.790151, 0.202036,
		-0.639049, -0.593194, 0.489630,
		33.330116, 36.828537, 35.412785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468094, 37.700535, 35.659058>,  <33.777451, 37.243774, 35.070045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468094, 37.700535, 35.659058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414383, 37.320404, 35.771374>,  <33.382156, 37.092323, 35.838764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414383, 37.320404, 35.771374>,  <33.468094, 37.700535, 35.659058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414383, 37.320404, 35.771374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337969, 0.222445, 0.914492,
		-0.931529, 0.217690, 0.291314,
		-0.134275, -0.950331, 0.280787,
		33.374100, 37.035305, 35.855610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230804, 37.745029, 36.343269>,  <33.468094, 37.700535, 35.659058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230804, 37.745029, 36.343269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340424, 37.361462, 36.313938>,  <33.406193, 37.131321, 36.296341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340424, 37.361462, 36.313938>,  <33.230804, 37.745029, 36.343269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340424, 37.361462, 36.313938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514498, 0.081765, 0.853584,
		-0.812521, -0.271647, 0.515769,
		0.274046, -0.958917, -0.073326,
		33.422638, 37.073788, 36.291939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117527, 37.404644, 37.028584>,  <33.230804, 37.745029, 36.343269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117527, 37.404644, 37.028584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392296, 37.196125, 36.826046>,  <33.557156, 37.071014, 36.704521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392296, 37.196125, 36.826046>,  <33.117527, 37.404644, 37.028584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392296, 37.196125, 36.826046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540981, -0.098443, 0.835254,
		-0.485261, -0.847679, 0.214389,
		0.686922, -0.521296, -0.506348,
		33.598373, 37.039738, 36.674141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294502, 36.944885, 37.463646>,  <33.117527, 37.404644, 37.028584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294502, 36.944885, 37.463646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605373, 36.932076, 37.212261>,  <33.791897, 36.924389, 37.061432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605373, 36.932076, 37.212261>,  <33.294502, 36.944885, 37.463646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605373, 36.932076, 37.212261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626397, -0.056050, 0.777486,
		-0.060169, -0.997912, -0.023464,
		0.777179, -0.032083, -0.628462,
		33.838528, 36.922470, 37.023724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761391, 36.353180, 37.659691>,  <33.294502, 36.944885, 37.463646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761391, 36.353180, 37.659691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981857, 36.616791, 37.454987>,  <34.114136, 36.774960, 37.332165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981857, 36.616791, 37.454987>,  <33.761391, 36.353180, 37.659691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981857, 36.616791, 37.454987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700012, -0.031425, 0.713440,
		0.454096, -0.751460, -0.478649,
		0.551163, 0.659030, -0.511761,
		34.147205, 36.814499, 37.301456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435547, 36.023281, 37.581917>,  <33.761391, 36.353180, 37.659691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435547, 36.023281, 37.581917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484715, 36.419594, 37.559124>,  <34.514217, 36.657379, 37.545448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484715, 36.419594, 37.559124>,  <34.435547, 36.023281, 37.581917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484715, 36.419594, 37.559124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651950, -0.037327, 0.757342,
		0.748232, -0.130246, -0.650527,
		0.122922, 0.990779, -0.056985,
		34.521591, 36.716827, 37.542030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175304, 36.065296, 37.679531>,  <34.435547, 36.023281, 37.581917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175304, 36.065296, 37.679531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027035, 36.433147, 37.731510>,  <34.938072, 36.653858, 37.762699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027035, 36.433147, 37.731510>,  <35.175304, 36.065296, 37.679531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027035, 36.433147, 37.731510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577696, 0.118736, 0.807570,
		0.727235, 0.374413, -0.575277,
		-0.370671, 0.919628, 0.129948,
		34.915833, 36.709038, 37.770496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746799, 36.423527, 37.959301>,  <35.175304, 36.065296, 37.679531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746799, 36.423527, 37.959301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423752, 36.644810, 38.040989>,  <35.229923, 36.777580, 38.090000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423752, 36.644810, 38.040989>,  <35.746799, 36.423527, 37.959301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423752, 36.644810, 38.040989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428242, 0.312124, 0.848049,
		0.405405, 0.772359, -0.488986,
		-0.807623, 0.553208, 0.204220,
		35.181465, 36.810772, 38.102257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015556, 37.044136, 38.074512>,  <35.746799, 36.423527, 37.959301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015556, 37.044136, 38.074512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652481, 37.033092, 38.242008>,  <35.434635, 37.026466, 38.342506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652481, 37.033092, 38.242008>,  <36.015556, 37.044136, 38.074512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652481, 37.033092, 38.242008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377658, 0.381315, 0.843785,
		-0.182968, 0.924033, -0.335687,
		-0.907688, -0.027611, 0.418737,
		35.380177, 37.024811, 38.367630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031612, 37.556091, 38.616623>,  <36.015556, 37.044136, 38.074512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031612, 37.556091, 38.616623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704052, 37.354004, 38.725552>,  <35.507515, 37.232750, 38.790909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704052, 37.354004, 38.725552>,  <36.031612, 37.556091, 38.616623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704052, 37.354004, 38.725552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205423, 0.185041, 0.961021,
		-0.535915, 0.842921, -0.047747,
		-0.818900, -0.505217, 0.272321,
		35.458382, 37.202438, 38.807247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764370, 37.964275, 39.138767>,  <36.031612, 37.556091, 38.616623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764370, 37.964275, 39.138767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595676, 37.606266, 39.196838>,  <35.494461, 37.391460, 39.231682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595676, 37.606266, 39.196838>,  <35.764370, 37.964275, 39.138767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595676, 37.606266, 39.196838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115995, 0.105543, 0.987626,
		-0.899268, 0.433358, 0.059306,
		-0.421737, -0.895020, 0.145179,
		35.469154, 37.337761, 39.240391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425652, 37.996071, 39.716454>,  <35.764370, 37.964275, 39.138767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425652, 37.996071, 39.716454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422688, 37.596149, 39.709003>,  <35.420910, 37.356197, 39.704533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422688, 37.596149, 39.709003>,  <35.425652, 37.996071, 39.716454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422688, 37.596149, 39.709003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009587, -0.018554, 0.999782,
		-0.999927, 0.007587, -0.009448,
		-0.007411, -0.999799, -0.018626,
		35.420464, 37.296211, 39.703415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788895, 37.696365, 40.170292>,  <35.425652, 37.996071, 39.716454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788895, 37.696365, 40.170292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072842, 37.417194, 40.132359>,  <35.243210, 37.249691, 40.109600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072842, 37.417194, 40.132359>,  <34.788895, 37.696365, 40.170292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072842, 37.417194, 40.132359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127151, -0.259406, 0.957362,
		-0.692767, -0.667539, -0.272885,
		0.709864, -0.697926, -0.094830,
		35.285801, 37.207817, 40.103909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606850, 37.151012, 40.520855>,  <34.788895, 37.696365, 40.170292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606850, 37.151012, 40.520855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004292, 37.108273, 40.506290>,  <35.242756, 37.082626, 40.497551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004292, 37.108273, 40.506290>,  <34.606850, 37.151012, 40.520855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004292, 37.108273, 40.506290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008432, -0.251397, 0.967847,
		-0.112568, -0.961968, -0.248889,
		0.993608, -0.106850, -0.036410,
		35.302376, 37.076218, 40.495369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660851, 37.077805, 41.169312>,  <34.606850, 37.151012, 40.520855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660851, 37.077805, 41.169312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037601, 37.061993, 41.035862>,  <35.263653, 37.052505, 40.955791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037601, 37.061993, 41.035862>,  <34.660851, 37.077805, 41.169312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037601, 37.061993, 41.035862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320231, -0.194645, 0.927128,
		-0.101584, -0.980077, -0.170674,
		0.941878, -0.039526, -0.333624,
		35.320164, 37.050133, 40.935776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956116, 36.455200, 41.433113>,  <34.660851, 37.077805, 41.169312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956116, 36.455200, 41.433113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278294, 36.682072, 41.364342>,  <35.471600, 36.818195, 41.323078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278294, 36.682072, 41.364342>,  <34.956116, 36.455200, 41.433113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278294, 36.682072, 41.364342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285468, -0.117048, 0.951214,
		0.519386, -0.815233, -0.256188,
		0.805447, 0.567181, -0.171930,
		35.519928, 36.852226, 41.312763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562481, 36.108677, 41.720089>,  <34.956116, 36.455200, 41.433113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562481, 36.108677, 41.720089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683907, 36.488804, 41.692501>,  <35.756760, 36.716881, 41.675949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683907, 36.488804, 41.692501>,  <35.562481, 36.108677, 41.720089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683907, 36.488804, 41.692501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311706, -0.030647, 0.949684,
		0.900383, -0.309784, -0.305522,
		0.303560, 0.950313, -0.068968,
		35.774975, 36.773899, 41.671810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227161, 36.153290, 42.152752>,  <35.562481, 36.108677, 41.720089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227161, 36.153290, 42.152752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092030, 36.526573, 42.103775>,  <36.010952, 36.750546, 42.074390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092030, 36.526573, 42.103775>,  <36.227161, 36.153290, 42.152752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092030, 36.526573, 42.103775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242666, 0.212050, 0.946651,
		0.909388, 0.290092, -0.298094,
		-0.337827, 0.933210, -0.122440,
		35.990681, 36.806538, 42.067043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787472, 36.633949, 42.319744>,  <36.227161, 36.153290, 42.152752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787472, 36.633949, 42.319744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447178, 36.839783, 42.362576>,  <36.243004, 36.963284, 42.388275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447178, 36.839783, 42.362576>,  <36.787472, 36.633949, 42.319744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447178, 36.839783, 42.362576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362211, 0.426353, 0.828870,
		0.380869, 0.743929, -0.549098,
		-0.850730, 0.514580, 0.107074,
		36.191959, 36.994156, 42.394699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054573, 37.219444, 42.559204>,  <36.787472, 36.633949, 42.319744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054573, 37.219444, 42.559204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667442, 37.189930, 42.655422>,  <36.435162, 37.172222, 42.713154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667442, 37.189930, 42.655422>,  <37.054573, 37.219444, 42.559204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667442, 37.189930, 42.655422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223271, 0.188884, 0.956281,
		-0.115998, 0.979223, -0.166333,
		-0.967830, -0.073790, 0.240542,
		36.377094, 37.167793, 42.727585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924332, 37.750641, 43.078304>,  <37.054573, 37.219444, 42.559204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924332, 37.750641, 43.078304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595661, 37.524673, 43.108547>,  <36.398460, 37.389091, 43.126694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595661, 37.524673, 43.108547>,  <36.924332, 37.750641, 43.078304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595661, 37.524673, 43.108547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037895, 0.186502, 0.981723,
		-0.568692, 0.803795, -0.174652,
		-0.821677, -0.564917, 0.075603,
		36.349159, 37.355198, 43.131229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432983, 38.124901, 43.436787>,  <36.924332, 37.750641, 43.078304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432983, 38.124901, 43.436787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347942, 37.738586, 43.496197>,  <36.296917, 37.506798, 43.531841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347942, 37.738586, 43.496197>,  <36.432983, 38.124901, 43.436787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347942, 37.738586, 43.496197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133843, 0.179351, 0.974638,
		-0.967928, 0.187334, -0.167394,
		-0.212605, -0.965784, 0.148526,
		36.284161, 37.448853, 43.540756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073910, 38.230457, 44.035416>,  <36.432983, 38.124901, 43.436787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073910, 38.230457, 44.035416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124554, 37.835693, 43.995480>,  <36.154942, 37.598835, 43.971516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124554, 37.835693, 43.995480>,  <36.073910, 38.230457, 44.035416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124554, 37.835693, 43.995480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042889, -0.106006, 0.993440,
		-0.991024, -0.121502, -0.055750,
		0.126614, -0.986914, -0.099844,
		36.162537, 37.539619, 43.965527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641373, 37.871334, 44.542713>,  <36.073910, 38.230457, 44.035416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641373, 37.871334, 44.542713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942429, 37.626205, 44.446396>,  <36.123062, 37.479130, 44.388603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942429, 37.626205, 44.446396>,  <35.641373, 37.871334, 44.542713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942429, 37.626205, 44.446396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197912, -0.138240, 0.970423,
		-0.627985, -0.778034, 0.017240,
		0.752639, -0.612823, -0.240795,
		36.168221, 37.442360, 44.374157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562199, 37.269737, 44.954872>,  <35.641373, 37.871334, 44.542713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562199, 37.269737, 44.954872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949024, 37.292149, 44.855553>,  <36.181118, 37.305595, 44.795963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949024, 37.292149, 44.855553>,  <35.562199, 37.269737, 44.954872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949024, 37.292149, 44.855553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253975, -0.147510, 0.955896,
		0.016928, -0.987473, -0.156880,
		0.967063, 0.056025, -0.248297,
		36.239143, 37.308956, 44.781063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835056, 36.820698, 45.387081>,  <35.562199, 37.269737, 44.954872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835056, 36.820698, 45.387081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159161, 37.021557, 45.266197>,  <36.353622, 37.142071, 45.193665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159161, 37.021557, 45.266197>,  <35.835056, 36.820698, 45.387081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159161, 37.021557, 45.266197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336815, 0.023029, 0.941289,
		0.479623, -0.864477, -0.150470,
		0.810258, 0.502145, -0.302214,
		36.402237, 37.172199, 45.175533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521595, 36.488361, 45.561954>,  <35.835056, 36.820698, 45.387081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521595, 36.488361, 45.561954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591202, 36.880981, 45.530281>,  <36.632965, 37.116554, 45.511276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591202, 36.880981, 45.530281>,  <36.521595, 36.488361, 45.561954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591202, 36.880981, 45.530281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389318, 0.005281, 0.921088,
		0.904517, -0.191110, -0.381218,
		0.174016, 0.981554, -0.079179,
		36.643406, 37.175449, 45.506527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171398, 36.585457, 45.791409>,  <36.521595, 36.488361, 45.561954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171398, 36.585457, 45.791409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025841, 36.957600, 45.809334>,  <36.938507, 37.180885, 45.820087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025841, 36.957600, 45.809334>,  <37.171398, 36.585457, 45.791409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025841, 36.957600, 45.809334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389834, 0.108428, 0.914480,
		0.845937, 0.350246, -0.402143,
		-0.363897, 0.930361, 0.044814,
		36.916672, 37.236710, 45.822777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659847, 36.999603, 45.981045>,  <37.171398, 36.585457, 45.791409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659847, 36.999603, 45.981045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356873, 37.231407, 46.101345>,  <37.175087, 37.370491, 46.173527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356873, 37.231407, 46.101345>,  <37.659847, 36.999603, 45.981045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356873, 37.231407, 46.101345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359022, -0.015064, 0.933208,
		0.545335, 0.814825, -0.196647,
		-0.757439, 0.579511, 0.300755,
		37.129642, 37.405262, 46.191570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978695, 37.619591, 46.111004>,  <37.659847, 36.999603, 45.981045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978695, 37.619591, 46.111004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643936, 37.557381, 46.320923>,  <37.443081, 37.520054, 46.446873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643936, 37.557381, 46.320923>,  <37.978695, 37.619591, 46.111004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643936, 37.557381, 46.320923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512316, 0.114969, 0.851066,
		-0.192699, 0.981118, -0.016539,
		-0.836899, -0.155526, 0.524797,
		37.392868, 37.510723, 46.478363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131668, 37.903423, 46.712067>,  <37.978695, 37.619591, 46.111004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131668, 37.903423, 46.712067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815712, 37.678673, 46.810349>,  <37.626141, 37.543823, 46.869320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815712, 37.678673, 46.810349>,  <38.131668, 37.903423, 46.712067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815712, 37.678673, 46.810349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365253, -0.109201, 0.924481,
		-0.492614, 0.819981, 0.291484,
		-0.789887, -0.561877, 0.245706,
		37.578747, 37.510109, 46.884060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925568, 38.055016, 47.456718>,  <38.131668, 37.903423, 46.712067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925568, 38.055016, 47.456718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773365, 37.690670, 47.392784>,  <37.682041, 37.472065, 47.354424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773365, 37.690670, 47.392784>,  <37.925568, 38.055016, 47.456718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773365, 37.690670, 47.392784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297892, -0.284352, 0.911265,
		-0.875484, 0.299130, 0.379537,
		-0.380509, -0.910860, -0.159837,
		37.659214, 37.417412, 47.344833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557503, 37.822803, 48.117962>,  <37.925568, 38.055016, 47.456718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557503, 37.822803, 48.117962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654606, 37.504501, 47.896027>,  <37.712868, 37.313519, 47.762867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654606, 37.504501, 47.896027>,  <37.557503, 37.822803, 48.117962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654606, 37.504501, 47.896027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318848, -0.474720, 0.820352,
		-0.916191, -0.376053, 0.138485,
		0.242754, -0.795755, -0.554838,
		37.727432, 37.265774, 47.729576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125286, 37.291218, 48.393661>,  <37.557503, 37.822803, 48.117962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125286, 37.291218, 48.393661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441605, 37.110481, 48.228504>,  <37.631393, 37.002037, 48.129410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441605, 37.110481, 48.228504>,  <37.125286, 37.291218, 48.393661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441605, 37.110481, 48.228504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080489, -0.591951, 0.801944,
		-0.606771, -0.667405, -0.431741,
		0.790791, -0.451846, -0.412898,
		37.678844, 36.974930, 48.104637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138973, 36.540417, 48.481380>,  <37.125286, 37.291218, 48.393661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138973, 36.540417, 48.481380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512672, 36.681107, 48.457790>,  <37.736893, 36.765518, 48.443638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512672, 36.681107, 48.457790>,  <37.138973, 36.540417, 48.481380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512672, 36.681107, 48.457790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218825, -0.434770, 0.873550,
		0.281605, -0.829016, -0.483147,
		0.934246, 0.351721, -0.058976,
		37.792946, 36.786621, 48.440098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759987, 36.009773, 48.525959>,  <37.138973, 36.540417, 48.481380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759987, 36.009773, 48.525959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891941, 36.368107, 48.645054>,  <37.971115, 36.583107, 48.716511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891941, 36.368107, 48.645054>,  <37.759987, 36.009773, 48.525959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891941, 36.368107, 48.645054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410204, -0.420093, 0.809478,
		0.850241, -0.144899, -0.506058,
		0.329884, 0.895838, 0.297742,
		37.990906, 36.636860, 48.734375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573872, 36.138565, 48.626175>,  <37.759987, 36.009773, 48.525959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573872, 36.138565, 48.626175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311893, 36.316216, 48.870731>,  <38.154705, 36.422806, 49.017464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311893, 36.316216, 48.870731>,  <38.573872, 36.138565, 48.626175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311893, 36.316216, 48.870731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375618, -0.510706, 0.773363,
		0.655712, 0.736160, 0.167662,
		-0.654945, 0.444127, 0.611391,
		38.115410, 36.449455, 49.054150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959885, 36.262661, 49.224396>,  <38.573872, 36.138565, 48.626175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959885, 36.262661, 49.224396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569824, 36.247173, 49.311646>,  <38.335789, 36.237881, 49.363995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569824, 36.247173, 49.311646>,  <38.959885, 36.262661, 49.224396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569824, 36.247173, 49.311646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207768, -0.501555, 0.839807,
		0.076887, 0.864259, 0.497137,
		-0.975152, -0.038719, 0.218128,
		38.277279, 36.235558, 49.377083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103249, 36.241982, 49.961617>,  <38.959885, 36.262661, 49.224396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103249, 36.241982, 49.961617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241581, 35.869778, 49.913349>,  <39.324581, 35.646458, 49.884388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241581, 35.869778, 49.913349>,  <39.103249, 36.241982, 49.961617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241581, 35.869778, 49.913349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002524, 0.127681, -0.991812,
		0.938294, 0.343302, 0.041807,
		0.345829, -0.930506, -0.120669,
		39.345329, 35.590626, 49.877148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643074, 36.179062, 49.452908>,  <39.103249, 36.241982, 49.961617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643074, 36.179062, 49.452908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445301, 35.831551, 49.463959>,  <39.326637, 35.623043, 49.470589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445301, 35.831551, 49.463959>,  <39.643074, 36.179062, 49.452908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445301, 35.831551, 49.463959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186060, 0.074739, -0.979692,
		0.849067, -0.489534, -0.198598,
		-0.494436, -0.868775, 0.027624,
		39.296970, 35.570919, 49.472244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645332, 35.809933, 48.872169>,  <39.643074, 36.179062, 49.452908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645332, 35.809933, 48.872169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334232, 35.597610, 49.006836>,  <39.147572, 35.470219, 49.087635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334232, 35.597610, 49.006836>,  <39.645332, 35.809933, 48.872169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334232, 35.597610, 49.006836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273249, -0.196835, -0.941589,
		0.566069, -0.824319, 0.008047,
		-0.777754, -0.530806, 0.336667,
		39.100906, 35.438370, 49.107838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573925, 34.943218, 48.611145>,  <39.645332, 35.809933, 48.872169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573925, 34.943218, 48.611145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228512, 35.127022, 48.694241>,  <39.021263, 35.237305, 48.744099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228512, 35.127022, 48.694241>,  <39.573925, 34.943218, 48.611145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228512, 35.127022, 48.694241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327940, -0.198765, -0.923552,
		-0.383092, -0.865645, 0.322333,
		-0.863537, 0.459512, 0.207734,
		38.969452, 35.264874, 48.756561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010582, 34.514458, 48.625206>,  <39.573925, 34.943218, 48.611145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010582, 34.514458, 48.625206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927059, 34.881252, 48.489243>,  <38.876945, 35.101330, 48.407665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927059, 34.881252, 48.489243>,  <39.010582, 34.514458, 48.625206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927059, 34.881252, 48.489243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534164, -0.398084, -0.745787,
		-0.819187, 0.025841, 0.572943,
		-0.208808, 0.916985, -0.339908,
		38.864418, 35.156349, 48.387272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244850, 34.593365, 48.650974>,  <39.010582, 34.514458, 48.625206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244850, 34.593365, 48.650974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336967, 34.876331, 48.383682>,  <38.392239, 35.046112, 48.223309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336967, 34.876331, 48.383682>,  <38.244850, 34.593365, 48.650974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336967, 34.876331, 48.383682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650893, -0.398490, -0.646177,
		-0.723399, 0.583751, 0.368685,
		0.230289, 0.707418, -0.668227,
		38.406055, 35.088558, 48.183216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543381, 34.727001, 48.367500>,  <38.244850, 34.593365, 48.650974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543381, 34.727001, 48.367500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854313, 34.831921, 48.138779>,  <38.040871, 34.894871, 48.001545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854313, 34.831921, 48.138779>,  <37.543381, 34.727001, 48.367500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854313, 34.831921, 48.138779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414500, -0.470195, -0.779170,
		-0.473236, 0.842684, -0.256773,
		0.777328, 0.262299, -0.571805,
		38.087513, 34.910610, 47.967236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247238, 34.629707, 47.787495>,  <37.543381, 34.727001, 48.367500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247238, 34.629707, 47.787495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613953, 34.645885, 47.628559>,  <37.833981, 34.655590, 47.533199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613953, 34.645885, 47.628559>,  <37.247238, 34.629707, 47.787495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613953, 34.645885, 47.628559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322017, -0.513652, -0.795277,
		-0.236256, 0.857044, -0.457884,
		0.916781, 0.040442, -0.397336,
		37.888988, 34.658020, 47.509357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096622, 34.705471, 47.171204>,  <37.247238, 34.629707, 47.787495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096622, 34.705471, 47.171204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474319, 34.573772, 47.170086>,  <37.700939, 34.494755, 47.169415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474319, 34.573772, 47.170086>,  <37.096622, 34.705471, 47.171204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474319, 34.573772, 47.170086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178756, -0.505486, -0.844115,
		0.276505, 0.797548, -0.536155,
		0.944241, -0.329243, -0.002798,
		37.757591, 34.474998, 47.169247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364239, 34.818100, 46.510090>,  <37.096622, 34.705471, 47.171204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364239, 34.818100, 46.510090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587864, 34.516632, 46.648327>,  <37.722038, 34.335751, 46.731270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587864, 34.516632, 46.648327>,  <37.364239, 34.818100, 46.510090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587864, 34.516632, 46.648327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060176, -0.452594, -0.889684,
		0.826940, 0.476591, -0.298380,
		0.559060, -0.753671, 0.345589,
		37.755581, 34.290531, 46.752003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913822, 34.678532, 46.038364>,  <37.364239, 34.818100, 46.510090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913822, 34.678532, 46.038364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846947, 34.344444, 46.247921>,  <37.806824, 34.143993, 46.373657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846947, 34.344444, 46.247921>,  <37.913822, 34.678532, 46.038364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846947, 34.344444, 46.247921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189722, -0.494189, -0.848400,
		0.967499, -0.241234, -0.075838,
		-0.167184, -0.835215, 0.523895,
		37.796791, 34.093880, 46.405090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234844, 34.209774, 45.715050>,  <37.913822, 34.678532, 46.038364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234844, 34.209774, 45.715050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988068, 33.977226, 45.927231>,  <37.840000, 33.837696, 46.054539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988068, 33.977226, 45.927231>,  <38.234844, 34.209774, 45.715050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988068, 33.977226, 45.927231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199037, -0.536846, -0.819866,
		0.761422, -0.611392, 0.215489,
		-0.616945, -0.581374, 0.530456,
		37.802982, 33.802814, 46.086369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287411, 33.633144, 45.437645>,  <38.234844, 34.209774, 45.715050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287411, 33.633144, 45.437645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948078, 33.575043, 45.641304>,  <37.744476, 33.540184, 45.763500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948078, 33.575043, 45.641304>,  <38.287411, 33.633144, 45.437645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948078, 33.575043, 45.641304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285535, -0.684302, -0.670970,
		0.445871, -0.714586, 0.539041,
		-0.848333, -0.145252, 0.509149,
		37.693577, 33.531467, 45.794048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168476, 32.900269, 45.526287>,  <38.287411, 33.633144, 45.437645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168476, 32.900269, 45.526287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812153, 33.079376, 45.557182>,  <37.598358, 33.186840, 45.575718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812153, 33.079376, 45.557182>,  <38.168476, 32.900269, 45.526287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812153, 33.079376, 45.557182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395991, -0.681675, -0.615232,
		-0.222831, -0.578638, 0.784554,
		-0.890807, 0.447769, 0.077237,
		37.544910, 33.213707, 45.580353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693081, 32.375721, 45.507591>,  <38.168476, 32.900269, 45.526287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693081, 32.375721, 45.507591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485195, 32.703861, 45.412151>,  <37.360466, 32.900745, 45.354889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485195, 32.703861, 45.412151>,  <37.693081, 32.375721, 45.507591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485195, 32.703861, 45.412151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447639, -0.499341, -0.741807,
		-0.727682, -0.278720, 0.626733,
		-0.519709, 0.820350, -0.238595,
		37.329281, 32.949966, 45.340572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964230, 32.130772, 45.207840>,  <37.693081, 32.375721, 45.507591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964230, 32.130772, 45.207840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025043, 32.513149, 45.107403>,  <37.061531, 32.742577, 45.047138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025043, 32.513149, 45.107403>,  <36.964230, 32.130772, 45.207840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025043, 32.513149, 45.107403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350999, -0.185269, -0.917864,
		-0.923951, 0.227683, 0.307369,
		0.152036, 0.955948, -0.251096,
		37.070656, 32.799934, 45.032074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345039, 32.332474, 44.896366>,  <36.964230, 32.130772, 45.207840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345039, 32.332474, 44.896366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612091, 32.593784, 44.753536>,  <36.772320, 32.750572, 44.667839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612091, 32.593784, 44.753536>,  <36.345039, 32.332474, 44.896366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612091, 32.593784, 44.753536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290738, -0.212762, -0.932847,
		-0.685381, 0.726608, 0.047887,
		0.667625, 0.653279, -0.357076,
		36.812378, 32.789768, 44.646412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000526, 32.523857, 44.408520>,  <36.345039, 32.332474, 44.896366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000526, 32.523857, 44.408520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363850, 32.670872, 44.328621>,  <36.581844, 32.759079, 44.280682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363850, 32.670872, 44.328621>,  <36.000526, 32.523857, 44.408520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363850, 32.670872, 44.328621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222724, 0.020727, -0.974661,
		-0.354080, 0.929780, 0.100685,
		0.908307, 0.367533, -0.199745,
		36.636341, 32.781132, 44.268696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920212, 33.050304, 43.898087>,  <36.000526, 32.523857, 44.408520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920212, 33.050304, 43.898087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302448, 32.933228, 43.884342>,  <36.531792, 32.862984, 43.876095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302448, 32.933228, 43.884342>,  <35.920212, 33.050304, 43.898087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302448, 32.933228, 43.884342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044933, -0.029476, -0.998555,
		0.291253, 0.955754, -0.041318,
		0.955590, -0.292688, -0.034360,
		36.589127, 32.845421, 43.874035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369949, 33.610069, 43.768547>,  <35.920212, 33.050304, 43.898087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369949, 33.610069, 43.768547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551563, 33.275135, 43.646748>,  <36.660530, 33.074173, 43.573669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551563, 33.275135, 43.646748>,  <36.369949, 33.610069, 43.768547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551563, 33.275135, 43.646748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171388, 0.253290, -0.952087,
		0.874346, 0.484465, -0.028508,
		0.454032, -0.837340, -0.304495,
		36.687775, 33.023933, 43.555401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748528, 33.795185, 43.111629>,  <36.369949, 33.610069, 43.768547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748528, 33.795185, 43.111629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733669, 33.395679, 43.098427>,  <36.724754, 33.155975, 43.090504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733669, 33.395679, 43.098427>,  <36.748528, 33.795185, 43.111629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733669, 33.395679, 43.098427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303505, 0.042748, -0.951870,
		0.952106, -0.025335, -0.304718,
		-0.037142, -0.998765, -0.033011,
		36.722527, 33.096050, 43.088524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869160, 33.689301, 42.438343>,  <36.748528, 33.795185, 43.111629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869160, 33.689301, 42.438343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721622, 33.335854, 42.553696>,  <36.633099, 33.123783, 42.622910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721622, 33.335854, 42.553696>,  <36.869160, 33.689301, 42.438343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721622, 33.335854, 42.553696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149319, -0.249902, -0.956688,
		0.917419, -0.395932, -0.039766,
		-0.368846, -0.883622, 0.288385,
		36.610970, 33.070766, 42.640213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172283, 33.159611, 41.980198>,  <36.869160, 33.689301, 42.438343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172283, 33.159611, 41.980198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812912, 33.039669, 42.108517>,  <36.597290, 32.967705, 42.185509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812912, 33.039669, 42.108517>,  <37.172283, 33.159611, 41.980198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812912, 33.039669, 42.108517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214391, -0.338032, -0.916390,
		0.383222, -0.892089, 0.239413,
		-0.898430, -0.299853, 0.320797,
		36.543385, 32.949715, 42.204754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131504, 32.540722, 41.786335>,  <37.172283, 33.159611, 41.980198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131504, 32.540722, 41.786335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757481, 32.670528, 41.843407>,  <36.533066, 32.748413, 41.877651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757481, 32.670528, 41.843407>,  <37.131504, 32.540722, 41.786335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757481, 32.670528, 41.843407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206718, -0.172165, -0.963134,
		-0.287989, -0.930079, 0.228068,
		-0.935056, 0.324518, 0.142683,
		36.476963, 32.767883, 41.886211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596081, 32.048592, 41.395996>,  <37.131504, 32.540722, 41.786335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596081, 32.048592, 41.395996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380833, 32.380051, 41.457661>,  <36.251686, 32.578926, 41.494659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380833, 32.380051, 41.457661>,  <36.596081, 32.048592, 41.395996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380833, 32.380051, 41.457661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269518, 0.004135, -0.962986,
		-0.798618, -0.559748, 0.221111,
		-0.538116, 0.828652, 0.154165,
		36.219398, 32.628647, 41.503910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939049, 31.868902, 40.990971>,  <36.596081, 32.048592, 41.395996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939049, 31.868902, 40.990971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970860, 32.262253, 41.056263>,  <35.989944, 32.498264, 41.095436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970860, 32.262253, 41.056263>,  <35.939049, 31.868902, 40.990971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970860, 32.262253, 41.056263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310398, 0.180035, -0.933402,
		-0.947274, 0.023566, 0.319556,
		0.079528, 0.983378, 0.163228,
		35.994717, 32.557266, 41.105232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339920, 32.134960, 40.802006>,  <35.939049, 31.868902, 40.990971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339920, 32.134960, 40.802006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576004, 32.457279, 40.782661>,  <35.717655, 32.650669, 40.771057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576004, 32.457279, 40.782661>,  <35.339920, 32.134960, 40.802006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576004, 32.457279, 40.782661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428747, 0.262154, -0.864552,
		-0.683977, 0.531003, 0.500210,
		0.590212, 0.805798, -0.048359,
		35.753067, 32.699020, 40.768154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858322, 32.693024, 40.609001>,  <35.339920, 32.134960, 40.802006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858322, 32.693024, 40.609001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216530, 32.850769, 40.526512>,  <35.431454, 32.945415, 40.477020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216530, 32.850769, 40.526512>,  <34.858322, 32.693024, 40.609001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216530, 32.850769, 40.526512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296149, 0.182195, -0.937604,
		-0.332182, 0.900713, 0.279948,
		0.895517, 0.394362, -0.206223,
		35.485184, 32.969078, 40.464645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735809, 33.389366, 40.393692>,  <34.858322, 32.693024, 40.609001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735809, 33.389366, 40.393692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100704, 33.298672, 40.257217>,  <35.319641, 33.244255, 40.175335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100704, 33.298672, 40.257217>,  <34.735809, 33.389366, 40.393692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100704, 33.298672, 40.257217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271699, 0.288437, -0.918142,
		0.306586, 0.930266, 0.201520,
		0.912242, -0.226736, -0.341183,
		35.374378, 33.230652, 40.154861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036896, 33.978939, 40.007599>,  <34.735809, 33.389366, 40.393692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036896, 33.978939, 40.007599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217358, 33.649609, 39.869854>,  <35.325634, 33.452011, 39.787209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217358, 33.649609, 39.869854>,  <35.036896, 33.978939, 40.007599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217358, 33.649609, 39.869854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300853, 0.222965, -0.927240,
		0.840204, 0.521935, -0.147108,
		0.451159, -0.823329, -0.344362,
		35.352707, 33.402611, 39.766544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279644, 34.175575, 39.387794>,  <35.036896, 33.978939, 40.007599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279644, 34.175575, 39.387794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302891, 33.776726, 39.368340>,  <35.316837, 33.537415, 39.356667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302891, 33.776726, 39.368340>,  <35.279644, 34.175575, 39.387794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302891, 33.776726, 39.368340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212911, 0.035220, -0.976437,
		0.975342, 0.067099, -0.210252,
		0.058113, -0.997124, -0.048638,
		35.320324, 33.477589, 39.353748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796928, 34.048542, 38.874588>,  <35.279644, 34.175575, 39.387794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796928, 34.048542, 38.874588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534706, 33.746635, 38.884178>,  <35.377373, 33.565491, 38.889935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534706, 33.746635, 38.884178>,  <35.796928, 34.048542, 38.874588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534706, 33.746635, 38.884178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066981, 0.026488, -0.997403,
		0.752174, -0.655455, -0.067919,
		-0.655551, -0.754770, 0.023979,
		35.338039, 33.520203, 38.891373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686699, 33.806992, 38.236721>,  <35.796928, 34.048542, 38.874588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686699, 33.806992, 38.236721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435802, 33.535511, 38.389523>,  <35.285263, 33.372623, 38.481205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435802, 33.535511, 38.389523>,  <35.686699, 33.806992, 38.236721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435802, 33.535511, 38.389523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443942, -0.091428, -0.891379,
		0.639906, -0.728702, -0.243955,
		-0.627245, -0.678701, 0.382007,
		35.247627, 33.331902, 38.504124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678844, 33.206696, 37.823635>,  <35.686699, 33.806992, 38.236721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678844, 33.206696, 37.823635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319664, 33.197239, 37.999420>,  <35.104156, 33.191563, 38.104893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319664, 33.197239, 37.999420>,  <35.678844, 33.206696, 37.823635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319664, 33.197239, 37.999420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424661, -0.215641, -0.879296,
		0.115558, -0.976186, 0.183593,
		-0.897948, -0.023645, 0.439468,
		35.050282, 33.190147, 38.131260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241600, 32.643436, 37.471977>,  <35.678844, 33.206696, 37.823635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241600, 32.643436, 37.471977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985661, 32.896492, 37.646500>,  <34.832096, 33.048325, 37.751213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985661, 32.896492, 37.646500>,  <35.241600, 32.643436, 37.471977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985661, 32.896492, 37.646500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580601, -0.025992, -0.813773,
		-0.503486, -0.774009, 0.383943,
		-0.639848, 0.632641, 0.436303,
		34.793705, 33.086285, 37.777390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557873, 32.439663, 37.332417>,  <35.241600, 32.643436, 37.471977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557873, 32.439663, 37.332417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524376, 32.825195, 37.433628>,  <34.504280, 33.056515, 37.494354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524376, 32.825195, 37.433628>,  <34.557873, 32.439663, 37.332417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524376, 32.825195, 37.433628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754242, 0.104638, -0.648205,
		-0.651235, -0.245121, 0.718198,
		-0.083738, 0.963829, 0.253025,
		34.499256, 33.114346, 37.509537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743591, 32.569000, 37.427773>,  <34.557873, 32.439663, 37.332417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743591, 32.569000, 37.427773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931847, 32.912251, 37.345669>,  <34.044800, 33.118198, 37.296406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931847, 32.912251, 37.345669>,  <33.743591, 32.569000, 37.427773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931847, 32.912251, 37.345669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725798, 0.244241, -0.643089,
		-0.501717, 0.451635, 0.737771,
		0.470635, 0.858121, -0.205256,
		34.073036, 33.169685, 37.284092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359211, 33.016972, 37.633514>,  <33.743591, 32.569000, 37.427773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359211, 33.016972, 37.633514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581810, 33.190067, 37.349812>,  <33.715370, 33.293926, 37.179588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581810, 33.190067, 37.349812>,  <33.359211, 33.016972, 37.633514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581810, 33.190067, 37.349812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812178, 0.103367, -0.574178,
		-0.175155, 0.895573, 0.408985,
		0.556494, 0.432739, -0.709260,
		33.748760, 33.319889, 37.137032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889992, 33.338898, 37.216389>,  <33.359211, 33.016972, 37.633514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889992, 33.338898, 37.216389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192764, 33.404408, 36.963333>,  <33.374428, 33.443714, 36.811501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192764, 33.404408, 36.963333>,  <32.889992, 33.338898, 37.216389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192764, 33.404408, 36.963333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651829, 0.120069, -0.748800,
		-0.046677, 0.979163, 0.197639,
		0.756928, 0.163779, -0.632643,
		33.419842, 33.453541, 36.773540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813286, 34.007298, 36.780376>,  <32.889992, 33.338898, 37.216389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813286, 34.007298, 36.780376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071056, 33.810024, 36.546631>,  <33.225719, 33.691662, 36.406384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071056, 33.810024, 36.546631>,  <32.813286, 34.007298, 36.780376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071056, 33.810024, 36.546631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420128, 0.410165, -0.809480,
		0.638907, 0.767160, 0.057122,
		0.644430, -0.493184, -0.584363,
		33.264385, 33.662067, 36.371323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910610, 34.395073, 36.242210>,  <32.813286, 34.007298, 36.780376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910610, 34.395073, 36.242210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036560, 34.038342, 36.112293>,  <33.112129, 33.824303, 36.034344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036560, 34.038342, 36.112293>,  <32.910610, 34.395073, 36.242210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036560, 34.038342, 36.112293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330608, 0.217712, -0.918314,
		0.889691, 0.396535, -0.226294,
		0.314877, -0.891830, -0.324794,
		33.131023, 33.770794, 36.014854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219395, 34.603123, 35.636803>,  <32.910610, 34.395073, 36.242210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219395, 34.603123, 35.636803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153873, 34.208588, 35.629856>,  <33.114563, 33.971867, 35.625687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153873, 34.208588, 35.629856>,  <33.219395, 34.603123, 35.636803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153873, 34.208588, 35.629856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406225, 0.083484, -0.909951,
		0.898972, -0.141995, -0.414351,
		-0.163800, -0.986341, -0.017368,
		33.104733, 33.912685, 35.624645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670349, 34.275948, 35.073151>,  <33.219395, 34.603123, 35.636803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670349, 34.275948, 35.073151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372124, 34.016815, 35.135689>,  <33.193188, 33.861336, 35.173214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372124, 34.016815, 35.135689>,  <33.670349, 34.275948, 35.073151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372124, 34.016815, 35.135689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180552, -0.029476, -0.983124,
		0.641506, -0.761214, -0.094991,
		-0.745567, -0.647831, 0.156348,
		33.148453, 33.822468, 35.182594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853317, 33.786015, 34.639812>,  <33.670349, 34.275948, 35.073151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853317, 33.786015, 34.639812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462315, 33.734203, 34.706387>,  <33.227711, 33.703117, 34.746330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462315, 33.734203, 34.706387>,  <33.853317, 33.786015, 34.639812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462315, 33.734203, 34.706387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187907, 0.176616, -0.966177,
		0.095748, -0.975720, -0.196982,
		-0.977509, -0.129524, 0.166434,
		33.169064, 33.695347, 34.756317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623112, 33.177990, 34.401077>,  <33.853317, 33.786015, 34.639812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623112, 33.177990, 34.401077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276833, 33.377842, 34.413342>,  <33.069065, 33.497753, 34.420700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276833, 33.377842, 34.413342>,  <33.623112, 33.177990, 34.401077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276833, 33.377842, 34.413342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108469, -0.127437, -0.985898,
		-0.488673, -0.856816, 0.164516,
		-0.865698, 0.499627, 0.030663,
		33.017124, 33.527729, 34.422539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921722, 32.764343, 34.870636>,  <33.623112, 33.177990, 34.401077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921722, 32.764343, 34.870636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241833, 32.969784, 34.746849>,  <34.433899, 33.093048, 34.672577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241833, 32.969784, 34.746849>,  <33.921722, 32.764343, 34.870636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241833, 32.969784, 34.746849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583092, -0.786927, 0.201867,
		-0.139846, -0.341996, -0.929237,
		0.800279, 0.513601, -0.309463,
		34.481918, 33.123863, 34.654011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276917, 32.343201, 34.334400>,  <33.921722, 32.764343, 34.870636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276917, 32.343201, 34.334400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522442, 32.594929, 34.525055>,  <34.669758, 32.745964, 34.639450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522442, 32.594929, 34.525055>,  <34.276917, 32.343201, 34.334400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522442, 32.594929, 34.525055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602895, -0.763461, 0.231613,
		0.509655, 0.145196, -0.848039,
		0.613816, 0.629321, 0.476640,
		34.706585, 32.783726, 34.668045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843601, 32.005020, 34.355850>,  <34.276917, 32.343201, 34.334400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843601, 32.005020, 34.355850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985519, 32.298450, 34.587711>,  <35.070671, 32.474506, 34.726826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985519, 32.298450, 34.587711>,  <34.843601, 32.005020, 34.355850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985519, 32.298450, 34.587711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719939, -0.609910, 0.331207,
		0.596499, 0.299804, -0.744518,
		0.354792, 0.733572, 0.579651,
		35.091957, 32.518520, 34.761608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595016, 32.099380, 34.311008>,  <34.843601, 32.005020, 34.355850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595016, 32.099380, 34.311008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470825, 32.250713, 34.659828>,  <35.396309, 32.341511, 34.869122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470825, 32.250713, 34.659828>,  <35.595016, 32.099380, 34.311008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470825, 32.250713, 34.659828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688306, -0.543250, 0.480743,
		0.655619, 0.749498, -0.091738,
		-0.310480, 0.378328, 0.872049,
		35.377682, 32.364212, 34.921444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230965, 32.231823, 34.687893>,  <35.595016, 32.099380, 34.311008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230965, 32.231823, 34.687893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971874, 32.256035, 34.991680>,  <35.816422, 32.270561, 35.173954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971874, 32.256035, 34.991680>,  <36.230965, 32.231823, 34.687893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971874, 32.256035, 34.991680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704190, -0.332936, 0.627112,
		0.290811, 0.941005, 0.173028,
		-0.647723, 0.060526, 0.759468,
		35.777557, 32.274193, 35.219521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657925, 32.352783, 35.301544>,  <36.230965, 32.231823, 34.687893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657925, 32.352783, 35.301544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308769, 32.252506, 35.468979>,  <36.099277, 32.192341, 35.569439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308769, 32.252506, 35.468979>,  <36.657925, 32.352783, 35.301544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308769, 32.252506, 35.468979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479883, -0.286051, 0.829390,
		-0.088187, 0.924839, 0.369995,
		-0.872889, -0.250696, 0.418588,
		36.046902, 32.177296, 35.594555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595230, 32.763741, 35.944408>,  <36.657925, 32.352783, 35.301544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595230, 32.763741, 35.944408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359447, 32.443184, 35.985027>,  <36.217979, 32.250851, 36.009399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359447, 32.443184, 35.985027>,  <36.595230, 32.763741, 35.944408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359447, 32.443184, 35.985027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569244, -0.322884, 0.756113,
		-0.573156, 0.503500, 0.646514,
		-0.589452, -0.801395, 0.101552,
		36.182613, 32.202766, 36.015491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280941, 32.831825, 36.587234>,  <36.595230, 32.763741, 35.944408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280941, 32.831825, 36.587234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288448, 32.440590, 36.504299>,  <36.292953, 32.205849, 36.454540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288448, 32.440590, 36.504299>,  <36.280941, 32.831825, 36.587234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288448, 32.440590, 36.504299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597339, -0.155324, 0.786804,
		-0.801769, -0.138616, 0.581336,
		0.018769, -0.978090, -0.207335,
		36.294079, 32.147163, 36.442101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262821, 32.577950, 37.239445>,  <36.280941, 32.831825, 36.587234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262821, 32.577950, 37.239445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354515, 32.259552, 37.015358>,  <36.409531, 32.068512, 36.880905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354515, 32.259552, 37.015358>,  <36.262821, 32.577950, 37.239445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354515, 32.259552, 37.015358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614521, -0.327991, 0.717486,
		-0.754862, -0.508735, 0.413970,
		0.229232, -0.795997, -0.560216,
		36.423286, 32.020752, 36.847294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229794, 31.994869, 37.603107>,  <36.262821, 32.577950, 37.239445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229794, 31.994869, 37.603107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461533, 31.850151, 37.310955>,  <36.600574, 31.763319, 37.135662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461533, 31.850151, 37.310955>,  <36.229794, 31.994869, 37.603107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461533, 31.850151, 37.310955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582942, -0.442378, 0.681529,
		-0.569680, -0.820613, -0.045384,
		0.579348, -0.361797, -0.730383,
		36.635338, 31.741611, 37.091839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176777, 31.286730, 37.677536>,  <36.229794, 31.994869, 37.603107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176777, 31.286730, 37.677536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517876, 31.411299, 37.509804>,  <36.722534, 31.486040, 37.409164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517876, 31.411299, 37.509804>,  <36.176777, 31.286730, 37.677536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517876, 31.411299, 37.509804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521868, -0.474401, 0.708941,
		0.021850, -0.823382, -0.567066,
		0.852747, 0.311424, -0.419331,
		36.773701, 31.504726, 37.384003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741196, 30.819269, 37.855080>,  <36.176777, 31.286730, 37.677536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741196, 30.819269, 37.855080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968018, 31.105919, 37.692650>,  <37.104111, 31.277908, 37.595192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968018, 31.105919, 37.692650>,  <36.741196, 30.819269, 37.855080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968018, 31.105919, 37.692650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657482, -0.096852, 0.747219,
		0.496146, -0.690703, -0.526088,
		0.567059, 0.716624, -0.406072,
		37.138134, 31.320906, 37.570827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438869, 30.596796, 37.957500>,  <36.741196, 30.819269, 37.855080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438869, 30.596796, 37.957500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450859, 30.993610, 37.908566>,  <37.458054, 31.231699, 37.879204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450859, 30.993610, 37.908566>,  <37.438869, 30.596796, 37.957500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450859, 30.993610, 37.908566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686671, 0.068502, 0.723734,
		0.726350, -0.105695, -0.679149,
		0.029972, 0.992036, -0.122335,
		37.459850, 31.291222, 37.871864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143780, 30.813961, 38.142822>,  <37.438869, 30.596796, 37.957500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143780, 30.813961, 38.142822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944256, 31.159800, 38.167027>,  <37.824543, 31.367304, 38.181549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944256, 31.159800, 38.167027>,  <38.143780, 30.813961, 38.142822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944256, 31.159800, 38.167027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612176, 0.302034, 0.730764,
		0.613541, 0.401554, -0.679943,
		-0.498807, 0.864598, 0.060511,
		37.794613, 31.419180, 38.185181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668007, 31.176327, 38.345085>,  <38.143780, 30.813961, 38.142822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668007, 31.176327, 38.345085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328220, 31.370739, 38.427238>,  <38.124348, 31.487387, 38.476532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328220, 31.370739, 38.427238>,  <38.668007, 31.176327, 38.345085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328220, 31.370739, 38.427238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363876, 0.257725, 0.895082,
		0.382106, 0.835075, -0.395784,
		-0.849464, 0.486032, 0.205386,
		38.073380, 31.516548, 38.488853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839428, 31.878481, 38.734146>,  <38.668007, 31.176327, 38.345085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839428, 31.878481, 38.734146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449451, 31.825909, 38.805939>,  <38.215466, 31.794365, 38.849014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449451, 31.825909, 38.805939>,  <38.839428, 31.878481, 38.734146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449451, 31.825909, 38.805939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122579, 0.355891, 0.926454,
		-0.185641, 0.925239, -0.330862,
		-0.974942, -0.131431, 0.179483,
		38.156967, 31.786480, 38.859783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577827, 32.479946, 39.004055>,  <38.839428, 31.878481, 38.734146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577827, 32.479946, 39.004055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294434, 32.222744, 39.120399>,  <38.124397, 32.068424, 39.190205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294434, 32.222744, 39.120399>,  <38.577827, 32.479946, 39.004055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294434, 32.222744, 39.120399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017863, 0.395669, 0.918220,
		-0.705502, 0.655739, -0.268838,
		-0.708483, -0.643003, 0.290859,
		38.081890, 32.029842, 39.207657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070377, 32.885326, 39.435463>,  <38.577827, 32.479946, 39.004055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070377, 32.885326, 39.435463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027367, 32.495453, 39.513885>,  <38.001560, 32.261528, 39.560940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027367, 32.495453, 39.513885>,  <38.070377, 32.885326, 39.435463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027367, 32.495453, 39.513885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021662, 0.194855, 0.980593,
		-0.993966, 0.109686, 0.000161,
		-0.107526, -0.974680, 0.196055,
		37.995110, 32.203049, 39.572701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502567, 32.875195, 39.985893>,  <38.070377, 32.885326, 39.435463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502567, 32.875195, 39.985893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717400, 32.538059, 39.999565>,  <37.846298, 32.335777, 40.007767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717400, 32.538059, 39.999565>,  <37.502567, 32.875195, 39.985893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717400, 32.538059, 39.999565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257300, 0.202274, 0.944924,
		-0.803331, -0.498708, 0.325500,
		0.537081, -0.842838, 0.034176,
		37.878525, 32.285210, 40.009819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348640, 32.551418, 40.606796>,  <37.502567, 32.875195, 39.985893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348640, 32.551418, 40.606796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694931, 32.379326, 40.504486>,  <37.902706, 32.276070, 40.443100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694931, 32.379326, 40.504486>,  <37.348640, 32.551418, 40.606796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694931, 32.379326, 40.504486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333335, 0.114394, 0.935843,
		-0.373370, -0.895442, 0.242445,
		0.865726, -0.430230, -0.255771,
		37.954651, 32.250256, 40.427753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446136, 31.893354, 41.027912>,  <37.348640, 32.551418, 40.606796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446136, 31.893354, 41.027912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816376, 31.987207, 40.909107>,  <38.038517, 32.043518, 40.837822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816376, 31.987207, 40.909107>,  <37.446136, 31.893354, 41.027912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816376, 31.987207, 40.909107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295492, 0.042476, 0.954401,
		0.236551, -0.971156, -0.030017,
		0.925596, 0.234634, -0.297016,
		38.094055, 32.057598, 40.820004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935390, 31.361536, 41.331650>,  <37.446136, 31.893354, 41.027912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935390, 31.361536, 41.331650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106201, 31.717358, 41.266727>,  <38.208687, 31.930851, 41.227776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106201, 31.717358, 41.266727>,  <37.935390, 31.361536, 41.331650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106201, 31.717358, 41.266727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369828, -0.008024, 0.929066,
		0.825150, -0.456764, -0.332408,
		0.427031, 0.889552, -0.162303,
		38.234310, 31.984222, 41.218037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572643, 31.367252, 41.716904>,  <37.935390, 31.361536, 41.331650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572643, 31.367252, 41.716904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524906, 31.756998, 41.640617>,  <38.496265, 31.990845, 41.594845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524906, 31.756998, 41.640617>,  <38.572643, 31.367252, 41.716904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524906, 31.756998, 41.640617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347592, 0.220935, 0.911245,
		0.930020, 0.042460, -0.365048,
		-0.119344, 0.974364, -0.190715,
		38.489101, 32.049309, 41.583405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151798, 31.656693, 42.029953>,  <38.572643, 31.367252, 41.716904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151798, 31.656693, 42.029953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930302, 31.986673, 41.984665>,  <38.797401, 32.184662, 41.957493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930302, 31.986673, 41.984665>,  <39.151798, 31.656693, 42.029953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930302, 31.986673, 41.984665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289519, 0.318230, 0.902723,
		0.780734, 0.467098, -0.415058,
		-0.553744, 0.824954, -0.113219,
		38.764179, 32.234161, 41.950699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533520, 32.262455, 42.184879>,  <39.151798, 31.656693, 42.029953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533520, 32.262455, 42.184879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154285, 32.384861, 42.219517>,  <38.926746, 32.458305, 42.240299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154285, 32.384861, 42.219517>,  <39.533520, 32.262455, 42.184879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154285, 32.384861, 42.219517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229941, 0.471480, 0.851372,
		0.219701, 0.827082, -0.517366,
		-0.948081, 0.306011, 0.086596,
		38.869862, 32.476665, 42.245495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583946, 33.042496, 42.412689>,  <39.533520, 32.262455, 42.184879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583946, 33.042496, 42.412689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217937, 32.896416, 42.481228>,  <38.998333, 32.808769, 42.522350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217937, 32.896416, 42.481228>,  <39.583946, 33.042496, 42.412689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217937, 32.896416, 42.481228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006587, 0.411180, 0.911530,
		-0.403346, 0.835201, -0.373833,
		-0.915024, -0.365200, 0.171350,
		38.943432, 32.786858, 42.532631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200951, 33.657295, 42.706455>,  <39.583946, 33.042496, 42.412689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200951, 33.657295, 42.706455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013062, 33.323830, 42.822632>,  <38.900326, 33.123749, 42.892338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013062, 33.323830, 42.822632>,  <39.200951, 33.657295, 42.706455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013062, 33.323830, 42.822632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236634, 0.198058, 0.951198,
		-0.850507, 0.515531, 0.104241,
		-0.469726, -0.833667, 0.290442,
		38.872143, 33.073730, 42.909763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739544, 33.892193, 43.179428>,  <39.200951, 33.657295, 42.706455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739544, 33.892193, 43.179428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795048, 33.503071, 43.253609>,  <38.828350, 33.269596, 43.298115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795048, 33.503071, 43.253609>,  <38.739544, 33.892193, 43.179428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795048, 33.503071, 43.253609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289409, 0.218918, 0.931836,
		-0.947095, -0.075631, 0.311916,
		0.138760, -0.972808, 0.185447,
		38.836678, 33.211227, 43.309242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636692, 33.838360, 43.866642>,  <38.739544, 33.892193, 43.179428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636692, 33.838360, 43.866642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803749, 33.477291, 43.825169>,  <38.903984, 33.260651, 43.800285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803749, 33.477291, 43.825169>,  <38.636692, 33.838360, 43.866642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803749, 33.477291, 43.825169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413355, 0.087134, 0.906391,
		-0.809142, -0.421409, 0.409517,
		0.417644, -0.902675, -0.103688,
		38.929043, 33.206490, 43.794064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579914, 33.583477, 44.581181>,  <38.636692, 33.838360, 43.866642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579914, 33.583477, 44.581181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858829, 33.386963, 44.372398>,  <39.026176, 33.269054, 44.247131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858829, 33.386963, 44.372398>,  <38.579914, 33.583477, 44.581181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858829, 33.386963, 44.372398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636026, 0.088262, 0.766603,
		-0.330552, -0.866516, 0.374013,
		0.697285, -0.491284, -0.521951,
		39.068016, 33.239578, 44.215813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636837, 32.916485, 44.967983>,  <38.579914, 33.583477, 44.581181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636837, 32.916485, 44.967983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986404, 32.952545, 44.776928>,  <39.196144, 32.974182, 44.662296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986404, 32.952545, 44.776928>,  <38.636837, 32.916485, 44.967983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986404, 32.952545, 44.776928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479391, 0.002507, 0.877598,
		0.080321, -0.995924, -0.041031,
		0.873918, 0.090160, -0.477638,
		39.248581, 32.979591, 44.633636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053467, 32.465282, 45.255444>,  <38.636837, 32.916485, 44.967983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053467, 32.465282, 45.255444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298252, 32.735668, 45.091213>,  <39.445126, 32.897900, 44.992676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298252, 32.735668, 45.091213>,  <39.053467, 32.465282, 45.255444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298252, 32.735668, 45.091213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584048, -0.036217, 0.810911,
		0.533278, -0.736043, -0.416960,
		0.611966, 0.675965, -0.410571,
		39.481842, 32.938457, 44.968040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815479, 32.228230, 45.352890>,  <39.053467, 32.465282, 45.255444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815479, 32.228230, 45.352890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840569, 32.623341, 45.295822>,  <39.855621, 32.860409, 45.261581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840569, 32.623341, 45.295822>,  <39.815479, 32.228230, 45.352890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840569, 32.623341, 45.295822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614564, 0.074403, 0.785350,
		0.786369, -0.136938, -0.602388,
		0.062725, 0.987781, -0.142666,
		39.859386, 32.919674, 45.253021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471184, 32.312241, 45.417233>,  <39.815479, 32.228230, 45.352890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471184, 32.312241, 45.417233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325325, 32.684616, 45.425106>,  <40.237808, 32.908043, 45.429829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325325, 32.684616, 45.425106>,  <40.471184, 32.312241, 45.417233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325325, 32.684616, 45.425106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642708, 0.236338, 0.728746,
		0.673766, 0.278385, -0.684501,
		-0.364646, 0.930938, 0.019683,
		40.215931, 32.963898, 45.431011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061653, 32.858395, 45.354900>,  <40.471184, 32.312241, 45.417233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061653, 32.858395, 45.354900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745449, 33.033371, 45.526360>,  <40.555725, 33.138355, 45.629234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745449, 33.033371, 45.526360>,  <41.061653, 32.858395, 45.354900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745449, 33.033371, 45.526360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597118, 0.394863, 0.698236,
		0.136178, 0.807917, -0.573346,
		-0.790509, 0.437440, 0.428650,
		40.508297, 33.164604, 45.654953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262489, 33.494514, 45.491978>,  <41.061653, 32.858395, 45.354900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262489, 33.494514, 45.491978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943523, 33.433861, 45.725605>,  <40.752144, 33.397469, 45.865780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943523, 33.433861, 45.725605>,  <41.262489, 33.494514, 45.491978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943523, 33.433861, 45.725605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450792, 0.493745, 0.743642,
		-0.401139, 0.856285, -0.325366,
		-0.797417, -0.151632, 0.584067,
		40.704300, 33.388371, 45.900826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139820, 34.178177, 45.791302>,  <41.262489, 33.494514, 45.491978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139820, 34.178177, 45.791302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945538, 33.925892, 46.033390>,  <40.828968, 33.774521, 46.178642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945538, 33.925892, 46.033390>,  <41.139820, 34.178177, 45.791302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945538, 33.925892, 46.033390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392441, 0.461335, 0.795713,
		-0.781077, 0.623994, 0.023446,
		-0.485704, -0.630715, 0.605219,
		40.799828, 33.736679, 46.214954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166397, 34.928032, 46.000492>,  <41.139820, 34.178177, 45.791302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166397, 34.928032, 46.000492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445816, 34.928253, 45.714264>,  <41.613468, 34.928387, 45.542526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445816, 34.928253, 45.714264>,  <41.166397, 34.928032, 46.000492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445816, 34.928253, 45.714264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715563, -0.004197, 0.698536,
		-0.002658, -0.999991, -0.003285,
		0.698543, 0.000494, -0.715567,
		41.655380, 34.928417, 45.499596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587353, 35.465771, 46.064114>,  <41.166397, 34.928032, 46.000492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587353, 35.465771, 46.064114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684891, 35.730621, 45.780670>,  <40.743412, 35.889530, 45.610603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684891, 35.730621, 45.780670>,  <40.587353, 35.465771, 46.064114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684891, 35.730621, 45.780670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808945, -0.264155, -0.525196,
		-0.534928, 0.701296, 0.471207,
		0.243846, 0.662122, -0.708613,
		40.758045, 35.929256, 45.568085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938816, 35.592007, 45.802933>,  <40.587353, 35.465771, 46.064114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938816, 35.592007, 45.802933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181786, 35.779438, 45.546349>,  <40.327568, 35.891899, 45.392399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181786, 35.779438, 45.546349>,  <39.938816, 35.592007, 45.802933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181786, 35.779438, 45.546349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740681, 0.042233, -0.670528,
		-0.287107, 0.882410, 0.372723,
		0.607421, 0.468582, -0.641459,
		40.364014, 35.920013, 45.353912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456486, 36.080929, 45.498676>,  <39.938816, 35.592007, 45.802933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456486, 36.080929, 45.498676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781879, 36.055634, 45.267422>,  <39.977116, 36.040455, 45.128670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781879, 36.055634, 45.267422>,  <39.456486, 36.080929, 45.498676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781879, 36.055634, 45.267422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573176, 0.081228, -0.815396,
		0.098524, 0.994688, 0.029832,
		0.813487, -0.063237, -0.578134,
		40.025925, 36.036663, 45.093983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485645, 36.622829, 45.110119>,  <39.456486, 36.080929, 45.498676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485645, 36.622829, 45.110119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709961, 36.373661, 44.891953>,  <39.844551, 36.224159, 44.761051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709961, 36.373661, 44.891953>,  <39.485645, 36.622829, 45.110119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709961, 36.373661, 44.891953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603887, 0.142930, -0.784150,
		0.566424, 0.769113, -0.296023,
		0.560790, -0.622925, -0.545416,
		39.878197, 36.186783, 44.728329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614140, 36.929066, 44.431236>,  <39.485645, 36.622829, 45.110119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614140, 36.929066, 44.431236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672600, 36.538280, 44.369026>,  <39.707676, 36.303810, 44.331699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672600, 36.538280, 44.369026>,  <39.614140, 36.929066, 44.431236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672600, 36.538280, 44.369026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515684, 0.058924, -0.854750,
		0.844222, 0.205118, -0.495192,
		0.146146, -0.976962, -0.155521,
		39.716442, 36.245193, 44.322369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684048, 36.968510, 43.724785>,  <39.614140, 36.929066, 44.431236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684048, 36.968510, 43.724785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613323, 36.597202, 43.855663>,  <39.570889, 36.374420, 43.934193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613323, 36.597202, 43.855663>,  <39.684048, 36.968510, 43.724785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613323, 36.597202, 43.855663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511953, -0.197186, -0.836075,
		0.840619, -0.315340, -0.440363,
		-0.176815, -0.928266, 0.327198,
		39.560280, 36.318722, 43.953823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931843, 36.481789, 43.142509>,  <39.684048, 36.968510, 43.724785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931843, 36.481789, 43.142509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668442, 36.293777, 43.377609>,  <39.510403, 36.180969, 43.518669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668442, 36.293777, 43.377609>,  <39.931843, 36.481789, 43.142509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668442, 36.293777, 43.377609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577676, -0.184863, -0.795057,
		0.482351, -0.863076, -0.149790,
		-0.658504, -0.470027, 0.587748,
		39.470890, 36.152771, 43.553932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850742, 35.906326, 42.814568>,  <39.931843, 36.481789, 43.142509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850742, 35.906326, 42.814568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530899, 35.951862, 43.050423>,  <39.338993, 35.979183, 43.191936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530899, 35.951862, 43.050423>,  <39.850742, 35.906326, 42.814568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530899, 35.951862, 43.050423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592403, -0.310482, -0.743411,
		0.098445, -0.943739, 0.315699,
		-0.799604, 0.113836, 0.589639,
		39.291019, 35.986012, 43.227314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501713, 35.264942, 42.772030>,  <39.850742, 35.906326, 42.814568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501713, 35.264942, 42.772030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238907, 35.541470, 42.892296>,  <39.081223, 35.707386, 42.964455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238907, 35.541470, 42.892296>,  <39.501713, 35.264942, 42.772030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238907, 35.541470, 42.892296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603300, -0.243004, -0.759591,
		-0.452059, -0.680457, 0.576732,
		-0.657017, 0.691323, 0.300668,
		39.041801, 35.748867, 42.982498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820244, 34.850147, 42.778217>,  <39.501713, 35.264942, 42.772030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820244, 34.850147, 42.778217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765533, 35.246243, 42.767403>,  <38.732708, 35.483898, 42.760914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765533, 35.246243, 42.767403>,  <38.820244, 34.850147, 42.778217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765533, 35.246243, 42.767403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586573, -0.102949, -0.803327,
		-0.798265, -0.094014, 0.594925,
		-0.136771, 0.990234, -0.027035,
		38.724503, 35.543312, 42.759293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167027, 34.908813, 42.349243>,  <38.820244, 34.850147, 42.778217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167027, 34.908813, 42.349243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277821, 35.293076, 42.341019>,  <38.344299, 35.523632, 42.336086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277821, 35.293076, 42.341019>,  <38.167027, 34.908813, 42.349243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277821, 35.293076, 42.341019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538722, 0.137545, -0.831180,
		-0.795648, 0.241302, 0.555623,
		0.276989, 0.960653, -0.020557,
		38.360916, 35.581272, 42.334850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674374, 35.341560, 42.278862>,  <38.167027, 34.908813, 42.349243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674374, 35.341560, 42.278862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969814, 35.562782, 42.124668>,  <38.147079, 35.695515, 42.032154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969814, 35.562782, 42.124668>,  <37.674374, 35.341560, 42.278862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969814, 35.562782, 42.124668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557591, 0.179805, -0.810409,
		-0.378889, 0.813511, 0.441183,
		0.738604, 0.553055, -0.385480,
		38.191395, 35.728699, 42.009026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304482, 35.710361, 41.912052>,  <37.674374, 35.341560, 42.278862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304482, 35.710361, 41.912052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682846, 35.799217, 41.817471>,  <37.909863, 35.852531, 41.760723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682846, 35.799217, 41.817471>,  <37.304482, 35.710361, 41.912052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682846, 35.799217, 41.817471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285059, 0.221076, -0.932666,
		-0.154913, 0.949620, 0.272442,
		0.945909, 0.222144, -0.236451,
		37.966618, 35.865860, 41.746536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288212, 36.285542, 41.455101>,  <37.304482, 35.710361, 41.912052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288212, 36.285542, 41.455101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622143, 36.075272, 41.389713>,  <37.822502, 35.949108, 41.350479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622143, 36.075272, 41.389713>,  <37.288212, 36.285542, 41.455101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622143, 36.075272, 41.389713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231491, -0.065798, -0.970609,
		0.499468, 0.848138, -0.176619,
		0.834831, -0.525674, -0.163472,
		37.872593, 35.917568, 41.340672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564217, 36.565651, 40.742836>,  <37.288212, 36.285542, 41.455101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564217, 36.565651, 40.742836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732666, 36.210632, 40.817570>,  <37.833736, 35.997620, 40.862411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732666, 36.210632, 40.817570>,  <37.564217, 36.565651, 40.742836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732666, 36.210632, 40.817570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085228, -0.243805, -0.966072,
		0.902990, 0.390912, -0.178316,
		0.421124, -0.887551, 0.186837,
		37.859005, 35.944366, 40.873619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004826, 36.504955, 40.186462>,  <37.564217, 36.565651, 40.742836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004826, 36.504955, 40.186462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951931, 36.136047, 40.331749>,  <37.920197, 35.914703, 40.418922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951931, 36.136047, 40.331749>,  <38.004826, 36.504955, 40.186462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951931, 36.136047, 40.331749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004583, -0.365863, -0.930658,
		0.991208, -0.124729, 0.044153,
		-0.132234, -0.922273, 0.363218,
		37.912262, 35.859367, 40.440716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407074, 36.206379, 39.825539>,  <38.004826, 36.504955, 40.186462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407074, 36.206379, 39.825539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158222, 35.920506, 39.953403>,  <38.008911, 35.748981, 40.030125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158222, 35.920506, 39.953403>,  <38.407074, 36.206379, 39.825539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158222, 35.920506, 39.953403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027522, -0.428013, -0.903353,
		0.782434, -0.553201, 0.285947,
		-0.622125, -0.714684, 0.319667,
		37.971584, 35.706100, 40.049305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573566, 35.636898, 39.412914>,  <38.407074, 36.206379, 39.825539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573566, 35.636898, 39.412914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225845, 35.502708, 39.558121>,  <38.017212, 35.422195, 39.645245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225845, 35.502708, 39.558121>,  <38.573566, 35.636898, 39.412914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225845, 35.502708, 39.558121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061081, -0.655880, -0.752390,
		0.490499, -0.676225, 0.549664,
		-0.869299, -0.335472, 0.363013,
		37.965057, 35.402065, 39.667023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606342, 34.890263, 39.391861>,  <38.573566, 35.636898, 39.412914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606342, 34.890263, 39.391861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221756, 34.996506, 39.420277>,  <37.991005, 35.060249, 39.437325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221756, 34.996506, 39.420277>,  <38.606342, 34.890263, 39.391861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221756, 34.996506, 39.420277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205202, -0.521272, -0.828352,
		-0.182984, -0.811006, 0.555686,
		-0.961462, 0.265603, 0.071035,
		37.933319, 35.076187, 39.441586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325184, 34.289673, 39.375050>,  <38.606342, 34.890263, 39.391861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325184, 34.289673, 39.375050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074516, 34.579391, 39.260029>,  <37.924114, 34.753223, 39.191017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074516, 34.579391, 39.260029>,  <38.325184, 34.289673, 39.375050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074516, 34.579391, 39.260029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109018, -0.446842, -0.887946,
		-0.771622, -0.525101, 0.358983,
		-0.626669, 0.724294, -0.287547,
		37.886517, 34.796680, 39.173763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676697, 33.889614, 39.154175>,  <38.325184, 34.289673, 39.375050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676697, 33.889614, 39.154175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668621, 34.245697, 38.972134>,  <37.663776, 34.459347, 38.862911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668621, 34.245697, 38.972134>,  <37.676697, 33.889614, 39.154175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668621, 34.245697, 38.972134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271227, -0.442999, -0.854510,
		-0.962304, 0.106183, 0.250394,
		-0.020190, 0.890212, -0.455099,
		37.662563, 34.512760, 38.835606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171986, 33.713711, 38.594967>,  <37.676697, 33.889614, 39.154175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171986, 33.713711, 38.594967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359585, 34.057465, 38.513485>,  <37.472145, 34.263718, 38.464596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359585, 34.057465, 38.513485>,  <37.171986, 33.713711, 38.594967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359585, 34.057465, 38.513485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153383, -0.147889, -0.977038,
		-0.869779, 0.489474, 0.062455,
		0.468998, 0.859386, -0.203708,
		37.500282, 34.315281, 38.452374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775360, 34.051136, 38.124718>,  <37.171986, 33.713711, 38.594967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775360, 34.051136, 38.124718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149830, 34.189232, 38.098228>,  <37.374512, 34.272091, 38.082336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149830, 34.189232, 38.098228>,  <36.775360, 34.051136, 38.124718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149830, 34.189232, 38.098228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003047, -0.180398, -0.983589,
		-0.351522, 0.921013, -0.167832,
		0.936175, 0.345241, -0.066220,
		37.430683, 34.292805, 38.078362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812939, 34.226345, 37.425655>,  <36.775360, 34.051136, 38.124718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812939, 34.226345, 37.425655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197929, 34.264584, 37.527248>,  <37.428925, 34.287529, 37.588203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197929, 34.264584, 37.527248>,  <36.812939, 34.226345, 37.425655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197929, 34.264584, 37.527248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267472, -0.175992, -0.947357,
		-0.045869, 0.979738, -0.194958,
		0.962473, 0.095600, 0.253980,
		37.486671, 34.293262, 37.603443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133591, 34.583534, 36.771236>,  <36.812939, 34.226345, 37.425655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133591, 34.583534, 36.771236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401062, 34.404972, 37.009090>,  <37.561546, 34.297836, 37.151802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401062, 34.404972, 37.009090>,  <37.133591, 34.583534, 36.771236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401062, 34.404972, 37.009090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562668, -0.219009, -0.797145,
		0.486078, 0.867617, 0.104730,
		0.668680, -0.446403, 0.594636,
		37.601665, 34.271049, 37.187481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714939, 34.785332, 36.504627>,  <37.133591, 34.583534, 36.771236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714939, 34.785332, 36.504627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784321, 34.461014, 36.728241>,  <37.825951, 34.266422, 36.862411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784321, 34.461014, 36.728241>,  <37.714939, 34.785332, 36.504627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784321, 34.461014, 36.728241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529114, -0.402039, -0.747264,
		0.830633, 0.425413, 0.359267,
		0.173456, -0.810795, 0.559038,
		37.836357, 34.217773, 36.895954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545242, 34.601662, 36.617203>,  <37.714939, 34.785332, 36.504627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545242, 34.601662, 36.617203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308849, 34.281101, 36.654087>,  <38.167015, 34.088764, 36.676216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308849, 34.281101, 36.654087>,  <38.545242, 34.601662, 36.617203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308849, 34.281101, 36.654087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511637, -0.460745, -0.725218,
		0.623674, -0.381412, 0.682316,
		-0.590981, -0.801398, 0.092210,
		38.131554, 34.040680, 36.681751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063820, 34.107101, 36.628952>,  <38.545242, 34.601662, 36.617203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063820, 34.107101, 36.628952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720177, 33.921848, 36.541832>,  <38.513988, 33.810696, 36.489559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720177, 33.921848, 36.541832>,  <39.063820, 34.107101, 36.628952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720177, 33.921848, 36.541832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463547, -0.523786, -0.714683,
		0.216912, -0.714953, 0.664674,
		-0.859112, -0.463131, -0.217799,
		38.462444, 33.782909, 36.476494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161583, 33.463539, 36.818150>,  <39.063820, 34.107101, 36.628952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161583, 33.463539, 36.818150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876179, 33.461662, 36.537899>,  <38.704937, 33.460537, 36.369747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876179, 33.461662, 36.537899>,  <39.161583, 33.463539, 36.818150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876179, 33.461662, 36.537899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614671, -0.484132, -0.622732,
		-0.336272, -0.874982, 0.348320,
		-0.713512, -0.004694, -0.700627,
		38.662125, 33.460255, 36.327709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136570, 32.707588, 36.501865>,  <39.161583, 33.463539, 36.818150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136570, 32.707588, 36.501865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945606, 32.939106, 36.237419>,  <38.831028, 33.078018, 36.078751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945606, 32.939106, 36.237419>,  <39.136570, 32.707588, 36.501865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945606, 32.939106, 36.237419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455934, -0.480000, -0.749483,
		-0.751134, -0.659236, -0.034736,
		-0.477413, 0.578799, -0.661112,
		38.802383, 33.112747, 36.039085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887424, 32.192219, 35.966644>,  <39.136570, 32.707588, 36.501865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887424, 32.192219, 35.966644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880852, 32.541157, 35.771198>,  <38.876907, 32.750519, 35.653931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880852, 32.541157, 35.771198>,  <38.887424, 32.192219, 35.966644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880852, 32.541157, 35.771198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452260, -0.429349, -0.781742,
		-0.891735, -0.233823, -0.387474,
		-0.016427, 0.872345, -0.488614,
		38.875923, 32.802860, 35.624615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426559, 32.220276, 35.271313>,  <38.887424, 32.192219, 35.966644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426559, 32.220276, 35.271313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702518, 32.507114, 35.231674>,  <38.868092, 32.679218, 35.207890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702518, 32.507114, 35.231674>,  <38.426559, 32.220276, 35.271313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702518, 32.507114, 35.231674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157150, -0.281987, -0.946460,
		-0.706647, 0.637384, -0.307232,
		0.689894, 0.717095, -0.099100,
		38.909489, 32.722244, 35.201942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358063, 32.480553, 34.571785>,  <38.426559, 32.220276, 35.271313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358063, 32.480553, 34.571785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721260, 32.613380, 34.673981>,  <38.939178, 32.693077, 34.735298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721260, 32.613380, 34.673981>,  <38.358063, 32.480553, 34.571785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721260, 32.613380, 34.673981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275862, -0.014870, -0.961082,
		-0.315348, 0.943137, -0.105107,
		0.907995, 0.332070, 0.255487,
		38.993660, 32.713001, 34.750626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420139, 32.933205, 34.053349>,  <38.358063, 32.480553, 34.571785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420139, 32.933205, 34.053349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787052, 32.904373, 34.210011>,  <39.007202, 32.887074, 34.304008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787052, 32.904373, 34.210011>,  <38.420139, 32.933205, 34.053349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787052, 32.904373, 34.210011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397759, 0.117959, -0.909875,
		0.019381, 0.990399, 0.136871,
		0.917285, -0.072076, 0.391654,
		39.062237, 32.882751, 34.327507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746471, 33.442383, 33.629818>,  <38.420139, 32.933205, 34.053349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746471, 33.442383, 33.629818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004524, 33.178162, 33.783428>,  <39.159355, 33.019630, 33.875595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004524, 33.178162, 33.783428>,  <38.746471, 33.442383, 33.629818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004524, 33.178162, 33.783428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505079, -0.008456, -0.863031,
		0.573326, 0.750732, 0.328176,
		0.645130, -0.660553, 0.384027,
		39.198063, 32.979996, 33.898636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452869, 33.656090, 33.486855>,  <38.746471, 33.442383, 33.629818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452869, 33.656090, 33.486855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496933, 33.262669, 33.544109>,  <39.523373, 33.026615, 33.578461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496933, 33.262669, 33.544109>,  <39.452869, 33.656090, 33.486855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496933, 33.262669, 33.544109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602555, -0.048443, -0.796606,
		0.790438, 0.174001, 0.587309,
		0.110159, -0.983553, 0.143136,
		39.529980, 32.967602, 33.587051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217712, 33.567127, 33.545429>,  <39.452869, 33.656090, 33.486855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217712, 33.567127, 33.545429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043159, 33.234131, 33.408882>,  <39.938427, 33.034332, 33.326954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043159, 33.234131, 33.408882>,  <40.217712, 33.567127, 33.545429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043159, 33.234131, 33.408882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587891, 0.023403, -0.808602,
		0.681141, -0.553546, 0.479200,
		-0.436384, -0.832489, -0.341366,
		39.912243, 32.984383, 33.306473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740784, 33.236595, 33.128429>,  <40.217712, 33.567127, 33.545429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740784, 33.236595, 33.128429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412025, 33.036640, 33.019176>,  <40.214771, 32.916668, 32.953625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412025, 33.036640, 33.019176>,  <40.740784, 33.236595, 33.128429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412025, 33.036640, 33.019176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410725, -0.187797, -0.892209,
		0.394710, -0.845485, 0.359666,
		-0.821893, -0.499888, -0.273137,
		40.165459, 32.886673, 32.937237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921555, 32.578434, 32.875103>,  <40.740784, 33.236595, 33.128429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921555, 32.578434, 32.875103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567543, 32.655998, 32.705814>,  <40.355137, 32.702538, 32.604240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567543, 32.655998, 32.705814>,  <40.921555, 32.578434, 32.875103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567543, 32.655998, 32.705814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434387, 0.017046, -0.900565,
		-0.167414, -0.980871, -0.099318,
		-0.885031, 0.193910, -0.423224,
		40.302032, 32.714172, 32.578846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964375, 32.199806, 32.307014>,  <40.921555, 32.578434, 32.875103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964375, 32.199806, 32.307014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678326, 32.472374, 32.244709>,  <40.506695, 32.635914, 32.207325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678326, 32.472374, 32.244709>,  <40.964375, 32.199806, 32.307014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678326, 32.472374, 32.244709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276939, 0.071598, -0.958216,
		-0.641794, -0.728383, -0.239913,
		-0.715126, 0.681419, -0.155766,
		40.463787, 32.676800, 32.197979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629883, 31.848900, 32.005749>,  <40.964375, 32.199806, 32.307014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629883, 31.848900, 32.005749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910564, 31.659584, 31.792728>,  <42.078976, 31.545996, 31.664917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910564, 31.659584, 31.792728>,  <41.629883, 31.848900, 32.005749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910564, 31.659584, 31.792728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631041, 0.759867, 0.156171,
		0.330751, -0.445645, 0.831868,
		0.701706, -0.473289, -0.532547,
		42.121075, 31.517597, 31.632965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192730, 32.085384, 32.313053>,  <41.629883, 31.848900, 32.005749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192730, 32.085384, 32.313053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317780, 31.949520, 31.958225>,  <42.392807, 31.868000, 31.745329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317780, 31.949520, 31.958225>,  <42.192730, 32.085384, 32.313053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317780, 31.949520, 31.958225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707010, 0.706877, -0.021503,
		0.634354, -0.620446, 0.461131,
		0.312621, -0.339665, -0.887071,
		42.411568, 31.847620, 31.692104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867905, 32.018581, 32.421917>,  <42.192730, 32.085384, 32.313053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867905, 32.018581, 32.421917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774689, 32.074905, 32.037029>,  <42.718758, 32.108700, 31.806097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774689, 32.074905, 32.037029>,  <42.867905, 32.018581, 32.421917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774689, 32.074905, 32.037029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567780, 0.823003, -0.017074,
		0.789506, -0.550308, -0.271740,
		-0.233038, 0.140809, -0.962219,
		42.704777, 32.117149, 31.748363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453354, 32.063320, 32.039879>,  <42.867905, 32.018581, 32.421917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453354, 32.063320, 32.039879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177570, 32.289276, 31.858532>,  <43.012100, 32.424850, 31.749723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177570, 32.289276, 31.858532>,  <43.453354, 32.063320, 32.039879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177570, 32.289276, 31.858532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659026, 0.748945, -0.069036,
		0.300552, -0.346380, -0.888645,
		-0.689459, 0.564891, -0.453370,
		42.970734, 32.458744, 31.722521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793736, 32.404209, 31.442667>,  <43.453354, 32.063320, 32.039879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793736, 32.404209, 31.442667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486782, 32.635414, 31.553675>,  <43.302608, 32.774136, 31.620279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486782, 32.635414, 31.553675>,  <43.793736, 32.404209, 31.442667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486782, 32.635414, 31.553675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600070, 0.799919, -0.006766,
		-0.225905, 0.161340, -0.960696,
		-0.767388, 0.578013, 0.277521,
		43.256565, 32.808819, 31.636930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460320, 32.803574, 30.873739>,  <43.793736, 32.404209, 31.442667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460320, 32.803574, 30.873739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446861, 32.955235, 31.243629>,  <43.438786, 33.046230, 31.465563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446861, 32.955235, 31.243629>,  <43.460320, 32.803574, 30.873739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446861, 32.955235, 31.243629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429258, 0.841041, -0.329223,
		-0.902555, 0.385869, -0.191048,
		-0.033643, 0.379150, 0.924723,
		43.436768, 33.068981, 31.521046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014370, 33.386478, 30.967314>,  <43.460320, 32.803574, 30.873739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014370, 33.386478, 30.967314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345268, 33.390953, 31.192003>,  <43.543808, 33.393639, 31.326817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345268, 33.390953, 31.192003>,  <43.014370, 33.386478, 30.967314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345268, 33.390953, 31.192003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209065, 0.921874, -0.326250,
		-0.521490, 0.387327, 0.760280,
		0.827249, 0.011188, 0.561725,
		43.593441, 33.394310, 31.360521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063171, 33.993847, 31.408367>,  <43.014370, 33.386478, 30.967314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063171, 33.993847, 31.408367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427006, 33.854111, 31.318371>,  <43.645306, 33.770271, 31.264372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427006, 33.854111, 31.318371>,  <43.063171, 33.993847, 31.408367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427006, 33.854111, 31.318371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241014, 0.884630, -0.399176,
		0.338482, 0.308858, 0.888840,
		0.909584, -0.349337, -0.224992,
		43.699883, 33.749310, 31.250874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578331, 34.541576, 31.655634>,  <43.063171, 33.993847, 31.408367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578331, 34.541576, 31.655634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759281, 34.317986, 31.377668>,  <43.867851, 34.183830, 31.210890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759281, 34.317986, 31.377668>,  <43.578331, 34.541576, 31.655634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759281, 34.317986, 31.377668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404564, 0.823036, -0.398673,
		0.794786, -0.100787, 0.598463,
		0.452375, -0.558976, -0.694912,
		43.894993, 34.150291, 31.169195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214359, 34.776474, 31.636675>,  <43.578331, 34.541576, 31.655634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214359, 34.776474, 31.636675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152866, 34.597488, 31.284279>,  <44.115971, 34.490097, 31.072842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152866, 34.597488, 31.284279>,  <44.214359, 34.776474, 31.636675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152866, 34.597488, 31.284279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471671, 0.750220, -0.463353,
		0.868270, -0.486769, 0.095722,
		-0.153733, -0.447465, -0.880989,
		44.106747, 34.463249, 31.019981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950855, 34.846142, 31.463263>,  <44.214359, 34.776474, 31.636675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950855, 34.846142, 31.463263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689255, 34.775471, 31.169033>,  <44.532295, 34.733067, 30.992495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689255, 34.775471, 31.169033>,  <44.950855, 34.846142, 31.463263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689255, 34.775471, 31.169033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470538, 0.666360, -0.578411,
		0.592348, -0.724396, -0.352667,
		-0.654001, -0.176677, -0.735573,
		44.493053, 34.722466, 30.948360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288525, 34.823650, 30.788681>,  <44.950855, 34.846142, 31.463263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288525, 34.823650, 30.788681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913921, 34.880558, 30.660484>,  <44.689159, 34.914703, 30.583567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913921, 34.880558, 30.660484>,  <45.288525, 34.823650, 30.788681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913921, 34.880558, 30.660484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334634, 0.635690, -0.695642,
		0.104765, -0.758721, -0.642936,
		-0.936506, 0.142269, -0.320492,
		44.632969, 34.923241, 30.564337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196190, 34.848892, 30.075464>,  <45.288525, 34.823650, 30.788681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196190, 34.848892, 30.075464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865261, 35.032921, 30.204382>,  <44.666702, 35.143337, 30.281733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865261, 35.032921, 30.204382>,  <45.196190, 34.848892, 30.075464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865261, 35.032921, 30.204382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083887, 0.668512, -0.738956,
		-0.555427, -0.584319, -0.591669,
		-0.827323, 0.460070, 0.322293,
		44.617065, 35.170940, 30.301069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849686, 35.075233, 29.499065>,  <45.196190, 34.848892, 30.075464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849686, 35.075233, 29.499065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656994, 35.283085, 29.781321>,  <44.541378, 35.407795, 29.950674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656994, 35.283085, 29.781321>,  <44.849686, 35.075233, 29.499065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656994, 35.283085, 29.781321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194090, 0.721962, -0.664153,
		-0.854554, -0.456901, -0.246939,
		-0.481733, 0.519626, 0.705636,
		44.512474, 35.438972, 29.993011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104862, 35.339622, 29.237932>,  <44.849686, 35.075233, 29.499065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104862, 35.339622, 29.237932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256210, 35.590534, 29.510212>,  <44.347019, 35.741081, 29.673580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256210, 35.590534, 29.510212>,  <44.104862, 35.339622, 29.237932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256210, 35.590534, 29.510212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120143, 0.762432, -0.635817,
		-0.917823, 0.158795, 0.363848,
		0.378374, 0.627282, 0.680699,
		44.369724, 35.778717, 29.714422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012733, 35.885887, 28.834805>,  <44.104862, 35.339622, 29.237932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012733, 35.885887, 28.834805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170219, 36.050423, 29.163630>,  <44.264713, 36.149143, 29.360924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170219, 36.050423, 29.163630>,  <44.012733, 35.885887, 28.834805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170219, 36.050423, 29.163630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080000, 0.906234, -0.415139,
		-0.915743, 0.097682, 0.389708,
		0.393718, 0.411337, 0.822063,
		44.288334, 36.173824, 29.410248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531071, 36.342949, 29.200504>,  <44.012733, 35.885887, 28.834805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531071, 36.342949, 29.200504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902885, 36.460957, 29.288973>,  <44.125977, 36.531761, 29.342054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902885, 36.460957, 29.288973>,  <43.531071, 36.342949, 29.200504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902885, 36.460957, 29.288973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126797, 0.819014, -0.559587,
		-0.346234, 0.492115, 0.798715,
		0.929540, 0.295023, 0.221172,
		44.181747, 36.549465, 29.355324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549015, 36.989544, 29.453276>,  <43.531071, 36.342949, 29.200504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549015, 36.989544, 29.453276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929623, 36.954742, 29.335262>,  <44.157986, 36.933861, 29.264454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929623, 36.954742, 29.335262>,  <43.549015, 36.989544, 29.453276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929623, 36.954742, 29.335262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099360, 0.820808, -0.562496,
		0.291104, 0.564540, 0.772369,
		0.951518, -0.087002, -0.295033,
		44.215076, 36.928642, 29.246752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824215, 37.698360, 29.536253>,  <43.549015, 36.989544, 29.453276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824215, 37.698360, 29.536253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.071583, 37.502968, 29.290022>,  <44.220005, 37.385731, 29.142284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.071583, 37.502968, 29.290022>,  <43.824215, 37.698360, 29.536253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071583, 37.502968, 29.290022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167719, 0.847326, -0.503894,
		0.767738, 0.208376, 0.605935,
		0.618424, -0.488486, -0.615576,
		44.257111, 37.356422, 29.105349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340172, 38.235065, 29.354828>,  <43.824215, 37.698360, 29.536253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340172, 38.235065, 29.354828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356918, 37.955917, 29.068827>,  <44.366966, 37.788429, 28.897226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356918, 37.955917, 29.068827>,  <44.340172, 38.235065, 29.354828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356918, 37.955917, 29.068827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316383, 0.688063, -0.653048,
		0.947707, -0.198873, 0.249600,
		0.041867, -0.697868, -0.715002,
		44.369480, 37.746555, 28.854326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971523, 38.422329, 28.943830>,  <44.340172, 38.235065, 29.354828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971523, 38.422329, 28.943830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783764, 38.181984, 28.685024>,  <44.671108, 38.037777, 28.529741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783764, 38.181984, 28.685024>,  <44.971523, 38.422329, 28.943830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783764, 38.181984, 28.685024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371274, 0.530525, -0.762036,
		0.801138, -0.597917, -0.025942,
		-0.469397, -0.600864, -0.647015,
		44.642944, 38.001724, 28.490919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467693, 38.084759, 28.440983>,  <44.971523, 38.422329, 28.943830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467693, 38.084759, 28.440983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107010, 38.103275, 28.269041>,  <44.890598, 38.114384, 28.165876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107010, 38.103275, 28.269041>,  <45.467693, 38.084759, 28.440983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107010, 38.103275, 28.269041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377943, 0.567196, -0.731743,
		0.209940, -0.822280, -0.528942,
		-0.901711, 0.046288, -0.429853,
		44.836494, 38.117161, 28.140085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622543, 37.991341, 27.833231>,  <45.467693, 38.084759, 28.440983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622543, 37.991341, 27.833231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252434, 38.143063, 27.833088>,  <45.030369, 38.234097, 27.833002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252434, 38.143063, 27.833088>,  <45.622543, 37.991341, 27.833231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252434, 38.143063, 27.833088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181142, 0.441042, -0.879016,
		-0.333260, -0.813393, -0.476792,
		-0.925271, 0.379308, -0.000359,
		44.974854, 38.256855, 27.832981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515083, 38.067352, 27.126690>,  <45.622543, 37.991341, 27.833231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.515083, 38.067352, 27.126690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235622, 38.308315, 27.281082>,  <45.067944, 38.452892, 27.373718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235622, 38.308315, 27.281082>,  <45.515083, 38.067352, 27.126690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235622, 38.308315, 27.281082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043938, 0.574597, -0.817257,
		-0.714109, -0.554021, -0.427914,
		-0.698655, 0.602412, 0.385982,
		45.026028, 38.489040, 27.396877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170612, 38.222340, 26.512793>,  <45.515083, 38.067352, 27.126690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170612, 38.222340, 26.512793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053642, 38.503075, 26.772614>,  <44.983459, 38.671516, 26.928507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053642, 38.503075, 26.772614>,  <45.170612, 38.222340, 26.512793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053642, 38.503075, 26.772614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067997, 0.662263, -0.746180,
		-0.953867, -0.262370, -0.145941,
		-0.292426, 0.701833, 0.649552,
		44.965916, 38.713623, 26.967480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596664, 38.499702, 26.228876>,  <45.170612, 38.222340, 26.512793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596664, 38.499702, 26.228876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691620, 38.786591, 26.490944>,  <44.748592, 38.958721, 26.648184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691620, 38.786591, 26.490944>,  <44.596664, 38.499702, 26.228876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691620, 38.786591, 26.490944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075194, 0.685990, -0.723715,
		-0.968500, 0.122538, 0.216778,
		0.237390, 0.717218, 0.655167,
		44.762836, 39.001755, 26.687494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141590, 39.040745, 26.133492>,  <44.596664, 38.499702, 26.228876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141590, 39.040745, 26.133492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461868, 39.200283, 26.312292>,  <44.654034, 39.296005, 26.419573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461868, 39.200283, 26.312292>,  <44.141590, 39.040745, 26.133492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461868, 39.200283, 26.312292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147653, 0.591752, -0.792482,
		-0.580593, 0.700537, 0.414922,
		0.800694, 0.398845, 0.447003,
		44.702076, 39.319935, 26.446394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068325, 39.750870, 25.981983>,  <44.141590, 39.040745, 26.133492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068325, 39.750870, 25.981983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453712, 39.711830, 26.081747>,  <44.684944, 39.688408, 26.141605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453712, 39.711830, 26.081747>,  <44.068325, 39.750870, 25.981983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453712, 39.711830, 26.081747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263790, 0.506837, -0.820689,
		-0.046315, 0.856500, 0.514065,
		0.963468, -0.097595, 0.249410,
		44.742752, 39.682552, 26.156570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593216, 40.330135, 26.189741>,  <44.068325, 39.750870, 25.981983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593216, 40.330135, 26.189741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863003, 40.061539, 26.066973>,  <45.024876, 39.900383, 25.993313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863003, 40.061539, 26.066973>,  <44.593216, 40.330135, 26.189741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863003, 40.061539, 26.066973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335698, 0.649167, -0.682561,
		0.657573, 0.357332, 0.663258,
		0.674466, -0.671488, -0.306919,
		45.065342, 39.860092, 25.974897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.303455, 40.631233, 26.142643>,  <44.593216, 40.330135, 26.189741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.303455, 40.631233, 26.142643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.286583, 40.344177, 25.864590>,  <45.276459, 40.171944, 25.697758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.286583, 40.344177, 25.864590>,  <45.303455, 40.631233, 26.142643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286583, 40.344177, 25.864590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394306, 0.627321, -0.671559,
		0.918011, -0.302424, 0.256508,
		-0.042183, -0.717641, -0.695135,
		45.273930, 40.128883, 25.656050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937687, 40.734863, 25.739979>,  <45.303455, 40.631233, 26.142643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937687, 40.734863, 25.739979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665337, 40.543156, 25.518456>,  <45.501926, 40.428131, 25.385542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665337, 40.543156, 25.518456>,  <45.937687, 40.734863, 25.739979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665337, 40.543156, 25.518456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325561, 0.479293, -0.815039,
		0.656059, -0.735242, -0.170310,
		-0.680879, -0.479267, -0.553811,
		45.461071, 40.399376, 25.352312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.247818, 40.295269, 25.185484>,  <45.937687, 40.734863, 25.739979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.247818, 40.295269, 25.185484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914791, 40.511963, 25.139252>,  <45.714977, 40.641979, 25.111513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.914791, 40.511963, 25.139252>,  <46.247818, 40.295269, 25.185484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.914791, 40.511963, 25.139252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508953, 0.665766, -0.545640,
		-0.218646, -0.513103, -0.830012,
		-0.832563, 0.541739, -0.115579,
		45.665024, 40.674484, 25.104578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.481945, 39.878727, 25.832912>,  <46.247818, 40.295269, 25.185484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.481945, 39.878727, 25.832912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.793583, 39.712143, 26.020351>,  <46.980564, 39.612194, 26.132814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.793583, 39.712143, 26.020351>,  <46.481945, 39.878727, 25.832912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.793583, 39.712143, 26.020351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505283, -0.859587, 0.076145,
		0.371087, -0.296097, -0.880125,
		0.779091, -0.416456, 0.468595,
		47.027309, 39.587208, 26.160931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.288094, 40.004963, 25.814789>,  <46.481945, 39.878727, 25.832912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.288094, 40.004963, 25.814789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.183826, 40.384975, 25.883490>,  <47.121265, 40.612984, 25.924711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.183826, 40.384975, 25.883490>,  <47.288094, 40.004963, 25.814789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.183826, 40.384975, 25.883490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254615, -0.239255, 0.936978,
		0.931249, 0.200507, 0.304258,
		-0.260666, 0.950029, 0.171754,
		47.105625, 40.669983, 25.935017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.589378, 40.413010, 26.383015>,  <47.288094, 40.004963, 25.814789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.589378, 40.413010, 26.383015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211151, 40.540310, 26.355824>,  <46.984215, 40.616692, 26.339510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211151, 40.540310, 26.355824>,  <47.589378, 40.413010, 26.383015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.211151, 40.540310, 26.355824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116765, -0.136810, 0.983692,
		0.303764, 0.938082, 0.166523,
		-0.945565, 0.318254, -0.067977,
		46.927483, 40.635788, 26.335430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.610104, 40.853691, 26.889906>,  <47.589378, 40.413010, 26.383015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.610104, 40.853691, 26.889906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.246868, 40.692333, 26.844925>,  <47.028927, 40.595520, 26.817936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.246868, 40.692333, 26.844925>,  <47.610104, 40.853691, 26.889906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.246868, 40.692333, 26.844925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130642, 0.017758, 0.991270,
		-0.397876, 0.914854, -0.068826,
		-0.908090, -0.403394, -0.112453,
		46.974442, 40.571316, 26.811190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.158306, 41.227325, 27.286079>,  <47.610104, 40.853691, 26.889906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.158306, 41.227325, 27.286079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988079, 40.868225, 27.240599>,  <46.885944, 40.652763, 27.213310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988079, 40.868225, 27.240599>,  <47.158306, 41.227325, 27.286079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.988079, 40.868225, 27.240599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094386, -0.080926, 0.992241,
		-0.899991, 0.432997, -0.050296,
		-0.425568, -0.897755, -0.113701,
		46.860409, 40.598900, 27.206488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.930763, 41.041401, 27.999372>,  <47.158306, 41.227325, 27.286079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.930763, 41.041401, 27.999372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.790581, 40.717125, 27.811775>,  <46.706470, 40.522560, 27.699217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.790581, 40.717125, 27.811775>,  <46.930763, 41.041401, 27.999372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.790581, 40.717125, 27.811775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232339, -0.409843, 0.882070,
		-0.907301, 0.418096, -0.044722,
		-0.350461, -0.810694, -0.468991,
		46.685444, 40.473915, 27.671078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.448811, 40.986805, 28.402697>,  <46.930763, 41.041401, 27.999372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.448811, 40.986805, 28.402697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505470, 40.640755, 28.210241>,  <46.539467, 40.433125, 28.094769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505470, 40.640755, 28.210241>,  <46.448811, 40.986805, 28.402697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.505470, 40.640755, 28.210241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113333, -0.497018, 0.860307,
		-0.983408, -0.067334, -0.168450,
		0.141651, -0.865124, -0.481140,
		46.547966, 40.381218, 28.065899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920120, 40.452370, 28.602104>,  <46.448811, 40.986805, 28.402697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920120, 40.452370, 28.602104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219090, 40.233433, 28.451494>,  <46.398472, 40.102070, 28.361128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.219090, 40.233433, 28.451494>,  <45.920120, 40.452370, 28.602104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.219090, 40.233433, 28.451494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074540, -0.632277, 0.771149,
		-0.660152, -0.548309, -0.513377,
		0.747424, -0.547342, -0.376528,
		46.443317, 40.069229, 28.338537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.724518, 39.792011, 28.560266>,  <45.920120, 40.452370, 28.602104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.724518, 39.792011, 28.560266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121990, 39.747608, 28.566963>,  <46.360474, 39.720966, 28.570980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.121990, 39.747608, 28.566963>,  <45.724518, 39.792011, 28.560266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121990, 39.747608, 28.566963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092598, -0.726127, 0.681297,
		-0.063474, -0.678540, -0.731816,
		0.993678, -0.111009, 0.016741,
		46.420094, 39.714306, 28.571985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865360, 39.057308, 28.528015>,  <45.724518, 39.792011, 28.560266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865360, 39.057308, 28.528015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.215282, 39.191166, 28.668144>,  <46.425236, 39.271481, 28.752222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.215282, 39.191166, 28.668144>,  <45.865360, 39.057308, 28.528015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.215282, 39.191166, 28.668144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038470, -0.768802, 0.638329,
		0.482941, -0.544938, -0.685427,
		0.874807, 0.334644, 0.350323,
		46.477726, 39.291557, 28.773241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.372784, 38.469975, 28.468601>,  <45.865360, 39.057308, 28.528015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.372784, 38.469975, 28.468601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530014, 38.725769, 28.732889>,  <46.624352, 38.879246, 28.891462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530014, 38.725769, 28.732889>,  <46.372784, 38.469975, 28.468601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.530014, 38.725769, 28.732889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184182, -0.758752, 0.624797,
		0.900871, -0.123901, -0.416029,
		0.393076, 0.639487, 0.660718,
		46.647938, 38.917614, 28.931105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.083557, 38.245789, 28.617065>,  <46.372784, 38.469975, 28.468601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.083557, 38.245789, 28.617065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.951168, 38.435871, 28.943165>,  <46.871735, 38.549923, 29.138824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.951168, 38.435871, 28.943165>,  <47.083557, 38.245789, 28.617065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.951168, 38.435871, 28.943165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165220, -0.821413, 0.545878,
		0.929064, 0.315366, 0.193351,
		-0.330972, 0.475210, 0.815250,
		46.851875, 38.578434, 29.187740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.518951, 38.020443, 29.157042>,  <47.083557, 38.245789, 28.617065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.518951, 38.020443, 29.157042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.216507, 38.188412, 29.357824>,  <47.035042, 38.289192, 29.478294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.216507, 38.188412, 29.357824>,  <47.518951, 38.020443, 29.157042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.216507, 38.188412, 29.357824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012318, -0.757731, 0.652451,
		0.654330, 0.499507, 0.567754,
		-0.756109, 0.419925, 0.501959,
		46.989674, 38.314388, 29.508411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.767719, 38.018990, 29.851463>,  <47.518951, 38.020443, 29.157042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.767719, 38.018990, 29.851463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369495, 38.056393, 29.847126>,  <47.130562, 38.078835, 29.844522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.369495, 38.056393, 29.847126>,  <47.767719, 38.018990, 29.851463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.369495, 38.056393, 29.847126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079582, -0.774534, 0.627506,
		0.050276, 0.625583, 0.778537,
		-0.995560, 0.093506, -0.010845,
		47.070827, 38.084446, 29.843872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.569164, 37.977890, 30.578812>,  <47.767719, 38.018990, 29.851463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.569164, 37.977890, 30.578812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.219429, 37.911888, 30.396252>,  <47.009586, 37.872288, 30.286716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.219429, 37.911888, 30.396252>,  <47.569164, 37.977890, 30.578812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.219429, 37.911888, 30.396252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263989, -0.627419, 0.732567,
		-0.407228, 0.760999, 0.505021,
		-0.874342, -0.165002, -0.456398,
		46.957127, 37.862389, 30.259333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.010208, 38.146187, 31.043856>,  <47.569164, 37.977890, 30.578812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.010208, 38.146187, 31.043856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.890522, 37.863937, 30.786930>,  <46.818710, 37.694588, 30.632774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.890522, 37.863937, 30.786930>,  <47.010208, 38.146187, 31.043856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.890522, 37.863937, 30.786930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285177, -0.576257, 0.765900,
		-0.910573, 0.412344, -0.028800,
		-0.299218, -0.705621, -0.642314,
		46.800758, 37.652252, 30.594236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.538105, 37.702000, 31.423111>,  <47.010208, 38.146187, 31.043856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.538105, 37.702000, 31.423111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.602356, 37.475258, 31.099909>,  <46.640907, 37.339214, 30.905987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.602356, 37.475258, 31.099909>,  <46.538105, 37.702000, 31.423111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602356, 37.475258, 31.099909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271768, -0.812393, 0.515907,
		-0.948863, 0.136720, -0.284547,
		0.160629, -0.566856, -0.808005,
		46.650543, 37.305202, 30.857508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922363, 37.215271, 31.439337>,  <46.538105, 37.702000, 31.423111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922363, 37.215271, 31.439337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180206, 37.057705, 31.177248>,  <46.334911, 36.963165, 31.019995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180206, 37.057705, 31.177248>,  <45.922363, 37.215271, 31.439337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180206, 37.057705, 31.177248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254320, -0.918718, 0.302125,
		-0.720974, -0.028116, -0.692391,
		0.644607, -0.393913, -0.655221,
		46.373589, 36.939529, 30.980682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.558952, 36.707802, 31.076294>,  <45.922363, 37.215271, 31.439337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.558952, 36.707802, 31.076294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934849, 36.582733, 31.020967>,  <46.160385, 36.507694, 30.987772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934849, 36.582733, 31.020967>,  <45.558952, 36.707802, 31.076294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934849, 36.582733, 31.020967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271114, -0.927961, 0.255707,
		-0.208303, -0.202798, -0.956809,
		0.939738, -0.312669, -0.138315,
		46.216770, 36.488934, 30.979473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490730, 36.088959, 30.655630>,  <45.558952, 36.707802, 31.076294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490730, 36.088959, 30.655630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857059, 36.080467, 30.816038>,  <46.076859, 36.075371, 30.912283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857059, 36.080467, 30.816038>,  <45.490730, 36.088959, 30.655630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857059, 36.080467, 30.816038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140876, -0.952124, 0.271320,
		0.376059, -0.304975, -0.874969,
		0.915824, -0.021230, 0.401018,
		46.131805, 36.074097, 30.936344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.804710, 35.468483, 30.443712>,  <45.490730, 36.088959, 30.655630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.804710, 35.468483, 30.443712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012894, 35.543823, 30.776854>,  <46.137802, 35.589027, 30.976738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012894, 35.543823, 30.776854>,  <45.804710, 35.468483, 30.443712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012894, 35.543823, 30.776854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129231, -0.946758, 0.294871,
		0.844051, -0.261099, -0.468407,
		0.520459, 0.188354, 0.832854,
		46.169033, 35.600330, 31.026711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.168541, 34.919731, 30.589016>,  <45.804710, 35.468483, 30.443712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.168541, 34.919731, 30.589016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172146, 35.094719, 30.948690>,  <46.174309, 35.199711, 31.164495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172146, 35.094719, 30.948690>,  <46.168541, 34.919731, 30.589016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172146, 35.094719, 30.948690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058546, -0.897450, 0.437213,
		0.998244, -0.056586, 0.017521,
		0.009016, 0.437471, 0.899187,
		46.174850, 35.225960, 31.218447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.677486, 34.551544, 30.913673>,  <46.168541, 34.919731, 30.589016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.677486, 34.551544, 30.913673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.460148, 34.721958, 31.203022>,  <46.329742, 34.824207, 31.376631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.460148, 34.721958, 31.203022>,  <46.677486, 34.551544, 30.913673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.460148, 34.721958, 31.203022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039641, -0.873723, 0.484805,
		0.838571, 0.234743, 0.491625,
		-0.543349, 0.426032, 0.723373,
		46.297142, 34.849770, 31.420034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.109688, 34.405621, 31.577087>,  <46.677486, 34.551544, 30.913673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.109688, 34.405621, 31.577087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734055, 34.465389, 31.700891>,  <46.508675, 34.501251, 31.775173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734055, 34.465389, 31.700891>,  <47.109688, 34.405621, 31.577087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.734055, 34.465389, 31.700891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132509, -0.673518, 0.727197,
		0.317119, 0.723911, 0.612689,
		-0.939083, 0.149421, 0.309510,
		46.452332, 34.510216, 31.793745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.140144, 34.259731, 32.314709>,  <47.109688, 34.405621, 31.577087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.140144, 34.259731, 32.314709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745609, 34.262363, 32.248856>,  <46.508888, 34.263943, 32.209343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745609, 34.262363, 32.248856>,  <47.140144, 34.259731, 32.314709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.745609, 34.262363, 32.248856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148951, -0.462696, 0.873914,
		-0.070425, 0.886493, 0.457353,
		-0.986334, 0.006578, -0.164629,
		46.449711, 34.264336, 32.199467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.749577, 34.577805, 32.900215>,  <47.140144, 34.259731, 32.314709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.749577, 34.577805, 32.900215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497135, 34.340855, 32.699894>,  <46.345673, 34.198685, 32.579700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497135, 34.340855, 32.699894>,  <46.749577, 34.577805, 32.900215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497135, 34.340855, 32.699894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242150, -0.462907, 0.852690,
		-0.736935, 0.659405, 0.148699,
		-0.631102, -0.592370, -0.500807,
		46.307804, 34.163143, 32.549652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082619, 34.654980, 33.189976>,  <46.749577, 34.577805, 32.900215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082619, 34.654980, 33.189976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144417, 34.291653, 33.034492>,  <46.181496, 34.073658, 32.941200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144417, 34.291653, 33.034492>,  <46.082619, 34.654980, 33.189976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144417, 34.291653, 33.034492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206508, -0.414435, 0.886339,
		-0.966170, -0.056666, -0.251604,
		0.154499, -0.908313, -0.388713,
		46.190765, 34.019157, 32.917877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.569340, 35.085159, 33.610546>,  <46.082619, 34.654980, 33.189976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.569340, 35.085159, 33.610546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777309, 35.255524, 33.906731>,  <46.902092, 35.357742, 34.084442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777309, 35.255524, 33.906731>,  <46.569340, 35.085159, 33.610546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777309, 35.255524, 33.906731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756374, -0.173287, 0.630770,
		0.396964, -0.888016, 0.232051,
		0.519922, 0.425910, 0.740461,
		46.933285, 35.383297, 34.128868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.939007, 34.659225, 34.129505>,  <46.569340, 35.085159, 33.610546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.939007, 34.659225, 34.129505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756081, 35.009159, 34.193417>,  <46.646324, 35.219120, 34.231766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.756081, 35.009159, 34.193417>,  <46.939007, 34.659225, 34.129505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756081, 35.009159, 34.193417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793299, -0.482507, 0.371300,
		0.401922, 0.043044, 0.914661,
		-0.457313, 0.874833, 0.159783,
		46.618885, 35.271610, 34.241352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.696159, 34.766388, 34.822392>,  <46.939007, 34.659225, 34.129505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.696159, 34.766388, 34.822392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464054, 34.968517, 34.566910>,  <46.324791, 35.089794, 34.413620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464054, 34.968517, 34.566910>,  <46.696159, 34.766388, 34.822392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464054, 34.968517, 34.566910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810133, -0.438570, 0.389025,
		-0.083531, 0.743170, 0.663868,
		-0.580265, 0.505326, -0.638701,
		46.289974, 35.120113, 34.375298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389080, 34.494343, 34.923328>,  <46.696159, 34.766388, 34.822392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389080, 34.494343, 34.923328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657543, 34.789001, 34.890076>,  <47.818619, 34.965797, 34.870125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657543, 34.789001, 34.890076>,  <47.389080, 34.494343, 34.923328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657543, 34.789001, 34.890076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224091, 0.308496, 0.924453,
		0.706637, -0.601820, 0.372123,
		0.671153, 0.736643, -0.083132,
		47.858891, 35.009995, 34.865135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.561996, 39.545712, 39.600971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185219, 39.546227, 39.735283>,  <37.959152, 39.546535, 39.815868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185219, 39.546227, 39.735283>,  <38.561996, 39.545712, 39.600971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185219, 39.546227, 39.735283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318500, -0.320074, -0.892250,
		0.106327, -0.947392, 0.301900,
		-0.941940, 0.001285, 0.335777,
		37.902637, 39.546612, 39.836018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190968, 38.894413, 39.431065>,  <38.561996, 39.545712, 39.600971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190968, 38.894413, 39.431065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910141, 39.175423, 39.477650>,  <37.741646, 39.344028, 39.505600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910141, 39.175423, 39.477650>,  <38.190968, 38.894413, 39.431065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910141, 39.175423, 39.477650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434098, -0.292561, -0.852037,
		-0.564503, -0.648744, 0.510361,
		-0.702065, 0.702524, 0.116467,
		37.699520, 39.386181, 39.512589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573048, 38.563015, 39.182976>,  <38.190968, 38.894413, 39.431065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573048, 38.563015, 39.182976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.477566, 38.951286, 39.171577>,  <37.420277, 39.184250, 39.164738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.477566, 38.951286, 39.171577>,  <37.573048, 38.563015, 39.182976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477566, 38.951286, 39.171577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560645, -0.161712, -0.812112,
		-0.792906, -0.177875, 0.582805,
		-0.238701, 0.970675, -0.028498,
		37.405956, 39.242489, 39.163029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915527, 38.572289, 39.024071>,  <37.573048, 38.563015, 39.182976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915527, 38.572289, 39.024071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.974297, 38.963890, 38.967552>,  <37.009556, 39.198853, 38.933640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.974297, 38.963890, 38.967552>,  <36.915527, 38.572289, 39.024071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974297, 38.963890, 38.967552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688026, -0.001486, -0.725684,
		-0.710658, 0.203834, 0.673362,
		0.146919, 0.979004, -0.141299,
		37.018372, 39.257591, 38.925163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193977, 39.023003, 39.054420>,  <36.915527, 38.572289, 39.024071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193977, 39.023003, 39.054420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.456059, 39.227272, 38.831738>,  <36.613308, 39.349834, 38.698128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.456059, 39.227272, 38.831738>,  <36.193977, 39.023003, 39.054420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456059, 39.227272, 38.831738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653466, 0.013353, -0.756838,
		-0.379065, 0.859670, 0.342457,
		0.655204, 0.510675, -0.556704,
		36.652618, 39.380474, 38.664726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849018, 39.608795, 38.759995>,  <36.193977, 39.023003, 39.054420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849018, 39.608795, 38.759995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163624, 39.503628, 38.536472>,  <36.352386, 39.440529, 38.402359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163624, 39.503628, 38.536472>,  <35.849018, 39.608795, 38.759995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163624, 39.503628, 38.536472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612699, -0.218807, -0.759423,
		0.077395, 0.939680, -0.333185,
		0.786517, -0.262918, -0.558806,
		36.399578, 39.424751, 38.368832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766186, 39.934769, 38.049431>,  <35.849018, 39.608795, 38.759995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766186, 39.934769, 38.049431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040558, 39.647175, 38.004604>,  <36.205181, 39.474621, 37.977707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040558, 39.647175, 38.004604>,  <35.766186, 39.934769, 38.049431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040558, 39.647175, 38.004604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475703, -0.326527, -0.816754,
		0.550638, 0.613551, -0.565997,
		0.685933, -0.718982, -0.112070,
		36.246338, 39.431480, 37.970982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823826, 39.855183, 37.288452>,  <35.766186, 39.934769, 38.049431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823826, 39.855183, 37.288452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043934, 39.535904, 37.386501>,  <36.175999, 39.344337, 37.445332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043934, 39.535904, 37.386501>,  <35.823826, 39.855183, 37.288452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043934, 39.535904, 37.386501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152029, -0.384437, -0.910547,
		0.821028, 0.463784, -0.332894,
		0.550274, -0.798194, 0.245125,
		36.209015, 39.296448, 37.460037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050293, 39.666172, 36.676018>,  <35.823826, 39.855183, 37.288452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050293, 39.666172, 36.676018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083767, 39.351341, 36.920475>,  <36.103851, 39.162441, 37.067150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083767, 39.351341, 36.920475>,  <36.050293, 39.666172, 36.676018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083767, 39.351341, 36.920475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135743, -0.616585, -0.775497,
		0.987203, -0.018062, -0.158439,
		0.083684, -0.787081, 0.611147,
		36.108871, 39.115215, 37.103821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598511, 39.372112, 36.387939>,  <36.050293, 39.666172, 36.676018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598511, 39.372112, 36.387939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397545, 39.092373, 36.591312>,  <36.276966, 38.924530, 36.713337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397545, 39.092373, 36.591312>,  <36.598511, 39.372112, 36.387939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397545, 39.092373, 36.591312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156250, -0.651786, -0.742132,
		0.850393, -0.293414, 0.436738,
		-0.502412, -0.699345, 0.508428,
		36.246822, 38.882568, 36.743839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140797, 38.863155, 36.363003>,  <36.598511, 39.372112, 36.387939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140797, 38.863155, 36.363003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777817, 38.710999, 36.434372>,  <36.560028, 38.619705, 36.477192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777817, 38.710999, 36.434372>,  <37.140797, 38.863155, 36.363003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777817, 38.710999, 36.434372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178099, -0.732866, -0.656650,
		0.380541, -0.564102, 0.732788,
		-0.907452, -0.380391, 0.178420,
		36.505581, 38.596882, 36.487896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261772, 38.099758, 36.460560>,  <37.140797, 38.863155, 36.363003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261772, 38.099758, 36.460560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.875744, 38.124218, 36.358654>,  <36.644127, 38.138893, 36.297512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.875744, 38.124218, 36.358654>,  <37.261772, 38.099758, 36.460560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875744, 38.124218, 36.358654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080769, -0.855592, -0.511310,
		-0.249238, -0.514026, 0.820766,
		-0.965068, 0.061145, -0.254764,
		36.586224, 38.142563, 36.282227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019402, 37.404972, 36.516972>,  <37.261772, 38.099758, 36.460560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019402, 37.404972, 36.516972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.720535, 37.566555, 36.305855>,  <36.541218, 37.663506, 36.179184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.720535, 37.566555, 36.305855>,  <37.019402, 37.404972, 36.516972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720535, 37.566555, 36.305855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171515, -0.884396, -0.434081,
		-0.642129, -0.233805, 0.730072,
		-0.747163, 0.403955, -0.527796,
		36.496387, 37.687740, 36.147514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530800, 36.937595, 36.492699>,  <37.019402, 37.404972, 36.516972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530800, 36.937595, 36.492699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.466129, 37.163429, 36.168945>,  <36.427326, 37.298931, 35.974693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.466129, 37.163429, 36.168945>,  <36.530800, 36.937595, 36.492699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466129, 37.163429, 36.168945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021902, -0.822026, -0.569029,
		-0.986601, -0.074271, 0.145267,
		-0.161675, 0.564586, -0.809385,
		36.417625, 37.332806, 35.926128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003162, 36.587620, 36.077084>,  <36.530800, 36.937595, 36.492699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003162, 36.587620, 36.077084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179276, 36.838493, 35.820087>,  <36.284943, 36.989017, 35.665890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179276, 36.838493, 35.820087>,  <36.003162, 36.587620, 36.077084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179276, 36.838493, 35.820087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102598, -0.746034, -0.657957,
		-0.891976, 0.223771, -0.392816,
		0.440286, 0.627184, -0.642486,
		36.311363, 37.026649, 35.627342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666599, 36.475868, 35.385063>,  <36.003162, 36.587620, 36.077084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666599, 36.475868, 35.385063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.005852, 36.641968, 35.253464>,  <36.209404, 36.741627, 35.174503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.005852, 36.641968, 35.253464>,  <35.666599, 36.475868, 35.385063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005852, 36.641968, 35.253464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050545, -0.554756, -0.830477,
		-0.527367, 0.720984, -0.449518,
		0.848133, 0.415245, -0.329002,
		36.260292, 36.766541, 35.154762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522766, 36.630039, 34.702526>,  <35.666599, 36.475868, 35.385063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522766, 36.630039, 34.702526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.920837, 36.617455, 34.739670>,  <36.159679, 36.609901, 34.761955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.920837, 36.617455, 34.739670>,  <35.522766, 36.630039, 34.702526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920837, 36.617455, 34.739670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065663, -0.489462, -0.869549,
		0.072812, 0.871457, -0.485037,
		0.995182, -0.031464, 0.092861,
		36.219391, 36.608017, 34.767529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744743, 36.954079, 34.129711>,  <35.522766, 36.630039, 34.702526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744743, 36.954079, 34.129711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.072815, 36.748905, 34.231064>,  <36.269657, 36.625801, 34.291874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.072815, 36.748905, 34.231064>,  <35.744743, 36.954079, 34.129711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072815, 36.748905, 34.231064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022558, -0.413551, -0.910201,
		0.571660, 0.752245, -0.327616,
		0.820180, -0.512936, 0.253380,
		36.318871, 36.595024, 34.307079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190872, 37.093346, 33.652649>,  <35.744743, 36.954079, 34.129711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190872, 37.093346, 33.652649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.362511, 36.766518, 33.806671>,  <36.465496, 36.570419, 33.899082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.362511, 36.766518, 33.806671>,  <36.190872, 37.093346, 33.652649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362511, 36.766518, 33.806671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022864, -0.416332, -0.908925,
		0.902968, 0.398824, -0.159966,
		0.429100, -0.817072, 0.385053,
		36.491241, 36.521397, 33.922188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880501, 36.946487, 33.234520>,  <36.190872, 37.093346, 33.652649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880501, 36.946487, 33.234520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732681, 36.616795, 33.406132>,  <36.643990, 36.418980, 33.509098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732681, 36.616795, 33.406132>,  <36.880501, 36.946487, 33.234520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732681, 36.616795, 33.406132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046710, -0.477612, -0.877328,
		0.928035, -0.304179, 0.215002,
		-0.369552, -0.824234, 0.429033,
		36.621815, 36.369526, 33.534840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488892, 36.479210, 33.190075>,  <36.880501, 36.946487, 33.234520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488892, 36.479210, 33.190075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142555, 36.286869, 33.245369>,  <36.934753, 36.171463, 33.278545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142555, 36.286869, 33.245369>,  <37.488892, 36.479210, 33.190075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142555, 36.286869, 33.245369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175293, -0.550312, -0.816351,
		0.468615, -0.682596, 0.560770,
		-0.865836, -0.480854, 0.138231,
		36.882805, 36.142612, 33.286839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691261, 35.791523, 33.081051>,  <37.488892, 36.479210, 33.190075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691261, 35.791523, 33.081051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300163, 35.770748, 32.999752>,  <37.065502, 35.758282, 32.950974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300163, 35.770748, 32.999752>,  <37.691261, 35.791523, 33.081051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300163, 35.770748, 32.999752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200015, -0.522975, -0.828548,
		-0.063258, -0.850764, 0.521727,
		-0.977749, -0.051941, -0.203248,
		37.006840, 35.755165, 32.938778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019203, 35.487797, 32.473572>,  <37.691261, 35.791523, 33.081051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019203, 35.487797, 32.473572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364330, 35.294342, 32.414722>,  <38.571407, 35.178268, 32.379414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364330, 35.294342, 32.414722>,  <38.019203, 35.487797, 32.473572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364330, 35.294342, 32.414722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417299, 0.517142, 0.747279,
		-0.285327, -0.706158, 0.648019,
		0.862815, -0.483637, -0.147124,
		38.623177, 35.149250, 32.370586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301498, 35.270206, 33.186626>,  <38.019203, 35.487797, 32.473572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301498, 35.270206, 33.186626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.578434, 35.323475, 32.902954>,  <38.744595, 35.355438, 32.732750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.578434, 35.323475, 32.902954>,  <38.301498, 35.270206, 33.186626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578434, 35.323475, 32.902954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519370, 0.590310, 0.617890,
		0.500923, -0.796114, 0.339527,
		0.692337, 0.133175, -0.709178,
		38.786137, 35.363426, 32.690201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966965, 35.260662, 33.557381>,  <38.301498, 35.270206, 33.186626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966965, 35.260662, 33.557381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015293, 35.437180, 33.201706>,  <39.044289, 35.543091, 32.988300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015293, 35.437180, 33.201706>,  <38.966965, 35.260662, 33.557381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015293, 35.437180, 33.201706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645540, 0.645551, 0.408095,
		0.754109, -0.623313, -0.206882,
		0.120818, 0.441299, -0.889190,
		39.051540, 35.569569, 32.934948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741096, 35.181522, 33.347321>,  <38.966965, 35.260662, 33.557381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741096, 35.181522, 33.347321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552124, 35.487999, 33.173073>,  <39.438740, 35.671886, 33.068523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552124, 35.487999, 33.173073>,  <39.741096, 35.181522, 33.347321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552124, 35.487999, 33.173073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406257, 0.627918, 0.663833,
		0.782154, 0.136643, -0.607918,
		-0.472431, 0.766190, -0.435616,
		39.410397, 35.717857, 33.042389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209866, 35.662716, 33.245548>,  <39.741096, 35.181522, 33.347321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209866, 35.662716, 33.245548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.883133, 35.892689, 33.226620>,  <39.687092, 36.030674, 33.215263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.883133, 35.892689, 33.226620>,  <40.209866, 35.662716, 33.245548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883133, 35.892689, 33.226620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431154, 0.662935, 0.612065,
		0.383265, 0.479553, -0.789390,
		-0.816832, 0.574932, -0.047319,
		39.638084, 36.065170, 33.212425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483604, 36.344269, 33.313824>,  <40.209866, 35.662716, 33.245548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483604, 36.344269, 33.313824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.094158, 36.361012, 33.403561>,  <39.860493, 36.371059, 33.457401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.094158, 36.361012, 33.403561>,  <40.483604, 36.344269, 33.313824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094158, 36.361012, 33.403561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203619, 0.603254, 0.771118,
		-0.103057, 0.796450, -0.595858,
		-0.973611, 0.041859, 0.224342,
		39.802074, 36.373569, 33.470863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360664, 36.995953, 33.526340>,  <40.483604, 36.344269, 33.313824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360664, 36.995953, 33.526340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.066803, 36.780537, 33.691395>,  <39.890488, 36.651287, 33.790428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.066803, 36.780537, 33.691395>,  <40.360664, 36.995953, 33.526340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066803, 36.780537, 33.691395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127509, 0.487766, 0.863612,
		-0.666356, 0.687068, -0.289669,
		-0.734651, -0.538538, 0.412633,
		39.846409, 36.618977, 33.815186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132652, 37.527023, 34.035217>,  <40.360664, 36.995953, 33.526340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132652, 37.527023, 34.035217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.983715, 37.172150, 34.144226>,  <39.894352, 36.959225, 34.209633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.983715, 37.172150, 34.144226>,  <40.132652, 37.527023, 34.035217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983715, 37.172150, 34.144226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161492, 0.227228, 0.960358,
		-0.913937, 0.401595, 0.058666,
		-0.372344, -0.887181, 0.272526,
		39.872013, 36.905994, 34.225983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707546, 37.696209, 34.633541>,  <40.132652, 37.527023, 34.035217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707546, 37.696209, 34.633541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785278, 37.307400, 34.686310>,  <39.831917, 37.074112, 34.717972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785278, 37.307400, 34.686310>,  <39.707546, 37.696209, 34.633541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785278, 37.307400, 34.686310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098536, 0.114467, 0.988528,
		-0.975975, -0.205098, -0.073536,
		0.194328, -0.972025, 0.131926,
		39.843578, 37.015793, 34.725887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160465, 37.469402, 35.003246>,  <39.707546, 37.696209, 34.633541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160465, 37.469402, 35.003246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.456173, 37.210705, 35.078289>,  <39.633598, 37.055485, 35.123314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.456173, 37.210705, 35.078289>,  <39.160465, 37.469402, 35.003246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456173, 37.210705, 35.078289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157310, 0.105021, 0.981949,
		-0.654776, -0.755439, -0.024101,
		0.739271, -0.646748, 0.187604,
		39.677956, 37.016682, 35.134571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882210, 37.035942, 35.428432>,  <39.160465, 37.469402, 35.003246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882210, 37.035942, 35.428432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.273190, 36.981724, 35.493198>,  <39.507778, 36.949192, 35.532059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.273190, 36.981724, 35.493198>,  <38.882210, 37.035942, 35.428432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273190, 36.981724, 35.493198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133292, 0.198634, 0.970967,
		-0.163768, -0.970656, 0.176089,
		0.977452, -0.135542, 0.161911,
		39.566425, 36.941063, 35.541771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952087, 36.495354, 36.002087>,  <38.882210, 37.035942, 35.428432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952087, 36.495354, 36.002087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291222, 36.703247, 35.960056>,  <39.494701, 36.827984, 35.934837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291222, 36.703247, 35.960056>,  <38.952087, 36.495354, 36.002087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291222, 36.703247, 35.960056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008944, 0.212158, 0.977194,
		0.530179, -0.827563, 0.184524,
		0.847839, 0.519738, -0.105080,
		39.545574, 36.859169, 35.928532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419693, 36.255188, 36.510918>,  <38.952087, 36.495354, 36.002087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419693, 36.255188, 36.510918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.556156, 36.619404, 36.417507>,  <39.638035, 36.837933, 36.361462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.556156, 36.619404, 36.417507>,  <39.419693, 36.255188, 36.510918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556156, 36.619404, 36.417507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160653, 0.188299, 0.968883,
		0.926176, -0.368059, -0.082041,
		0.341158, 0.910536, -0.233527,
		39.658504, 36.892563, 36.347450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016174, 36.459419, 37.072823>,  <39.419693, 36.255188, 36.510918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016174, 36.459419, 37.072823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916344, 36.811211, 36.910725>,  <39.856445, 37.022285, 36.813465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916344, 36.811211, 36.910725>,  <40.016174, 36.459419, 37.072823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916344, 36.811211, 36.910725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274163, 0.465543, 0.841489,
		0.928733, 0.098913, -0.357310,
		-0.249578, 0.879480, -0.405247,
		39.841469, 37.075054, 36.789150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522915, 36.890594, 37.336357>,  <40.016174, 36.459419, 37.072823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522915, 36.890594, 37.336357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.232792, 37.140965, 37.221710>,  <40.058720, 37.291187, 37.152924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.232792, 37.140965, 37.221710>,  <40.522915, 36.890594, 37.336357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232792, 37.140965, 37.221710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059600, 0.471864, 0.879654,
		0.685844, 0.620934, -0.379550,
		-0.725304, 0.625927, -0.286618,
		40.015202, 37.328743, 37.135723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697506, 37.634068, 37.420933>,  <40.522915, 36.890594, 37.336357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697506, 37.634068, 37.420933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297745, 37.631237, 37.434422>,  <40.057888, 37.629539, 37.442516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297745, 37.631237, 37.434422>,  <40.697506, 37.634068, 37.420933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297745, 37.631237, 37.434422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028693, 0.371037, 0.928174,
		-0.019080, 0.928591, -0.370614,
		-0.999406, -0.007076, 0.033723,
		39.997925, 37.629116, 37.444538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556622, 38.217476, 37.618473>,  <40.697506, 37.634068, 37.420933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556622, 38.217476, 37.618473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.217594, 38.019169, 37.694191>,  <40.014175, 37.900185, 37.739624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.217594, 38.019169, 37.694191>,  <40.556622, 38.217476, 37.618473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217594, 38.019169, 37.694191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072039, 0.460896, 0.884526,
		-0.525767, 0.736063, -0.426358,
		-0.847573, -0.495768, 0.189298,
		39.963322, 37.870438, 37.750980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053062, 38.688290, 37.827267>,  <40.556622, 38.217476, 37.618473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053062, 38.688290, 37.827267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.901546, 38.350121, 37.977882>,  <39.810635, 38.147221, 38.068253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.901546, 38.350121, 37.977882>,  <40.053062, 38.688290, 37.827267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901546, 38.350121, 37.977882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183581, 0.467409, 0.864770,
		-0.907091, 0.258443, -0.332254,
		-0.378792, -0.845420, 0.376538,
		39.787910, 38.096493, 38.090843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.428711, 38.881245, 38.178078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500931, 38.515259, 38.322437>,  <39.544262, 38.295670, 38.409054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500931, 38.515259, 38.322437>,  <39.428711, 38.881245, 38.178078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500931, 38.515259, 38.322437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163600, 0.389758, 0.906269,
		-0.969865, -0.104580, 0.220057,
		0.180547, -0.914960, 0.360903,
		39.555096, 38.240772, 38.430710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114536, 38.904476, 38.871712>,  <39.428711, 38.881245, 38.178078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114536, 38.904476, 38.871712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.362514, 38.590786, 38.861462>,  <39.511303, 38.402573, 38.855312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.362514, 38.590786, 38.861462>,  <39.114536, 38.904476, 38.871712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362514, 38.590786, 38.861462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401532, 0.289025, 0.869043,
		-0.674123, -0.549046, 0.494072,
		0.619944, -0.784228, -0.025621,
		39.548496, 38.355518, 38.853775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074238, 38.462170, 39.458683>,  <39.114536, 38.904476, 38.871712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074238, 38.462170, 39.458683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.446754, 38.374237, 39.342503>,  <39.670265, 38.321476, 39.272797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.446754, 38.374237, 39.342503>,  <39.074238, 38.462170, 39.458683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446754, 38.374237, 39.342503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276755, -0.091423, 0.956582,
		-0.236844, -0.971244, -0.024301,
		0.931296, -0.219835, -0.290449,
		39.726143, 38.308289, 39.255367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178745, 37.977566, 39.911411>,  <39.074238, 38.462170, 39.458683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178745, 37.977566, 39.911411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.542892, 38.084949, 39.785458>,  <39.761383, 38.149380, 39.709885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.542892, 38.084949, 39.785458>,  <39.178745, 37.977566, 39.911411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542892, 38.084949, 39.785458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324369, 0.009495, 0.945883,
		0.256926, -0.963243, -0.078438,
		0.910370, 0.268465, -0.314886,
		39.816002, 38.165489, 39.690990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575390, 37.537876, 40.242764>,  <39.178745, 37.977566, 39.911411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575390, 37.537876, 40.242764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.787910, 37.866421, 40.159740>,  <39.915424, 38.063549, 40.109928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.787910, 37.866421, 40.159740>,  <39.575390, 37.537876, 40.242764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787910, 37.866421, 40.159740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422732, -0.044717, 0.905151,
		0.734174, -0.568654, -0.370974,
		0.531306, 0.821361, -0.207558,
		39.947304, 38.112827, 40.097473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140305, 37.403275, 40.564621>,  <39.575390, 37.537876, 40.242764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140305, 37.403275, 40.564621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.176456, 37.797741, 40.509026>,  <40.198147, 38.034420, 40.475670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.176456, 37.797741, 40.509026>,  <40.140305, 37.403275, 40.564621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176456, 37.797741, 40.509026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399779, 0.091891, 0.911994,
		0.912145, -0.137993, -0.385941,
		0.090384, 0.986161, -0.138984,
		40.203571, 38.093590, 40.467331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775803, 37.538532, 40.819847>,  <40.140305, 37.403275, 40.564621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775803, 37.538532, 40.819847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.573681, 37.883579, 40.829296>,  <40.452408, 38.090607, 40.834965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.573681, 37.883579, 40.829296>,  <40.775803, 37.538532, 40.819847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573681, 37.883579, 40.829296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307495, 0.154408, 0.938938,
		0.806296, 0.481716, -0.343274,
		-0.505306, 0.862617, 0.023626,
		40.422089, 38.142365, 40.836384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319260, 38.042576, 41.176666>,  <40.775803, 37.538532, 40.819847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319260, 38.042576, 41.176666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.951653, 38.196129, 41.212540>,  <40.731091, 38.288261, 41.234062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.951653, 38.196129, 41.212540>,  <41.319260, 38.042576, 41.176666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951653, 38.196129, 41.212540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208275, 0.279647, 0.937240,
		0.334711, 0.880018, -0.336953,
		-0.919016, 0.383884, 0.089684,
		40.675949, 38.311295, 41.239445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360928, 38.675030, 41.298828>,  <41.319260, 38.042576, 41.176666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360928, 38.675030, 41.298828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.994572, 38.596195, 41.438717>,  <40.774757, 38.548893, 41.522652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.994572, 38.596195, 41.438717>,  <41.360928, 38.675030, 41.298828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994572, 38.596195, 41.438717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296900, 0.253784, 0.920567,
		-0.270184, 0.946969, -0.173923,
		-0.915888, -0.197085, 0.349724,
		40.719807, 38.537071, 41.543633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275280, 39.120220, 41.860409>,  <41.360928, 38.675030, 41.298828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275280, 39.120220, 41.860409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.980743, 38.853939, 41.908798>,  <40.804020, 38.694168, 41.937832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.980743, 38.853939, 41.908798>,  <41.275280, 39.120220, 41.860409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980743, 38.853939, 41.908798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073117, 0.099461, 0.992352,
		-0.672648, 0.739555, -0.024562,
		-0.736341, -0.665708, 0.120976,
		40.759842, 38.654228, 41.945091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916325, 39.414104, 42.301353>,  <41.275280, 39.120220, 41.860409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916325, 39.414104, 42.301353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.795097, 39.035168, 42.342709>,  <40.722363, 38.807804, 42.367523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.795097, 39.035168, 42.342709>,  <40.916325, 39.414104, 42.301353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795097, 39.035168, 42.342709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112520, 0.143306, 0.983261,
		-0.946303, 0.286362, -0.150026,
		-0.303068, -0.947344, 0.103389,
		40.704178, 38.750965, 42.373726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220219, 39.388683, 42.729809>,  <40.916325, 39.414104, 42.301353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220219, 39.388683, 42.729809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.399952, 39.032608, 42.759911>,  <40.507793, 38.818962, 42.777973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.399952, 39.032608, 42.759911>,  <40.220219, 39.388683, 42.729809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399952, 39.032608, 42.759911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276381, -0.058414, 0.959271,
		-0.849536, -0.451833, -0.272279,
		0.449335, -0.890188, 0.075253,
		40.534752, 38.765553, 42.782486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762600, 39.009933, 43.177044>,  <40.220219, 39.388683, 42.729809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762600, 39.009933, 43.177044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.121269, 38.832920, 43.181786>,  <40.336472, 38.726711, 43.184631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.121269, 38.832920, 43.181786>,  <39.762600, 39.009933, 43.177044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121269, 38.832920, 43.181786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068558, -0.112354, 0.991300,
		-0.437349, -0.889687, -0.131084,
		0.896675, -0.442531, 0.011858,
		40.390270, 38.700161, 43.185345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745880, 38.471680, 43.656330>,  <39.762600, 39.009933, 43.177044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745880, 38.471680, 43.656330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.133121, 38.570133, 43.637630>,  <40.365467, 38.629204, 43.626411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.133121, 38.570133, 43.637630>,  <39.745880, 38.471680, 43.656330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133121, 38.570133, 43.637630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064496, -0.064527, 0.995830,
		0.242090, -0.967086, -0.078344,
		0.968108, 0.246133, -0.046752,
		40.423553, 38.643974, 43.623604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993855, 38.050240, 44.158218>,  <39.745880, 38.471680, 43.656330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993855, 38.050240, 44.158218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.302891, 38.298046, 44.102638>,  <40.488312, 38.446732, 44.069290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.302891, 38.298046, 44.102638>,  <39.993855, 38.050240, 44.158218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302891, 38.298046, 44.102638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122672, 0.069074, 0.990041,
		0.622945, -0.781938, -0.022631,
		0.772587, 0.619517, -0.138951,
		40.534668, 38.483902, 44.060951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427139, 37.828079, 44.663780>,  <39.993855, 38.050240, 44.158218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427139, 37.828079, 44.663780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.568790, 38.189850, 44.568604>,  <40.653782, 38.406910, 44.511497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.568790, 38.189850, 44.568604>,  <40.427139, 37.828079, 44.663780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568790, 38.189850, 44.568604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298882, 0.131630, 0.945168,
		0.886152, -0.405823, -0.223702,
		0.354125, 0.904423, -0.237938,
		40.675030, 38.461178, 44.497223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102997, 37.764973, 44.861927>,  <40.427139, 37.828079, 44.663780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102997, 37.764973, 44.861927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.999466, 38.151295, 44.855984>,  <40.937347, 38.383087, 44.852417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.999466, 38.151295, 44.855984>,  <41.102997, 37.764973, 44.861927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999466, 38.151295, 44.855984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280393, 0.089848, 0.955671,
		0.924330, 0.243192, -0.294061,
		-0.258832, 0.965808, -0.014860,
		40.921818, 38.441036, 44.851524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743492, 38.067413, 44.983810>,  <41.102997, 37.764973, 44.861927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743492, 38.067413, 44.983810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.436974, 38.307640, 45.075123>,  <41.253063, 38.451775, 45.129910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.436974, 38.307640, 45.075123>,  <41.743492, 38.067413, 44.983810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436974, 38.307640, 45.075123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357679, 0.103614, 0.928079,
		0.533720, 0.792833, -0.294209,
		-0.766296, 0.600566, 0.228279,
		41.207085, 38.487808, 45.143608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012024, 38.483177, 45.393818>,  <41.743492, 38.067413, 44.983810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012024, 38.483177, 45.393818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.627213, 38.550644, 45.479664>,  <41.396328, 38.591122, 45.531170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.627213, 38.550644, 45.479664>,  <42.012024, 38.483177, 45.393818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627213, 38.550644, 45.479664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229649, 0.075146, 0.970368,
		0.147539, 0.982805, -0.111026,
		-0.962026, 0.168664, 0.214613,
		41.338604, 38.601242, 45.544048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945229, 39.084732, 45.771252>,  <42.012024, 38.483177, 45.393818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945229, 39.084732, 45.771252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.616962, 38.869789, 45.848976>,  <41.420002, 38.740826, 45.895611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.616962, 38.869789, 45.848976>,  <41.945229, 39.084732, 45.771252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616962, 38.869789, 45.848976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266624, -0.059332, 0.961973,
		-0.505391, 0.841267, 0.191963,
		-0.820666, -0.537354, 0.194316,
		41.370762, 38.708584, 45.907272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751972, 39.445625, 46.454014>,  <41.945229, 39.084732, 45.771252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751972, 39.445625, 46.454014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.560593, 39.094761, 46.437645>,  <41.445766, 38.884243, 46.427822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.560593, 39.094761, 46.437645>,  <41.751972, 39.445625, 46.454014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560593, 39.094761, 46.437645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380287, -0.248984, 0.890724,
		-0.791498, 0.410603, 0.452699,
		-0.478449, -0.877162, -0.040923,
		41.417057, 38.831612, 46.425369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307446, 39.244587, 47.098503>,  <41.751972, 39.445625, 46.454014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307446, 39.244587, 47.098503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.434780, 38.913197, 46.914207>,  <41.511181, 38.714363, 46.803631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.434780, 38.913197, 46.914207>,  <41.307446, 39.244587, 47.098503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434780, 38.913197, 46.914207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431458, -0.306146, 0.848598,
		-0.844101, -0.468930, 0.259997,
		0.318336, -0.828480, -0.460742,
		41.530281, 38.664654, 46.775986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148342, 38.616444, 47.540646>,  <41.307446, 39.244587, 47.098503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148342, 38.616444, 47.540646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.460880, 38.570755, 47.295223>,  <41.648403, 38.543343, 47.147968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.460880, 38.570755, 47.295223>,  <41.148342, 38.616444, 47.540646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460880, 38.570755, 47.295223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572743, -0.259310, 0.777640,
		-0.247917, -0.959017, -0.137197,
		0.781347, -0.114211, -0.613557,
		41.695282, 38.536488, 47.111156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729111, 39.395561, 47.520481>,  <41.148342, 38.616444, 47.540646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729111, 39.395561, 47.520481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.422626, 39.399338, 47.777489>,  <40.238735, 39.401604, 47.931694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.422626, 39.399338, 47.777489>,  <40.729111, 39.395561, 47.520481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422626, 39.399338, 47.777489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642532, -0.024470, -0.765868,
		0.008498, -0.999656, 0.024810,
		-0.766212, 0.009433, 0.642518,
		40.192764, 39.402168, 47.970245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356403, 38.969337, 47.305080>,  <40.729111, 39.395561, 47.520481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356403, 38.969337, 47.305080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.091839, 39.204632, 47.491207>,  <39.933102, 39.345806, 47.602882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.091839, 39.204632, 47.491207>,  <40.356403, 38.969337, 47.305080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091839, 39.204632, 47.491207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545109, 0.049124, -0.836925,
		-0.515166, -0.807197, 0.288161,
		-0.661408, 0.588234, 0.465318,
		39.893417, 39.381104, 47.630802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727859, 38.616104, 47.321770>,  <40.356403, 38.969337, 47.305080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727859, 38.616104, 47.321770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629341, 39.002995, 47.346447>,  <39.570232, 39.235130, 47.361252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629341, 39.002995, 47.346447>,  <39.727859, 38.616104, 47.321770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629341, 39.002995, 47.346447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613398, -0.106282, -0.782590,
		-0.750388, -0.230587, 0.619474,
		-0.246293, 0.967230, 0.061689,
		39.555454, 39.293163, 47.364952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992825, 38.681049, 47.160450>,  <39.727859, 38.616104, 47.321770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992825, 38.681049, 47.160450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134758, 39.046688, 47.081951>,  <39.219917, 39.266071, 47.034851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134758, 39.046688, 47.081951>,  <38.992825, 38.681049, 47.160450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134758, 39.046688, 47.081951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578945, 0.050018, -0.813831,
		-0.734108, 0.402390, 0.546962,
		0.354836, 0.914101, -0.196243,
		39.241207, 39.320919, 47.023079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321095, 39.046509, 47.082596>,  <38.992825, 38.681049, 47.160450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321095, 39.046509, 47.082596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.593777, 39.286617, 46.915283>,  <38.757385, 39.430683, 46.814896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.593777, 39.286617, 46.915283>,  <38.321095, 39.046509, 47.082596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593777, 39.286617, 46.915283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547344, 0.039048, -0.835996,
		-0.485487, 0.798846, 0.355171,
		0.681701, 0.600267, -0.418286,
		38.798286, 39.466698, 46.789799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897419, 39.525486, 46.705376>,  <38.321095, 39.046509, 47.082596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897419, 39.525486, 46.705376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262253, 39.593224, 46.556023>,  <38.481155, 39.633865, 46.466412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262253, 39.593224, 46.556023>,  <37.897419, 39.525486, 46.705376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262253, 39.593224, 46.556023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390840, 0.084022, -0.916616,
		-0.123855, 0.981968, 0.142824,
		0.912088, 0.169349, -0.373386,
		38.535881, 39.644028, 46.444008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788918, 40.074097, 46.138569>,  <37.897419, 39.525486, 46.705376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788918, 40.074097, 46.138569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130539, 39.874252, 46.080639>,  <38.335514, 39.754345, 46.045879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130539, 39.874252, 46.080639>,  <37.788918, 40.074097, 46.138569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130539, 39.874252, 46.080639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242094, -0.135337, -0.960767,
		0.460409, 0.855613, -0.236539,
		0.854057, -0.499611, -0.144828,
		38.386757, 39.724369, 46.037189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160931, 40.398514, 45.560783>,  <37.788918, 40.074097, 46.138569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160931, 40.398514, 45.560783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250114, 40.008972, 45.578205>,  <38.303623, 39.775246, 45.588657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250114, 40.008972, 45.578205>,  <38.160931, 40.398514, 45.560783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250114, 40.008972, 45.578205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061009, -0.030647, -0.997667,
		0.972916, 0.225097, 0.052581,
		0.222960, -0.973854, 0.043550,
		38.317001, 39.716816, 45.591270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570343, 40.244514, 44.968441>,  <38.160931, 40.398514, 45.560783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570343, 40.244514, 44.968441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.475140, 39.870872, 45.074871>,  <38.418018, 39.646687, 45.138729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.475140, 39.870872, 45.074871>,  <38.570343, 40.244514, 44.968441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475140, 39.870872, 45.074871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016876, -0.269933, -0.962731,
		0.971117, -0.233626, 0.048481,
		-0.238006, -0.934107, 0.266080,
		38.403736, 39.590641, 45.154694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956005, 39.802792, 44.554577>,  <38.570343, 40.244514, 44.968441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956005, 39.802792, 44.554577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671276, 39.557083, 44.690804>,  <38.500439, 39.409657, 44.772537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671276, 39.557083, 44.690804>,  <38.956005, 39.802792, 44.554577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671276, 39.557083, 44.690804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109430, -0.381969, -0.917673,
		0.693787, -0.690484, 0.204673,
		-0.711818, -0.614272, 0.340565,
		38.457729, 39.372803, 44.792973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111595, 39.233692, 44.255482>,  <38.956005, 39.802792, 44.554577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111595, 39.233692, 44.255482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.730965, 39.164261, 44.356968>,  <38.502586, 39.122601, 44.417858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.730965, 39.164261, 44.356968>,  <39.111595, 39.233692, 44.255482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730965, 39.164261, 44.356968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207077, -0.248034, -0.946360,
		0.227202, -0.953073, 0.200079,
		-0.951577, -0.173583, 0.253713,
		38.445492, 39.112186, 44.433083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974129, 38.535198, 44.133774>,  <39.111595, 39.233692, 44.255482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974129, 38.535198, 44.133774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625019, 38.729206, 44.111786>,  <38.415554, 38.845612, 44.098591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625019, 38.729206, 44.111786>,  <38.974129, 38.535198, 44.133774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625019, 38.729206, 44.111786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023063, -0.153468, -0.987884,
		-0.487585, -0.860929, 0.145128,
		-0.872771, 0.485024, -0.054973,
		38.363186, 38.874714, 44.095295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735786, 38.319382, 43.472248>,  <38.974129, 38.535198, 44.133774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735786, 38.319382, 43.472248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465099, 38.596073, 43.573093>,  <38.302689, 38.762089, 43.633602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465099, 38.596073, 43.573093>,  <38.735786, 38.319382, 43.472248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465099, 38.596073, 43.573093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328995, 0.022230, -0.944070,
		-0.658649, -0.721812, 0.212533,
		-0.676716, 0.691732, 0.252114,
		38.262085, 38.803593, 43.648727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005863, 38.158905, 43.123947>,  <38.735786, 38.319382, 43.472248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005863, 38.158905, 43.123947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.025017, 38.552570, 43.192215>,  <38.036510, 38.788769, 43.233177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.025017, 38.552570, 43.192215>,  <38.005863, 38.158905, 43.123947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025017, 38.552570, 43.192215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229089, 0.177135, -0.957153,
		-0.972227, 0.006734, 0.233943,
		0.047885, 0.984163, 0.170673,
		38.039383, 38.847820, 43.243416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441933, 38.500805, 42.823372>,  <38.005863, 38.158905, 43.123947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441933, 38.500805, 42.823372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.714554, 38.792786, 42.843983>,  <37.878128, 38.967972, 42.856350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.714554, 38.792786, 42.843983>,  <37.441933, 38.500805, 42.823372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714554, 38.792786, 42.843983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308848, 0.350775, -0.884064,
		-0.663396, 0.586626, 0.464516,
		0.681556, 0.729950, 0.051525,
		37.919022, 39.011772, 42.859440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124756, 39.054131, 42.547455>,  <37.441933, 38.500805, 42.823372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124756, 39.054131, 42.547455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.506149, 39.168423, 42.509041>,  <37.734985, 39.237000, 42.485992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.506149, 39.168423, 42.509041>,  <37.124756, 39.054131, 42.547455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506149, 39.168423, 42.509041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180794, 0.287142, -0.940672,
		-0.241201, 0.914280, 0.325444,
		0.953486, 0.285729, -0.096038,
		37.792194, 39.254143, 42.480228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070335, 39.656998, 42.083714>,  <37.124756, 39.054131, 42.547455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070335, 39.656998, 42.083714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469349, 39.629005, 42.081562>,  <37.708755, 39.612209, 42.080273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469349, 39.629005, 42.081562>,  <37.070335, 39.656998, 42.083714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469349, 39.629005, 42.081562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008654, 0.198627, -0.980037,
		0.069648, 0.977574, 0.198743,
		0.997534, -0.069978, -0.005374,
		37.768608, 39.608013, 42.079948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343163, 40.227798, 41.686607>,  <37.070335, 39.656998, 42.083714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343163, 40.227798, 41.686607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640137, 39.960026, 41.676456>,  <37.818321, 39.799362, 41.670368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640137, 39.960026, 41.676456>,  <37.343163, 40.227798, 41.686607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640137, 39.960026, 41.676456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048988, 0.092026, -0.994551,
		0.668122, 0.737149, 0.101118,
		0.742438, -0.669435, -0.025373,
		37.862869, 39.759197, 41.668846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874077, 40.547623, 41.287922>,  <37.343163, 40.227798, 41.686607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874077, 40.547623, 41.287922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888557, 40.150707, 41.240494>,  <37.897247, 39.912560, 41.212036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.888557, 40.150707, 41.240494>,  <37.874077, 40.547623, 41.287922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888557, 40.150707, 41.240494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077531, 0.115499, -0.990277,
		0.996332, 0.045045, -0.072752,
		0.036204, -0.992285, -0.118568,
		37.899418, 39.853020, 41.204922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082275, 40.481243, 40.564350>,  <37.874077, 40.547623, 41.287922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082275, 40.481243, 40.564350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001617, 40.099010, 40.650330>,  <37.953224, 39.869671, 40.701916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001617, 40.099010, 40.650330>,  <38.082275, 40.481243, 40.564350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001617, 40.099010, 40.650330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097056, -0.237867, -0.966436,
		0.974639, -0.174012, 0.140710,
		-0.201642, -0.955583, 0.214945,
		37.941124, 39.812336, 40.714813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512798, 40.137787, 40.140888>,  <38.082275, 40.481243, 40.564350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512798, 40.137787, 40.140888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191666, 39.907715, 40.203674>,  <37.998985, 39.769672, 40.241344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191666, 39.907715, 40.203674>,  <38.512798, 40.137787, 40.140888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191666, 39.907715, 40.203674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102047, -0.126823, -0.986662,
		0.587412, -0.808139, 0.043122,
		-0.802829, -0.575176, 0.156966,
		37.950817, 39.735161, 40.250763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.046631, 39.391697, 26.444870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.663155, 39.475731, 26.368156>,  <45.433071, 39.526150, 26.322128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.663155, 39.475731, 26.368156>,  <46.046631, 39.391697, 26.444870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663155, 39.475731, 26.368156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256340, -0.345774, 0.902624,
		0.123310, 0.914498, 0.385342,
		-0.958689, 0.210081, -0.191785,
		45.375549, 39.538754, 26.310621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795258, 39.730305, 26.954477>,  <46.046631, 39.391697, 26.444870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795258, 39.730305, 26.954477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.447468, 39.597679, 26.808016>,  <45.238792, 39.518105, 26.720139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.447468, 39.597679, 26.808016>,  <45.795258, 39.730305, 26.954477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447468, 39.597679, 26.808016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312589, -0.204635, 0.927584,
		-0.382486, 0.920970, 0.074281,
		-0.869478, -0.331569, -0.366155,
		45.186623, 39.498207, 26.698170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325085, 39.885582, 27.430788>,  <45.795258, 39.730305, 26.954477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325085, 39.885582, 27.430788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122044, 39.612965, 27.219950>,  <45.000217, 39.449394, 27.093447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122044, 39.612965, 27.219950>,  <45.325085, 39.885582, 27.430788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122044, 39.612965, 27.219950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217790, -0.490406, 0.843842,
		-0.833610, 0.543134, 0.100498,
		-0.507604, -0.681548, -0.527096,
		44.969761, 39.408501, 27.061821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713184, 39.687489, 27.794693>,  <45.325085, 39.885582, 27.430788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713184, 39.687489, 27.794693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786228, 39.386608, 27.541445>,  <44.830055, 39.206078, 27.389496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786228, 39.386608, 27.541445>,  <44.713184, 39.687489, 27.794693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786228, 39.386608, 27.541445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297499, -0.656036, 0.693622,
		-0.937095, 0.061690, -0.343579,
		0.182610, -0.752204, -0.633121,
		44.841011, 39.160946, 27.351509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095615, 39.291862, 27.766180>,  <44.713184, 39.687489, 27.794693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095615, 39.291862, 27.766180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.397499, 39.049313, 27.666004>,  <44.578629, 38.903782, 27.605898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.397499, 39.049313, 27.666004>,  <44.095615, 39.291862, 27.766180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397499, 39.049313, 27.666004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369987, -0.708628, 0.600796,
		-0.541779, -0.360766, -0.759160,
		0.754709, -0.606377, -0.250441,
		44.623913, 38.867401, 27.590872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759888, 38.696537, 27.792540>,  <44.095615, 39.291862, 27.766180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759888, 38.696537, 27.792540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126858, 38.538006, 27.778431>,  <44.347042, 38.442886, 27.769966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126858, 38.538006, 27.778431>,  <43.759888, 38.696537, 27.792540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126858, 38.538006, 27.778431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279172, -0.704313, 0.652691,
		-0.283524, -0.588951, -0.756803,
		0.917429, -0.396332, -0.035271,
		44.402088, 38.419106, 27.767849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659622, 37.905544, 27.659006>,  <43.759888, 38.696537, 27.792540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659622, 37.905544, 27.659006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.033821, 37.968678, 27.785456>,  <44.258339, 38.006557, 27.861324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.033821, 37.968678, 27.785456>,  <43.659622, 37.905544, 27.659006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033821, 37.968678, 27.785456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096204, -0.747107, 0.657705,
		0.339985, -0.645693, -0.683733,
		0.935497, 0.157832, 0.316123,
		44.314472, 38.016026, 27.880293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891800, 37.243687, 27.720587>,  <43.659622, 37.905544, 27.659006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891800, 37.243687, 27.720587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130146, 37.461208, 27.956966>,  <44.273155, 37.591721, 28.098795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130146, 37.461208, 27.956966>,  <43.891800, 37.243687, 27.720587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130146, 37.461208, 27.956966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016465, -0.727425, 0.685990,
		0.802916, -0.418487, -0.424493,
		0.595865, 0.543803, 0.590951,
		44.308907, 37.624348, 28.134253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517544, 36.880001, 27.906895>,  <43.891800, 37.243687, 27.720587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517544, 36.880001, 27.906895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475609, 37.149059, 28.199896>,  <44.450447, 37.310493, 28.375696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475609, 37.149059, 28.199896>,  <44.517544, 36.880001, 27.906895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475609, 37.149059, 28.199896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120717, -0.722510, 0.680740,
		0.987136, 0.159792, -0.005453,
		-0.104837, 0.672641, 0.732504,
		44.444157, 37.350853, 28.419647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065228, 36.804951, 28.285511>,  <44.517544, 36.880001, 27.906895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065228, 36.804951, 28.285511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.817764, 36.975159, 28.549690>,  <44.669285, 37.077282, 28.708199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.817764, 36.975159, 28.549690>,  <45.065228, 36.804951, 28.285511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.817764, 36.975159, 28.549690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180480, -0.741177, 0.646593,
		0.764649, 0.519218, 0.381737,
		-0.618658, 0.425521, 0.660450,
		44.632168, 37.102814, 28.747826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464146, 36.759403, 28.918873>,  <45.065228, 36.804951, 28.285511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464146, 36.759403, 28.918873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.082497, 36.823318, 29.020155>,  <44.853508, 36.861668, 29.080923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.082497, 36.823318, 29.020155>,  <45.464146, 36.759403, 28.918873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082497, 36.823318, 29.020155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047945, -0.753226, 0.656012,
		0.295544, 0.638057, 0.711011,
		-0.954125, 0.159791, 0.253203,
		44.796261, 36.871258, 29.096115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424061, 36.729427, 29.640209>,  <45.464146, 36.759403, 28.918873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424061, 36.729427, 29.640209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.030117, 36.697369, 29.578720>,  <44.793751, 36.678135, 29.541826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.030117, 36.697369, 29.578720>,  <45.424061, 36.729427, 29.640209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030117, 36.697369, 29.578720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026562, -0.806484, 0.590659,
		-0.171313, 0.585799, 0.792144,
		-0.984859, -0.080147, -0.153721,
		44.734661, 36.673325, 29.532604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079441, 36.755516, 30.232759>,  <45.424061, 36.729427, 29.640209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079441, 36.755516, 30.232759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.816833, 36.556019, 30.006399>,  <44.659271, 36.436321, 29.870583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.816833, 36.556019, 30.006399>,  <45.079441, 36.755516, 30.232759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816833, 36.556019, 30.006399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162791, -0.638859, 0.751903,
		-0.736537, 0.585759, 0.338230,
		-0.656515, -0.498744, -0.565899,
		44.619881, 36.406395, 29.836630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556705, 36.519722, 30.758568>,  <45.079441, 36.755516, 30.232759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556705, 36.519722, 30.758568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.503593, 36.300972, 30.427919>,  <44.471725, 36.169724, 30.229530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.503593, 36.300972, 30.427919>,  <44.556705, 36.519722, 30.758568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503593, 36.300972, 30.427919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193625, -0.803625, 0.562758,
		-0.972049, 0.234777, 0.000817,
		-0.132779, -0.546870, -0.826621,
		44.463760, 36.136909, 30.179934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964294, 36.211765, 30.877625>,  <44.556705, 36.519722, 30.758568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964294, 36.211765, 30.877625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125683, 35.979809, 30.594517>,  <44.222515, 35.840633, 30.424652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125683, 35.979809, 30.594517>,  <43.964294, 36.211765, 30.877625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125683, 35.979809, 30.594517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307425, -0.814468, 0.492068,
		-0.861803, 0.019052, -0.506885,
		0.403467, -0.579895, -0.707769,
		44.246723, 35.805840, 30.382187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507214, 35.673172, 30.775999>,  <43.964294, 36.211765, 30.877625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507214, 35.673172, 30.775999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.850525, 35.541470, 30.618542>,  <44.056511, 35.462448, 30.524067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.850525, 35.541470, 30.618542>,  <43.507214, 35.673172, 30.775999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850525, 35.541470, 30.618542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220693, -0.929309, 0.296106,
		-0.463310, -0.167266, -0.870268,
		0.858276, -0.329251, -0.393644,
		44.108009, 35.442696, 30.500448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352203, 35.135071, 30.395813>,  <43.507214, 35.673172, 30.775999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352203, 35.135071, 30.395813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.747242, 35.080051, 30.426119>,  <43.984264, 35.047039, 30.444302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.747242, 35.080051, 30.426119>,  <43.352203, 35.135071, 30.395813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747242, 35.080051, 30.426119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137486, -0.990485, -0.006110,
		0.075882, -0.004382, -0.997107,
		0.987593, -0.137552, 0.075762,
		44.043518, 35.038784, 30.448847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666992, 34.670395, 29.862371>,  <43.352203, 35.135071, 30.395813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666992, 34.670395, 29.862371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.895638, 34.664646, 30.190531>,  <44.032825, 34.661198, 30.387426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.895638, 34.664646, 30.190531>,  <43.666992, 34.670395, 29.862371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895638, 34.664646, 30.190531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161888, -0.982169, 0.095587,
		0.804398, -0.187451, -0.563744,
		0.571609, -0.014374, 0.820400,
		44.067120, 34.660336, 30.436651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007248, 34.092827, 29.818848>,  <43.666992, 34.670395, 29.862371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007248, 34.092827, 29.818848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.028568, 34.194752, 30.205055>,  <44.041363, 34.255909, 30.436779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.028568, 34.194752, 30.205055>,  <44.007248, 34.092827, 29.818848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028568, 34.194752, 30.205055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022041, -0.966358, 0.256255,
		0.998335, -0.034941, -0.045894,
		0.053303, 0.254816, 0.965519,
		44.044559, 34.271198, 30.494711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382938, 33.631557, 30.109121>,  <44.007248, 34.092827, 29.818848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382938, 33.631557, 30.109121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.217632, 33.784401, 30.439745>,  <44.118450, 33.876106, 30.638119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.217632, 33.784401, 30.439745>,  <44.382938, 33.631557, 30.109121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217632, 33.784401, 30.439745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256035, -0.822323, 0.508165,
		0.873876, 0.421635, 0.242003,
		-0.413264, 0.382112, 0.826561,
		44.093655, 33.899033, 30.687714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722485, 33.266087, 30.620827>,  <44.382938, 33.631557, 30.109121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722485, 33.266087, 30.620827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.401989, 33.407665, 30.813797>,  <44.209690, 33.492611, 30.929579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.401989, 33.407665, 30.813797>,  <44.722485, 33.266087, 30.620827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401989, 33.407665, 30.813797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022228, -0.823321, 0.567141,
		0.597927, 0.443694, 0.667547,
		-0.801242, 0.353947, 0.482424,
		44.161617, 33.513851, 30.958525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868912, 33.351433, 31.400928>,  <44.722485, 33.266087, 30.620827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868912, 33.351433, 31.400928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.489063, 33.293186, 31.289928>,  <44.261154, 33.258236, 31.223328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.489063, 33.293186, 31.289928>,  <44.868912, 33.351433, 31.400928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489063, 33.293186, 31.289928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083456, -0.971021, 0.223950,
		-0.302072, 0.189509, 0.934258,
		-0.949625, -0.145619, -0.277502,
		44.204174, 33.249500, 31.206678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482712, 33.434566, 31.877657>,  <44.868912, 33.351433, 31.400928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482712, 33.434566, 31.877657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.709396, 33.674255, 32.103851>,  <45.845406, 33.818069, 32.239567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.709396, 33.674255, 32.103851>,  <45.482712, 33.434566, 31.877657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709396, 33.674255, 32.103851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137710, 0.745573, -0.652041,
		-0.812328, 0.291645, 0.505042,
		0.566709, 0.599220, 0.565487,
		45.879410, 33.854023, 32.273499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189568, 34.135666, 32.001312>,  <45.482712, 33.434566, 31.877657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189568, 34.135666, 32.001312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.582645, 34.197933, 32.041466>,  <45.818493, 34.235294, 32.065556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.582645, 34.197933, 32.041466>,  <45.189568, 34.135666, 32.001312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582645, 34.197933, 32.041466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095390, 0.889869, -0.446133,
		-0.158772, 0.428838, 0.889320,
		0.982696, 0.155665, 0.100380,
		45.877453, 34.244633, 32.071579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231239, 34.770084, 32.204494>,  <45.189568, 34.135666, 32.001312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231239, 34.770084, 32.204494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.612179, 34.714886, 32.095688>,  <45.840740, 34.681767, 32.030403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.612179, 34.714886, 32.095688>,  <45.231239, 34.770084, 32.204494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612179, 34.714886, 32.095688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076303, 0.971236, -0.225565,
		0.295323, 0.194060, 0.935481,
		0.952346, -0.137995, -0.272021,
		45.897881, 34.673489, 32.014080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464512, 35.406792, 32.261547>,  <45.231239, 34.770084, 32.204494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464512, 35.406792, 32.261547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.753883, 35.230122, 32.049290>,  <45.927505, 35.124119, 31.921934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.753883, 35.230122, 32.049290>,  <45.464512, 35.406792, 32.261547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753883, 35.230122, 32.049290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226990, 0.878029, -0.421355,
		0.652022, 0.184368, 0.735443,
		0.723425, -0.441671, -0.530645,
		45.970909, 35.097622, 31.890097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153782, 35.830631, 32.351734>,  <45.464512, 35.406792, 32.261547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153782, 35.830631, 32.351734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.209866, 35.627949, 32.011478>,  <46.243515, 35.506340, 31.807325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.209866, 35.627949, 32.011478>,  <46.153782, 35.830631, 32.351734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209866, 35.627949, 32.011478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358978, 0.826686, -0.433272,
		0.922754, -0.244610, 0.297809,
		0.140211, -0.506711, -0.850638,
		46.251930, 35.475937, 31.756287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.875927, 35.967705, 32.094158>,  <46.153782, 35.830631, 32.351734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.875927, 35.967705, 32.094158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.665695, 35.854233, 31.773335>,  <46.539555, 35.786148, 31.580841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.665695, 35.854233, 31.773335>,  <46.875927, 35.967705, 32.094158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.665695, 35.854233, 31.773335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436934, 0.718919, -0.540596,
		0.729973, -0.634569, -0.253893,
		-0.525574, -0.283686, -0.802056,
		46.508022, 35.769127, 31.532719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.323448, 36.040112, 31.552427>,  <46.875927, 35.967705, 32.094158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.323448, 36.040112, 31.552427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.962837, 36.039604, 31.379335>,  <46.746471, 36.039299, 31.275480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.962837, 36.039604, 31.379335>,  <47.323448, 36.040112, 31.552427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.962837, 36.039604, 31.379335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255398, 0.805691, -0.534447,
		0.349326, -0.592334, -0.726024,
		-0.901523, -0.001271, -0.432730,
		46.692379, 36.039223, 31.249516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.436337, 36.101875, 30.927134>,  <47.323448, 36.040112, 31.552427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.436337, 36.101875, 30.927134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.060223, 36.237762, 30.935675>,  <46.834553, 36.319294, 30.940800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.060223, 36.237762, 30.935675>,  <47.436337, 36.101875, 30.927134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.060223, 36.237762, 30.935675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283419, 0.816122, -0.503606,
		-0.188511, -0.467481, -0.863669,
		-0.940286, 0.339716, 0.021355,
		46.778137, 36.339676, 30.942081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.360573, 36.376522, 30.300598>,  <47.436337, 36.101875, 30.927134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.360573, 36.376522, 30.300598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.052910, 36.532917, 30.502800>,  <46.868313, 36.626755, 30.624121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.052910, 36.532917, 30.502800>,  <47.360573, 36.376522, 30.300598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052910, 36.532917, 30.502800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098998, 0.854354, -0.510176,
		-0.631349, -0.342360, -0.695836,
		-0.769154, 0.390985, 0.505502,
		46.822163, 36.650211, 30.654451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889477, 36.515369, 29.812916>,  <47.360573, 36.376522, 30.300598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889477, 36.515369, 29.812916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.808823, 36.754913, 30.122938>,  <46.760429, 36.898640, 30.308952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.808823, 36.754913, 30.122938>,  <46.889477, 36.515369, 29.812916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.808823, 36.754913, 30.122938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070874, 0.780313, -0.621359,
		-0.976894, -0.180217, -0.114892,
		-0.201631, 0.598859, 0.775056,
		46.748333, 36.934570, 30.355455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.368980, 36.871853, 29.675072>,  <46.889477, 36.515369, 29.812916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.368980, 36.871853, 29.675072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.521427, 37.108723, 29.959064>,  <46.612896, 37.250847, 30.129459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.521427, 37.108723, 29.959064>,  <46.368980, 36.871853, 29.675072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.521427, 37.108723, 29.959064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137631, 0.795725, -0.589814,
		-0.914224, 0.127074, 0.384768,
		0.381119, 0.592178, 0.709981,
		46.635761, 37.286377, 30.172058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879581, 37.379154, 29.789923>,  <46.368980, 36.871853, 29.675072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879581, 37.379154, 29.789923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.231495, 37.534824, 29.899120>,  <46.442642, 37.628227, 29.964640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.231495, 37.534824, 29.899120>,  <45.879581, 37.379154, 29.789923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231495, 37.534824, 29.899120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195245, 0.819416, -0.538921,
		-0.433430, 0.420833, 0.796893,
		0.879783, 0.389174, 0.272994,
		46.495430, 37.651577, 29.981018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809479, 38.163563, 29.963049>,  <45.879581, 37.379154, 29.789923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809479, 38.163563, 29.963049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.204620, 38.128685, 29.911617>,  <46.441708, 38.107758, 29.880758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.204620, 38.128685, 29.911617>,  <45.809479, 38.163563, 29.963049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204620, 38.128685, 29.911617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025133, 0.906432, -0.421603,
		0.153312, 0.413252, 0.897618,
		0.987858, -0.087197, -0.128581,
		46.500977, 38.102528, 29.873043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009632, 38.782185, 30.180079>,  <45.809479, 38.163563, 29.963049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009632, 38.782185, 30.180079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.322258, 38.639271, 29.975531>,  <46.509834, 38.553524, 29.852802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.322258, 38.639271, 29.975531>,  <46.009632, 38.782185, 30.180079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322258, 38.639271, 29.975531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129046, 0.894607, -0.427815,
		0.610326, 0.268377, 0.745303,
		0.781569, -0.357284, -0.511369,
		46.556728, 38.532085, 29.822121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.559166, 39.364101, 30.195763>,  <46.009632, 38.782185, 30.180079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.559166, 39.364101, 30.195763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.630806, 39.116997, 29.889484>,  <46.673790, 38.968735, 29.705717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.630806, 39.116997, 29.889484>,  <46.559166, 39.364101, 30.195763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630806, 39.116997, 29.889484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010916, 0.779481, -0.626330,
		0.983769, 0.103820, 0.146353,
		0.179105, -0.617762, -0.765696,
		46.684536, 38.931667, 29.659775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.155003, 39.635925, 29.811430>,  <46.559166, 39.364101, 30.195763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.155003, 39.635925, 29.811430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.973690, 39.409302, 29.536171>,  <46.864902, 39.273327, 29.371016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.973690, 39.409302, 29.536171>,  <47.155003, 39.635925, 29.811430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.973690, 39.409302, 29.536171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002864, 0.771083, -0.636728,
		0.891364, -0.290587, -0.347894,
		-0.453280, -0.566560, -0.688147,
		46.837708, 39.239334, 29.329727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.527752, 39.758713, 29.311291>,  <47.155003, 39.635925, 29.811430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.527752, 39.758713, 29.311291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.193760, 39.615292, 29.144314>,  <46.993366, 39.529240, 29.044128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.193760, 39.615292, 29.144314>,  <47.527752, 39.758713, 29.311291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.193760, 39.615292, 29.144314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109878, 0.634681, -0.764922,
		0.539204, -0.684560, -0.490547,
		-0.834976, -0.358549, -0.417441,
		46.943268, 39.507729, 29.019081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.726974, 39.596054, 28.584137>,  <47.527752, 39.758713, 29.311291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.726974, 39.596054, 28.584137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.329998, 39.644867, 28.578924>,  <47.091812, 39.674156, 28.575796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.329998, 39.644867, 28.578924>,  <47.726974, 39.596054, 28.584137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.329998, 39.644867, 28.578924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064663, 0.429702, -0.900652,
		-0.104312, -0.894686, -0.434345,
		-0.992440, 0.122035, -0.013030,
		47.032265, 39.681477, 28.575014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.350166, 39.275414, 27.924458>,  <47.726974, 39.596054, 28.584137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.350166, 39.275414, 27.924458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.067074, 39.533451, 28.039677>,  <46.897217, 39.688274, 28.108809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.067074, 39.533451, 28.039677>,  <47.350166, 39.275414, 27.924458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.067074, 39.533451, 28.039677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115393, 0.296694, -0.947975,
		-0.696994, -0.704151, -0.135540,
		-0.707732, 0.645093, 0.288048,
		46.854755, 39.726978, 28.126091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.848785, 39.317337, 27.376160>,  <47.350166, 39.275414, 27.924458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.848785, 39.317337, 27.376160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.744133, 39.640118, 27.587961>,  <46.681339, 39.833786, 27.715042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.744133, 39.640118, 27.587961>,  <46.848785, 39.317337, 27.376160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744133, 39.640118, 27.587961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109710, 0.520195, -0.846972,
		-0.958912, -0.279689, -0.047569,
		-0.261634, 0.806952, 0.529506,
		46.665642, 39.882202, 27.746813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.771553, 37.362972, 35.886147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404690, 37.204254, 35.900997>,  <40.184570, 37.109024, 35.909908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404690, 37.204254, 35.900997>,  <40.771553, 37.362972, 35.886147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404690, 37.204254, 35.900997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133544, -0.393764, -0.909459,
		0.375485, -0.829159, 0.414133,
		-0.917157, -0.396793, 0.037123,
		40.129543, 37.085217, 35.912132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804241, 36.613045, 35.712906>,  <40.771553, 37.362972, 35.886147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804241, 36.613045, 35.712906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420277, 36.716084, 35.668694>,  <40.189899, 36.777908, 35.642166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420277, 36.716084, 35.668694>,  <40.804241, 36.613045, 35.712906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420277, 36.716084, 35.668694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011124, -0.359004, -0.933270,
		-0.280086, -0.897085, 0.341746,
		-0.959910, 0.257594, -0.110531,
		40.132305, 36.793362, 35.635532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514137, 36.052402, 35.290695>,  <40.804241, 36.613045, 35.712906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514137, 36.052402, 35.290695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252937, 36.353123, 35.254063>,  <40.096218, 36.533554, 35.232082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252937, 36.353123, 35.254063>,  <40.514137, 36.052402, 35.290695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252937, 36.353123, 35.254063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138067, -0.237061, -0.961634,
		-0.744669, -0.615300, 0.258600,
		-0.652997, 0.751803, -0.091579,
		40.057037, 36.578663, 35.226589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026905, 35.730045, 34.902729>,  <40.514137, 36.052402, 35.290695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026905, 35.730045, 34.902729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997166, 36.123352, 34.836197>,  <39.979321, 36.359337, 34.796276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997166, 36.123352, 34.836197>,  <40.026905, 35.730045, 34.902729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997166, 36.123352, 34.836197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177110, -0.177160, -0.968115,
		-0.981378, -0.042523, 0.187318,
		-0.074353, 0.983263, -0.166329,
		39.974861, 36.418331, 34.786297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366047, 35.860416, 34.682068>,  <40.026905, 35.730045, 34.902729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366047, 35.860416, 34.682068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477036, 36.206402, 34.514805>,  <39.543629, 36.413994, 34.414448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477036, 36.206402, 34.514805>,  <39.366047, 35.860416, 34.682068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477036, 36.206402, 34.514805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154456, -0.389426, -0.908015,
		-0.948237, 0.316533, 0.025544,
		0.277469, 0.864959, -0.418159,
		39.560276, 36.465889, 34.389359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816692, 36.011047, 34.246964>,  <39.366047, 35.860416, 34.682068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816692, 36.011047, 34.246964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123383, 36.233360, 34.118439>,  <39.307396, 36.366749, 34.041325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123383, 36.233360, 34.118439>,  <38.816692, 36.011047, 34.246964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123383, 36.233360, 34.118439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291836, -0.144052, -0.945559,
		-0.571806, 0.818755, 0.051748,
		0.766726, 0.555778, -0.321312,
		39.353401, 36.400093, 34.022045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512321, 36.448055, 33.728333>,  <38.816692, 36.011047, 34.246964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512321, 36.448055, 33.728333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902096, 36.450947, 33.638512>,  <39.135960, 36.452682, 33.584618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902096, 36.450947, 33.638512>,  <38.512321, 36.448055, 33.728333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902096, 36.450947, 33.638512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214313, -0.270038, -0.938696,
		-0.067420, 0.962823, -0.261586,
		0.974435, 0.007225, -0.224552,
		39.194427, 36.453114, 33.571148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540184, 36.822170, 33.091534>,  <38.512321, 36.448055, 33.728333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540184, 36.822170, 33.091534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847656, 36.569817, 33.133690>,  <39.032139, 36.418404, 33.158981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847656, 36.569817, 33.133690>,  <38.540184, 36.822170, 33.091534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847656, 36.569817, 33.133690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190804, -0.383429, -0.903646,
		0.610506, 0.674511, -0.415111,
		0.768685, -0.630886, 0.105386,
		39.078262, 36.380550, 33.165306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815723, 36.752647, 32.440392>,  <38.540184, 36.822170, 33.091534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815723, 36.752647, 32.440392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971973, 36.444790, 32.642403>,  <39.065723, 36.260075, 32.763611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971973, 36.444790, 32.642403>,  <38.815723, 36.752647, 32.440392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971973, 36.444790, 32.642403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201121, -0.606721, -0.769052,
		0.898309, 0.198842, -0.391794,
		0.390629, -0.769644, 0.505031,
		39.089161, 36.213898, 32.793911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303146, 36.389290, 31.966007>,  <38.815723, 36.752647, 32.440392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303146, 36.389290, 31.966007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208958, 36.137592, 32.262280>,  <39.152443, 35.986572, 32.440044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208958, 36.137592, 32.262280>,  <39.303146, 36.389290, 31.966007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208958, 36.137592, 32.262280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085962, -0.745638, -0.660783,
		0.968072, -0.219267, 0.121487,
		-0.235473, -0.629242, 0.740679,
		39.138317, 35.948818, 32.484482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666637, 35.685333, 31.805632>,  <39.303146, 36.389290, 31.966007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666637, 35.685333, 31.805632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393547, 35.572960, 32.075436>,  <39.229694, 35.505535, 32.237320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393547, 35.572960, 32.075436>,  <39.666637, 35.685333, 31.805632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393547, 35.572960, 32.075436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004331, -0.921558, -0.388217,
		0.730665, -0.267965, 0.627951,
		-0.682722, -0.280937, 0.674511,
		39.188732, 35.488678, 32.277790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899818, 34.949902, 32.181717>,  <39.666637, 35.685333, 31.805632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899818, 34.949902, 32.181717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503613, 35.000732, 32.202587>,  <39.265888, 35.031231, 32.215111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503613, 35.000732, 32.202587>,  <39.899818, 34.949902, 32.181717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503613, 35.000732, 32.202587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130066, -0.989778, -0.058499,
		0.044211, -0.064731, 0.996923,
		-0.990519, 0.127080, 0.052178,
		39.206455, 35.038857, 32.218239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623703, 34.286263, 32.579716>,  <39.899818, 34.949902, 32.181717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623703, 34.286263, 32.579716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412796, 34.472042, 32.295101>,  <39.286251, 34.583511, 32.124332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412796, 34.472042, 32.295101>,  <39.623703, 34.286263, 32.579716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412796, 34.472042, 32.295101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248453, -0.885066, -0.393609,
		-0.812565, -0.030754, 0.582059,
		-0.527266, 0.464447, -0.711533,
		39.254616, 34.611378, 32.081642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976528, 33.920666, 32.433140>,  <39.623703, 34.286263, 32.579716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976528, 33.920666, 32.433140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053165, 34.150818, 32.115089>,  <39.099148, 34.288910, 31.924259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053165, 34.150818, 32.115089>,  <38.976528, 33.920666, 32.433140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053165, 34.150818, 32.115089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108244, -0.792807, -0.599783,
		-0.975488, 0.200980, -0.089613,
		0.191590, 0.575381, -0.795129,
		39.110641, 34.323433, 31.876551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437531, 33.428032, 31.884596>,  <38.976528, 33.920666, 32.433140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437531, 33.428032, 31.884596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750816, 33.197762, 31.978548>,  <39.938789, 33.059601, 32.034920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750816, 33.197762, 31.978548>,  <39.437531, 33.428032, 31.884596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750816, 33.197762, 31.978548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446255, -0.257444, 0.857076,
		-0.432933, -0.776090, -0.458534,
		0.783215, -0.575679, 0.234878,
		39.985783, 33.025059, 32.049011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119999, 32.728413, 32.087727>,  <39.437531, 33.428032, 31.884596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119999, 32.728413, 32.087727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485001, 32.762756, 32.247707>,  <39.704002, 32.783363, 32.343697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485001, 32.762756, 32.247707>,  <39.119999, 32.728413, 32.087727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485001, 32.762756, 32.247707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385804, -0.144334, 0.911221,
		0.135967, -0.985797, -0.098579,
		0.912507, 0.085864, 0.399949,
		39.758751, 32.788517, 32.367691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099472, 32.180840, 32.561985>,  <39.119999, 32.728413, 32.087727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099472, 32.180840, 32.561985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426319, 32.385818, 32.667599>,  <39.622429, 32.508804, 32.730965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426319, 32.385818, 32.667599>,  <39.099472, 32.180840, 32.561985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426319, 32.385818, 32.667599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261209, -0.079161, 0.962031,
		0.513891, -0.855062, 0.069171,
		0.817121, 0.512447, 0.264030,
		39.671455, 32.539551, 32.746807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477127, 31.801830, 33.002270>,  <39.099472, 32.180840, 32.561985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477127, 31.801830, 33.002270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565643, 32.182514, 33.087387>,  <39.618755, 32.410923, 33.138458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565643, 32.182514, 33.087387>,  <39.477127, 31.801830, 33.002270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565643, 32.182514, 33.087387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277333, -0.147777, 0.949341,
		0.934942, -0.269097, 0.231238,
		0.221293, 0.951708, 0.212792,
		39.632030, 32.468025, 33.151226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792038, 31.716133, 33.717125>,  <39.477127, 31.801830, 33.002270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792038, 31.716133, 33.717125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684853, 32.099701, 33.679886>,  <39.620541, 32.329842, 33.657543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684853, 32.099701, 33.679886>,  <39.792038, 31.716133, 33.717125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684853, 32.099701, 33.679886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379551, -0.016254, 0.925028,
		0.885516, 0.283206, 0.368315,
		-0.267960, 0.958921, -0.093098,
		39.604465, 32.387379, 33.651955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989754, 32.109188, 34.410320>,  <39.792038, 31.716133, 33.717125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989754, 32.109188, 34.410320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753357, 32.398594, 34.267628>,  <39.611519, 32.572239, 34.182014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753357, 32.398594, 34.267628>,  <39.989754, 32.109188, 34.410320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753357, 32.398594, 34.267628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260890, 0.247023, 0.933229,
		0.763324, 0.644599, 0.042768,
		-0.590993, 0.723513, -0.356728,
		39.576057, 32.615646, 34.160610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289543, 32.940151, 34.491291>,  <39.989754, 32.109188, 34.410320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289543, 32.940151, 34.491291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895554, 32.876148, 34.465282>,  <39.659161, 32.837746, 34.449677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895554, 32.876148, 34.465282>,  <40.289543, 32.940151, 34.491291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895554, 32.876148, 34.465282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122881, 0.384684, 0.914833,
		-0.121370, 0.909074, -0.398565,
		-0.984972, -0.160009, -0.065019,
		39.600063, 32.828144, 34.445778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125233, 33.286167, 35.079643>,  <40.289543, 32.940151, 34.491291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125233, 33.286167, 35.079643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774467, 33.129967, 34.967548>,  <39.564007, 33.036247, 34.900291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774467, 33.129967, 34.967548>,  <40.125233, 33.286167, 35.079643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774467, 33.129967, 34.967548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423711, 0.352804, 0.834265,
		-0.226911, 0.850318, -0.474837,
		-0.876915, -0.390498, -0.280234,
		39.511395, 33.012817, 34.883476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615913, 33.852585, 35.158504>,  <40.125233, 33.286167, 35.079643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615913, 33.852585, 35.158504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418823, 33.504559, 35.164295>,  <39.300571, 33.295742, 35.167770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418823, 33.504559, 35.164295>,  <39.615913, 33.852585, 35.158504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418823, 33.504559, 35.164295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596254, 0.349682, 0.722637,
		-0.633804, 0.347428, -0.691076,
		-0.492721, -0.870067, 0.014475,
		39.271008, 33.243538, 35.168636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945206, 33.986332, 35.062046>,  <39.615913, 33.852585, 35.158504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945206, 33.986332, 35.062046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920383, 33.628456, 35.238987>,  <38.905491, 33.413731, 35.345150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920383, 33.628456, 35.238987>,  <38.945206, 33.986332, 35.062046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920383, 33.628456, 35.238987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717639, 0.348020, 0.603221,
		-0.693644, -0.280013, -0.663664,
		-0.062059, -0.894693, 0.442351,
		38.901768, 33.360050, 35.371693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235962, 33.819984, 35.139244>,  <38.945206, 33.986332, 35.062046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235962, 33.819984, 35.139244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437447, 33.620129, 35.421131>,  <38.558338, 33.500214, 35.590263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437447, 33.620129, 35.421131>,  <38.235962, 33.819984, 35.139244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437447, 33.620129, 35.421131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676080, 0.279812, 0.681631,
		-0.537762, -0.819793, -0.196854,
		0.503715, -0.499644, 0.704718,
		38.588562, 33.470234, 35.632545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652782, 33.380138, 35.476185>,  <38.235962, 33.819984, 35.139244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652782, 33.380138, 35.476185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963898, 33.413815, 35.725330>,  <38.150566, 33.434021, 35.874817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963898, 33.413815, 35.725330>,  <37.652782, 33.380138, 35.476185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963898, 33.413815, 35.725330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619038, 0.274158, 0.735955,
		-0.108800, -0.957992, 0.265356,
		0.777788, 0.084194, 0.622862,
		38.197235, 33.439072, 35.912189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365765, 33.168964, 36.099171>,  <37.652782, 33.380138, 35.476185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365765, 33.168964, 36.099171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691151, 33.370831, 36.214809>,  <37.886383, 33.491951, 36.284195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691151, 33.370831, 36.214809>,  <37.365765, 33.168964, 36.099171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691151, 33.370831, 36.214809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457255, 0.247750, 0.854129,
		0.359429, -0.826999, 0.432300,
		0.813467, 0.504670, 0.289101,
		37.935192, 33.522232, 36.301540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377373, 32.978909, 36.829247>,  <37.365765, 33.168964, 36.099171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377373, 32.978909, 36.829247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601852, 33.308094, 36.793964>,  <37.736542, 33.505604, 36.772793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601852, 33.308094, 36.793964>,  <37.377373, 32.978909, 36.829247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601852, 33.308094, 36.793964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373368, 0.346833, 0.860408,
		0.738679, -0.449929, 0.501912,
		0.561203, 0.822964, -0.088209,
		37.770214, 33.554985, 36.767502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735188, 32.318550, 37.098518>,  <37.377373, 32.978909, 36.829247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735188, 32.318550, 37.098518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555286, 32.000885, 37.261990>,  <37.447346, 31.810286, 37.360073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555286, 32.000885, 37.261990>,  <37.735188, 32.318550, 37.098518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555286, 32.000885, 37.261990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518661, -0.140280, -0.843393,
		0.727125, -0.591287, -0.348812,
		-0.449756, -0.794167, 0.408678,
		37.420361, 31.762634, 37.384594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865993, 31.797798, 36.686417>,  <37.735188, 32.318550, 37.098518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865993, 31.797798, 36.686417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529800, 31.709587, 36.884388>,  <37.328083, 31.656660, 37.003170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529800, 31.709587, 36.884388>,  <37.865993, 31.797798, 36.686417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529800, 31.709587, 36.884388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511199, 0.019938, -0.859231,
		0.179617, -0.975177, -0.129492,
		-0.840484, -0.220529, 0.494928,
		37.277657, 31.643429, 37.032867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452900, 31.310547, 36.241135>,  <37.865993, 31.797798, 36.686417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452900, 31.310547, 36.241135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212227, 31.480593, 36.511616>,  <37.067822, 31.582621, 36.673904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212227, 31.480593, 36.511616>,  <37.452900, 31.310547, 36.241135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212227, 31.480593, 36.511616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725232, 0.063975, -0.685526,
		-0.334686, -0.902877, 0.269813,
		-0.601685, 0.425113, 0.676206,
		37.031723, 31.608126, 36.714478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797882, 31.056732, 36.054733>,  <37.452900, 31.310547, 36.241135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797882, 31.056732, 36.054733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692444, 31.358490, 36.295200>,  <36.629181, 31.539545, 36.439480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692444, 31.358490, 36.295200>,  <36.797882, 31.056732, 36.054733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692444, 31.358490, 36.295200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798905, 0.178539, -0.574348,
		-0.540617, -0.631674, 0.555627,
		-0.263600, 0.754395, 0.601169,
		36.613365, 31.584808, 36.475552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109142, 30.915686, 36.078545>,  <36.797882, 31.056732, 36.054733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109142, 30.915686, 36.078545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180595, 31.293571, 36.188530>,  <36.223469, 31.520304, 36.254520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180595, 31.293571, 36.188530>,  <36.109142, 30.915686, 36.078545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180595, 31.293571, 36.188530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855706, 0.287105, -0.430510,
		-0.485651, -0.158380, 0.859685,
		0.178635, 0.944715, 0.274960,
		36.234184, 31.576986, 36.271019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398914, 31.202374, 36.262028>,  <36.109142, 30.915686, 36.078545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398914, 31.202374, 36.262028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642094, 31.505358, 36.166824>,  <35.788002, 31.687147, 36.109703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642094, 31.505358, 36.166824>,  <35.398914, 31.202374, 36.262028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642094, 31.505358, 36.166824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692293, 0.358941, -0.626013,
		-0.388747, 0.545359, 0.742603,
		0.607952, 0.757460, -0.238011,
		35.824478, 31.732595, 36.095421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916016, 31.696226, 36.021698>,  <35.398914, 31.202374, 36.262028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916016, 31.696226, 36.021698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270550, 31.836088, 35.900276>,  <35.483273, 31.920006, 35.827423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270550, 31.836088, 35.900276>,  <34.916016, 31.696226, 36.021698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270550, 31.836088, 35.900276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460634, 0.599136, -0.654868,
		-0.047107, 0.720263, 0.692100,
		0.886339, 0.349654, -0.303554,
		35.536453, 31.940985, 35.809212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855404, 32.376099, 36.110359>,  <34.916016, 31.696226, 36.021698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855404, 32.376099, 36.110359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139977, 32.330769, 35.832935>,  <35.310719, 32.303570, 35.666481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139977, 32.330769, 35.832935>,  <34.855404, 32.376099, 36.110359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139977, 32.330769, 35.832935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384550, 0.763270, -0.519172,
		0.588206, 0.636064, 0.499437,
		0.711432, -0.113321, -0.693558,
		35.353405, 32.296772, 35.624866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110306, 33.011478, 36.012039>,  <34.855404, 32.376099, 36.110359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110306, 33.011478, 36.012039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177143, 32.811192, 35.672306>,  <35.217247, 32.691021, 35.468468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177143, 32.811192, 35.672306>,  <35.110306, 33.011478, 36.012039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177143, 32.811192, 35.672306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469879, 0.716879, -0.515071,
		0.866772, 0.485147, -0.115491,
		0.167092, -0.500716, -0.849331,
		35.227272, 32.660976, 35.417507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387535, 33.450607, 35.616684>,  <35.110306, 33.011478, 36.012039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387535, 33.450607, 35.616684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291313, 33.171612, 35.346680>,  <35.233578, 33.004215, 35.184677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291313, 33.171612, 35.346680>,  <35.387535, 33.450607, 35.616684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291313, 33.171612, 35.346680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525102, 0.678399, -0.513851,
		0.816334, 0.230841, -0.529445,
		-0.240557, -0.697487, -0.675015,
		35.219147, 32.962364, 35.144176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524841, 33.798584, 35.070889>,  <35.387535, 33.450607, 35.616684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524841, 33.798584, 35.070889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279072, 33.503490, 34.959007>,  <35.131611, 33.326435, 34.891880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279072, 33.503490, 34.959007>,  <35.524841, 33.798584, 35.070889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279072, 33.503490, 34.959007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549096, 0.654407, -0.519851,
		0.566552, -0.165824, -0.807169,
		-0.614421, -0.737736, -0.279703,
		35.094746, 33.282169, 34.875095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386204, 33.944511, 34.324875>,  <35.524841, 33.798584, 35.070889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386204, 33.944511, 34.324875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100101, 33.697216, 34.455223>,  <34.928440, 33.548840, 34.533432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100101, 33.697216, 34.455223>,  <35.386204, 33.944511, 34.324875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100101, 33.697216, 34.455223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690069, 0.551018, -0.469237,
		0.110540, -0.560497, -0.820746,
		-0.715252, -0.618241, 0.325872,
		34.885525, 33.511745, 34.552986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.385689, 32.261494, 40.673786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.989937, 32.219135, 40.713623>,  <38.752487, 32.193722, 40.737526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.989937, 32.219135, 40.713623>,  <39.385689, 32.261494, 40.673786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989937, 32.219135, 40.713623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059809, -0.327910, -0.942814,
		0.132497, -0.938755, 0.318094,
		-0.989377, -0.105895, 0.099593,
		38.693123, 32.187366, 40.743500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071281, 31.681139, 40.242859>,  <39.385689, 32.261494, 40.673786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071281, 31.681139, 40.242859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.715843, 31.847364, 40.320526>,  <38.502579, 31.947100, 40.367126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.715843, 31.847364, 40.320526>,  <39.071281, 31.681139, 40.242859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715843, 31.847364, 40.320526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422205, -0.575596, -0.700309,
		-0.179262, -0.704271, 0.686926,
		-0.888599, 0.415562, 0.194164,
		38.449265, 31.972033, 40.378777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597431, 31.155010, 40.036194>,  <39.071281, 31.681139, 40.242859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597431, 31.155010, 40.036194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.379673, 31.490511, 40.040863>,  <38.249020, 31.691811, 40.043663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.379673, 31.490511, 40.040863>,  <38.597431, 31.155010, 40.036194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379673, 31.490511, 40.040863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506222, -0.317407, -0.801868,
		-0.668864, -0.442437, 0.597387,
		-0.544390, 0.838751, 0.011669,
		38.216354, 31.742136, 40.044365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906384, 30.893871, 39.862495>,  <38.597431, 31.155010, 40.036194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906384, 30.893871, 39.862495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893269, 31.287092, 39.790348>,  <37.885399, 31.523026, 39.747059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.893269, 31.287092, 39.790348>,  <37.906384, 30.893871, 39.862495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893269, 31.287092, 39.790348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478131, -0.173906, -0.860899,
		-0.877676, 0.058011, 0.475730,
		-0.032791, 0.983052, -0.180370,
		37.883430, 31.582008, 39.736237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349373, 31.036480, 39.607014>,  <37.906384, 30.893871, 39.862495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349373, 31.036480, 39.607014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.577606, 31.344557, 39.493008>,  <37.714546, 31.529404, 39.424603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.577606, 31.344557, 39.493008>,  <37.349373, 31.036480, 39.607014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577606, 31.344557, 39.493008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228265, -0.184640, -0.955931,
		-0.788877, 0.610499, 0.070456,
		0.570586, 0.770194, -0.285014,
		37.748783, 31.575615, 39.407505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980949, 31.273003, 39.050472>,  <37.349373, 31.036480, 39.607014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980949, 31.273003, 39.050472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.337715, 31.450312, 39.014690>,  <37.551773, 31.556698, 38.993221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.337715, 31.450312, 39.014690>,  <36.980949, 31.273003, 39.050472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337715, 31.450312, 39.014690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106379, 0.013399, -0.994235,
		-0.439518, 0.896287, 0.059105,
		0.891912, 0.443272, -0.089457,
		37.605289, 31.583294, 38.987854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888168, 31.944548, 38.803516>,  <36.980949, 31.273003, 39.050472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888168, 31.944548, 38.803516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264496, 31.859800, 38.697704>,  <37.490292, 31.808952, 38.634216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264496, 31.859800, 38.697704>,  <36.888168, 31.944548, 38.803516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264496, 31.859800, 38.697704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226678, 0.186884, -0.955872,
		0.251954, 0.959264, 0.127798,
		0.940817, -0.211866, -0.264531,
		37.546741, 31.796240, 38.618343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167759, 32.485992, 38.400501>,  <36.888168, 31.944548, 38.803516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167759, 32.485992, 38.400501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.358456, 32.143257, 38.321960>,  <37.472874, 31.937616, 38.274837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.358456, 32.143257, 38.321960>,  <37.167759, 32.485992, 38.400501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358456, 32.143257, 38.321960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283593, 0.061506, -0.956970,
		0.832043, 0.511908, -0.213671,
		0.476738, -0.856836, -0.196349,
		37.501476, 31.886206, 38.263054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623676, 32.557198, 37.828331>,  <37.167759, 32.485992, 38.400501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623676, 32.557198, 37.828331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.528881, 32.168938, 37.844692>,  <37.472004, 31.935982, 37.854507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.528881, 32.168938, 37.844692>,  <37.623676, 32.557198, 37.828331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528881, 32.168938, 37.844692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326862, 0.040020, -0.944224,
		0.914875, -0.237139, -0.326753,
		-0.236989, -0.970651, 0.040899,
		37.457783, 31.877743, 37.856960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022976, 33.150742, 37.601971>,  <37.623676, 32.557198, 37.828331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022976, 33.150742, 37.601971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970272, 33.483932, 37.387016>,  <37.938648, 33.683846, 37.258041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970272, 33.483932, 37.387016>,  <38.022976, 33.150742, 37.601971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970272, 33.483932, 37.387016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018941, 0.539901, 0.841516,
		0.991100, 0.121059, -0.055361,
		-0.131763, 0.832978, -0.537389,
		37.930744, 33.733826, 37.225800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434380, 33.637527, 38.017418>,  <38.022976, 33.150742, 37.601971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434380, 33.637527, 38.017418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.200161, 33.842159, 37.765888>,  <38.059631, 33.964939, 37.614971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.200161, 33.842159, 37.765888>,  <38.434380, 33.637527, 38.017418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200161, 33.842159, 37.765888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137815, 0.701596, 0.699121,
		0.798838, 0.496028, -0.340313,
		-0.585546, 0.511584, -0.628822,
		38.024498, 33.995636, 37.577240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670853, 34.205029, 38.099384>,  <38.434380, 33.637527, 38.017418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670853, 34.205029, 38.099384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.315495, 34.271305, 37.928127>,  <38.102280, 34.311069, 37.825375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.315495, 34.271305, 37.928127>,  <38.670853, 34.205029, 38.099384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315495, 34.271305, 37.928127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256972, 0.593334, 0.762837,
		0.380423, 0.787720, -0.484537,
		-0.888394, 0.165689, -0.428140,
		38.048977, 34.321011, 37.799686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565231, 34.973370, 37.916714>,  <38.670853, 34.205029, 38.099384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565231, 34.973370, 37.916714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.233551, 34.756355, 37.970512>,  <38.034542, 34.626148, 38.002792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.233551, 34.756355, 37.970512>,  <38.565231, 34.973370, 37.916714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233551, 34.756355, 37.970512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314126, 0.651331, 0.690719,
		-0.462339, 0.530494, -0.710506,
		-0.829197, -0.542535, 0.134493,
		37.984791, 34.593594, 38.010860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995140, 35.417568, 37.995514>,  <38.565231, 34.973370, 37.916714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995140, 35.417568, 37.995514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.863201, 35.069576, 38.142120>,  <37.784039, 34.860783, 38.230083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.863201, 35.069576, 38.142120>,  <37.995140, 35.417568, 37.995514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863201, 35.069576, 38.142120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319452, 0.468203, 0.823855,
		-0.888343, 0.154660, -0.432351,
		-0.329845, -0.869981, 0.366518,
		37.764248, 34.808582, 38.252075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401089, 35.627525, 38.276646>,  <37.995140, 35.417568, 37.995514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401089, 35.627525, 38.276646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492355, 35.280983, 38.454350>,  <37.547115, 35.073059, 38.560974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.492355, 35.280983, 38.454350>,  <37.401089, 35.627525, 38.276646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492355, 35.280983, 38.454350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187372, 0.408697, 0.893229,
		-0.955422, -0.287051, -0.069077,
		0.228170, -0.866353, 0.444264,
		37.560806, 35.021076, 38.587627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882896, 35.599155, 38.777836>,  <37.401089, 35.627525, 38.276646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882896, 35.599155, 38.777836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.176273, 35.362450, 38.911625>,  <37.352299, 35.220425, 38.991898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.176273, 35.362450, 38.911625>,  <36.882896, 35.599155, 38.777836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176273, 35.362450, 38.911625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225085, 0.252866, 0.940954,
		-0.641399, -0.765425, 0.052267,
		0.733447, -0.591763, 0.334474,
		37.396309, 35.184921, 39.011967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645573, 35.252205, 39.424072>,  <36.882896, 35.599155, 38.777836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645573, 35.252205, 39.424072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044411, 35.223969, 39.435490>,  <37.283714, 35.207027, 39.442341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044411, 35.223969, 39.435490>,  <36.645573, 35.252205, 39.424072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044411, 35.223969, 39.435490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003804, 0.328211, 0.944597,
		-0.076047, -0.941963, 0.326990,
		0.997097, -0.070590, 0.028543,
		37.343540, 35.202793, 39.444054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777397, 35.159145, 40.067127>,  <36.645573, 35.252205, 39.424072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777397, 35.159145, 40.067127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.144089, 35.258392, 39.941875>,  <37.364101, 35.317940, 39.866726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.144089, 35.258392, 39.941875>,  <36.777397, 35.159145, 40.067127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144089, 35.258392, 39.941875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253190, 0.245464, 0.935758,
		0.309043, -0.937114, 0.162202,
		0.916727, 0.248121, -0.313126,
		37.419106, 35.332829, 39.847939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230656, 34.686466, 40.434429>,  <36.777397, 35.159145, 40.067127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230656, 34.686466, 40.434429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.425102, 35.016853, 40.320251>,  <37.541771, 35.215084, 40.251743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.425102, 35.016853, 40.320251>,  <37.230656, 34.686466, 40.434429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425102, 35.016853, 40.320251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302238, 0.147574, 0.941740,
		0.819967, -0.544064, -0.177900,
		0.486113, 0.825964, -0.285443,
		37.570934, 35.264641, 40.234619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855820, 34.649616, 40.755367>,  <37.230656, 34.686466, 40.434429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855820, 34.649616, 40.755367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843479, 35.039692, 40.667683>,  <37.836075, 35.273739, 40.615070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843479, 35.039692, 40.667683>,  <37.855820, 34.649616, 40.755367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843479, 35.039692, 40.667683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408161, 0.212492, 0.887835,
		0.912389, -0.062084, -0.404590,
		-0.030852, 0.975189, -0.219216,
		37.834225, 35.332249, 40.601917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538025, 34.890747, 41.051266>,  <37.855820, 34.649616, 40.755367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538025, 34.890747, 41.051266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.311760, 35.211525, 40.974415>,  <38.175999, 35.403992, 40.928307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.311760, 35.211525, 40.974415>,  <38.538025, 34.890747, 41.051266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311760, 35.211525, 40.974415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391922, 0.466431, 0.792994,
		0.725549, 0.373270, -0.578142,
		-0.565665, 0.801942, -0.192126,
		38.142059, 35.452106, 40.916779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975967, 35.467075, 40.868244>,  <38.538025, 34.890747, 41.051266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975967, 35.467075, 40.868244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633881, 35.574192, 41.045731>,  <38.428627, 35.638462, 41.152222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633881, 35.574192, 41.045731>,  <38.975967, 35.467075, 40.868244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633881, 35.574192, 41.045731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516429, 0.368357, 0.773055,
		0.043575, 0.890280, -0.453324,
		-0.855221, 0.267796, 0.443715,
		38.377316, 35.654530, 41.178844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250572, 35.681549, 41.491405>,  <38.975967, 35.467075, 40.868244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250572, 35.681549, 41.491405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864574, 35.758591, 41.562607>,  <38.632977, 35.804813, 41.605328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864574, 35.758591, 41.562607>,  <39.250572, 35.681549, 41.491405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864574, 35.758591, 41.562607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247961, 0.449025, 0.858424,
		0.085408, 0.872514, -0.481066,
		-0.964998, 0.192602, 0.177999,
		38.575073, 35.816372, 41.616005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.151455, 37.712524, 42.474182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.477360, 37.482841, 42.442036>,  <35.672901, 37.345032, 42.422749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.477360, 37.482841, 42.442036>,  <35.151455, 37.712524, 42.474182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477360, 37.482841, 42.442036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038696, 0.084454, -0.995676,
		0.578509, 0.814345, 0.046590,
		0.814758, -0.574204, -0.080369,
		35.721786, 37.310581, 42.417927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552807, 38.042721, 41.888531>,  <35.151455, 37.712524, 42.474182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552807, 38.042721, 41.888531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674229, 37.665554, 41.943317>,  <35.747082, 37.439255, 41.976189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674229, 37.665554, 41.943317>,  <35.552807, 38.042721, 41.888531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674229, 37.665554, 41.943317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070030, -0.121280, -0.990145,
		0.950236, 0.310157, 0.029217,
		0.303557, -0.942918, 0.136965,
		35.765297, 37.382679, 41.984406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149776, 38.014992, 41.583130>,  <35.552807, 38.042721, 41.888531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149776, 38.014992, 41.583130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.031651, 37.633678, 41.608551>,  <35.960777, 37.404892, 41.623802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.031651, 37.633678, 41.608551>,  <36.149776, 38.014992, 41.583130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031651, 37.633678, 41.608551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114390, -0.101318, -0.988256,
		0.948528, -0.284575, 0.138966,
		-0.295313, -0.953285, 0.063551,
		35.943058, 37.347694, 41.627617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490616, 37.655560, 41.120094>,  <36.149776, 38.014992, 41.583130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490616, 37.655560, 41.120094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.183376, 37.406677, 41.180607>,  <35.999035, 37.257347, 41.216915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.183376, 37.406677, 41.180607>,  <36.490616, 37.655560, 41.120094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183376, 37.406677, 41.180607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040853, -0.283390, -0.958134,
		0.639032, -0.729758, 0.243089,
		-0.768095, -0.622209, 0.151283,
		35.952950, 37.220013, 41.225990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634136, 37.076561, 40.676296>,  <36.490616, 37.655560, 41.120094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634136, 37.076561, 40.676296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.237961, 37.074726, 40.731438>,  <36.000256, 37.073627, 40.764523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.237961, 37.074726, 40.731438>,  <36.634136, 37.076561, 40.676296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237961, 37.074726, 40.731438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123612, -0.413963, -0.901862,
		0.061203, -0.910282, 0.409439,
		-0.990442, -0.004585, 0.137857,
		35.940826, 37.073349, 40.772793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393162, 36.451149, 40.420273>,  <36.634136, 37.076561, 40.676296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393162, 36.451149, 40.420273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.059010, 36.670311, 40.437881>,  <35.858517, 36.801807, 40.448448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.059010, 36.670311, 40.437881>,  <36.393162, 36.451149, 40.420273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059010, 36.670311, 40.437881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174022, -0.187654, -0.966697,
		-0.521393, -0.815224, 0.252110,
		-0.835384, 0.547901, 0.044025,
		35.808395, 36.834682, 40.451088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094536, 36.206436, 39.891647>,  <36.393162, 36.451149, 40.420273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094536, 36.206436, 39.891647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850842, 36.508511, 39.988415>,  <35.704624, 36.689754, 40.046474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850842, 36.508511, 39.988415>,  <36.094536, 36.206436, 39.891647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850842, 36.508511, 39.988415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345399, 0.021903, -0.938201,
		-0.713814, -0.655146, 0.247496,
		-0.609237, 0.755185, 0.241921,
		35.668072, 36.735065, 40.060989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521004, 35.984085, 39.652981>,  <36.094536, 36.206436, 39.891647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521004, 35.984085, 39.652981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507629, 36.383457, 39.670956>,  <35.499607, 36.623081, 39.681740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507629, 36.383457, 39.670956>,  <35.521004, 35.984085, 39.652981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507629, 36.383457, 39.670956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161342, 0.038981, -0.986128,
		-0.986332, -0.040219, 0.159785,
		-0.033432, 0.998430, 0.044937,
		35.497601, 36.682987, 39.684437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906067, 36.184101, 39.412930>,  <35.521004, 35.984085, 39.652981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906067, 36.184101, 39.412930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.099609, 36.528931, 39.352638>,  <35.215736, 36.735828, 39.316463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.099609, 36.528931, 39.352638>,  <34.906067, 36.184101, 39.412930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099609, 36.528931, 39.352638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411324, 0.071994, -0.908641,
		-0.772460, 0.501650, 0.389425,
		0.483856, 0.862069, -0.150728,
		35.244766, 36.787552, 39.307419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390877, 36.611671, 39.179840>,  <34.906067, 36.184101, 39.412930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390877, 36.611671, 39.179840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.729095, 36.789471, 39.061539>,  <34.932026, 36.896152, 38.990559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.729095, 36.789471, 39.061539>,  <34.390877, 36.611671, 39.179840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729095, 36.789471, 39.061539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401354, 0.163891, -0.901141,
		-0.352088, 0.880657, 0.316980,
		0.845546, 0.444502, -0.295752,
		34.982758, 36.922821, 38.972813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217358, 37.232044, 39.000439>,  <34.390877, 36.611671, 39.179840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217358, 37.232044, 39.000439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553730, 37.143311, 38.803001>,  <34.755554, 37.090073, 38.684540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553730, 37.143311, 38.803001>,  <34.217358, 37.232044, 39.000439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553730, 37.143311, 38.803001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492139, 0.065801, -0.868026,
		0.225034, 0.972862, -0.053838,
		0.840928, -0.221831, -0.493591,
		34.806007, 37.076759, 38.654922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114983, 37.481537, 38.377682>,  <34.217358, 37.232044, 39.000439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114983, 37.481537, 38.377682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.461308, 37.299591, 38.294289>,  <34.669102, 37.190422, 38.244251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.461308, 37.299591, 38.294289>,  <34.114983, 37.481537, 38.377682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461308, 37.299591, 38.294289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195467, 0.076091, -0.977754,
		0.460614, 0.887302, -0.023031,
		0.865810, -0.454869, -0.208487,
		34.721050, 37.163132, 38.231743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525017, 37.931015, 37.869667>,  <34.114983, 37.481537, 38.377682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525017, 37.931015, 37.869667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.640675, 37.548168, 37.862373>,  <34.710068, 37.318462, 37.857998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.640675, 37.548168, 37.862373>,  <34.525017, 37.931015, 37.869667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640675, 37.548168, 37.862373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254825, -0.058591, -0.965210,
		0.922746, 0.283730, -0.260837,
		0.289142, -0.957112, -0.018237,
		34.727417, 37.261036, 37.856903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812912, 37.934841, 37.205238>,  <34.525017, 37.931015, 37.869667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812912, 37.934841, 37.205238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709438, 37.564014, 37.313782>,  <34.647354, 37.341518, 37.378906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709438, 37.564014, 37.313782>,  <34.812912, 37.934841, 37.205238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709438, 37.564014, 37.313782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434593, -0.139184, -0.889807,
		0.862676, -0.348111, -0.366890,
		-0.258686, -0.927063, 0.271358,
		34.631832, 37.285896, 37.395187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535606, 38.032608, 37.451847>,  <34.812912, 37.934841, 37.205238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535606, 38.032608, 37.451847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.776958, 38.274879, 37.244354>,  <35.921772, 38.420242, 37.119858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.776958, 38.274879, 37.244354>,  <35.535606, 38.032608, 37.451847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776958, 38.274879, 37.244354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163001, 0.543076, 0.823711,
		0.780615, -0.581567, 0.228956,
		0.603383, 0.605680, -0.518729,
		35.957973, 38.456585, 37.088734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126213, 38.040150, 37.767132>,  <35.535606, 38.032608, 37.451847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126213, 38.040150, 37.767132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.170097, 38.371090, 37.546787>,  <36.196426, 38.569656, 37.414581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.170097, 38.371090, 37.546787>,  <36.126213, 38.040150, 37.767132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170097, 38.371090, 37.546787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343947, 0.488372, 0.801993,
		0.932558, -0.277453, -0.230988,
		0.109707, 0.827353, -0.550865,
		36.203011, 38.619297, 37.381527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753914, 38.297531, 38.009319>,  <36.126213, 38.040150, 37.767132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753914, 38.297531, 38.009319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.589996, 38.602901, 37.809616>,  <36.491646, 38.786121, 37.689796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.589996, 38.602901, 37.809616>,  <36.753914, 38.297531, 38.009319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589996, 38.602901, 37.809616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372027, 0.639609, 0.672679,
		0.832866, 0.089923, -0.546121,
		-0.409793, 0.763423, -0.499255,
		36.467060, 38.831928, 37.659840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238117, 38.682575, 37.669762>,  <36.753914, 38.297531, 38.009319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238117, 38.682575, 37.669762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.927780, 38.920700, 37.753349>,  <36.741577, 39.063576, 37.803501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.927780, 38.920700, 37.753349>,  <37.238117, 38.682575, 37.669762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927780, 38.920700, 37.753349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529109, 0.433506, 0.729463,
		0.343667, 0.676519, -0.651318,
		-0.775846, 0.595310, 0.208971,
		36.695026, 39.099293, 37.816040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536640, 39.326061, 37.766632>,  <37.238117, 38.682575, 37.669762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536640, 39.326061, 37.766632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.179211, 39.357742, 37.943386>,  <36.964752, 39.376751, 38.049438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.179211, 39.357742, 37.943386>,  <37.536640, 39.326061, 37.766632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179211, 39.357742, 37.943386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402471, 0.577385, 0.710382,
		-0.198870, 0.812621, -0.547812,
		-0.893570, 0.079205, 0.441881,
		36.911140, 39.381504, 38.075951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456348, 40.117630, 38.011284>,  <37.536640, 39.326061, 37.766632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456348, 40.117630, 38.011284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.208897, 39.876152, 38.212421>,  <37.060425, 39.731266, 38.333103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.208897, 39.876152, 38.212421>,  <37.456348, 40.117630, 38.011284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208897, 39.876152, 38.212421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392072, 0.317417, 0.863438,
		-0.680863, 0.731300, 0.040327,
		-0.618632, -0.603694, 0.502840,
		37.023308, 39.695045, 38.363274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323856, 40.461273, 38.629539>,  <37.456348, 40.117630, 38.011284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323856, 40.461273, 38.629539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232204, 40.083294, 38.722984>,  <37.177212, 39.856506, 38.779053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232204, 40.083294, 38.722984>,  <37.323856, 40.461273, 38.629539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232204, 40.083294, 38.722984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312681, 0.155827, 0.936989,
		-0.921808, 0.287739, 0.259762,
		-0.229130, -0.944947, 0.233613,
		37.163464, 39.799809, 38.793068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025566, 40.477123, 39.282921>,  <37.323856, 40.461273, 38.629539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025566, 40.477123, 39.282921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149288, 40.098202, 39.249596>,  <37.223522, 39.870850, 39.229599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.149288, 40.098202, 39.249596>,  <37.025566, 40.477123, 39.282921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149288, 40.098202, 39.249596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353735, 0.033286, 0.934753,
		-0.882725, -0.318595, 0.345391,
		0.309304, -0.947306, -0.083316,
		37.242081, 39.814011, 39.224602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734035, 40.163883, 39.830173>,  <37.025566, 40.477123, 39.282921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734035, 40.163883, 39.830173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.047852, 39.943035, 39.717270>,  <37.236141, 39.810528, 39.649529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.047852, 39.943035, 39.717270>,  <36.734035, 40.163883, 39.830173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047852, 39.943035, 39.717270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330098, -0.013466, 0.943850,
		-0.524916, -0.833659, 0.171688,
		0.784537, -0.552116, -0.282258,
		37.283215, 39.777401, 39.632591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666153, 39.598934, 40.206486>,  <36.734035, 40.163883, 39.830173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666153, 39.598934, 40.206486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048332, 39.580273, 40.089901>,  <37.277637, 39.569077, 40.019951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048332, 39.580273, 40.089901>,  <36.666153, 39.598934, 40.206486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048332, 39.580273, 40.089901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284593, -0.116396, 0.951556,
		-0.078312, -0.992107, -0.097935,
		0.955445, -0.046647, -0.291462,
		37.334965, 39.566277, 40.002460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896511, 39.047089, 40.550007>,  <36.666153, 39.598934, 40.206486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896511, 39.047089, 40.550007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.226974, 39.248337, 40.448544>,  <37.425251, 39.369083, 40.387665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.226974, 39.248337, 40.448544>,  <36.896511, 39.047089, 40.550007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226974, 39.248337, 40.448544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392697, -0.191309, 0.899550,
		0.404051, -0.842778, -0.355623,
		0.826155, 0.503116, -0.253658,
		37.474819, 39.399273, 40.372448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417866, 38.655136, 40.955433>,  <36.896511, 39.047089, 40.550007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417866, 38.655136, 40.955433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.592239, 39.006001, 40.874878>,  <37.696861, 39.216518, 40.826546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.592239, 39.006001, 40.874878>,  <37.417866, 38.655136, 40.955433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592239, 39.006001, 40.874878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492260, -0.045063, 0.869281,
		0.753422, -0.478082, -0.451434,
		0.435931, 0.877158, -0.201389,
		37.723019, 39.269150, 40.814461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140465, 38.494267, 41.043213>,  <37.417866, 38.655136, 40.955433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140465, 38.494267, 41.043213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.084785, 38.888195, 41.084686>,  <38.051376, 39.124554, 41.109570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.084785, 38.888195, 41.084686>,  <38.140465, 38.494267, 41.043213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084785, 38.888195, 41.084686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511220, -0.018206, 0.859257,
		0.848102, 0.172614, -0.500926,
		-0.139200, 0.984821, 0.103684,
		38.043026, 39.183643, 41.115791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794086, 38.871288, 41.217800>,  <38.140465, 38.494267, 41.043213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794086, 38.871288, 41.217800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.482136, 39.069946, 41.370186>,  <38.294964, 39.189140, 41.461617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.482136, 39.069946, 41.370186>,  <38.794086, 38.871288, 41.217800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482136, 39.069946, 41.370186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364224, -0.134904, 0.921489,
		0.509048, 0.857405, -0.075682,
		-0.779879, 0.496647, 0.380960,
		38.248173, 39.218941, 41.484474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508255, 38.904728, 41.329296>,  <38.794086, 38.871288, 41.217800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508255, 38.904728, 41.329296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.854809, 38.705982, 41.309292>,  <40.062740, 38.586735, 41.297291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.854809, 38.705982, 41.309292>,  <39.508255, 38.904728, 41.329296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854809, 38.705982, 41.309292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118888, -0.107961, -0.987021,
		0.485019, 0.861085, -0.152607,
		0.866385, -0.496867, -0.050010,
		40.114723, 38.556923, 41.294289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979542, 39.318344, 40.871414>,  <39.508255, 38.904728, 41.329296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979542, 39.318344, 40.871414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.089336, 38.933784, 40.879070>,  <40.155212, 38.703049, 40.883663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.089336, 38.933784, 40.879070>,  <39.979542, 39.318344, 40.871414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089336, 38.933784, 40.879070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132208, -0.057447, -0.989556,
		0.952459, 0.269090, -0.142873,
		0.274488, -0.961400, 0.019140,
		40.171684, 38.645363, 40.884811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304340, 39.360886, 40.297482>,  <39.979542, 39.318344, 40.871414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304340, 39.360886, 40.297482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.253223, 38.968834, 40.358170>,  <40.222553, 38.733604, 40.394581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.253223, 38.968834, 40.358170>,  <40.304340, 39.360886, 40.297482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253223, 38.968834, 40.358170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043374, -0.147302, -0.988140,
		0.990852, -0.132859, -0.023688,
		-0.127794, -0.980128, 0.151717,
		40.214886, 38.674797, 40.403687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702244, 39.089760, 39.779034>,  <40.304340, 39.360886, 40.297482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702244, 39.089760, 39.779034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.461117, 38.785633, 39.875805>,  <40.316441, 38.603157, 39.933868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.461117, 38.785633, 39.875805>,  <40.702244, 39.089760, 39.779034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461117, 38.785633, 39.875805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214838, -0.137345, -0.966944,
		0.768413, -0.634864, -0.080552,
		-0.602814, -0.760319, 0.241931,
		40.280273, 38.557537, 39.948383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939648, 38.626247, 39.316803>,  <40.702244, 39.089760, 39.779034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939648, 38.626247, 39.316803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.580769, 38.509361, 39.449253>,  <40.365440, 38.439228, 39.528725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.580769, 38.509361, 39.449253>,  <40.939648, 38.626247, 39.316803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580769, 38.509361, 39.449253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248693, -0.285292, -0.925613,
		0.364947, -0.912808, 0.183291,
		-0.897199, -0.292217, 0.331125,
		40.311607, 38.421696, 39.548592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874386, 38.145645, 38.848103>,  <40.939648, 38.626247, 39.316803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874386, 38.145645, 38.848103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.498295, 38.161381, 38.983414>,  <40.272640, 38.170822, 39.064602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.498295, 38.161381, 38.983414>,  <40.874386, 38.145645, 38.848103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498295, 38.161381, 38.983414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308262, -0.520497, -0.796277,
		0.144751, -0.852957, 0.501509,
		-0.940224, 0.039334, 0.338277,
		40.216228, 38.173180, 39.084896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499329, 37.526405, 39.022511>,  <40.874386, 38.145645, 38.848103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499329, 37.526405, 39.022511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.195431, 37.774494, 38.944431>,  <40.013092, 37.923347, 38.897583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.195431, 37.774494, 38.944431>,  <40.499329, 37.526405, 39.022511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195431, 37.774494, 38.944431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239839, -0.546353, -0.802481,
		-0.604372, -0.562863, 0.563844,
		-0.759745, 0.620229, -0.195204,
		39.967506, 37.960564, 38.885872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818874, 37.057465, 38.895393>,  <40.499329, 37.526405, 39.022511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818874, 37.057465, 38.895393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.735512, 37.426117, 38.764450>,  <39.685493, 37.647308, 38.685883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.735512, 37.426117, 38.764450>,  <39.818874, 37.057465, 38.895393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735512, 37.426117, 38.764450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168272, -0.363504, -0.916269,
		-0.963458, -0.135869, 0.230841,
		-0.208404, 0.921631, -0.327358,
		39.672989, 37.702606, 38.666241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180019, 37.008293, 38.509941>,  <39.818874, 37.057465, 38.895393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180019, 37.008293, 38.509941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.357807, 37.351044, 38.405479>,  <39.464481, 37.556694, 38.342800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.357807, 37.351044, 38.405479>,  <39.180019, 37.008293, 38.509941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357807, 37.351044, 38.405479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230464, -0.172341, -0.957698,
		-0.865638, 0.485859, 0.120878,
		0.444474, 0.856878, -0.261158,
		39.491150, 37.608109, 38.327133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778717, 37.328049, 37.922493>,  <39.180019, 37.008293, 38.509941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778717, 37.328049, 37.922493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.154350, 37.458519, 37.879166>,  <39.379730, 37.536800, 37.853168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.154350, 37.458519, 37.879166>,  <38.778717, 37.328049, 37.922493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154350, 37.458519, 37.879166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022963, -0.254916, -0.966690,
		-0.342927, 0.910289, -0.231897,
		0.939082, 0.326179, -0.108321,
		39.436073, 37.556374, 37.846668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777832, 37.881596, 37.414062>,  <38.778717, 37.328049, 37.922493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777832, 37.881596, 37.414062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.155991, 37.751797, 37.426281>,  <39.382885, 37.673916, 37.433613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.155991, 37.751797, 37.426281>,  <38.777832, 37.881596, 37.414062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155991, 37.751797, 37.426281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073198, 0.120043, -0.990066,
		0.317611, 0.938237, 0.137240,
		0.945392, -0.324502, 0.030550,
		39.439610, 37.654446, 37.435448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108612, 38.164124, 36.826416>,  <38.777832, 37.881596, 37.414062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108612, 38.164124, 36.826416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.372169, 37.875301, 36.910789>,  <39.530304, 37.702007, 36.961414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.372169, 37.875301, 36.910789>,  <39.108612, 38.164124, 36.826416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372169, 37.875301, 36.910789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226013, -0.077426, -0.971042,
		0.717482, 0.687484, 0.112180,
		0.658891, -0.722060, 0.210932,
		39.569836, 37.658684, 36.974068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488907, 38.224709, 36.248344>,  <39.108612, 38.164124, 36.826416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488907, 38.224709, 36.248344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629547, 37.884129, 36.403992>,  <39.713932, 37.679783, 36.497379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629547, 37.884129, 36.403992>,  <39.488907, 38.224709, 36.248344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629547, 37.884129, 36.403992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093811, -0.381522, -0.919587,
		0.931436, 0.359835, -0.054271,
		0.351605, -0.851445, 0.389120,
		39.735027, 37.628696, 36.520729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255997, 37.978329, 36.068169>,  <39.488907, 38.224709, 36.248344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255997, 37.978329, 36.068169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.059536, 37.647945, 36.178848>,  <39.941658, 37.449715, 36.245258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.059536, 37.647945, 36.178848>,  <40.255997, 37.978329, 36.068169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059536, 37.647945, 36.178848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299098, -0.458253, -0.836985,
		0.818114, -0.328326, 0.472114,
		-0.491151, -0.825958, 0.276702,
		39.912189, 37.400158, 36.261860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.158800, 28.593361, 34.711010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170767, 28.295441, 34.444363>,  <29.177946, 28.116688, 34.284374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170767, 28.295441, 34.444363>,  <29.158800, 28.593361, 34.711010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170767, 28.295441, 34.444363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308610, 0.627450, -0.714889,
		0.950718, 0.227112, -0.211081,
		0.029917, -0.744800, -0.666617,
		29.179743, 28.072001, 34.244377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550695, 28.661062, 34.103344>,  <29.158800, 28.593361, 34.711010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550695, 28.661062, 34.103344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.237352, 28.433411, 34.003387>,  <29.049347, 28.296820, 33.943413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.237352, 28.433411, 34.003387>,  <29.550695, 28.661062, 34.103344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237352, 28.433411, 34.003387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390556, 0.763435, -0.514424,
		0.483547, -0.305383, -0.820319,
		-0.783357, -0.569129, -0.249888,
		29.002346, 28.262672, 33.928421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297998, 28.705080, 33.326187>,  <29.550695, 28.661062, 34.103344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297998, 28.705080, 33.326187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.017567, 28.647800, 33.605610>,  <28.849308, 28.613432, 33.773262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.017567, 28.647800, 33.605610>,  <29.297998, 28.705080, 33.326187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017567, 28.647800, 33.605610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413437, 0.879797, -0.234577,
		-0.580995, -0.453266, -0.676014,
		-0.701081, -0.143201, 0.698555,
		28.807243, 28.604839, 33.815178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630417, 28.757219, 32.963787>,  <29.297998, 28.705080, 33.326187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630417, 28.757219, 32.963787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.574356, 28.829443, 33.353199>,  <28.540720, 28.872778, 33.586845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.574356, 28.829443, 33.353199>,  <28.630417, 28.757219, 32.963787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574356, 28.829443, 33.353199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647579, 0.727065, -0.228076,
		-0.748999, -0.662401, 0.015026,
		-0.140153, 0.180559, 0.973527,
		28.532310, 28.883612, 33.645256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938953, 28.875454, 33.028965>,  <28.630417, 28.757219, 32.963787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938953, 28.875454, 33.028965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.051420, 29.048061, 33.371834>,  <28.118900, 29.151627, 33.577553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.051420, 29.048061, 33.371834>,  <27.938953, 28.875454, 33.028965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051420, 29.048061, 33.371834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602404, 0.774660, -0.192384,
		-0.747031, -0.462270, 0.477757,
		0.281166, 0.431519, 0.857168,
		28.135771, 29.177517, 33.628983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353888, 29.129442, 33.401649>,  <27.938953, 28.875454, 33.028965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353888, 29.129442, 33.401649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675682, 29.323595, 33.538593>,  <27.868759, 29.440086, 33.620758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675682, 29.323595, 33.538593>,  <27.353888, 29.129442, 33.401649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675682, 29.323595, 33.538593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488112, 0.868673, -0.084581,
		-0.338449, -0.099063, 0.935756,
		0.804487, 0.485380, 0.342356,
		27.917028, 29.469210, 33.641300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121567, 29.516727, 33.868999>,  <27.353888, 29.129442, 33.401649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121567, 29.516727, 33.868999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.465847, 29.701632, 33.783669>,  <27.672415, 29.812574, 33.732468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.465847, 29.701632, 33.783669>,  <27.121567, 29.516727, 33.868999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465847, 29.701632, 33.783669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491197, 0.864174, -0.109216,
		0.133867, 0.198789, 0.970857,
		0.860700, 0.462261, -0.213329,
		27.724056, 29.840309, 33.719669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120667, 30.074671, 34.347206>,  <27.121567, 29.516727, 33.868999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120667, 30.074671, 34.347206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.370890, 30.182871, 34.054493>,  <27.521025, 30.247791, 33.878864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.370890, 30.182871, 34.054493>,  <27.120667, 30.074671, 34.347206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370890, 30.182871, 34.054493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282162, 0.952919, 0.111040,
		0.727365, 0.137019, 0.672434,
		0.625560, 0.270502, -0.731781,
		27.558558, 30.264021, 33.834957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443455, 30.761402, 34.574093>,  <27.120667, 30.074671, 34.347206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443455, 30.761402, 34.574093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.490772, 30.736319, 34.177692>,  <27.519163, 30.721268, 33.939854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.490772, 30.736319, 34.177692>,  <27.443455, 30.761402, 34.574093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490772, 30.736319, 34.177692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350449, 0.931147, -0.100754,
		0.929081, 0.359212, 0.088170,
		0.118292, -0.062710, -0.990997,
		27.526260, 30.717506, 33.880394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549925, 31.464052, 34.433876>,  <27.443455, 30.761402, 34.574093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549925, 31.464052, 34.433876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482882, 31.289480, 34.080280>,  <27.442656, 31.184736, 33.868122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482882, 31.289480, 34.080280>,  <27.549925, 31.464052, 34.433876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482882, 31.289480, 34.080280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542343, 0.789614, -0.287008,
		0.823269, 0.431321, -0.369040,
		-0.167606, -0.436431, -0.883988,
		27.432600, 31.158550, 33.815083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825651, 31.925243, 34.086609>,  <27.549925, 31.464052, 34.433876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825651, 31.925243, 34.086609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.559771, 31.728271, 33.861866>,  <27.400242, 31.610088, 33.727020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.559771, 31.728271, 33.861866>,  <27.825651, 31.925243, 34.086609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559771, 31.728271, 33.861866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339512, 0.869000, -0.359959,
		0.665512, -0.048506, -0.744809,
		-0.664700, -0.492428, -0.561862,
		27.360361, 31.580544, 33.693306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826027, 32.255726, 33.396450>,  <27.825651, 31.925243, 34.086609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826027, 32.255726, 33.396450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477793, 32.063614, 33.439182>,  <27.268852, 31.948347, 33.464821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477793, 32.063614, 33.439182>,  <27.826027, 32.255726, 33.396450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477793, 32.063614, 33.439182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466821, 0.737716, -0.487702,
		0.155420, -0.474458, -0.866449,
		-0.870588, -0.480275, 0.106831,
		27.216616, 31.919531, 33.471230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480852, 32.434074, 32.855606>,  <27.826027, 32.255726, 33.396450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480852, 32.434074, 32.855606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.166721, 32.297325, 33.062054>,  <26.978243, 32.215275, 33.185921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.166721, 32.297325, 33.062054>,  <27.480852, 32.434074, 32.855606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166721, 32.297325, 33.062054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503887, 0.837333, -0.212066,
		-0.359663, -0.426607, -0.829849,
		-0.785329, -0.341878, 0.516119,
		26.931122, 32.194763, 33.216888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934690, 32.651073, 32.522205>,  <27.480852, 32.434074, 32.855606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934690, 32.651073, 32.522205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.791418, 32.597950, 32.891869>,  <26.705454, 32.566074, 33.113667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.791418, 32.597950, 32.891869>,  <26.934690, 32.651073, 32.522205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791418, 32.597950, 32.891869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231427, 0.971570, 0.049931,
		-0.904515, -0.195990, -0.378735,
		-0.358182, -0.132813, 0.924157,
		26.683964, 32.558105, 33.169117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369535, 33.155380, 32.516258>,  <26.934690, 32.651073, 32.522205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369535, 33.155380, 32.516258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447573, 33.047733, 32.893517>,  <26.494394, 32.983147, 33.119869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447573, 33.047733, 32.893517>,  <26.369535, 33.155380, 32.516258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447573, 33.047733, 32.893517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445621, 0.832311, 0.329667,
		-0.873705, -0.484599, 0.042455,
		0.195092, -0.269113, 0.943142,
		26.506100, 32.966999, 33.176460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658659, 33.160480, 32.994877>,  <26.369535, 33.155380, 32.516258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658659, 33.160480, 32.994877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.998310, 33.230171, 33.194324>,  <26.202101, 33.271984, 33.313995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.998310, 33.230171, 33.194324>,  <25.658659, 33.160480, 32.994877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998310, 33.230171, 33.194324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316089, 0.923942, 0.215451,
		-0.423163, -0.340555, 0.839616,
		0.849130, 0.174223, 0.498624,
		26.253050, 33.282436, 33.343910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426249, 33.536366, 33.598690>,  <25.658659, 33.160480, 32.994877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426249, 33.536366, 33.598690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.819586, 33.601547, 33.630898>,  <26.055588, 33.640656, 33.650223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.819586, 33.601547, 33.630898>,  <25.426249, 33.536366, 33.598690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819586, 33.601547, 33.630898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181713, 0.891864, 0.414196,
		-0.004320, -0.421929, 0.906619,
		0.983342, 0.162955, 0.080523,
		26.114588, 33.650433, 33.655056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593155, 33.842480, 34.327068>,  <25.426249, 33.536366, 33.598690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593155, 33.842480, 34.327068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.878925, 33.939049, 34.064373>,  <26.050388, 33.996990, 33.906757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.878925, 33.939049, 34.064373>,  <25.593155, 33.842480, 34.327068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878925, 33.939049, 34.064373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109210, 0.965560, 0.236151,
		0.691134, -0.096991, 0.716189,
		0.714428, 0.241427, -0.656739,
		26.093254, 34.011478, 33.867352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985239, 34.315342, 34.692749>,  <25.593155, 33.842480, 34.327068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985239, 34.315342, 34.692749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.072231, 34.362350, 34.305164>,  <26.124426, 34.390556, 34.072613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.072231, 34.362350, 34.305164>,  <25.985239, 34.315342, 34.692749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072231, 34.362350, 34.305164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084915, 0.991239, 0.101168,
		0.972364, 0.060278, 0.225555,
		0.217481, 0.117525, -0.968964,
		26.137476, 34.397610, 34.014477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325357, 34.854298, 34.730206>,  <25.985239, 34.315342, 34.692749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325357, 34.854298, 34.730206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.220562, 34.836662, 34.344582>,  <26.157684, 34.826080, 34.113205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.220562, 34.836662, 34.344582>,  <26.325357, 34.854298, 34.730206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.220562, 34.836662, 34.344582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260296, 0.965162, 0.026601,
		0.929304, 0.257911, -0.264337,
		-0.261989, -0.044085, -0.964063,
		26.141966, 34.823437, 34.055363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506826, 35.471523, 34.454098>,  <26.325357, 34.854298, 34.730206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506826, 35.471523, 34.454098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.255930, 35.333504, 34.174812>,  <26.105392, 35.250690, 34.007240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.255930, 35.333504, 34.174812>,  <26.506826, 35.471523, 34.454098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255930, 35.333504, 34.174812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446058, 0.894059, -0.041115,
		0.638434, 0.285657, -0.714704,
		-0.627243, -0.345049, -0.698218,
		26.067757, 35.229988, 33.965347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188227, 35.338600, 34.713947>,  <26.506826, 35.471523, 34.454098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188227, 35.338600, 34.713947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.480038, 35.592388, 34.816109>,  <27.655125, 35.744663, 34.877407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.480038, 35.592388, 34.816109>,  <27.188227, 35.338600, 34.713947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480038, 35.592388, 34.816109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651527, -0.758285, 0.022719,
		0.208084, 0.149829, -0.966567,
		0.729530, 0.634472, 0.255405,
		27.698896, 35.782730, 34.892731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713596, 35.273441, 34.193821>,  <27.188227, 35.338600, 34.713947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713596, 35.273441, 34.193821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912207, 35.399277, 34.517426>,  <28.031372, 35.474777, 34.711586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912207, 35.399277, 34.517426>,  <27.713596, 35.273441, 34.193821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912207, 35.399277, 34.517426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654482, -0.747907, -0.110856,
		0.570189, 0.584524, -0.577249,
		0.496526, 0.314590, 0.809009,
		28.061165, 35.493652, 34.760128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405523, 35.332962, 34.066055>,  <27.713596, 35.273441, 34.193821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405523, 35.332962, 34.066055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381332, 35.291130, 34.463127>,  <28.366817, 35.266029, 34.701370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.381332, 35.291130, 34.463127>,  <28.405523, 35.332962, 34.066055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381332, 35.291130, 34.463127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537402, -0.841471, -0.055909,
		0.841155, 0.530085, 0.107092,
		-0.060478, -0.104579, 0.992676,
		28.363190, 35.259758, 34.760929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060999, 34.956955, 34.234959>,  <28.405523, 35.332962, 34.066055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060999, 34.956955, 34.234959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816299, 34.921013, 34.549332>,  <28.669479, 34.899448, 34.737957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816299, 34.921013, 34.549332>,  <29.060999, 34.956955, 34.234959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816299, 34.921013, 34.549332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245039, -0.966185, 0.080270,
		0.752144, 0.241689, 0.613079,
		-0.611748, -0.089853, 0.785933,
		28.632774, 34.894058, 34.785110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385317, 34.682007, 34.773151>,  <29.060999, 34.956955, 34.234959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385317, 34.682007, 34.773151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006571, 34.594433, 34.867397>,  <28.779324, 34.541889, 34.923946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006571, 34.594433, 34.867397>,  <29.385317, 34.682007, 34.773151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006571, 34.594433, 34.867397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239010, -0.969165, 0.059949,
		0.215223, 0.113077, 0.969996,
		-0.946865, -0.218936, 0.235613,
		28.722511, 34.528751, 34.938080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389286, 34.318329, 35.391621>,  <29.385317, 34.682007, 34.773151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389286, 34.318329, 35.391621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.039541, 34.199989, 35.237755>,  <28.829695, 34.128986, 35.145435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.039541, 34.199989, 35.237755>,  <29.389286, 34.318329, 35.391621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039541, 34.199989, 35.237755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105606, -0.889680, 0.444204,
		-0.473648, 0.347771, 0.809144,
		-0.874360, -0.295847, -0.384668,
		28.777233, 34.111237, 35.122353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096249, 33.894783, 35.844742>,  <29.389286, 34.318329, 35.391621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096249, 33.894783, 35.844742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871065, 33.788712, 35.531624>,  <28.735956, 33.725071, 35.343754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871065, 33.788712, 35.531624>,  <29.096249, 33.894783, 35.844742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871065, 33.788712, 35.531624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088375, -0.961015, 0.261994,
		-0.821747, 0.078312, 0.564445,
		-0.562958, -0.265176, -0.782790,
		28.702177, 33.709160, 35.296787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628227, 33.407654, 36.135235>,  <29.096249, 33.894783, 35.844742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628227, 33.407654, 36.135235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.602453, 33.331806, 35.743340>,  <28.586988, 33.286297, 35.508202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.602453, 33.331806, 35.743340>,  <28.628227, 33.407654, 36.135235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602453, 33.331806, 35.743340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007680, -0.981658, 0.190495,
		-0.997892, 0.019799, 0.061798,
		-0.064436, -0.189619, -0.979741,
		28.583122, 33.274921, 35.449417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300203, 32.761028, 36.084217>,  <28.628227, 33.407654, 36.135235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300203, 32.761028, 36.084217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485748, 32.790379, 35.731071>,  <28.597076, 32.807991, 35.519184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485748, 32.790379, 35.731071>,  <28.300203, 32.761028, 36.084217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485748, 32.790379, 35.731071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333835, -0.937578, 0.097475,
		-0.820600, -0.339945, -0.459405,
		0.463864, 0.073378, -0.882862,
		28.624908, 32.812393, 35.466213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020130, 32.255634, 35.715927>,  <28.300203, 32.761028, 36.084217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020130, 32.255634, 35.715927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.375408, 32.352173, 35.559540>,  <28.588575, 32.410095, 35.465706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.375408, 32.352173, 35.559540>,  <28.020130, 32.255634, 35.715927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375408, 32.352173, 35.559540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333460, -0.924002, 0.187151,
		-0.316087, -0.296599, -0.901176,
		0.888197, 0.241350, -0.390969,
		28.641867, 32.424580, 35.442249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039782, 31.686892, 35.287655>,  <28.020130, 32.255634, 35.715927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039782, 31.686892, 35.287655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.400169, 31.846699, 35.355350>,  <28.616402, 31.942583, 35.395966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.400169, 31.846699, 35.355350>,  <28.039782, 31.686892, 35.287655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400169, 31.846699, 35.355350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326173, -0.880876, 0.343028,
		0.286121, -0.253858, -0.923954,
		0.900969, 0.399516, 0.169236,
		28.670460, 31.966555, 35.406120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474752, 31.179012, 35.170815>,  <28.039782, 31.686892, 35.287655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474752, 31.179012, 35.170815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.762030, 31.403353, 35.335567>,  <28.934395, 31.537956, 35.434418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.762030, 31.403353, 35.335567>,  <28.474752, 31.179012, 35.170815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762030, 31.403353, 35.335567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369200, -0.808861, 0.457640,
		0.589825, -0.176606, -0.787983,
		0.718191, 0.560851, 0.411884,
		28.977488, 31.571608, 35.459133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972996, 30.826431, 34.955208>,  <28.474752, 31.179012, 35.170815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972996, 30.826431, 34.955208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.117132, 31.059147, 35.246872>,  <29.203615, 31.198776, 35.421871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.117132, 31.059147, 35.246872>,  <28.972996, 30.826431, 34.955208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117132, 31.059147, 35.246872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466411, -0.789320, 0.399293,
		0.807845, 0.196207, -0.555778,
		0.360343, 0.581788, 0.729161,
		29.225235, 31.233683, 35.465622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722233, 30.768772, 34.938942>,  <28.972996, 30.826431, 34.955208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722233, 30.768772, 34.938942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617222, 30.922350, 35.293041>,  <29.554214, 31.014496, 35.505501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.617222, 30.922350, 35.293041>,  <29.722233, 30.768772, 34.938942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617222, 30.922350, 35.293041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519147, -0.717129, 0.464986,
		0.813367, 0.581646, -0.011056,
		-0.262529, 0.383944, 0.885249,
		29.538464, 31.037533, 35.558617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326050, 30.862345, 35.355576>,  <29.722233, 30.768772, 34.938942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326050, 30.862345, 35.355576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002705, 30.836069, 35.589577>,  <29.808697, 30.820303, 35.729977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002705, 30.836069, 35.589577>,  <30.326050, 30.862345, 35.355576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002705, 30.836069, 35.589577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456837, -0.696754, 0.553023,
		0.371277, 0.714296, 0.593240,
		-0.808365, -0.065689, 0.585006,
		29.760195, 30.816362, 35.765079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546818, 30.811150, 36.088383>,  <30.326050, 30.862345, 35.355576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546818, 30.811150, 36.088383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184444, 30.645777, 36.051811>,  <29.967020, 30.546553, 36.029869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184444, 30.645777, 36.051811>,  <30.546818, 30.811150, 36.088383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184444, 30.645777, 36.051811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377727, -0.886675, 0.266702,
		-0.191332, 0.207078, 0.959433,
		-0.905933, -0.413432, -0.091430,
		29.912664, 30.521748, 36.024384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456125, 30.230547, 36.662312>,  <30.546818, 30.811150, 36.088383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456125, 30.230547, 36.662312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.178791, 30.144075, 36.387341>,  <30.012390, 30.092192, 36.222359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.178791, 30.144075, 36.387341>,  <30.456125, 30.230547, 36.662312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178791, 30.144075, 36.387341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293534, -0.955938, 0.004564,
		-0.658123, -0.198619, 0.726240,
		-0.693334, -0.216179, -0.687426,
		29.970791, 30.079222, 36.181114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182775, 29.640335, 36.998421>,  <30.456125, 30.230547, 36.662312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182775, 29.640335, 36.998421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.089453, 29.591064, 36.612595>,  <30.033459, 29.561502, 36.381100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.089453, 29.591064, 36.612595>,  <30.182775, 29.640335, 36.998421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089453, 29.591064, 36.612595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433735, -0.900984, 0.010145,
		-0.870311, -0.416000, 0.263634,
		-0.233309, -0.123176, -0.964570,
		30.019461, 29.554111, 36.323223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904360, 29.059753, 37.024055>,  <30.182775, 29.640335, 36.998421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904360, 29.059753, 37.024055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.960199, 29.100325, 36.630054>,  <29.993702, 29.124666, 36.393654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.960199, 29.100325, 36.630054>,  <29.904360, 29.059753, 37.024055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960199, 29.100325, 36.630054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434117, -0.900317, -0.031182,
		-0.889975, -0.423252, -0.169712,
		0.139597, 0.101426, -0.985000,
		30.002079, 29.130753, 36.334553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650583, 28.513498, 36.758011>,  <29.904360, 29.059753, 37.024055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650583, 28.513498, 36.758011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.903965, 28.646349, 36.478458>,  <30.055994, 28.726059, 36.310726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.903965, 28.646349, 36.478458>,  <29.650583, 28.513498, 36.758011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903965, 28.646349, 36.478458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287328, -0.939582, -0.186089,
		-0.718458, -0.082928, -0.690610,
		0.633452, 0.332128, -0.698877,
		30.094000, 28.745987, 36.268795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733778, 27.962118, 36.259521>,  <29.650583, 28.513498, 36.758011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733778, 27.962118, 36.259521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071844, 28.166967, 36.198299>,  <30.274683, 28.289877, 36.161568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071844, 28.166967, 36.198299>,  <29.733778, 27.962118, 36.259521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071844, 28.166967, 36.198299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496301, -0.858208, -0.131014,
		-0.198448, 0.034768, -0.979495,
		0.845165, 0.512124, -0.153054,
		30.325394, 28.320604, 36.152382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.112286, 36.568398, 41.683674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.813328, 36.323814, 41.787609>,  <38.633953, 36.177063, 41.849972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.813328, 36.323814, 41.787609>,  <39.112286, 36.568398, 41.683674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813328, 36.323814, 41.787609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184828, 0.184305, 0.965334,
		-0.638152, 0.769513, -0.024734,
		-0.747396, -0.611458, 0.259842,
		38.589108, 36.140377, 41.865562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703026, 36.842808, 42.264656>,  <39.112286, 36.568398, 41.683674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703026, 36.842808, 42.264656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.635799, 36.449230, 42.288662>,  <38.595463, 36.213081, 42.303066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.635799, 36.449230, 42.288662>,  <38.703026, 36.842808, 42.264656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635799, 36.449230, 42.288662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184694, 0.028371, 0.982386,
		-0.968319, 0.176189, 0.176961,
		-0.168065, -0.983947, 0.060013,
		38.585381, 36.154045, 42.306667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354340, 36.765438, 42.889408>,  <38.703026, 36.842808, 42.264656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354340, 36.765438, 42.889408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.460281, 36.384556, 42.828541>,  <38.523846, 36.156025, 42.792019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.460281, 36.384556, 42.828541>,  <38.354340, 36.765438, 42.889408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460281, 36.384556, 42.828541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191381, -0.102760, 0.976122,
		-0.945107, -0.287652, 0.155018,
		0.264853, -0.952206, -0.152170,
		38.539738, 36.098892, 42.782890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004059, 36.395977, 43.405914>,  <38.354340, 36.765438, 42.889408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004059, 36.395977, 43.405914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335335, 36.208035, 43.283714>,  <38.534100, 36.095268, 43.210396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335335, 36.208035, 43.283714>,  <38.004059, 36.395977, 43.405914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335335, 36.208035, 43.283714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289577, -0.107951, 0.951048,
		-0.479838, -0.876116, 0.046657,
		0.828192, -0.469860, -0.305502,
		38.583794, 36.067078, 43.192062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186947, 35.964672, 43.971626>,  <38.004059, 36.395977, 43.405914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186947, 35.964672, 43.971626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.520267, 35.975792, 43.750778>,  <38.720261, 35.982464, 43.618267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.520267, 35.975792, 43.750778>,  <38.186947, 35.964672, 43.971626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520267, 35.975792, 43.750778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552375, -0.082001, 0.829553,
		-0.022213, -0.996244, -0.083688,
		0.833300, 0.027800, -0.552122,
		38.770256, 35.984131, 43.585140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574223, 35.634796, 44.375675>,  <38.186947, 35.964672, 43.971626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574223, 35.634796, 44.375675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.834175, 35.782837, 44.110142>,  <38.990147, 35.871662, 43.950821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.834175, 35.782837, 44.110142>,  <38.574223, 35.634796, 44.375675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834175, 35.782837, 44.110142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710815, 0.013240, 0.703255,
		0.269067, -0.928896, -0.254472,
		0.649881, 0.370105, -0.663835,
		39.029140, 35.893867, 43.910992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229145, 35.138298, 44.358841>,  <38.574223, 35.634796, 44.375675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229145, 35.138298, 44.358841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.328823, 35.507324, 44.241013>,  <39.388630, 35.728741, 44.170315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.328823, 35.507324, 44.241013>,  <39.229145, 35.138298, 44.358841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328823, 35.507324, 44.241013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815364, -0.035732, 0.577845,
		0.522575, -0.384178, -0.761132,
		0.249192, 0.922567, -0.294572,
		39.403580, 35.784096, 44.152641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841728, 34.988361, 44.175690>,  <39.229145, 35.138298, 44.358841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841728, 34.988361, 44.175690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.798016, 35.381966, 44.231934>,  <39.771790, 35.618130, 44.265678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.798016, 35.381966, 44.231934>,  <39.841728, 34.988361, 44.175690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798016, 35.381966, 44.231934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810989, 0.006469, 0.585026,
		0.574765, 0.177966, -0.798732,
		-0.109282, 0.984015, 0.140611,
		39.765232, 35.677170, 44.274117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425911, 35.176373, 44.106152>,  <39.841728, 34.988361, 44.175690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425911, 35.176373, 44.106152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.254677, 35.468681, 44.318836>,  <40.151936, 35.644066, 44.446445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.254677, 35.468681, 44.318836>,  <40.425911, 35.176373, 44.106152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254677, 35.468681, 44.318836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803716, 0.038806, 0.593746,
		0.413261, 0.681516, -0.603947,
		-0.428084, 0.730774, 0.531708,
		40.126251, 35.687912, 44.478348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013008, 35.439491, 44.498760>,  <40.425911, 35.176373, 44.106152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013008, 35.439491, 44.498760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.700146, 35.674461, 44.581860>,  <40.512428, 35.815445, 44.631721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.700146, 35.674461, 44.581860>,  <41.013008, 35.439491, 44.498760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700146, 35.674461, 44.581860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516980, 0.425712, 0.742631,
		0.347800, 0.688257, -0.636661,
		-0.782156, 0.587428, 0.207752,
		40.465500, 35.850689, 44.644184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179981, 36.175835, 44.282566>,  <41.013008, 35.439491, 44.498760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179981, 36.175835, 44.282566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.936440, 36.110203, 44.593018>,  <40.790314, 36.070824, 44.779289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.936440, 36.110203, 44.593018>,  <41.179981, 36.175835, 44.282566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936440, 36.110203, 44.593018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652961, 0.451934, 0.607781,
		-0.450484, 0.876831, -0.168024,
		-0.608856, -0.164083, 0.776126,
		40.753784, 36.060978, 44.825855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146172, 36.767059, 44.595642>,  <41.179981, 36.175835, 44.282566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146172, 36.767059, 44.595642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.020500, 36.520702, 44.884632>,  <40.945099, 36.372887, 45.058025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.020500, 36.520702, 44.884632>,  <41.146172, 36.767059, 44.595642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020500, 36.520702, 44.884632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773770, 0.274810, 0.570753,
		-0.550068, 0.738343, 0.390224,
		-0.314174, -0.615897, 0.722472,
		40.926247, 36.335934, 45.101376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238842, 37.073669, 45.319233>,  <41.146172, 36.767059, 44.595642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238842, 37.073669, 45.319233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.235184, 36.687847, 45.424713>,  <41.232990, 36.456352, 45.488003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.235184, 36.687847, 45.424713>,  <41.238842, 37.073669, 45.319233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235184, 36.687847, 45.424713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808139, 0.148185, 0.570046,
		-0.588920, 0.218322, 0.778144,
		-0.009144, -0.964560, 0.263704,
		41.232441, 36.398479, 45.503826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203560, 36.982735, 46.127293>,  <41.238842, 37.073669, 45.319233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203560, 36.982735, 46.127293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.369743, 36.651569, 45.976589>,  <41.469452, 36.452869, 45.886166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.369743, 36.651569, 45.976589>,  <41.203560, 36.982735, 46.127293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369743, 36.651569, 45.976589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742630, 0.069547, 0.666081,
		-0.525256, -0.556524, 0.643729,
		0.415460, -0.827916, -0.376761,
		41.494381, 36.403194, 45.863560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293850, 37.517048, 46.618732>,  <41.203560, 36.982735, 46.127293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293850, 37.517048, 46.618732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.273308, 37.908058, 46.700512>,  <41.260983, 38.142666, 46.749580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.273308, 37.908058, 46.700512>,  <41.293850, 37.517048, 46.618732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273308, 37.908058, 46.700512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355564, 0.173405, -0.918425,
		-0.933240, -0.119864, 0.338668,
		-0.051360, 0.977529, 0.204448,
		41.257900, 38.201317, 46.761845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691864, 37.780579, 46.413242>,  <41.293850, 37.517048, 46.618732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691864, 37.780579, 46.413242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.907948, 38.117176, 46.416519>,  <41.037598, 38.319134, 46.418488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.907948, 38.117176, 46.416519>,  <40.691864, 37.780579, 46.413242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907948, 38.117176, 46.416519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320933, 0.215009, -0.922374,
		-0.777933, 0.495642, 0.386212,
		0.540206, 0.841493, 0.008195,
		41.070011, 38.369625, 46.418976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221958, 38.322624, 46.235218>,  <40.691864, 37.780579, 46.413242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221958, 38.322624, 46.235218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.581848, 38.476360, 46.152481>,  <40.797783, 38.568600, 46.102840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.581848, 38.476360, 46.152481>,  <40.221958, 38.322624, 46.235218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581848, 38.476360, 46.152481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291526, 0.176500, -0.940139,
		-0.324823, 0.906164, 0.270845,
		0.899724, 0.384337, -0.206839,
		40.851765, 38.591663, 46.090431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186813, 39.019264, 45.947464>,  <40.221958, 38.322624, 46.235218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186813, 39.019264, 45.947464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.528870, 38.865768, 45.808052>,  <40.734104, 38.773670, 45.724407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.528870, 38.865768, 45.808052>,  <40.186813, 39.019264, 45.947464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528870, 38.865768, 45.808052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236120, 0.310197, -0.920883,
		0.461495, 0.869781, 0.174653,
		0.855143, -0.383744, -0.348527,
		40.785412, 38.750645, 45.703495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417305, 39.488014, 45.451256>,  <40.186813, 39.019264, 45.947464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417305, 39.488014, 45.451256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.645824, 39.178375, 45.342152>,  <40.782936, 38.992592, 45.276688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.645824, 39.178375, 45.342152>,  <40.417305, 39.488014, 45.451256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645824, 39.178375, 45.342152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173143, 0.211188, -0.961988,
		0.802272, 0.596808, -0.013378,
		0.571297, -0.774093, -0.272763,
		40.817215, 38.946148, 45.260323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679893, 39.708382, 44.835674>,  <40.417305, 39.488014, 45.451256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679893, 39.708382, 44.835674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.751801, 39.315166, 44.850239>,  <40.794945, 39.079239, 44.858978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.751801, 39.315166, 44.850239>,  <40.679893, 39.708382, 44.835674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751801, 39.315166, 44.850239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102962, -0.055609, -0.993130,
		0.978306, 0.174784, -0.111212,
		0.179768, -0.983035, 0.036407,
		40.805733, 39.020256, 44.861160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004269, 39.636230, 44.281574>,  <40.679893, 39.708382, 44.835674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004269, 39.636230, 44.281574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.939983, 39.246323, 44.343529>,  <40.901413, 39.012379, 44.380699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.939983, 39.246323, 44.343529>,  <41.004269, 39.636230, 44.281574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939983, 39.246323, 44.343529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151738, -0.179458, -0.971993,
		0.975268, -0.132710, 0.176751,
		-0.160712, -0.974773, 0.154882,
		40.891769, 38.953892, 44.389992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479519, 39.375019, 43.859840>,  <41.004269, 39.636230, 44.281574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479519, 39.375019, 43.859840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.202541, 39.091671, 43.914585>,  <41.036354, 38.921661, 43.947430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.202541, 39.091671, 43.914585>,  <41.479519, 39.375019, 43.859840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202541, 39.091671, 43.914585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064175, -0.249420, -0.966267,
		0.718608, -0.660307, 0.218170,
		-0.692448, -0.708368, 0.136860,
		40.994808, 38.879162, 43.955643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669746, 38.821712, 43.476505>,  <41.479519, 39.375019, 43.859840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669746, 38.821712, 43.476505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.287971, 38.710304, 43.519363>,  <41.058907, 38.643459, 43.545078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.287971, 38.710304, 43.519363>,  <41.669746, 38.821712, 43.476505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287971, 38.710304, 43.519363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025769, -0.280789, -0.959423,
		0.297307, -0.918468, 0.260818,
		-0.954434, -0.278522, 0.107149,
		41.001640, 38.626747, 43.551510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495155, 38.040054, 43.231701>,  <41.669746, 38.821712, 43.476505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495155, 38.040054, 43.231701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.139458, 38.223026, 43.231701>,  <40.926037, 38.332809, 43.231701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.139458, 38.223026, 43.231701>,  <41.495155, 38.040054, 43.231701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139458, 38.223026, 43.231701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154117, -0.299608, -0.941532,
		-0.430687, -0.837252, 0.336923,
		-0.889245, 0.457431, -0.000002,
		40.872684, 38.360256, 43.231701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836876, 37.578312, 42.988934>,  <41.495155, 38.040054, 43.231701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836876, 37.578312, 42.988934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.780739, 37.962429, 42.892487>,  <40.747055, 38.192902, 42.834618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.780739, 37.962429, 42.892487>,  <40.836876, 37.578312, 42.988934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780739, 37.962429, 42.892487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254536, -0.270333, -0.928511,
		-0.956826, -0.068939, 0.282369,
		-0.140344, 0.960296, -0.241114,
		40.738636, 38.250519, 42.820152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296047, 37.535091, 42.530548>,  <40.836876, 37.578312, 42.988934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296047, 37.535091, 42.530548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.393703, 37.920921, 42.490551>,  <40.452297, 38.152420, 42.466553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.393703, 37.920921, 42.490551>,  <40.296047, 37.535091, 42.530548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393703, 37.920921, 42.490551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327264, -0.015112, -0.944812,
		-0.912850, 0.263386, 0.311981,
		0.244136, 0.964572, -0.099992,
		40.466946, 38.210293, 42.460552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725971, 37.862839, 42.242180>,  <40.296047, 37.535091, 42.530548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725971, 37.862839, 42.242180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.038696, 38.091690, 42.143032>,  <40.226334, 38.229000, 42.083546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.038696, 38.091690, 42.143032>,  <39.725971, 37.862839, 42.242180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038696, 38.091690, 42.143032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399496, 0.154428, -0.903634,
		-0.478715, 0.805496, 0.349296,
		0.781815, 0.572126, -0.247866,
		40.273239, 38.263329, 42.068672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443485, 38.440338, 41.873775>,  <39.725971, 37.862839, 42.242180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443485, 38.440338, 41.873775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.832455, 38.421169, 41.782482>,  <40.065838, 38.409668, 41.727707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.832455, 38.421169, 41.782482>,  <39.443485, 38.440338, 41.873775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832455, 38.421169, 41.782482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218562, 0.154092, -0.963580,
		0.081343, 0.986894, 0.139369,
		0.972427, -0.047920, -0.228232,
		40.124184, 38.406792, 41.714012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923481, 39.002964, 41.986294>,  <39.443485, 38.440338, 41.873775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923481, 39.002964, 41.986294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571644, 39.193092, 41.978519>,  <38.360542, 39.307171, 41.973854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.571644, 39.193092, 41.978519>,  <38.923481, 39.002964, 41.986294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571644, 39.193092, 41.978519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034576, -0.023132, 0.999134,
		0.474463, 0.879507, 0.036782,
		-0.879596, 0.475324, -0.019434,
		38.307766, 39.335690, 41.972691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034050, 39.613117, 42.439686>,  <38.923481, 39.002964, 41.986294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034050, 39.613117, 42.439686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.657337, 39.479103, 42.450905>,  <38.431309, 39.398693, 42.457638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.657337, 39.479103, 42.450905>,  <39.034050, 39.613117, 42.439686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657337, 39.479103, 42.450905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008476, 0.059741, 0.998178,
		-0.336105, 0.940308, -0.053423,
		-0.941787, -0.335039, 0.028049,
		38.374802, 39.378590, 42.459320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599945, 40.097046, 42.896133>,  <39.034050, 39.613117, 42.439686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599945, 40.097046, 42.896133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418701, 39.740807, 42.880516>,  <38.309956, 39.527061, 42.871147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418701, 39.740807, 42.880516>,  <38.599945, 40.097046, 42.896133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418701, 39.740807, 42.880516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219408, 0.068966, 0.973192,
		-0.864032, 0.449529, -0.226654,
		-0.453110, -0.890599, -0.039042,
		38.282768, 39.473625, 42.868805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052738, 40.141121, 43.390850>,  <38.599945, 40.097046, 42.896133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052738, 40.141121, 43.390850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074928, 39.744560, 43.343433>,  <38.088242, 39.506626, 43.314983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074928, 39.744560, 43.343433>,  <38.052738, 40.141121, 43.390850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074928, 39.744560, 43.343433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208784, -0.127615, 0.969600,
		-0.976387, -0.029040, -0.214067,
		0.055476, -0.991398, -0.118539,
		38.091572, 39.447140, 43.307873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472843, 39.804909, 43.728481>,  <38.052738, 40.141121, 43.390850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472843, 39.804909, 43.728481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.738914, 39.506310, 43.721859>,  <37.898556, 39.327148, 43.717884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.738914, 39.506310, 43.721859>,  <37.472843, 39.804909, 43.728481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738914, 39.506310, 43.721859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184156, -0.185500, 0.965234,
		-0.723618, -0.639005, -0.260864,
		0.665179, -0.746500, -0.016555,
		37.938469, 39.282360, 43.716892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187386, 39.373787, 44.207611>,  <37.472843, 39.804909, 43.728481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187386, 39.373787, 44.207611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551102, 39.214481, 44.159321>,  <37.769333, 39.118900, 44.130344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551102, 39.214481, 44.159321>,  <37.187386, 39.373787, 44.207611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551102, 39.214481, 44.159321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039882, -0.205377, 0.977870,
		-0.414245, -0.893984, -0.170863,
		0.909292, -0.398263, -0.120730,
		37.823891, 39.095001, 44.123100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177650, 38.766174, 44.623455>,  <37.187386, 39.373787, 44.207611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177650, 38.766174, 44.623455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559063, 38.880943, 44.586662>,  <37.787910, 38.949802, 44.564587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559063, 38.880943, 44.586662>,  <37.177650, 38.766174, 44.623455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559063, 38.880943, 44.586662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123395, -0.093376, 0.987955,
		0.274877, -0.953392, -0.124441,
		0.953528, 0.286921, -0.091977,
		37.845123, 38.967018, 44.559071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322445, 37.969315, 44.740715>,  <37.177650, 38.766174, 44.623455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322445, 37.969315, 44.740715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066738, 37.687065, 44.862980>,  <36.913315, 37.517715, 44.936340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066738, 37.687065, 44.862980>,  <37.322445, 37.969315, 44.740715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066738, 37.687065, 44.862980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218252, -0.214658, -0.951991,
		0.737362, -0.675290, -0.016780,
		-0.639268, -0.705624, 0.305664,
		36.874958, 37.475376, 44.954678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441544, 37.326275, 44.359360>,  <37.322445, 37.969315, 44.740715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441544, 37.326275, 44.359360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065086, 37.316669, 44.494221>,  <36.839211, 37.310905, 44.575138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065086, 37.316669, 44.494221>,  <37.441544, 37.326275, 44.359360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065086, 37.316669, 44.494221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333251, -0.100770, -0.937438,
		0.056491, -0.994620, 0.086835,
		-0.941144, -0.024018, 0.337151,
		36.782742, 37.309464, 44.595367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201809, 36.633968, 44.139297>,  <37.441544, 37.326275, 44.359360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201809, 36.633968, 44.139297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893978, 36.881981, 44.200371>,  <36.709278, 37.030788, 44.237015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893978, 36.881981, 44.200371>,  <37.201809, 36.633968, 44.139297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893978, 36.881981, 44.200371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334000, -0.187065, -0.923824,
		-0.544240, -0.761949, 0.351052,
		-0.769576, 0.620033, 0.152683,
		36.663105, 37.067989, 44.246174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584576, 36.290886, 44.057175>,  <37.201809, 36.633968, 44.139297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584576, 36.290886, 44.057175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442631, 36.661499, 44.007202>,  <36.357464, 36.883865, 43.977219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442631, 36.661499, 44.007202>,  <36.584576, 36.290886, 44.057175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442631, 36.661499, 44.007202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331984, -0.249803, -0.909607,
		-0.873991, -0.281309, 0.396240,
		-0.354862, 0.926533, -0.124935,
		36.336174, 36.939461, 43.969723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866653, 36.251778, 43.675182>,  <36.584576, 36.290886, 44.057175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866653, 36.251778, 43.675182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992821, 36.628658, 43.629974>,  <36.068520, 36.854786, 43.602852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992821, 36.628658, 43.629974>,  <35.866653, 36.251778, 43.675182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992821, 36.628658, 43.629974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365818, 0.010835, -0.930623,
		-0.875607, 0.334880, 0.348091,
		0.315419, 0.942198, -0.113018,
		36.087448, 36.911320, 43.596069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254192, 36.654263, 43.380402>,  <35.866653, 36.251778, 43.675182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254192, 36.654263, 43.380402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592808, 36.850471, 43.297680>,  <35.795975, 36.968197, 43.248047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592808, 36.850471, 43.297680>,  <35.254192, 36.654263, 43.380402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592808, 36.850471, 43.297680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181952, -0.098473, -0.978364,
		-0.500273, 0.865847, 0.005891,
		0.846534, 0.490521, -0.206806,
		35.846767, 36.997627, 43.235638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056229, 37.185749, 42.972931>,  <35.254192, 36.654263, 43.380402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056229, 37.185749, 42.972931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.447308, 37.179138, 42.889187>,  <35.681957, 37.175171, 42.838940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.447308, 37.179138, 42.889187>,  <35.056229, 37.185749, 42.972931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447308, 37.179138, 42.889187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208398, 0.046949, -0.976917,
		0.025970, 0.998761, 0.042459,
		0.977699, -0.016523, -0.209359,
		35.740616, 37.174183, 42.826378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.803799, 32.676628, 46.912304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.807541, 33.075207, 46.878830>,  <40.809784, 33.314354, 46.858746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.807541, 33.075207, 46.878830>,  <40.803799, 32.676628, 46.912304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807541, 33.075207, 46.878830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521023, -0.066577, -0.850942,
		-0.853491, 0.051561, 0.518550,
		0.009352, 0.996448, -0.083687,
		40.810345, 33.374142, 46.853725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153530, 32.872543, 46.907814>,  <40.803799, 32.676628, 46.912304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153530, 32.872543, 46.907814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.335987, 33.168625, 46.710220>,  <40.445461, 33.346275, 46.591663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.335987, 33.168625, 46.710220>,  <40.153530, 32.872543, 46.907814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335987, 33.168625, 46.710220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549915, -0.201971, -0.810433,
		-0.699660, 0.641327, 0.314923,
		0.456147, 0.740208, -0.493986,
		40.472832, 33.390686, 46.562023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613846, 33.280266, 46.573883>,  <40.153530, 32.872543, 46.907814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613846, 33.280266, 46.573883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.960964, 33.323814, 46.379944>,  <40.169235, 33.349945, 46.263580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.960964, 33.323814, 46.379944>,  <39.613846, 33.280266, 46.573883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960964, 33.323814, 46.379944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493594, 0.076170, -0.866350,
		-0.057389, 0.991133, 0.119838,
		0.867797, 0.108870, -0.484846,
		40.221302, 33.356476, 46.234489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484280, 33.830170, 46.075947>,  <39.613846, 33.280266, 46.573883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484280, 33.830170, 46.075947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.812408, 33.637299, 45.952934>,  <40.009285, 33.521576, 45.879128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.812408, 33.637299, 45.952934>,  <39.484280, 33.830170, 46.075947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812408, 33.637299, 45.952934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373572, -0.044620, -0.926528,
		0.433025, 0.874939, -0.216729,
		0.820325, -0.482174, -0.307531,
		40.058506, 33.492645, 45.860676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729652, 34.218224, 45.433853>,  <39.484280, 33.830170, 46.075947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729652, 34.218224, 45.433853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.880516, 33.848297, 45.453728>,  <39.971035, 33.626343, 45.465652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.880516, 33.848297, 45.453728>,  <39.729652, 34.218224, 45.433853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880516, 33.848297, 45.453728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393825, -0.208700, -0.895180,
		0.838244, 0.318059, -0.442928,
		0.377159, -0.924815, 0.049682,
		39.993664, 33.570854, 45.468632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161079, 34.116508, 44.919643>,  <39.729652, 34.218224, 45.433853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161079, 34.116508, 44.919643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.063152, 33.737385, 45.001347>,  <40.004398, 33.509911, 45.050369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.063152, 33.737385, 45.001347>,  <40.161079, 34.116508, 44.919643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063152, 33.737385, 45.001347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146544, -0.172076, -0.974123,
		0.958432, -0.268411, -0.096769,
		-0.244814, -0.947811, 0.204257,
		39.989708, 33.453041, 45.062622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338238, 33.690765, 44.309372>,  <40.161079, 34.116508, 44.919643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338238, 33.690765, 44.309372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.106640, 33.439079, 44.516781>,  <39.967682, 33.288067, 44.641224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.106640, 33.439079, 44.516781>,  <40.338238, 33.690765, 44.309372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106640, 33.439079, 44.516781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440734, -0.293504, -0.848298,
		0.685946, -0.719686, -0.107378,
		-0.578992, -0.629212, 0.518518,
		39.932941, 33.250317, 44.672337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432884, 32.968857, 43.989281>,  <40.338238, 33.690765, 44.309372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432884, 32.968857, 43.989281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.072750, 32.993290, 44.161636>,  <39.856670, 33.007950, 44.265049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.072750, 32.993290, 44.161636>,  <40.432884, 32.968857, 43.989281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072750, 32.993290, 44.161636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435157, -0.113238, -0.893205,
		-0.005768, -0.991688, 0.128533,
		-0.900336, 0.061084, 0.430887,
		39.802650, 33.011616, 44.290901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017399, 32.563198, 43.638126>,  <40.432884, 32.968857, 43.989281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017399, 32.563198, 43.638126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.726063, 32.771973, 43.815716>,  <39.551262, 32.897236, 43.922268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.726063, 32.771973, 43.815716>,  <40.017399, 32.563198, 43.638126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726063, 32.771973, 43.815716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605875, -0.187895, -0.773053,
		-0.320063, -0.832034, 0.453078,
		-0.728338, 0.521934, 0.443970,
		39.507561, 32.928551, 43.948906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527859, 32.114807, 43.735348>,  <40.017399, 32.563198, 43.638126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527859, 32.114807, 43.735348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.347000, 32.471428, 43.724777>,  <39.238483, 32.685402, 43.718433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.347000, 32.471428, 43.724777>,  <39.527859, 32.114807, 43.735348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347000, 32.471428, 43.724777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560692, -0.307143, -0.768952,
		-0.693678, -0.332861, 0.638760,
		-0.452145, 0.891553, -0.026426,
		39.211357, 32.738895, 43.716850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948059, 31.961544, 43.467667>,  <39.527859, 32.114807, 43.735348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948059, 31.961544, 43.467667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.902065, 32.357170, 43.430717>,  <38.874470, 32.594547, 43.408550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.902065, 32.357170, 43.430717>,  <38.948059, 31.961544, 43.467667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902065, 32.357170, 43.430717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534626, -0.139984, -0.833414,
		-0.837230, -0.046444, 0.544875,
		-0.114981, 0.989064, -0.092368,
		38.867573, 32.653889, 43.403008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261490, 32.016384, 43.388401>,  <38.948059, 31.961544, 43.467667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261490, 32.016384, 43.388401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.471817, 32.313282, 43.222225>,  <38.598011, 32.491421, 43.122520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.471817, 32.313282, 43.222225>,  <38.261490, 32.016384, 43.388401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471817, 32.313282, 43.222225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535376, -0.090736, -0.839726,
		-0.660978, 0.663957, 0.349670,
		0.525814, 0.742245, -0.415441,
		38.629562, 32.535957, 43.097591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841721, 32.521267, 43.770020>,  <38.261490, 32.016384, 43.388401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841721, 32.521267, 43.770020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.453579, 32.614185, 43.796696>,  <37.220692, 32.669937, 43.812702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.453579, 32.614185, 43.796696>,  <37.841721, 32.521267, 43.770020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453579, 32.614185, 43.796696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171735, 0.468619, 0.866547,
		0.170043, 0.852312, -0.494621,
		-0.970357, 0.232294, 0.066686,
		37.162472, 32.683872, 43.816700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869991, 33.158924, 43.967064>,  <37.841721, 32.521267, 43.770020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869991, 33.158924, 43.967064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.485760, 33.082409, 44.047756>,  <37.255219, 33.036499, 44.096172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.485760, 33.082409, 44.047756>,  <37.869991, 33.158924, 43.967064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485760, 33.082409, 44.047756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171887, 0.161639, 0.971765,
		-0.218494, 0.968133, -0.122387,
		-0.960581, -0.191288, 0.201727,
		37.197586, 33.025021, 44.108273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442837, 33.785034, 44.190781>,  <37.869991, 33.158924, 43.967064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442837, 33.785034, 44.190781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.260460, 33.465088, 44.346901>,  <37.151031, 33.273121, 44.440575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.260460, 33.465088, 44.346901>,  <37.442837, 33.785034, 44.190781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260460, 33.465088, 44.346901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094268, 0.392670, 0.914835,
		-0.885002, 0.453907, -0.103635,
		-0.455944, -0.799862, 0.390302,
		37.123676, 33.225128, 44.463993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176929, 34.065201, 44.722336>,  <37.442837, 33.785034, 44.190781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176929, 34.065201, 44.722336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.142246, 33.672920, 44.792423>,  <37.121437, 33.437550, 44.834476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.142246, 33.672920, 44.792423>,  <37.176929, 34.065201, 44.722336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142246, 33.672920, 44.792423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037559, 0.172541, 0.984286,
		-0.995526, 0.091927, 0.021874,
		-0.086708, -0.980703, 0.175222,
		37.116234, 33.378708, 44.844990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637997, 34.007587, 45.142426>,  <37.176929, 34.065201, 44.722336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637997, 34.007587, 45.142426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.847889, 33.675442, 45.217415>,  <36.973824, 33.476154, 45.262409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.847889, 33.675442, 45.217415>,  <36.637997, 34.007587, 45.142426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847889, 33.675442, 45.217415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098552, 0.159492, 0.982267,
		-0.845543, -0.533904, 0.001856,
		0.524733, -0.830366, 0.187475,
		37.005310, 33.426331, 45.273659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402012, 33.747696, 45.747524>,  <36.637997, 34.007587, 45.142426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402012, 33.747696, 45.747524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.762783, 33.578033, 45.714985>,  <36.979244, 33.476234, 45.695461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.762783, 33.578033, 45.714985>,  <36.402012, 33.747696, 45.747524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762783, 33.578033, 45.714985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204957, 0.254574, 0.945084,
		-0.380156, -0.869070, 0.316541,
		0.901928, -0.424157, -0.081344,
		37.033363, 33.450787, 45.690582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561474, 33.345818, 46.395714>,  <36.402012, 33.747696, 45.747524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561474, 33.345818, 46.395714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.909554, 33.425098, 46.215279>,  <37.118401, 33.472668, 46.107018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.909554, 33.425098, 46.215279>,  <36.561474, 33.345818, 46.395714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909554, 33.425098, 46.215279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372803, 0.333741, 0.865814,
		0.322142, -0.921595, 0.216535,
		0.870197, 0.198190, -0.451085,
		37.170612, 33.484558, 46.079952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977623, 33.149780, 46.939880>,  <36.561474, 33.345818, 46.395714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977623, 33.149780, 46.939880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.252934, 33.313877, 46.700558>,  <37.418121, 33.412334, 46.556965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.252934, 33.313877, 46.700558>,  <36.977623, 33.149780, 46.939880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252934, 33.313877, 46.700558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506606, 0.318519, 0.801184,
		0.519249, -0.854547, 0.011401,
		0.688280, 0.410238, -0.598309,
		37.459419, 33.436947, 46.521065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740696, 33.048855, 47.143402>,  <36.977623, 33.149780, 46.939880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740696, 33.048855, 47.143402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.740093, 33.373562, 46.909809>,  <37.739731, 33.568386, 46.769653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.740093, 33.373562, 46.909809>,  <37.740696, 33.048855, 47.143402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740093, 33.373562, 46.909809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468901, 0.516378, 0.716580,
		0.883250, -0.272751, -0.381415,
		-0.001506, 0.811764, -0.583983,
		37.739643, 33.617092, 46.734615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332775, 33.347576, 47.363213>,  <37.740696, 33.048855, 47.143402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332775, 33.347576, 47.363213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.172428, 33.643906, 47.147629>,  <38.076221, 33.821705, 47.018276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.172428, 33.643906, 47.147629>,  <38.332775, 33.347576, 47.363213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172428, 33.643906, 47.147629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308376, 0.663082, 0.682075,
		0.862676, 0.107218, -0.494262,
		-0.400867, 0.740828, -0.538961,
		38.052170, 33.866154, 46.985939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926445, 33.868000, 47.208195>,  <38.332775, 33.347576, 47.363213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926445, 33.868000, 47.208195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.577003, 34.057556, 47.163921>,  <38.367340, 34.171291, 47.137356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.577003, 34.057556, 47.163921>,  <38.926445, 33.868000, 47.208195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577003, 34.057556, 47.163921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367614, 0.791664, 0.487984,
		0.318878, 0.385612, -0.865806,
		-0.873600, 0.473890, -0.110688,
		38.314922, 34.199722, 47.130714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149330, 34.677444, 47.180641>,  <38.926445, 33.868000, 47.208195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149330, 34.677444, 47.180641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.757141, 34.663059, 47.257977>,  <38.521828, 34.654430, 47.304379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.757141, 34.663059, 47.257977>,  <39.149330, 34.677444, 47.180641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757141, 34.663059, 47.257977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135492, 0.589011, 0.796686,
		-0.142525, 0.807325, -0.572637,
		-0.980474, -0.035960, 0.193335,
		38.462997, 34.652271, 47.315975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838379, 35.354816, 47.037659>,  <39.149330, 34.677444, 47.180641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838379, 35.354816, 47.037659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.615257, 35.186188, 47.323635>,  <38.481384, 35.085011, 47.495220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.615257, 35.186188, 47.323635>,  <38.838379, 35.354816, 47.037659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615257, 35.186188, 47.323635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305215, 0.696850, 0.649033,
		-0.771816, 0.580242, -0.260036,
		-0.557802, -0.421567, 0.714939,
		38.447918, 35.059719, 47.538116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412132, 35.998573, 47.246082>,  <38.838379, 35.354816, 47.037659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412132, 35.998573, 47.246082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.463299, 35.701252, 47.508728>,  <38.493999, 35.522861, 47.666317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.463299, 35.701252, 47.508728>,  <38.412132, 35.998573, 47.246082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463299, 35.701252, 47.508728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310119, 0.658832, 0.685395,
		-0.942053, 0.115957, 0.314786,
		0.127915, -0.743299, 0.656615,
		38.501675, 35.478264, 47.705711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725780, 36.171429, 47.013908>,  <38.412132, 35.998573, 47.246082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725780, 36.171429, 47.013908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.713837, 36.498360, 47.244068>,  <37.706669, 36.694519, 47.382164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.713837, 36.498360, 47.244068>,  <37.725780, 36.171429, 47.013908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713837, 36.498360, 47.244068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429549, 0.509297, -0.745724,
		-0.902550, -0.269428, 0.335876,
		-0.029859, 0.817328, 0.575399,
		37.704880, 36.743557, 47.416687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037064, 36.336300, 47.096634>,  <37.725780, 36.171429, 47.013908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037064, 36.336300, 47.096634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.234055, 36.674713, 47.178318>,  <37.352249, 36.877762, 47.227329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.234055, 36.674713, 47.178318>,  <37.037064, 36.336300, 47.096634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234055, 36.674713, 47.178318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644582, 0.512208, -0.567589,
		-0.584795, 0.147894, 0.797585,
		0.492473, 0.846032, 0.204207,
		37.381798, 36.928524, 47.239578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537540, 36.745522, 47.200897>,  <37.037064, 36.336300, 47.096634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537540, 36.745522, 47.200897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.858383, 36.965389, 47.107533>,  <37.050888, 37.097309, 47.051514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.858383, 36.965389, 47.107533>,  <36.537540, 36.745522, 47.200897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858383, 36.965389, 47.107533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501320, 0.407402, -0.763350,
		-0.324498, 0.729305, 0.602342,
		0.802109, 0.549672, -0.233414,
		37.099014, 37.130291, 47.037510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240471, 37.467720, 47.113319>,  <36.537540, 36.745522, 47.200897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240471, 37.467720, 47.113319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.599022, 37.470146, 46.936020>,  <36.814152, 37.471600, 46.829639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.599022, 37.470146, 46.936020>,  <36.240471, 37.467720, 47.113319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599022, 37.470146, 46.936020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408239, 0.400972, -0.820099,
		0.172757, 0.916070, 0.361899,
		0.896379, 0.006063, -0.443247,
		36.867935, 37.471966, 46.803047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131344, 38.087605, 46.634949>,  <36.240471, 37.467720, 47.113319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131344, 38.087605, 46.634949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.429783, 37.879139, 46.469189>,  <36.608845, 37.754059, 46.369732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.429783, 37.879139, 46.469189>,  <36.131344, 38.087605, 46.634949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429783, 37.879139, 46.469189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325242, 0.257806, -0.909810,
		0.580998, 0.813584, 0.022842,
		0.746096, -0.521168, -0.414397,
		36.653610, 37.722790, 46.344872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276051, 38.419239, 45.953518>,  <36.131344, 38.087605, 46.634949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276051, 38.419239, 45.953518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.452003, 38.060947, 45.927704>,  <36.557575, 37.845970, 45.912216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.452003, 38.060947, 45.927704>,  <36.276051, 38.419239, 45.953518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452003, 38.060947, 45.927704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106912, 0.019114, -0.994085,
		0.891669, 0.444180, -0.087356,
		0.439883, -0.895734, -0.064532,
		36.583969, 37.792229, 45.908344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806843, 38.479980, 45.304493>,  <36.276051, 38.419239, 45.953518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806843, 38.479980, 45.304493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.742516, 38.093845, 45.386715>,  <36.703918, 37.862164, 45.436047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.742516, 38.093845, 45.386715>,  <36.806843, 38.479980, 45.304493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742516, 38.093845, 45.386715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058505, -0.198571, -0.978339,
		0.985248, -0.169363, -0.024543,
		-0.160821, -0.965342, 0.205551,
		36.694271, 37.804241, 45.448380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527596, 38.576694, 45.232235>,  <36.806843, 38.479980, 45.304493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527596, 38.576694, 45.232235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.803257, 38.832390, 45.095741>,  <37.968655, 38.985806, 45.013844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.803257, 38.832390, 45.095741>,  <37.527596, 38.576694, 45.232235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803257, 38.832390, 45.095741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280943, 0.198370, 0.939000,
		0.667933, -0.742985, -0.042880,
		0.689157, 0.639235, -0.341234,
		38.010006, 39.024162, 44.993370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113888, 38.403675, 45.539112>,  <37.527596, 38.576694, 45.232235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113888, 38.403675, 45.539112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.216759, 38.768974, 45.412727>,  <38.278481, 38.988155, 45.336895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.216759, 38.768974, 45.412727>,  <38.113888, 38.403675, 45.539112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216759, 38.768974, 45.412727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366141, 0.210503, 0.906438,
		0.894317, -0.348799, -0.280243,
		0.257172, 0.913251, -0.315966,
		38.293911, 39.042950, 45.317936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754826, 38.486767, 45.708252>,  <38.113888, 38.403675, 45.539112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754826, 38.486767, 45.708252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.644535, 38.869526, 45.671776>,  <38.578362, 39.099182, 45.649891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.644535, 38.869526, 45.671776>,  <38.754826, 38.486767, 45.708252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644535, 38.869526, 45.671776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547362, 0.234280, 0.803435,
		0.790172, 0.171614, -0.588368,
		-0.275724, 0.956902, -0.091187,
		38.561817, 39.156597, 45.644421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415981, 38.997940, 45.689529>,  <38.754826, 38.486767, 45.708252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415981, 38.997940, 45.689529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.115978, 39.226906, 45.822098>,  <38.935978, 39.364285, 45.901638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.115978, 39.226906, 45.822098>,  <39.415981, 38.997940, 45.689529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115978, 39.226906, 45.822098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616022, 0.422048, 0.665126,
		0.240851, 0.703009, -0.669156,
		-0.750005, 0.572411, 0.331419,
		38.890976, 39.398628, 45.921524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718540, 39.597210, 45.910511>,  <39.415981, 38.997940, 45.689529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718540, 39.597210, 45.910511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.359795, 39.601749, 46.087372>,  <39.144547, 39.604473, 46.193489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.359795, 39.601749, 46.087372>,  <39.718540, 39.597210, 45.910511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359795, 39.601749, 46.087372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437499, 0.169680, 0.883065,
		-0.065005, 0.985434, -0.157144,
		-0.896866, 0.011347, 0.442156,
		39.090736, 39.605152, 46.220020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705116, 40.267063, 46.266613>,  <39.718540, 39.597210, 45.910511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705116, 40.267063, 46.266613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.424278, 40.035564, 46.432560>,  <39.255775, 39.896667, 46.532127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.424278, 40.035564, 46.432560>,  <39.705116, 40.267063, 46.266613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424278, 40.035564, 46.432560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390434, 0.174353, 0.903970,
		-0.595502, 0.796652, 0.103549,
		-0.702096, -0.578745, 0.414868,
		39.213650, 39.861942, 46.557022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682980, 40.503101, 46.963509>,  <39.705116, 40.267063, 46.266613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682980, 40.503101, 46.963509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.499645, 40.149258, 46.997910>,  <39.389645, 39.936951, 47.018551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.499645, 40.149258, 46.997910>,  <39.682980, 40.503101, 46.963509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499645, 40.149258, 46.997910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189675, -0.002814, 0.981843,
		-0.868306, 0.466324, 0.169077,
		-0.458333, -0.884609, 0.086007,
		39.362144, 39.883873, 47.023712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190269, 40.563885, 47.418789>,  <39.682980, 40.503101, 46.963509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190269, 40.563885, 47.418789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.301800, 40.179985, 47.405285>,  <39.368717, 39.949646, 47.397182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.301800, 40.179985, 47.405285>,  <39.190269, 40.563885, 47.418789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301800, 40.179985, 47.405285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411163, 0.087539, 0.907349,
		-0.867871, -0.266874, 0.419021,
		0.278828, -0.959748, -0.033756,
		39.385448, 39.892059, 47.395157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203247, 40.289539, 48.166298>,  <39.190269, 40.563885, 47.418789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203247, 40.289539, 48.166298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.383461, 39.967617, 48.011742>,  <39.491589, 39.774464, 47.919006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.383461, 39.967617, 48.011742>,  <39.203247, 40.289539, 48.166298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383461, 39.967617, 48.011742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541689, -0.097597, 0.834894,
		-0.709640, -0.585456, 0.391985,
		0.450537, -0.804808, -0.386393,
		39.518623, 39.726173, 47.895824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.726070, 35.799721, 32.985256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116447, 35.712872, 32.977261>,  <36.350674, 35.660763, 32.972462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116447, 35.712872, 32.977261>,  <35.726070, 35.799721, 32.985256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116447, 35.712872, 32.977261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097699, 0.353503, 0.930317,
		-0.194928, -0.909886, 0.366211,
		0.975940, -0.217123, -0.019988,
		36.409229, 35.647736, 32.971264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916080, 35.322060, 33.447590>,  <35.726070, 35.799721, 32.985256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916080, 35.322060, 33.447590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221718, 35.576576, 33.405094>,  <36.405102, 35.729286, 33.379597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221718, 35.576576, 33.405094>,  <35.916080, 35.322060, 33.447590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221718, 35.576576, 33.405094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045976, 0.217977, 0.974870,
		0.643461, -0.740011, 0.195810,
		0.764097, 0.636293, -0.106237,
		36.450947, 35.767464, 33.373222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307842, 35.257484, 34.082981>,  <35.916080, 35.322060, 33.447590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307842, 35.257484, 34.082981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438667, 35.601742, 33.926865>,  <36.517162, 35.808296, 33.833195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438667, 35.601742, 33.926865>,  <36.307842, 35.257484, 34.082981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438667, 35.601742, 33.926865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121904, 0.371130, 0.920545,
		0.937106, -0.348656, 0.016469,
		0.327066, 0.860640, -0.390291,
		36.536789, 35.859932, 33.809776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907364, 35.419315, 34.460182>,  <36.307842, 35.257484, 34.082981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907364, 35.419315, 34.460182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799103, 35.762669, 34.285858>,  <36.734146, 35.968681, 34.181263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799103, 35.762669, 34.285858>,  <36.907364, 35.419315, 34.460182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799103, 35.762669, 34.285858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098990, 0.475119, 0.874336,
		0.957575, 0.193497, -0.213562,
		-0.270649, 0.858383, -0.435808,
		36.717907, 36.020184, 34.155117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396538, 35.958557, 34.655491>,  <36.907364, 35.419315, 34.460182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396538, 35.958557, 34.655491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055965, 36.137440, 34.545898>,  <36.851620, 36.244770, 34.480141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055965, 36.137440, 34.545898>,  <37.396538, 35.958557, 34.655491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055965, 36.137440, 34.545898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003898, 0.527791, 0.849365,
		0.524447, 0.722111, -0.451123,
		-0.851434, 0.447205, -0.273984,
		36.800533, 36.271603, 34.463703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516949, 36.540718, 34.901104>,  <37.396538, 35.958557, 34.655491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516949, 36.540718, 34.901104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120823, 36.562927, 34.850197>,  <36.883148, 36.576252, 34.819653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120823, 36.562927, 34.850197>,  <37.516949, 36.540718, 34.901104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120823, 36.562927, 34.850197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058897, 0.662073, 0.747121,
		0.125739, 0.747380, -0.652390,
		-0.990314, 0.055518, -0.127267,
		36.823730, 36.579582, 34.812016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383373, 37.315182, 34.779049>,  <37.516949, 36.540718, 34.901104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383373, 37.315182, 34.779049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041504, 37.159760, 34.916771>,  <36.836380, 37.066505, 34.999405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041504, 37.159760, 34.916771>,  <37.383373, 37.315182, 34.779049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041504, 37.159760, 34.916771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128010, 0.800452, 0.585568,
		-0.503131, 0.456396, -0.733868,
		-0.854677, -0.388560, 0.344309,
		36.785099, 37.043190, 35.020065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911259, 37.817009, 34.772984>,  <37.383373, 37.315182, 34.779049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911259, 37.817009, 34.772984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749931, 37.562611, 35.036144>,  <36.653133, 37.409969, 35.194042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749931, 37.562611, 35.036144>,  <36.911259, 37.817009, 34.772984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749931, 37.562611, 35.036144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140659, 0.753521, 0.642200,
		-0.904183, 0.166473, -0.393370,
		-0.403322, -0.635997, 0.657905,
		36.628933, 37.371811, 35.233517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238308, 38.153900, 34.912735>,  <36.911259, 37.817009, 34.772984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238308, 38.153900, 34.912735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284447, 37.891636, 35.211212>,  <36.312130, 37.734276, 35.390297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284447, 37.891636, 35.211212>,  <36.238308, 38.153900, 34.912735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284447, 37.891636, 35.211212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217214, 0.716375, 0.663042,
		-0.969285, -0.238563, -0.059788,
		0.115346, -0.655663, 0.746191,
		36.319050, 37.694939, 35.435070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642639, 38.212795, 35.375935>,  <36.238308, 38.153900, 34.912735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642639, 38.212795, 35.375935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907631, 38.043491, 35.623150>,  <36.066628, 37.941910, 35.771481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907631, 38.043491, 35.623150>,  <35.642639, 38.212795, 35.375935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907631, 38.043491, 35.623150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240979, 0.660783, 0.710841,
		-0.709259, -0.619853, 0.335759,
		0.662481, -0.423259, 0.618038,
		36.106377, 37.916515, 35.808559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303661, 38.259338, 36.058838>,  <35.642639, 38.212795, 35.375935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303661, 38.259338, 36.058838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690155, 38.196091, 36.140217>,  <35.922050, 38.158142, 36.189045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690155, 38.196091, 36.140217>,  <35.303661, 38.259338, 36.058838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690155, 38.196091, 36.140217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067368, 0.607080, 0.791780,
		-0.248708, -0.778750, 0.575928,
		0.966232, -0.158123, 0.203449,
		35.980026, 38.148655, 36.201252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242035, 38.185127, 36.690701>,  <35.303661, 38.259338, 36.058838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242035, 38.185127, 36.690701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625210, 38.278221, 36.623531>,  <35.855114, 38.334080, 36.583229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625210, 38.278221, 36.623531>,  <35.242035, 38.185127, 36.690701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625210, 38.278221, 36.623531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040948, 0.689953, 0.722695,
		0.284055, -0.685417, 0.670459,
		0.957933, 0.232739, -0.167919,
		35.912590, 38.348042, 36.573154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005028, 37.423794, 36.630024>,  <35.242035, 38.185127, 36.690701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005028, 37.423794, 36.630024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746925, 37.189217, 36.825871>,  <34.592064, 37.048470, 36.943378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746925, 37.189217, 36.825871>,  <35.005028, 37.423794, 36.630024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746925, 37.189217, 36.825871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553041, -0.083585, -0.828951,
		0.527061, -0.805664, -0.270395,
		-0.645255, -0.586447, 0.489619,
		34.553349, 37.013283, 36.972755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851185, 36.811390, 36.221581>,  <35.005028, 37.423794, 36.630024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851185, 36.811390, 36.221581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538170, 36.862637, 36.465294>,  <34.350361, 36.893383, 36.611523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538170, 36.862637, 36.465294>,  <34.851185, 36.811390, 36.221581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538170, 36.862637, 36.465294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621469, -0.101599, -0.776823,
		-0.037614, -0.986543, 0.159119,
		-0.782535, 0.128107, 0.609284,
		34.303410, 36.901070, 36.648079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309555, 36.262699, 35.959480>,  <34.851185, 36.811390, 36.221581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309555, 36.262699, 35.959480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085514, 36.488724, 36.201801>,  <33.951092, 36.624336, 36.347195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085514, 36.488724, 36.201801>,  <34.309555, 36.262699, 35.959480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085514, 36.488724, 36.201801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827661, -0.350270, -0.438507,
		-0.035586, -0.747008, 0.663861,
		-0.560100, 0.565057, 0.605805,
		33.917484, 36.658241, 36.383541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817806, 35.824413, 36.263958>,  <34.309555, 36.262699, 35.959480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817806, 35.824413, 36.263958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699532, 36.206081, 36.245472>,  <33.628567, 36.435081, 36.234379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699532, 36.206081, 36.245472>,  <33.817806, 35.824413, 36.263958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699532, 36.206081, 36.245472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773071, -0.267430, -0.575189,
		-0.561186, -0.134345, 0.816714,
		-0.295687, 0.954166, -0.046220,
		33.610825, 36.492332, 36.231606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023239, 35.945770, 36.372601>,  <33.817806, 35.824413, 36.263958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023239, 35.945770, 36.372601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127365, 36.285774, 36.189423>,  <33.189842, 36.489777, 36.079517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127365, 36.285774, 36.189423>,  <33.023239, 35.945770, 36.372601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127365, 36.285774, 36.189423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721863, -0.143645, -0.676964,
		-0.641210, 0.506796, 0.576201,
		0.260314, 0.850014, -0.457944,
		33.205460, 36.540779, 36.052040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414776, 36.175968, 36.049885>,  <33.023239, 35.945770, 36.372601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414776, 36.175968, 36.049885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688885, 36.390522, 35.852825>,  <32.853352, 36.519253, 35.734589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688885, 36.390522, 35.852825>,  <32.414776, 36.175968, 36.049885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688885, 36.390522, 35.852825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481111, -0.174421, -0.859133,
		-0.546750, 0.825756, 0.138532,
		0.685272, 0.536380, -0.492645,
		32.894466, 36.551437, 35.705032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037624, 36.756268, 35.717770>,  <32.414776, 36.175968, 36.049885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037624, 36.756268, 35.717770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385502, 36.724640, 35.522884>,  <32.594231, 36.705666, 35.405952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385502, 36.724640, 35.522884>,  <32.037624, 36.756268, 35.717770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385502, 36.724640, 35.522884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488641, 0.001413, -0.872484,
		0.069672, 0.996868, -0.037407,
		0.869698, -0.079066, -0.487210,
		32.646412, 36.700920, 35.376720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873539, 36.966530, 35.070663>,  <32.037624, 36.756268, 35.717770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873539, 36.966530, 35.070663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226109, 36.788391, 35.007721>,  <32.437649, 36.681507, 34.969955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226109, 36.788391, 35.007721>,  <31.873539, 36.966530, 35.070663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226109, 36.788391, 35.007721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290335, -0.248075, -0.924210,
		0.372557, 0.860306, -0.347959,
		0.881423, -0.445346, -0.157355,
		32.490536, 36.654789, 34.960514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243877, 37.388325, 34.422962>,  <31.873539, 36.966530, 35.070663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243877, 37.388325, 34.422962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329338, 37.003010, 34.487980>,  <32.380615, 36.771820, 34.526993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329338, 37.003010, 34.487980>,  <32.243877, 37.388325, 34.422962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329338, 37.003010, 34.487980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161582, -0.198944, -0.966598,
		0.963454, 0.180253, -0.198156,
		0.213655, -0.963291, 0.162548,
		32.393433, 36.714024, 34.536743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402069, 37.244865, 33.779449>,  <32.243877, 37.388325, 34.422962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402069, 37.244865, 33.779449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379967, 36.878265, 33.937927>,  <32.366703, 36.658306, 34.033012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379967, 36.878265, 33.937927>,  <32.402069, 37.244865, 33.779449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379967, 36.878265, 33.937927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261509, -0.369664, -0.891606,
		0.963618, -0.152877, -0.219247,
		-0.055258, -0.916503, 0.396193,
		32.363388, 36.603313, 34.056786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791016, 36.821037, 33.341892>,  <32.402069, 37.244865, 33.779449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791016, 36.821037, 33.341892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547230, 36.564671, 33.528561>,  <32.400959, 36.410851, 33.640564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547230, 36.564671, 33.528561>,  <32.791016, 36.821037, 33.341892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547230, 36.564671, 33.528561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294555, -0.363447, -0.883823,
		0.736067, -0.676117, 0.032722,
		-0.609461, -0.640915, 0.466675,
		32.364391, 36.372395, 33.668564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969765, 36.166519, 33.062469>,  <32.791016, 36.821037, 33.341892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969765, 36.166519, 33.062469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608150, 36.103752, 33.221516>,  <32.391182, 36.066093, 33.316944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608150, 36.103752, 33.221516>,  <32.969765, 36.166519, 33.062469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608150, 36.103752, 33.221516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262850, -0.529480, -0.806574,
		0.337095, -0.833684, 0.437423,
		-0.904034, -0.156916, 0.397619,
		32.336941, 36.056679, 33.340801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951305, 35.432457, 33.169018>,  <32.969765, 36.166519, 33.062469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951305, 35.432457, 33.169018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583275, 35.585255, 33.134293>,  <32.362457, 35.676933, 33.113457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583275, 35.585255, 33.134293>,  <32.951305, 35.432457, 33.169018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583275, 35.585255, 33.134293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220100, -0.687422, -0.692104,
		-0.324060, -0.617681, 0.716558,
		-0.920076, 0.381997, -0.086814,
		32.307251, 35.699856, 33.108250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588058, 34.861248, 32.982624>,  <32.951305, 35.432457, 33.169018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588058, 34.861248, 32.982624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380535, 35.187958, 32.881649>,  <32.256020, 35.383984, 32.821064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380535, 35.187958, 32.881649>,  <32.588058, 34.861248, 32.982624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380535, 35.187958, 32.881649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335401, -0.466077, -0.818705,
		-0.786349, -0.340084, 0.515750,
		-0.518808, 0.816771, -0.252434,
		32.224892, 35.432991, 32.805920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813801, 34.453865, 33.575432>,  <32.588058, 34.861248, 32.982624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813801, 34.453865, 33.575432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621815, 34.108715, 33.638794>,  <32.506622, 33.901627, 33.676811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621815, 34.108715, 33.638794>,  <32.813801, 34.453865, 33.575432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621815, 34.108715, 33.638794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076549, 0.138684, 0.987374,
		-0.873944, 0.486027, -0.000511,
		-0.479961, -0.862870, 0.158407,
		32.477825, 33.849854, 33.686317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170757, 34.443077, 33.958118>,  <32.813801, 34.453865, 33.575432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170757, 34.443077, 33.958118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359627, 34.096943, 34.025337>,  <32.472950, 33.889263, 34.065670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359627, 34.096943, 34.025337>,  <32.170757, 34.443077, 33.958118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359627, 34.096943, 34.025337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132661, 0.118710, 0.984027,
		-0.871466, -0.486925, -0.058745,
		0.472174, -0.865339, 0.168048,
		32.501278, 33.837341, 34.075752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832905, 34.057476, 34.592281>,  <32.170757, 34.443077, 33.958118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832905, 34.057476, 34.592281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194096, 33.896561, 34.531895>,  <32.410812, 33.800011, 34.495663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194096, 33.896561, 34.531895>,  <31.832905, 34.057476, 34.592281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194096, 33.896561, 34.531895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153548, -0.026034, 0.987798,
		-0.401314, -0.915141, 0.038263,
		0.902979, -0.402293, -0.150966,
		32.464989, 33.775871, 34.486607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902353, 33.534542, 35.001194>,  <31.832905, 34.057476, 34.592281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902353, 33.534542, 35.001194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293629, 33.557217, 34.921265>,  <32.528393, 33.570820, 34.873306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293629, 33.557217, 34.921265>,  <31.902353, 33.534542, 35.001194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293629, 33.557217, 34.921265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206112, -0.384078, 0.900001,
		-0.025730, -0.921559, -0.387386,
		0.978190, 0.056688, -0.199826,
		32.587086, 33.574223, 34.861317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301743, 32.885429, 35.331623>,  <31.902353, 33.534542, 35.001194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301743, 32.885429, 35.331623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572823, 33.172905, 35.269371>,  <32.735470, 33.345390, 35.232021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572823, 33.172905, 35.269371>,  <32.301743, 32.885429, 35.331623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572823, 33.172905, 35.269371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456519, -0.245284, 0.855235,
		0.576472, -0.650636, -0.494321,
		0.677695, 0.718686, -0.155628,
		32.776131, 33.388512, 35.222683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927795, 32.553318, 35.340076>,  <32.301743, 32.885429, 35.331623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927795, 32.553318, 35.340076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973122, 32.940239, 35.430836>,  <33.000317, 33.172394, 35.485291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973122, 32.940239, 35.430836>,  <32.927795, 32.553318, 35.340076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973122, 32.940239, 35.430836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717450, -0.237643, 0.654821,
		0.687332, 0.088587, -0.720921,
		0.113313, 0.967305, 0.226896,
		33.007114, 33.230431, 35.498905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535202, 32.630119, 35.651821>,  <32.927795, 32.553318, 35.340076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535202, 32.630119, 35.651821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440384, 33.007824, 35.743187>,  <33.383492, 33.234447, 35.798004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440384, 33.007824, 35.743187>,  <33.535202, 32.630119, 35.651821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440384, 33.007824, 35.743187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726127, 0.016015, 0.687374,
		0.645406, 0.328795, -0.689453,
		-0.237046, 0.944266, 0.228411,
		33.369270, 33.291103, 35.811710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114395, 32.999420, 35.690819>,  <33.535202, 32.630119, 35.651821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114395, 32.999420, 35.690819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856281, 33.243652, 35.874470>,  <33.701412, 33.390194, 35.984661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856281, 33.243652, 35.874470>,  <34.114395, 32.999420, 35.690819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856281, 33.243652, 35.874470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625653, 0.077514, 0.776241,
		0.438371, 0.788149, -0.432032,
		-0.645282, 0.610583, 0.459128,
		33.662697, 33.426826, 36.012207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344986, 33.645607, 35.915478>,  <34.114395, 32.999420, 35.690819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344986, 33.645607, 35.915478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053387, 33.590622, 36.183708>,  <33.878429, 33.557632, 36.344646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053387, 33.590622, 36.183708>,  <34.344986, 33.645607, 35.915478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053387, 33.590622, 36.183708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649233, 0.171619, 0.740975,
		-0.216937, 0.975527, -0.035866,
		-0.728996, -0.137459, 0.670575,
		33.834686, 33.549385, 36.384880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337772, 34.244419, 36.368713>,  <34.344986, 33.645607, 35.915478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337772, 34.244419, 36.368713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176830, 33.927032, 36.551369>,  <34.080265, 33.736603, 36.660961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176830, 33.927032, 36.551369>,  <34.337772, 34.244419, 36.368713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176830, 33.927032, 36.551369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696293, 0.058607, 0.715361,
		-0.594376, 0.605788, 0.528903,
		-0.402360, -0.793465, 0.456640,
		34.056122, 33.688992, 36.688362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410328, 34.386940, 37.148705>,  <34.337772, 34.244419, 36.368713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410328, 34.386940, 37.148705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307747, 34.002625, 37.190887>,  <34.246197, 33.772038, 37.216198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307747, 34.002625, 37.190887>,  <34.410328, 34.386940, 37.148705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307747, 34.002625, 37.190887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547378, -0.054443, 0.835113,
		-0.796623, 0.271897, 0.539875,
		-0.256457, -0.960785, 0.105460,
		34.230808, 33.714390, 37.222527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237656, 34.364887, 37.807087>,  <34.410328, 34.386940, 37.148705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237656, 34.364887, 37.807087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324757, 33.986195, 37.712185>,  <34.377018, 33.758980, 37.655243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324757, 33.986195, 37.712185>,  <34.237656, 34.364887, 37.807087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324757, 33.986195, 37.712185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374763, -0.143353, 0.915971,
		-0.901188, -0.288366, 0.323584,
		0.217748, -0.946729, -0.237257,
		34.390079, 33.702175, 37.641006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002499, 33.947376, 38.332436>,  <34.237656, 34.364887, 37.807087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002499, 33.947376, 38.332436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253502, 33.690857, 38.155811>,  <34.404102, 33.536945, 38.049839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253502, 33.690857, 38.155811>,  <34.002499, 33.947376, 38.332436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253502, 33.690857, 38.155811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322378, -0.302220, 0.897071,
		-0.708737, -0.705265, 0.017095,
		0.627506, -0.641298, -0.441557,
		34.441753, 33.498466, 38.023346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890778, 33.309952, 38.633835>,  <34.002499, 33.947376, 38.332436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890778, 33.309952, 38.633835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254772, 33.248600, 38.479748>,  <34.473171, 33.211788, 38.387295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254772, 33.248600, 38.479748>,  <33.890778, 33.309952, 38.633835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254772, 33.248600, 38.479748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322787, -0.321073, 0.890349,
		-0.260240, -0.934553, -0.242666,
		0.909991, -0.153375, -0.385217,
		34.527771, 33.202587, 38.364182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138050, 32.607101, 38.826900>,  <33.890778, 33.309952, 38.633835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138050, 32.607101, 38.826900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448502, 32.846390, 38.747150>,  <34.634773, 32.989964, 38.699299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448502, 32.846390, 38.747150>,  <34.138050, 32.607101, 38.826900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448502, 32.846390, 38.747150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439357, -0.286236, 0.851489,
		0.452310, -0.748465, -0.484990,
		0.776132, 0.598221, -0.199376,
		34.681339, 33.025856, 38.687336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751930, 32.184128, 39.070812>,  <34.138050, 32.607101, 38.826900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751930, 32.184128, 39.070812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891972, 32.558029, 39.046589>,  <34.975998, 32.782368, 39.032055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891972, 32.558029, 39.046589>,  <34.751930, 32.184128, 39.070812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891972, 32.558029, 39.046589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514424, -0.137842, 0.846385,
		0.782813, -0.327473, -0.529118,
		0.350103, 0.934752, -0.060555,
		34.997002, 32.838455, 39.028423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448025, 32.210754, 39.180862>,  <34.751930, 32.184128, 39.070812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448025, 32.210754, 39.180862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413605, 32.603485, 39.248516>,  <35.392952, 32.839123, 39.289108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413605, 32.603485, 39.248516>,  <35.448025, 32.210754, 39.180862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413605, 32.603485, 39.248516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635824, -0.076577, 0.768026,
		0.767022, 0.173624, -0.617682,
		-0.086048, 0.981830, 0.169131,
		35.387791, 32.898033, 39.299255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118736, 32.459244, 39.346512>,  <35.448025, 32.210754, 39.180862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118736, 32.459244, 39.346512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867352, 32.738560, 39.483578>,  <35.716518, 32.906151, 39.565819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867352, 32.738560, 39.483578>,  <36.118736, 32.459244, 39.346512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867352, 32.738560, 39.483578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471086, -0.008861, 0.882043,
		0.618958, 0.715760, -0.323386,
		-0.628465, 0.698290, 0.342669,
		35.678810, 32.948048, 39.586380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600803, 32.880039, 39.709854>,  <36.118736, 32.459244, 39.346512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600803, 32.880039, 39.709854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232788, 32.939266, 39.854961>,  <36.011978, 32.974800, 39.942028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232788, 32.939266, 39.854961>,  <36.600803, 32.880039, 39.709854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232788, 32.939266, 39.854961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368624, 0.013237, 0.929484,
		0.132820, 0.988889, -0.066758,
		-0.920041, 0.148063, 0.362770,
		35.956776, 32.983685, 39.963791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677063, 33.342293, 40.204144>,  <36.600803, 32.880039, 39.709854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677063, 33.342293, 40.204144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306400, 33.210938, 40.277328>,  <36.084003, 33.132126, 40.321239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306400, 33.210938, 40.277328>,  <36.677063, 33.342293, 40.204144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306400, 33.210938, 40.277328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186618, 0.020635, 0.982216,
		-0.326323, 0.944318, 0.042162,
		-0.926654, -0.328387, 0.182960,
		36.028404, 33.112423, 40.332218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522186, 33.730961, 40.774323>,  <36.677063, 33.342293, 40.204144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522186, 33.730961, 40.774323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287121, 33.407372, 40.768398>,  <36.146084, 33.213219, 40.764843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287121, 33.407372, 40.768398>,  <36.522186, 33.730961, 40.774323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287121, 33.407372, 40.768398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060731, -0.062350, 0.996205,
		-0.806826, 0.584530, 0.085770,
		-0.587660, -0.808973, -0.014807,
		36.110825, 33.164680, 40.763958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928066, 33.888390, 41.194420>,  <36.522186, 33.730961, 40.774323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928066, 33.888390, 41.194420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975807, 33.491623, 41.177204>,  <36.004452, 33.253563, 41.166874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975807, 33.491623, 41.177204>,  <35.928066, 33.888390, 41.194420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975807, 33.491623, 41.177204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075477, -0.034162, 0.996562,
		-0.989978, -0.122194, 0.070789,
		0.119356, -0.991918, -0.043043,
		36.011616, 33.194046, 41.164291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450424, 33.613827, 41.700745>,  <35.928066, 33.888390, 41.194420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450424, 33.613827, 41.700745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721008, 33.324184, 41.646976>,  <35.883358, 33.150398, 41.614716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721008, 33.324184, 41.646976>,  <35.450424, 33.613827, 41.700745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721008, 33.324184, 41.646976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002781, -0.185029, 0.982729,
		-0.736474, -0.664403, -0.127178,
		0.676460, -0.724108, -0.134422,
		35.923946, 33.106953, 41.606651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202343, 33.035599, 42.062489>,  <35.450424, 33.613827, 41.700745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202343, 33.035599, 42.062489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598652, 32.998966, 42.022541>,  <35.836437, 32.976986, 41.998573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598652, 32.998966, 42.022541>,  <35.202343, 33.035599, 42.062489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598652, 32.998966, 42.022541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078102, -0.216320, 0.973194,
		-0.110731, -0.972018, -0.207172,
		0.990777, -0.091582, -0.099869,
		35.895885, 32.971489, 41.992580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402958, 32.434956, 42.496681>,  <35.202343, 33.035599, 42.062489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402958, 32.434956, 42.496681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753506, 32.616837, 42.433155>,  <35.963833, 32.725964, 42.395039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753506, 32.616837, 42.433155>,  <35.402958, 32.434956, 42.496681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753506, 32.616837, 42.433155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262302, -0.174032, 0.949163,
		0.403949, -0.873474, -0.271786,
		0.876369, 0.454703, -0.158814,
		36.016415, 32.753246, 42.385509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933666, 31.970173, 42.806873>,  <35.402958, 32.434956, 42.496681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933666, 31.970173, 42.806873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121685, 32.321732, 42.774384>,  <36.234497, 32.532665, 42.754890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121685, 32.321732, 42.774384>,  <35.933666, 31.970173, 42.806873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121685, 32.321732, 42.774384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485547, -0.180629, 0.855347,
		0.737089, -0.441491, -0.511649,
		0.470047, 0.878896, -0.081225,
		36.262699, 32.585400, 42.750015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651958, 31.761295, 42.990963>,  <35.933666, 31.970173, 42.806873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651958, 31.761295, 42.990963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659554, 32.159958, 43.022758>,  <36.664112, 32.399155, 43.041836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659554, 32.159958, 43.022758>,  <36.651958, 31.761295, 42.990963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659554, 32.159958, 43.022758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556347, -0.076589, 0.827413,
		0.830733, 0.028512, -0.555941,
		0.018988, 0.996655, 0.079487,
		36.665249, 32.458954, 43.046604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352669, 31.947863, 43.210461>,  <36.651958, 31.761295, 42.990963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352669, 31.947863, 43.210461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134476, 32.264633, 43.320225>,  <37.003559, 32.454697, 43.386082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134476, 32.264633, 43.320225>,  <37.352669, 31.947863, 43.210461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134476, 32.264633, 43.320225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402486, -0.039674, 0.914566,
		0.735157, 0.609326, -0.297098,
		-0.545481, 0.791927, 0.274412,
		36.970833, 32.502213, 43.402550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807278, 32.349167, 42.885098>,  <37.352669, 31.947863, 43.210461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807278, 32.349167, 42.885098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167915, 32.489002, 42.783188>,  <38.384300, 32.572903, 42.722042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167915, 32.489002, 42.783188>,  <37.807278, 32.349167, 42.885098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167915, 32.489002, 42.783188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272210, 0.000766, -0.962237,
		-0.336194, 0.936902, 0.095853,
		0.901596, 0.349591, -0.254777,
		38.438393, 32.593880, 42.706757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647652, 32.805500, 42.405033>,  <37.807278, 32.349167, 42.885098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647652, 32.805500, 42.405033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028786, 32.700336, 42.344395>,  <38.257465, 32.637238, 42.308010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028786, 32.700336, 42.344395>,  <37.647652, 32.805500, 42.405033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028786, 32.700336, 42.344395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138047, 0.069379, -0.987993,
		0.270271, 0.962323, 0.029813,
		0.952836, -0.262910, -0.151597,
		38.314636, 32.621464, 42.298916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962124, 33.250408, 41.778496>,  <37.647652, 32.805500, 42.405033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962124, 33.250408, 41.778496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211071, 32.943714, 41.841465>,  <38.360439, 32.759697, 41.879246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211071, 32.943714, 41.841465>,  <37.962124, 33.250408, 41.778496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211071, 32.943714, 41.841465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028209, -0.222956, -0.974420,
		0.782220, 0.602003, -0.160388,
		0.622363, -0.766735, 0.157419,
		38.397781, 32.713692, 41.888691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510571, 33.259041, 41.331059>,  <37.962124, 33.250408, 41.778496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510571, 33.259041, 41.331059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498272, 32.869839, 41.422543>,  <38.490894, 32.636318, 41.477432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498272, 32.869839, 41.422543>,  <38.510571, 33.259041, 41.331059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498272, 32.869839, 41.422543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012671, -0.228422, -0.973480,
		0.999447, -0.032825, -0.005307,
		-0.030743, -0.973009, 0.228711,
		38.489048, 32.577934, 41.491158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094303, 32.923660, 40.942528>,  <38.510571, 33.259041, 41.331059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094303, 32.923660, 40.942528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803562, 32.660782, 41.022308>,  <38.629116, 32.503056, 41.070175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803562, 32.660782, 41.022308>,  <39.094303, 32.923660, 40.942528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803562, 32.660782, 41.022308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060249, -0.350302, -0.934697,
		0.684144, -0.667372, 0.294214,
		-0.726854, -0.657193, 0.199449,
		38.585506, 32.463623, 41.082142>
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
