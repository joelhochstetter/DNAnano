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
	<24.108812, 34.957909, 34.652592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438234, 35.025703, 34.869122>,  <24.635887, 35.066380, 34.999039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438234, 35.025703, 34.869122>,  <24.108812, 34.957909, 34.652592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.438234, 35.025703, 34.869122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453997, 0.375181, -0.808162,
		-0.340070, 0.911325, 0.232034,
		0.823553, 0.169489, 0.541326,
		24.685301, 35.076550, 35.031521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.396032, 35.658569, 34.497017>,  <24.108812, 34.957909, 34.652592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.396032, 35.658569, 34.497017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693377, 35.403187, 34.576805>,  <24.871782, 35.249958, 34.624680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.693377, 35.403187, 34.576805>,  <24.396032, 35.658569, 34.497017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693377, 35.403187, 34.576805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495593, 0.325431, -0.805284,
		0.449225, 0.697472, 0.558328,
		0.743360, -0.638457, 0.199471,
		24.916384, 35.211651, 34.636646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073921, 36.023457, 34.518562>,  <24.396032, 35.658569, 34.497017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073921, 36.023457, 34.518562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130760, 35.639614, 34.421432>,  <25.164864, 35.409309, 34.363155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130760, 35.639614, 34.421432>,  <25.073921, 36.023457, 34.518562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130760, 35.639614, 34.421432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408025, 0.280286, -0.868882,
		0.901844, 0.024390, 0.431372,
		0.142099, -0.959607, -0.242823,
		25.173389, 35.351730, 34.348587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900791, 35.908665, 34.368656>,  <25.073921, 36.023457, 34.518562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900791, 35.908665, 34.368656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650124, 35.651138, 34.193024>,  <25.499723, 35.496624, 34.087646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650124, 35.651138, 34.193024>,  <25.900791, 35.908665, 34.368656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650124, 35.651138, 34.193024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385034, 0.234056, -0.892730,
		0.677521, -0.728506, 0.101215,
		-0.626669, -0.643815, -0.439077,
		25.462122, 35.457993, 34.061302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306868, 35.663227, 33.848366>,  <25.900791, 35.908665, 34.368656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306868, 35.663227, 33.848366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928753, 35.578331, 33.749256>,  <25.701885, 35.527393, 33.689789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928753, 35.578331, 33.749256>,  <26.306868, 35.663227, 33.848366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928753, 35.578331, 33.749256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169991, 0.327814, -0.929323,
		0.278457, -0.920595, -0.273800,
		-0.945286, -0.212233, -0.247775,
		25.645168, 35.514660, 33.674923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263500, 35.294197, 33.301975>,  <26.306868, 35.663227, 33.848366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263500, 35.294197, 33.301975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903055, 35.467346, 33.311928>,  <25.686789, 35.571236, 33.317902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903055, 35.467346, 33.311928>,  <26.263500, 35.294197, 33.301975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903055, 35.467346, 33.311928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155105, 0.375412, -0.913788,
		-0.404895, -0.819565, -0.405429,
		-0.901112, 0.432872, 0.024884,
		25.632721, 35.597206, 33.319393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895185, 35.166325, 32.674213>,  <26.263500, 35.294197, 33.301975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895185, 35.166325, 32.674213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725483, 35.499432, 32.816479>,  <25.623661, 35.699295, 32.901840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725483, 35.499432, 32.816479>,  <25.895185, 35.166325, 32.674213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725483, 35.499432, 32.816479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060389, 0.365873, -0.928703,
		-0.903526, -0.415487, -0.104933,
		-0.424256, 0.832771, 0.355667,
		25.598206, 35.749264, 32.923180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204021, 35.263317, 32.325153>,  <25.895185, 35.166325, 32.674213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204021, 35.263317, 32.325153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379051, 35.597725, 32.457573>,  <25.484070, 35.798370, 32.537025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.379051, 35.597725, 32.457573>,  <25.204021, 35.263317, 32.325153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379051, 35.597725, 32.457573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101291, 0.411650, -0.905695,
		-0.893459, 0.362778, 0.264809,
		0.437575, 0.836024, 0.331046,
		25.510324, 35.848534, 32.556889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.853729, 35.892170, 31.882290>,  <25.204021, 35.263317, 32.325153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.853729, 35.892170, 31.882290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201372, 36.034660, 32.019550>,  <25.409958, 36.120155, 32.101906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201372, 36.034660, 32.019550>,  <24.853729, 35.892170, 31.882290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201372, 36.034660, 32.019550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132170, 0.501276, -0.855134,
		-0.476634, 0.788559, 0.388581,
		0.869109, 0.356227, 0.343149,
		25.462105, 36.141529, 32.122494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.822987, 36.642933, 31.816599>,  <24.853729, 35.892170, 31.882290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.822987, 36.642933, 31.816599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207737, 36.535763, 31.838543>,  <25.438587, 36.471462, 31.851709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207737, 36.535763, 31.838543>,  <24.822987, 36.642933, 31.816599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207737, 36.535763, 31.838543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170767, 0.431717, -0.885697,
		0.213615, 0.861300, 0.461011,
		0.961877, -0.267924, 0.054860,
		25.496300, 36.455387, 31.855001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.261402, 37.315498, 31.767609>,  <24.822987, 36.642933, 31.816599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.261402, 37.315498, 31.767609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449656, 36.986721, 31.639290>,  <25.562607, 36.789455, 31.562298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449656, 36.986721, 31.639290>,  <25.261402, 37.315498, 31.767609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449656, 36.986721, 31.639290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239393, 0.468898, -0.850192,
		0.849232, 0.323332, 0.417447,
		0.470634, -0.821944, -0.320799,
		25.590845, 36.740139, 31.543051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760454, 37.599243, 31.243212>,  <25.261402, 37.315498, 31.767609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760454, 37.599243, 31.243212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765688, 37.203907, 31.182541>,  <25.768827, 36.966705, 31.146139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765688, 37.203907, 31.182541>,  <25.760454, 37.599243, 31.243212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765688, 37.203907, 31.182541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272191, 0.149483, -0.950562,
		0.962154, -0.028848, 0.270974,
		0.013084, -0.988343, -0.151678,
		25.769613, 36.907406, 31.137037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992376, 37.441372, 30.582460>,  <25.760454, 37.599243, 31.243212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992376, 37.441372, 30.582460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043879, 37.195328, 30.271317>,  <26.074780, 37.047703, 30.084631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043879, 37.195328, 30.271317>,  <25.992376, 37.441372, 30.582460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043879, 37.195328, 30.271317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099403, -0.772433, 0.627269,
		-0.986682, -0.158085, -0.038310,
		0.128754, -0.615107, -0.777860,
		26.082504, 37.010796, 30.037958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442776, 37.035713, 30.498920>,  <25.992376, 37.441372, 30.582460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442776, 37.035713, 30.498920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787991, 36.860947, 30.397518>,  <25.995119, 36.756084, 30.336678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787991, 36.860947, 30.397518>,  <25.442776, 37.035713, 30.498920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787991, 36.860947, 30.397518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099633, -0.639232, 0.762532,
		-0.495213, -0.632837, -0.595215,
		0.863039, -0.436919, -0.253505,
		26.046902, 36.729870, 30.321466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.273424, 36.305042, 30.514385>,  <25.442776, 37.035713, 30.498920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.273424, 36.305042, 30.514385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647146, 36.425987, 30.589911>,  <25.871380, 36.498554, 30.635225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647146, 36.425987, 30.589911>,  <25.273424, 36.305042, 30.514385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647146, 36.425987, 30.589911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084335, -0.327143, 0.941204,
		0.346350, -0.895297, -0.280152,
		0.934307, 0.302360, 0.188811,
		25.927439, 36.516693, 30.646553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671265, 35.789608, 30.895630>,  <25.273424, 36.305042, 30.514385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671265, 35.789608, 30.895630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831003, 36.141193, 30.999891>,  <25.926846, 36.352146, 31.062449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831003, 36.141193, 30.999891>,  <25.671265, 35.789608, 30.895630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831003, 36.141193, 30.999891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085168, -0.247510, 0.965135,
		0.912836, -0.407622, -0.023982,
		0.399345, 0.878967, 0.260652,
		25.950808, 36.404884, 31.078087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298004, 35.662579, 31.265570>,  <25.671265, 35.789608, 30.895630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298004, 35.662579, 31.265570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113230, 36.007061, 31.350368>,  <26.002365, 36.213749, 31.401247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113230, 36.007061, 31.350368>,  <26.298004, 35.662579, 31.265570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113230, 36.007061, 31.350368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126516, -0.300565, 0.945333,
		0.877843, 0.409862, 0.247798,
		-0.461936, 0.861205, 0.211995,
		25.974649, 36.265423, 31.413967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661837, 35.934143, 31.872168>,  <26.298004, 35.662579, 31.265570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661837, 35.934143, 31.872168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303982, 36.112373, 31.858963>,  <26.089270, 36.219311, 31.851040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303982, 36.112373, 31.858963>,  <26.661837, 35.934143, 31.872168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303982, 36.112373, 31.858963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132891, -0.194829, 0.971793,
		0.426574, 0.873788, 0.233514,
		-0.894636, 0.445574, -0.033010,
		26.035591, 36.246044, 31.849060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679691, 36.402344, 32.430466>,  <26.661837, 35.934143, 31.872168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679691, 36.402344, 32.430466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292316, 36.339199, 32.353306>,  <26.059891, 36.301311, 32.307011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292316, 36.339199, 32.353306>,  <26.679691, 36.402344, 32.430466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292316, 36.339199, 32.353306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147487, -0.260956, 0.954017,
		-0.200941, 0.952356, 0.229437,
		-0.968437, -0.157862, -0.192897,
		26.001785, 36.291840, 32.295437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310234, 36.740108, 32.935795>,  <26.679691, 36.402344, 32.430466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310234, 36.740108, 32.935795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064011, 36.451111, 32.809879>,  <25.916277, 36.277714, 32.734329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064011, 36.451111, 32.809879>,  <26.310234, 36.740108, 32.935795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064011, 36.451111, 32.809879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240987, -0.207741, 0.948034,
		-0.750340, 0.659433, -0.046234,
		-0.615560, -0.722490, -0.314792,
		25.879343, 36.234364, 32.715443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651461, 36.928459, 32.934006>,  <26.310234, 36.740108, 32.935795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651461, 36.928459, 32.934006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463949, 36.596817, 32.812126>,  <25.351442, 36.397831, 32.738998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463949, 36.596817, 32.812126>,  <25.651461, 36.928459, 32.934006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463949, 36.596817, 32.812126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196916, -0.434353, 0.878955,
		-0.861088, 0.352035, 0.366878,
		-0.468777, -0.829101, -0.304694,
		25.323317, 36.348087, 32.720718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200954, 36.851734, 33.452148>,  <25.651461, 36.928459, 32.934006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200954, 36.851734, 33.452148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312691, 36.511127, 33.274662>,  <25.379732, 36.306763, 33.168171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312691, 36.511127, 33.274662>,  <25.200954, 36.851734, 33.452148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312691, 36.511127, 33.274662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305925, -0.359099, 0.881735,
		-0.910153, -0.382047, 0.160191,
		0.279340, -0.851520, -0.443713,
		25.396492, 36.255672, 33.141548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751631, 36.209908, 33.822311>,  <25.200954, 36.851734, 33.452148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751631, 36.209908, 33.822311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120758, 36.153393, 33.678951>,  <25.342234, 36.119484, 33.592937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120758, 36.153393, 33.678951>,  <24.751631, 36.209908, 33.822311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.120758, 36.153393, 33.678951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304252, -0.303363, 0.902996,
		-0.236302, -0.942343, -0.236963,
		0.922817, -0.141284, -0.358395,
		25.397604, 36.111008, 33.571434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.482523, 35.881218, 33.165012>,  <24.751631, 36.209908, 33.822311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.482523, 35.881218, 33.165012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836029, 35.695175, 33.185535>,  <25.048132, 35.583549, 33.197849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836029, 35.695175, 33.185535>,  <24.482523, 35.881218, 33.165012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.836029, 35.695175, 33.185535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280996, -0.439838, 0.852985,
		-0.374163, -0.768256, -0.519408,
		0.883766, -0.465107, 0.051306,
		25.101158, 35.555641, 33.200928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357971, 35.105637, 33.385078>,  <24.482523, 35.881218, 33.165012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357971, 35.105637, 33.385078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742373, 35.193604, 33.452145>,  <24.973013, 35.246384, 33.492382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742373, 35.193604, 33.452145>,  <24.357971, 35.105637, 33.385078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.742373, 35.193604, 33.452145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056857, -0.436214, 0.898045,
		0.270629, -0.872557, -0.406700,
		0.961003, 0.219914, 0.167663,
		25.030674, 35.259579, 33.502445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.728720, 34.450665, 33.623802>,  <24.357971, 35.105637, 33.385078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.728720, 34.450665, 33.623802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958088, 34.756981, 33.740253>,  <25.095709, 34.940769, 33.810123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958088, 34.756981, 33.740253>,  <24.728720, 34.450665, 33.623802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958088, 34.756981, 33.740253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010657, -0.348348, 0.937305,
		0.819193, -0.540571, -0.191588,
		0.573419, 0.765792, 0.291125,
		25.130114, 34.986717, 33.827591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488216, 34.261101, 33.834995>,  <24.728720, 34.450665, 33.623802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488216, 34.261101, 33.834995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391653, 34.596069, 34.031139>,  <25.333715, 34.797050, 34.148827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391653, 34.596069, 34.031139>,  <25.488216, 34.261101, 33.834995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391653, 34.596069, 34.031139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040749, -0.513603, 0.857060,
		0.969568, 0.186919, 0.158111,
		-0.241407, 0.837421, 0.490356,
		25.319231, 34.847294, 34.178246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692904, 33.891670, 34.466972>,  <25.488216, 34.261101, 33.834995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692904, 33.891670, 34.466972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899956, 33.556408, 34.535728>,  <26.024187, 33.355251, 34.576984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899956, 33.556408, 34.535728>,  <25.692904, 33.891670, 34.466972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899956, 33.556408, 34.535728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264948, -0.034006, -0.963663,
		0.813547, 0.544366, 0.204466,
		0.517632, -0.838158, 0.171895,
		26.055246, 33.304962, 34.587296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441978, 34.044056, 34.204578>,  <25.692904, 33.891670, 34.466972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441978, 34.044056, 34.204578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334879, 33.658749, 34.196419>,  <26.270618, 33.427563, 34.191525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334879, 33.658749, 34.196419>,  <26.441978, 34.044056, 34.204578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334879, 33.658749, 34.196419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143110, -0.018826, -0.989528,
		0.952801, -0.267865, 0.142894,
		-0.267750, -0.963272, -0.020397,
		26.254555, 33.369766, 34.190300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000698, 33.962639, 34.822453>,  <26.441978, 34.044056, 34.204578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000698, 33.962639, 34.822453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056786, 33.685829, 35.105705>,  <27.090437, 33.519745, 35.275658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056786, 33.685829, 35.105705>,  <27.000698, 33.962639, 34.822453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056786, 33.685829, 35.105705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442277, -0.596099, -0.670117,
		0.885850, 0.407150, 0.222483,
		0.140217, -0.692022, 0.708127,
		27.098850, 33.478222, 35.318142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598761, 33.625847, 34.694969>,  <27.000698, 33.962639, 34.822453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598761, 33.625847, 34.694969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403185, 33.347340, 34.905170>,  <27.285839, 33.180237, 35.031292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403185, 33.347340, 34.905170>,  <27.598761, 33.625847, 34.694969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403185, 33.347340, 34.905170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268440, -0.693285, -0.668802,
		0.829986, -0.185939, 0.525880,
		-0.488941, -0.696264, 0.525503,
		27.256502, 33.138462, 35.062820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082495, 33.035141, 34.628433>,  <27.598761, 33.625847, 34.694969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082495, 33.035141, 34.628433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390261, 33.127056, 34.866829>,  <28.574921, 33.182205, 35.009865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390261, 33.127056, 34.866829>,  <28.082495, 33.035141, 34.628433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390261, 33.127056, 34.866829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328885, -0.657347, 0.678033,
		0.547575, -0.717699, -0.430198,
		0.769413, 0.229788, 0.595987,
		28.621084, 33.195992, 35.045624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308096, 32.324467, 34.888058>,  <28.082495, 33.035141, 34.628433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308096, 32.324467, 34.888058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476580, 32.573570, 35.151802>,  <28.577669, 32.723034, 35.310047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476580, 32.573570, 35.151802>,  <28.308096, 32.324467, 34.888058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476580, 32.573570, 35.151802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221262, -0.634470, 0.740602,
		0.879561, -0.457838, -0.129451,
		0.421208, 0.622762, 0.659357,
		28.602942, 32.760399, 35.349609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779486, 31.965256, 35.221611>,  <28.308096, 32.324467, 34.888058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779486, 31.965256, 35.221611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624407, 32.257690, 35.446182>,  <28.531359, 32.433151, 35.580925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624407, 32.257690, 35.446182>,  <28.779486, 31.965256, 35.221611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624407, 32.257690, 35.446182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179778, -0.657342, 0.731835,
		0.904085, 0.182799, 0.386284,
		-0.387700, 0.731086, 0.561429,
		28.508097, 32.477016, 35.614613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103722, 32.038322, 35.826645>,  <28.779486, 31.965256, 35.221611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103722, 32.038322, 35.826645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728861, 32.173264, 35.862301>,  <28.503944, 32.254227, 35.883694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728861, 32.173264, 35.862301>,  <29.103722, 32.038322, 35.826645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728861, 32.173264, 35.862301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161245, -0.645248, 0.746763,
		0.309435, 0.685456, 0.659090,
		-0.937150, 0.337350, 0.089136,
		28.447716, 32.274467, 35.889042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020761, 32.088303, 36.590523>,  <29.103722, 32.038322, 35.826645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020761, 32.088303, 36.590523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682222, 32.045296, 36.381859>,  <28.479099, 32.019489, 36.256660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682222, 32.045296, 36.381859>,  <29.020761, 32.088303, 36.590523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682222, 32.045296, 36.381859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289613, -0.729077, 0.620138,
		-0.447011, 0.675934, 0.585914,
		-0.846348, -0.107520, -0.521664,
		28.428318, 32.013039, 36.225361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282026, 32.725372, 36.194267>,  <29.020761, 32.088303, 36.590523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282026, 32.725372, 36.194267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941906, 32.830036, 36.376923>,  <28.737833, 32.892834, 36.486515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941906, 32.830036, 36.376923>,  <29.282026, 32.725372, 36.194267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941906, 32.830036, 36.376923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013589, -0.878281, 0.477952,
		0.526118, 0.400199, 0.750360,
		-0.850303, 0.261656, 0.456641,
		28.686815, 32.908531, 36.513916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366995, 32.677681, 36.925632>,  <29.282026, 32.725372, 36.194267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366995, 32.677681, 36.925632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987679, 32.617691, 36.813740>,  <28.760088, 32.581699, 36.746605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987679, 32.617691, 36.813740>,  <29.366995, 32.677681, 36.925632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987679, 32.617691, 36.813740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011749, -0.864142, 0.503110,
		-0.317183, 0.480382, 0.817697,
		-0.948292, -0.149971, -0.279735,
		28.703192, 32.572701, 36.729820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990519, 32.721264, 37.557674>,  <29.366995, 32.677681, 36.925632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990519, 32.721264, 37.557674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798212, 32.502701, 37.283360>,  <28.682827, 32.371563, 37.118771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798212, 32.502701, 37.283360>,  <28.990519, 32.721264, 37.557674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798212, 32.502701, 37.283360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082061, -0.750637, 0.655599,
		-0.873000, 0.371468, 0.316043,
		-0.480768, -0.546403, -0.685789,
		28.653982, 32.338779, 37.077621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968601, 31.963018, 37.443069>,  <28.990519, 32.721264, 37.557674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968601, 31.963018, 37.443069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048565, 31.792120, 37.795773>,  <29.096544, 31.689581, 38.007393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048565, 31.792120, 37.795773>,  <28.968601, 31.963018, 37.443069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048565, 31.792120, 37.795773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243974, 0.849874, 0.467109,
		-0.948954, -0.308506, 0.065662,
		0.199910, -0.427245, 0.881758,
		29.108538, 31.663946, 38.060299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060900, 31.189919, 37.540451>,  <28.968601, 31.963018, 37.443069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060900, 31.189919, 37.540451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668625, 31.164248, 37.466553>,  <28.433260, 31.148844, 37.422215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668625, 31.164248, 37.466553>,  <29.060900, 31.189919, 37.540451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668625, 31.164248, 37.466553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041694, 0.854301, -0.518104,
		0.191080, -0.515801, -0.835127,
		-0.980689, -0.064179, -0.184746,
		28.374418, 31.144993, 37.411129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948637, 31.094336, 36.805561>,  <29.060900, 31.189919, 37.540451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948637, 31.094336, 36.805561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645416, 31.278536, 36.990295>,  <28.463484, 31.389057, 37.101135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645416, 31.278536, 36.990295>,  <28.948637, 31.094336, 36.805561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645416, 31.278536, 36.990295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094345, 0.778110, -0.621002,
		-0.645334, -0.427180, -0.633294,
		-0.758052, 0.460502, 0.461839,
		28.418001, 31.416687, 37.128845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531549, 31.367662, 36.271877>,  <28.948637, 31.094336, 36.805561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531549, 31.367662, 36.271877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441051, 31.565947, 36.607277>,  <28.386753, 31.684917, 36.808517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441051, 31.565947, 36.607277>,  <28.531549, 31.367662, 36.271877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441051, 31.565947, 36.607277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017663, 0.862768, -0.505292,
		-0.973910, -0.099509, -0.203953,
		-0.226245, 0.495711, 0.838501,
		28.373178, 31.714661, 36.858826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884035, 31.645075, 36.214432>,  <28.531549, 31.367662, 36.271877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884035, 31.645075, 36.214432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101686, 31.865864, 36.467178>,  <28.232277, 31.998337, 36.618828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101686, 31.865864, 36.467178>,  <27.884035, 31.645075, 36.214432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101686, 31.865864, 36.467178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005059, 0.755260, -0.655406,
		-0.838988, 0.353427, 0.413749,
		0.544126, 0.551971, 0.631866,
		28.264925, 32.031456, 36.656738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565454, 32.285229, 36.251129>,  <27.884035, 31.645075, 36.214432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565454, 32.285229, 36.251129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932886, 32.367203, 36.386314>,  <28.153345, 32.416386, 36.467426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932886, 32.367203, 36.386314>,  <27.565454, 32.285229, 36.251129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932886, 32.367203, 36.386314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055731, 0.779371, -0.624079,
		-0.391291, 0.592100, 0.704492,
		0.918578, 0.204935, 0.337960,
		28.208460, 32.428684, 36.487701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647717, 32.998550, 36.252407>,  <27.565454, 32.285229, 36.251129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647717, 32.998550, 36.252407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015505, 32.841335, 36.248577>,  <28.236177, 32.747005, 36.246277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015505, 32.841335, 36.248577>,  <27.647717, 32.998550, 36.252407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015505, 32.841335, 36.248577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256565, 0.618306, -0.742881,
		0.297903, 0.680601, 0.669355,
		0.919472, -0.393040, -0.009577,
		28.291346, 32.723423, 36.245705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198128, 33.597752, 36.350266>,  <27.647717, 32.998550, 36.252407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198128, 33.597752, 36.350266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307100, 33.275169, 36.140347>,  <28.372484, 33.081619, 36.014397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307100, 33.275169, 36.140347>,  <28.198128, 33.597752, 36.350266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307100, 33.275169, 36.140347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358106, 0.591225, -0.722643,
		0.893052, 0.008938, 0.449865,
		0.272430, -0.806457, -0.524794,
		28.388830, 33.033234, 35.982910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854847, 33.712994, 36.202213>,  <28.198128, 33.597752, 36.350266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854847, 33.712994, 36.202213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776417, 33.420269, 35.941139>,  <28.729359, 33.244633, 35.784492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776417, 33.420269, 35.941139>,  <28.854847, 33.712994, 36.202213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776417, 33.420269, 35.941139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581593, 0.449106, -0.678272,
		0.789496, -0.512592, 0.337559,
		-0.196077, -0.731815, -0.652687,
		28.717594, 33.200726, 35.745335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517838, 33.563835, 35.828453>,  <28.854847, 33.712994, 36.202213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517838, 33.563835, 35.828453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218208, 33.465595, 35.582340>,  <29.038431, 33.406651, 35.434673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218208, 33.465595, 35.582340>,  <29.517838, 33.563835, 35.828453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218208, 33.465595, 35.582340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344562, 0.648810, -0.678471,
		0.565831, -0.720227, -0.401383,
		-0.749074, -0.245599, -0.615279,
		28.993486, 33.391914, 35.397755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877630, 33.433952, 35.221344>,  <29.517838, 33.563835, 35.828453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877630, 33.433952, 35.221344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496378, 33.515842, 35.132229>,  <29.267628, 33.564976, 35.078762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496378, 33.515842, 35.132229>,  <29.877630, 33.433952, 35.221344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496378, 33.515842, 35.132229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291847, 0.816306, -0.498468,
		0.079813, -0.540124, -0.837793,
		-0.953129, 0.204723, -0.222785,
		29.210440, 33.577259, 35.065392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402426, 33.825283, 35.240715>,  <29.877630, 33.433952, 35.221344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402426, 33.825283, 35.240715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502672, 34.005234, 34.897831>,  <30.562820, 34.113205, 34.692101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502672, 34.005234, 34.897831>,  <30.402426, 33.825283, 35.240715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502672, 34.005234, 34.897831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129670, 0.893086, 0.430793,
		0.959363, 0.003190, 0.282158,
		0.250617, 0.449874, -0.857207,
		30.577858, 34.140198, 34.640667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124985, 34.158882, 35.309074>,  <30.402426, 33.825283, 35.240715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124985, 34.158882, 35.309074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857681, 34.309551, 35.052464>,  <30.697300, 34.399952, 34.898499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857681, 34.309551, 35.052464>,  <31.124985, 34.158882, 35.309074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857681, 34.309551, 35.052464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152056, 0.774980, 0.613421,
		0.728225, 0.507471, -0.460611,
		-0.668257, 0.376669, -0.641524,
		30.657204, 34.422550, 34.860008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549543, 33.648464, 35.156517>,  <31.124985, 34.158882, 35.309074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549543, 33.648464, 35.156517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621483, 34.034134, 35.234512>,  <31.664646, 34.265537, 35.281311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621483, 34.034134, 35.234512>,  <31.549543, 33.648464, 35.156517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621483, 34.034134, 35.234512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857888, -0.056742, -0.510695,
		-0.481335, 0.259129, -0.837358,
		0.179849, 0.964175, 0.194992,
		31.675438, 34.323387, 35.293011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742208, 33.581474, 35.829891>,  <31.549543, 33.648464, 35.156517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742208, 33.581474, 35.829891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127686, 33.577389, 35.723164>,  <32.358971, 33.574936, 35.659126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127686, 33.577389, 35.723164>,  <31.742208, 33.581474, 35.829891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127686, 33.577389, 35.723164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265396, -0.073207, 0.961356,
		-0.029351, -0.997265, -0.067838,
		0.963693, -0.010213, -0.266819,
		32.416794, 33.574326, 35.643120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007244, 32.831120, 36.142338>,  <31.742208, 33.581474, 35.829891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007244, 32.831120, 36.142338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247746, 33.149990, 36.164265>,  <32.392048, 33.341312, 36.177422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247746, 33.149990, 36.164265>,  <32.007244, 32.831120, 36.142338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247746, 33.149990, 36.164265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001737, -0.067299, 0.997731,
		0.799056, -0.599985, -0.039079,
		0.601254, 0.797176, 0.054818,
		32.428123, 33.389141, 36.180710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554882, 32.692429, 36.569008>,  <32.007244, 32.831120, 36.142338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554882, 32.692429, 36.569008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522865, 33.090988, 36.580254>,  <32.503654, 33.330124, 36.587002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522865, 33.090988, 36.580254>,  <32.554882, 32.692429, 36.569008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522865, 33.090988, 36.580254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015830, -0.026930, 0.999512,
		0.996666, 0.080443, -0.013618,
		-0.080037, 0.996395, 0.028113,
		32.498856, 33.389908, 36.588688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794338, 32.861092, 37.195850>,  <32.554882, 32.692429, 36.569008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794338, 32.861092, 37.195850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616848, 33.209946, 37.113396>,  <32.510353, 33.419258, 37.063923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616848, 33.209946, 37.113396>,  <32.794338, 32.861092, 37.195850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616848, 33.209946, 37.113396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405597, 0.009673, 0.914001,
		0.799122, 0.489177, 0.349442,
		-0.443728, 0.872131, -0.206139,
		32.483730, 33.471584, 37.051556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032021, 33.419701, 37.644588>,  <32.794338, 32.861092, 37.195850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032021, 33.419701, 37.644588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652798, 33.464600, 37.525536>,  <32.425262, 33.491539, 37.454105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652798, 33.464600, 37.525536>,  <33.032021, 33.419701, 37.644588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652798, 33.464600, 37.525536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285207, 0.114346, 0.951620,
		0.140847, 0.987080, -0.076394,
		-0.948061, 0.112244, -0.297628,
		32.368378, 33.498272, 37.436249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689381, 33.816990, 38.083126>,  <33.032021, 33.419701, 37.644588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689381, 33.816990, 38.083126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322739, 33.696171, 37.978359>,  <32.102753, 33.623680, 37.915501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322739, 33.696171, 37.978359>,  <32.689381, 33.816990, 38.083126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322739, 33.696171, 37.978359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280699, 0.019715, 0.959593,
		-0.284682, 0.953088, -0.102856,
		-0.916605, -0.302050, -0.261918,
		32.047756, 33.605556, 37.899784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211704, 34.246605, 38.378265>,  <32.689381, 33.816990, 38.083126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211704, 34.246605, 38.378265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073586, 33.871429, 38.365330>,  <31.990713, 33.646324, 38.357567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073586, 33.871429, 38.365330>,  <32.211704, 34.246605, 38.378265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073586, 33.871429, 38.365330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208868, 0.043205, 0.976989,
		-0.914955, 0.344108, -0.210823,
		-0.345298, -0.937936, -0.032342,
		31.969995, 33.590050, 38.355625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634409, 34.435844, 37.712109>,  <32.211704, 34.246605, 38.378265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634409, 34.435844, 37.712109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564125, 34.751015, 37.948174>,  <31.521955, 34.940117, 38.089813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564125, 34.751015, 37.948174>,  <31.634409, 34.435844, 37.712109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564125, 34.751015, 37.948174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020468, 0.596436, -0.802400,
		-0.984229, -0.153069, -0.088672,
		-0.175710, 0.787930, 0.590163,
		31.511412, 34.987392, 38.125221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218466, 34.788960, 37.400894>,  <31.634409, 34.435844, 37.712109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218466, 34.788960, 37.400894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424305, 35.031628, 37.643261>,  <31.547810, 35.177231, 37.788681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424305, 35.031628, 37.643261>,  <31.218466, 34.788960, 37.400894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424305, 35.031628, 37.643261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057672, 0.680577, -0.730404,
		-0.855489, 0.410809, 0.315237,
		0.514599, 0.606672, 0.605918,
		31.578684, 35.213631, 37.825035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536070, 34.211678, 36.973442>,  <31.218466, 34.788960, 37.400894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536070, 34.211678, 36.973442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886187, 34.134731, 37.150917>,  <32.096256, 34.088562, 37.257404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886187, 34.134731, 37.150917>,  <31.536070, 34.211678, 36.973442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886187, 34.134731, 37.150917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409749, -0.192293, -0.891700,
		0.256853, 0.962298, -0.089490,
		0.875290, -0.192368, 0.443692,
		32.148773, 34.077023, 37.284023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980831, 34.638332, 36.779919>,  <31.536070, 34.211678, 36.973442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980831, 34.638332, 36.779919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136154, 34.276897, 36.852303>,  <32.229347, 34.060036, 36.895733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136154, 34.276897, 36.852303>,  <31.980831, 34.638332, 36.779919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136154, 34.276897, 36.852303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226608, -0.096709, -0.969173,
		0.893234, 0.417342, 0.167208,
		0.388306, -0.903589, 0.180957,
		32.252647, 34.005821, 36.906590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613853, 34.712509, 36.702293>,  <31.980831, 34.638332, 36.779919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613853, 34.712509, 36.702293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536385, 34.324833, 36.641407>,  <32.489902, 34.092228, 36.604877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536385, 34.324833, 36.641407>,  <32.613853, 34.712509, 36.702293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536385, 34.324833, 36.641407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345499, 0.077834, -0.935185,
		0.918217, -0.233706, 0.319779,
		-0.193669, -0.969187, -0.152214,
		32.478283, 34.034077, 36.595741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063381, 34.567188, 36.268723>,  <32.613853, 34.712509, 36.702293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063381, 34.567188, 36.268723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865269, 34.222378, 36.225620>,  <32.746403, 34.015491, 36.199760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865269, 34.222378, 36.225620>,  <33.063381, 34.567188, 36.268723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865269, 34.222378, 36.225620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465545, -0.158642, -0.870690,
		0.733463, -0.481398, 0.479884,
		-0.495278, -0.862026, -0.107755,
		32.716686, 33.963772, 36.193295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507587, 33.899204, 36.340694>,  <33.063381, 34.567188, 36.268723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507587, 33.899204, 36.340694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192646, 33.885887, 36.094452>,  <33.003681, 33.877899, 35.946705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192646, 33.885887, 36.094452>,  <33.507587, 33.899204, 36.340694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192646, 33.885887, 36.094452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580364, -0.376888, -0.721895,
		-0.207982, -0.925660, 0.316064,
		-0.787350, -0.033291, -0.615606,
		32.956440, 33.875900, 35.909771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408718, 33.238800, 35.992004>,  <33.507587, 33.899204, 36.340694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408718, 33.238800, 35.992004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258595, 33.535137, 35.769188>,  <33.168522, 33.712940, 35.635498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258595, 33.535137, 35.769188>,  <33.408718, 33.238800, 35.992004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258595, 33.535137, 35.769188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582368, -0.279072, -0.763522,
		-0.721105, -0.610960, -0.326705,
		-0.375307, 0.740842, -0.557044,
		33.146004, 33.757389, 35.602074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182346, 32.821812, 35.474236>,  <33.408718, 33.238800, 35.992004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182346, 32.821812, 35.474236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189865, 33.189991, 35.318073>,  <33.194378, 33.410900, 35.224377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189865, 33.189991, 35.318073>,  <33.182346, 32.821812, 35.474236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189865, 33.189991, 35.318073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330560, -0.374241, -0.866415,
		-0.943598, -0.112769, -0.311298,
		0.018796, 0.920449, -0.390410,
		33.195503, 33.466125, 35.200951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908875, 32.674992, 34.880150>,  <33.182346, 32.821812, 35.474236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908875, 32.674992, 34.880150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108555, 33.018055, 34.830807>,  <33.228363, 33.223892, 34.801201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108555, 33.018055, 34.830807>,  <32.908875, 32.674992, 34.880150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108555, 33.018055, 34.830807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265263, -0.286797, -0.920534,
		-0.824882, 0.426814, -0.370675,
		0.499205, 0.857658, -0.123356,
		33.258316, 33.275352, 34.793800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647331, 33.089005, 34.313278>,  <32.908875, 32.674992, 34.880150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647331, 33.089005, 34.313278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029934, 33.201908, 34.342758>,  <33.259495, 33.269650, 34.360447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029934, 33.201908, 34.342758>,  <32.647331, 33.089005, 34.313278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029934, 33.201908, 34.342758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151834, -0.265968, -0.951949,
		-0.249094, 0.921733, -0.297256,
		0.956503, 0.282258, 0.073700,
		33.316883, 33.286587, 34.364868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809498, 33.342873, 33.642796>,  <32.647331, 33.089005, 34.313278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809498, 33.342873, 33.642796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187145, 33.350983, 33.774391>,  <33.413734, 33.355850, 33.853348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187145, 33.350983, 33.774391>,  <32.809498, 33.342873, 33.642796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187145, 33.350983, 33.774391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310838, -0.386806, -0.868194,
		0.109649, 0.921938, -0.371493,
		0.944117, 0.020278, 0.328986,
		33.470379, 33.357067, 33.873089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210361, 33.710434, 33.139736>,  <32.809498, 33.342873, 33.642796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210361, 33.710434, 33.139736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448017, 33.467979, 33.351242>,  <33.590611, 33.322506, 33.478146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448017, 33.467979, 33.351242>,  <33.210361, 33.710434, 33.139736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448017, 33.467979, 33.351242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364619, -0.382995, -0.848745,
		0.716971, 0.697072, -0.006543,
		0.594142, -0.606140, 0.528762,
		33.626259, 33.286137, 33.509872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906319, 33.853432, 32.954639>,  <33.210361, 33.710434, 33.139736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906319, 33.853432, 32.954639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930130, 33.489155, 33.118149>,  <33.944416, 33.270588, 33.216255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930130, 33.489155, 33.118149>,  <33.906319, 33.853432, 32.954639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930130, 33.489155, 33.118149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450233, -0.340991, -0.825237,
		0.890925, 0.233169, 0.389724,
		0.059527, -0.910690, 0.408778,
		33.947987, 33.215946, 33.240784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535805, 33.669872, 32.646351>,  <33.906319, 33.853432, 32.954639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535805, 33.669872, 32.646351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368900, 33.336037, 32.790211>,  <34.268757, 33.135735, 32.876526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368900, 33.336037, 32.790211>,  <34.535805, 33.669872, 32.646351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368900, 33.336037, 32.790211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438934, -0.531606, -0.724384,
		0.795759, -0.144391, 0.588148,
		-0.417258, -0.834593, 0.359652,
		34.243721, 33.085659, 32.898106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990631, 33.188042, 32.699821>,  <34.535805, 33.669872, 32.646351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990631, 33.188042, 32.699821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644455, 32.990753, 32.664623>,  <34.436749, 32.872379, 32.643505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644455, 32.990753, 32.664623>,  <34.990631, 33.188042, 32.699821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644455, 32.990753, 32.664623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334001, -0.437059, -0.835119,
		0.373440, -0.752136, 0.542986,
		-0.865440, -0.493225, -0.087999,
		34.384823, 32.842785, 32.638222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221214, 32.513130, 32.400829>,  <34.990631, 33.188042, 32.699821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221214, 32.513130, 32.400829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827404, 32.556171, 32.345512>,  <34.591118, 32.581997, 32.312321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827404, 32.556171, 32.345512>,  <35.221214, 32.513130, 32.400829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827404, 32.556171, 32.345512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088838, -0.373757, -0.923263,
		-0.151033, -0.921264, 0.358415,
		-0.984529, 0.107602, -0.138293,
		34.532047, 32.588451, 32.304024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999222, 31.923672, 32.160755>,  <35.221214, 32.513130, 32.400829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999222, 31.923672, 32.160755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707222, 32.176846, 32.057613>,  <34.532021, 32.328751, 31.995728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707222, 32.176846, 32.057613>,  <34.999222, 31.923672, 32.160755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707222, 32.176846, 32.057613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072419, -0.303527, -0.950067,
		-0.679598, -0.712223, 0.175738,
		-0.730001, 0.632937, -0.257855,
		34.488220, 32.366726, 31.980257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481705, 31.518324, 31.644764>,  <34.999222, 31.923672, 32.160755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481705, 31.518324, 31.644764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400028, 31.908142, 31.607737>,  <34.351021, 32.142033, 31.585520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400028, 31.908142, 31.607737>,  <34.481705, 31.518324, 31.644764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400028, 31.908142, 31.607737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253870, -0.144044, -0.956452,
		-0.945439, -0.171798, 0.276820,
		-0.204191, 0.974544, -0.092570,
		34.338772, 32.200504, 31.579966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891022, 31.591843, 31.336571>,  <34.481705, 31.518324, 31.644764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891022, 31.591843, 31.336571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072468, 31.940529, 31.262438>,  <34.181335, 32.149742, 31.217958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072468, 31.940529, 31.262438>,  <33.891022, 31.591843, 31.336571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072468, 31.940529, 31.262438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017756, -0.199079, -0.979823,
		-0.891022, 0.447751, -0.074827,
		0.453613, 0.871715, -0.185335,
		34.208553, 32.202042, 31.206837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447899, 31.823729, 30.864361>,  <33.891022, 31.591843, 31.336571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447899, 31.823729, 30.864361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787388, 32.031967, 30.827171>,  <33.991081, 32.156910, 30.804857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787388, 32.031967, 30.827171>,  <33.447899, 31.823729, 30.864361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787388, 32.031967, 30.827171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104017, -0.008034, -0.994543,
		-0.518501, 0.853766, 0.047332,
		0.848727, 0.520594, -0.092972,
		34.042007, 32.188145, 30.799280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233334, 32.488033, 30.496923>,  <33.447899, 31.823729, 30.864361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233334, 32.488033, 30.496923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620636, 32.420650, 30.423059>,  <33.853016, 32.380219, 30.378742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620636, 32.420650, 30.423059>,  <33.233334, 32.488033, 30.496923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620636, 32.420650, 30.423059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186885, 0.002684, -0.982378,
		0.165988, 0.985704, -0.028884,
		0.968257, -0.168461, -0.184659,
		33.911114, 32.370113, 30.367662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237911, 32.775471, 29.811504>,  <33.233334, 32.488033, 30.496923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237911, 32.775471, 29.811504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572517, 32.564545, 29.871067>,  <33.773281, 32.437988, 29.906805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572517, 32.564545, 29.871067>,  <33.237911, 32.775471, 29.811504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572517, 32.564545, 29.871067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018294, -0.244726, -0.969420,
		0.547635, 0.813660, -0.195071,
		0.836517, -0.527320, 0.148906,
		33.823471, 32.406349, 29.915739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727440, 32.939308, 29.284353>,  <33.237911, 32.775471, 29.811504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727440, 32.939308, 29.284353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857105, 32.587765, 29.424364>,  <33.934902, 32.376839, 29.508371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857105, 32.587765, 29.424364>,  <33.727440, 32.939308, 29.284353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857105, 32.587765, 29.424364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152096, -0.316777, -0.936226,
		0.933695, 0.356726, 0.030984,
		0.324161, -0.878862, 0.350029,
		33.954353, 32.324104, 29.529373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278355, 32.816307, 28.937141>,  <33.727440, 32.939308, 29.284353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278355, 32.816307, 28.937141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163013, 32.454388, 29.062487>,  <34.093811, 32.237236, 29.137693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163013, 32.454388, 29.062487>,  <34.278355, 32.816307, 28.937141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163013, 32.454388, 29.062487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134932, -0.362393, -0.922206,
		0.947970, -0.223636, 0.226583,
		-0.288351, -0.904797, 0.313362,
		34.076508, 32.182949, 29.156496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722061, 32.325947, 28.607525>,  <34.278355, 32.816307, 28.937141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722061, 32.325947, 28.607525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392544, 32.117138, 28.695938>,  <34.194832, 31.991852, 28.748985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392544, 32.117138, 28.695938>,  <34.722061, 32.325947, 28.607525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392544, 32.117138, 28.695938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052518, -0.317949, -0.946652,
		0.564454, -0.791453, 0.234508,
		-0.823792, -0.522025, 0.221033,
		34.145405, 31.960529, 28.762247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724964, 31.715755, 28.296627>,  <34.722061, 32.325947, 28.607525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724964, 31.715755, 28.296627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334805, 31.713741, 28.384777>,  <34.100708, 31.712534, 28.437666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334805, 31.713741, 28.384777>,  <34.724964, 31.715755, 28.296627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334805, 31.713741, 28.384777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193818, -0.456621, -0.868293,
		0.104998, -0.889647, 0.444413,
		-0.975403, -0.005034, 0.220374,
		34.042183, 31.712231, 28.450890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576447, 31.144829, 28.031586>,  <34.724964, 31.715755, 28.296627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576447, 31.144829, 28.031586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213951, 31.308077, 28.075716>,  <33.996456, 31.406027, 28.102194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213951, 31.308077, 28.075716>,  <34.576447, 31.144829, 28.031586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213951, 31.308077, 28.075716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340237, -0.549151, -0.763330,
		-0.250946, -0.729294, 0.636518,
		-0.906237, 0.408122, 0.110325,
		33.942081, 31.430513, 28.108814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102589, 30.642614, 27.829020>,  <34.576447, 31.144829, 28.031586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102589, 30.642614, 27.829020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896683, 30.983166, 27.788662>,  <33.773140, 31.187496, 27.764446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896683, 30.983166, 27.788662>,  <34.102589, 30.642614, 27.829020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896683, 30.983166, 27.788662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293848, -0.285763, -0.912137,
		-0.805404, -0.439884, 0.397275,
		-0.514760, 0.851376, -0.100896,
		33.742256, 31.238579, 27.758392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433266, 30.385706, 27.580267>,  <34.102589, 30.642614, 27.829020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433266, 30.385706, 27.580267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428181, 30.773203, 27.481169>,  <33.425129, 31.005701, 27.421709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428181, 30.773203, 27.481169>,  <33.433266, 30.385706, 27.580267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428181, 30.773203, 27.481169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479436, -0.223336, -0.848683,
		-0.877485, 0.107986, 0.467290,
		-0.012717, 0.968741, -0.247746,
		33.424366, 31.063826, 27.406845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689507, 30.609455, 27.219452>,  <33.433266, 30.385706, 27.580267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689507, 30.609455, 27.219452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976166, 30.862637, 27.102297>,  <33.148163, 31.014545, 27.032003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976166, 30.862637, 27.102297>,  <32.689507, 30.609455, 27.219452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976166, 30.862637, 27.102297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309770, -0.087381, -0.946788,
		-0.624868, 0.769241, 0.133449,
		0.716647, 0.632956, -0.292890,
		33.191158, 31.052523, 27.014429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282265, 31.039253, 26.711870>,  <32.689507, 30.609455, 27.219452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282265, 31.039253, 26.711870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674828, 31.098930, 26.663570>,  <32.910366, 31.134737, 26.634590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674828, 31.098930, 26.663570>,  <32.282265, 31.039253, 26.711870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674828, 31.098930, 26.663570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139505, 0.122376, -0.982630,
		-0.131823, 0.981206, 0.140913,
		0.981408, 0.149191, -0.120751,
		32.969250, 31.143688, 26.627346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237312, 31.562199, 26.211067>,  <32.282265, 31.039253, 26.711870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237312, 31.562199, 26.211067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602055, 31.398106, 26.205057>,  <32.820900, 31.299650, 26.201450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602055, 31.398106, 26.205057>,  <32.237312, 31.562199, 26.211067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602055, 31.398106, 26.205057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033006, 0.109756, -0.993410,
		0.409178, 0.905353, 0.113622,
		0.911857, -0.410232, -0.015027,
		32.875610, 31.275036, 26.200548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681835, 32.058208, 25.799774>,  <32.237312, 31.562199, 26.211067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681835, 32.058208, 25.799774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867092, 31.703794, 25.791267>,  <32.978245, 31.491148, 25.786163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867092, 31.703794, 25.791267>,  <32.681835, 32.058208, 25.799774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867092, 31.703794, 25.791267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165373, 0.109966, -0.980081,
		0.870720, 0.450397, 0.197456,
		0.463139, -0.886030, -0.021266,
		33.006035, 31.437984, 25.784887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374710, 32.184021, 25.433184>,  <32.681835, 32.058208, 25.799774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374710, 32.184021, 25.433184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310040, 31.789728, 25.414438>,  <33.271236, 31.553152, 25.403191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310040, 31.789728, 25.414438>,  <33.374710, 32.184021, 25.433184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310040, 31.789728, 25.414438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216731, 0.010861, -0.976171,
		0.962750, -0.167984, 0.211882,
		-0.161679, -0.985730, -0.046864,
		33.261536, 31.494009, 25.400379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002148, 31.929987, 25.059690>,  <33.374710, 32.184021, 25.433184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002148, 31.929987, 25.059690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738617, 31.630919, 25.026367>,  <33.580498, 31.451477, 25.006372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738617, 31.630919, 25.026367>,  <34.002148, 31.929987, 25.059690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738617, 31.630919, 25.026367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185975, -0.054564, -0.981038,
		0.728947, -0.661826, 0.174995,
		-0.658825, -0.747670, -0.083309,
		33.540970, 31.406618, 25.001375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365688, 31.319696, 24.736649>,  <34.002148, 31.929987, 25.059690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365688, 31.319696, 24.736649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970551, 31.285471, 24.684727>,  <33.733467, 31.264935, 24.653574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970551, 31.285471, 24.684727>,  <34.365688, 31.319696, 24.736649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970551, 31.285471, 24.684727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125481, 0.054121, -0.990619,
		0.091793, -0.994861, -0.042725,
		-0.987840, -0.085570, -0.129804,
		33.674198, 31.259802, 24.645786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269993, 30.812664, 24.185724>,  <34.365688, 31.319696, 24.736649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269993, 30.812664, 24.185724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945465, 31.046368, 24.193684>,  <33.750748, 31.186590, 24.198460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945465, 31.046368, 24.193684>,  <34.269993, 30.812664, 24.185724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945465, 31.046368, 24.193684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056953, 0.112871, -0.991976,
		-0.581817, -0.803680, -0.124850,
		-0.811323, 0.584259, 0.019898,
		33.702068, 31.221645, 24.199654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952621, 30.665991, 23.600264>,  <34.269993, 30.812664, 24.185724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952621, 30.665991, 23.600264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828613, 31.026739, 23.720606>,  <33.754208, 31.243189, 23.792810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828613, 31.026739, 23.720606>,  <33.952621, 30.665991, 23.600264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828613, 31.026739, 23.720606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243235, 0.381155, -0.891940,
		-0.919090, -0.203339, -0.337532,
		-0.310018, 0.901873, 0.300856,
		33.735607, 31.297300, 23.810863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368633, 30.954361, 23.060390>,  <33.952621, 30.665991, 23.600264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368633, 30.954361, 23.060390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503239, 31.292776, 23.225788>,  <33.584003, 31.495825, 23.325027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503239, 31.292776, 23.225788>,  <33.368633, 30.954361, 23.060390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503239, 31.292776, 23.225788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045233, 0.424075, -0.904497,
		-0.940590, 0.323082, 0.104440,
		0.336517, 0.846037, 0.413494,
		33.604195, 31.546587, 23.349836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063190, 31.371864, 22.583220>,  <33.368633, 30.954361, 23.060390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063190, 31.371864, 22.583220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309433, 31.583612, 22.816732>,  <33.457176, 31.710661, 22.956841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309433, 31.583612, 22.816732>,  <33.063190, 31.371864, 22.583220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309433, 31.583612, 22.816732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368636, 0.461300, -0.807038,
		-0.696521, 0.712017, 0.088832,
		0.615603, 0.529372, 0.583780,
		33.494114, 31.742424, 22.991867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939342, 32.082336, 22.446791>,  <33.063190, 31.371864, 22.583220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939342, 32.082336, 22.446791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304371, 32.060238, 22.608856>,  <33.523388, 32.046978, 22.706095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304371, 32.060238, 22.608856>,  <32.939342, 32.082336, 22.446791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304371, 32.060238, 22.608856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354359, 0.601304, -0.716145,
		-0.204060, 0.797108, 0.568312,
		0.912573, -0.055250, 0.405164,
		33.578144, 32.043663, 22.730406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158539, 32.771019, 22.529055>,  <32.939342, 32.082336, 22.446791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158539, 32.771019, 22.529055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478500, 32.532330, 22.503548>,  <33.670479, 32.389114, 22.488243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478500, 32.532330, 22.503548>,  <33.158539, 32.771019, 22.529055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478500, 32.532330, 22.503548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406086, 0.616447, -0.674602,
		0.441861, 0.513725, 0.735422,
		0.799909, -0.596725, -0.063767,
		33.718472, 32.353313, 22.484417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721920, 33.161285, 22.697529>,  <33.158539, 32.771019, 22.529055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721920, 33.161285, 22.697529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887894, 32.868862, 22.480869>,  <33.987480, 32.693409, 22.350874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887894, 32.868862, 22.480869>,  <33.721920, 33.161285, 22.697529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887894, 32.868862, 22.480869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437992, 0.682292, -0.585355,
		0.797490, 0.005648, 0.603306,
		0.414937, -0.731058, -0.541648,
		34.012375, 32.649544, 22.318375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377365, 33.401402, 22.552227>,  <33.721920, 33.161285, 22.697529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377365, 33.401402, 22.552227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295387, 33.107399, 22.293688>,  <34.246201, 32.931000, 22.138563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295387, 33.107399, 22.293688>,  <34.377365, 33.401402, 22.552227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295387, 33.107399, 22.293688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567367, 0.448889, -0.690357,
		0.797555, -0.508200, 0.325021,
		-0.204941, -0.735004, -0.646350,
		34.233906, 32.886898, 22.099783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934155, 33.254581, 22.165806>,  <34.377365, 33.401402, 22.552227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934155, 33.254581, 22.165806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644382, 33.113453, 21.928921>,  <34.470520, 33.028774, 21.786789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644382, 33.113453, 21.928921>,  <34.934155, 33.254581, 22.165806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644382, 33.113453, 21.928921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441113, 0.422917, -0.791556,
		0.529741, -0.834658, -0.150735,
		-0.724426, -0.352828, -0.592215,
		34.427055, 33.007607, 21.751257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227703, 32.960194, 21.521374>,  <34.934155, 33.254581, 22.165806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227703, 32.960194, 21.521374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847263, 33.038609, 21.425888>,  <34.618999, 33.085659, 21.368597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847263, 33.038609, 21.425888>,  <35.227703, 32.960194, 21.521374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847263, 33.038609, 21.425888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308535, 0.565564, -0.764816,
		-0.014925, -0.801065, -0.598391,
		-0.951096, 0.196040, -0.238715,
		34.561935, 33.097420, 21.354273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313591, 33.198891, 20.881960>,  <35.227703, 32.960194, 21.521374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313591, 33.198891, 20.881960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928890, 33.283897, 20.951090>,  <34.698071, 33.334900, 20.992569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928890, 33.283897, 20.951090>,  <35.313591, 33.198891, 20.881960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928890, 33.283897, 20.951090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030961, 0.711230, -0.702277,
		-0.272165, -0.670065, -0.690607,
		-0.961752, 0.212517, 0.172826,
		34.640366, 33.347652, 21.002937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934097, 33.389961, 20.233219>,  <35.313591, 33.198891, 20.881960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934097, 33.389961, 20.233219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762512, 33.579041, 20.541126>,  <34.659561, 33.692490, 20.725870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762512, 33.579041, 20.541126>,  <34.934097, 33.389961, 20.233219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762512, 33.579041, 20.541126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005669, 0.853547, -0.520985,
		-0.903303, -0.219121, -0.368822,
		-0.428965, 0.472698, 0.769770,
		34.633823, 33.720848, 20.772057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299667, 33.670227, 19.926573>,  <34.934097, 33.389961, 20.233219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299667, 33.670227, 19.926573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443707, 33.893219, 20.225784>,  <34.530128, 34.027012, 20.405312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443707, 33.893219, 20.225784>,  <34.299667, 33.670227, 19.926573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443707, 33.893219, 20.225784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139966, 0.825028, -0.547484,
		-0.922355, 0.092450, 0.375120,
		0.360099, 0.557478, 0.748029,
		34.551735, 34.060463, 20.450193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903301, 33.820316, 19.580112>,  <34.299667, 33.670227, 19.926573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903301, 33.820316, 19.580112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018730, 34.202095, 19.610468>,  <35.087990, 34.431160, 19.628681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018730, 34.202095, 19.610468>,  <34.903301, 33.820316, 19.580112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018730, 34.202095, 19.610468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540244, -0.096879, -0.835913,
		-0.790481, 0.282224, -0.543589,
		0.288577, 0.954444, 0.075889,
		35.105305, 34.488430, 19.633234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760643, 34.131187, 18.913794>,  <34.903301, 33.820316, 19.580112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760643, 34.131187, 18.913794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042229, 34.333736, 19.112999>,  <35.211182, 34.455265, 19.232523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042229, 34.333736, 19.112999>,  <34.760643, 34.131187, 18.913794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042229, 34.333736, 19.112999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585162, -0.016130, -0.810756,
		-0.402510, 0.862165, -0.307664,
		0.703968, 0.506370, 0.498014,
		35.253418, 34.485649, 19.262403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814777, 34.657623, 18.506084>,  <34.760643, 34.131187, 18.913794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814777, 34.657623, 18.506084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155865, 34.625641, 18.712572>,  <35.360516, 34.606453, 18.836464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155865, 34.625641, 18.712572>,  <34.814777, 34.657623, 18.506084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155865, 34.625641, 18.712572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507486, -0.107450, -0.854934,
		0.123821, 0.990991, -0.051050,
		0.852717, -0.079952, 0.516218,
		35.411678, 34.601654, 18.867437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258701, 35.218811, 18.267096>,  <34.814777, 34.657623, 18.506084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258701, 35.218811, 18.267096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419586, 34.885715, 18.419292>,  <35.516117, 34.685860, 18.510611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419586, 34.885715, 18.419292>,  <35.258701, 35.218811, 18.267096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419586, 34.885715, 18.419292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303841, -0.270629, -0.913477,
		0.863657, 0.483023, 0.144168,
		0.402215, -0.832735, 0.380493,
		35.540249, 34.635895, 18.533440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976021, 35.013969, 17.989939>,  <35.258701, 35.218811, 18.267096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976021, 35.013969, 17.989939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814510, 34.670128, 18.115189>,  <35.717606, 34.463821, 18.190338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814510, 34.670128, 18.115189>,  <35.976021, 35.013969, 17.989939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814510, 34.670128, 18.115189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257578, -0.435236, -0.862684,
		0.877849, -0.267677, 0.397153,
		-0.403776, -0.859604, 0.313123,
		35.693378, 34.412247, 18.209126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463181, 34.380871, 17.865532>,  <35.976021, 35.013969, 17.989939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463181, 34.380871, 17.865532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081192, 34.263203, 17.880959>,  <35.851997, 34.192604, 17.890215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081192, 34.263203, 17.880959>,  <36.463181, 34.380871, 17.865532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081192, 34.263203, 17.880959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137629, -0.554407, -0.820787,
		0.262830, -0.778523, 0.569931,
		-0.954975, -0.294167, 0.038567,
		35.794701, 34.174953, 17.892529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286388, 33.869701, 18.398087>,  <36.463181, 34.380871, 17.865532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286388, 33.869701, 18.398087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240528, 34.267059, 18.396631>,  <36.213013, 34.505474, 18.395758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240528, 34.267059, 18.396631>,  <36.286388, 33.869701, 18.398087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240528, 34.267059, 18.396631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423540, -0.045571, 0.904730,
		0.898592, 0.105271, 0.425969,
		-0.114654, 0.993399, -0.003636,
		36.206131, 34.565079, 18.395540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575428, 34.119366, 19.017879>,  <36.286388, 33.869701, 18.398087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575428, 34.119366, 19.017879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263741, 34.328262, 18.879269>,  <36.076729, 34.453598, 18.796103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263741, 34.328262, 18.879269>,  <36.575428, 34.119366, 19.017879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263741, 34.328262, 18.879269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367878, 0.066525, 0.927491,
		0.507425, 0.850200, 0.140283,
		-0.779221, 0.522240, -0.346526,
		36.029976, 34.484936, 18.775311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471016, 34.547600, 19.644714>,  <36.575428, 34.119366, 19.017879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471016, 34.547600, 19.644714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161095, 34.584438, 19.394531>,  <35.975143, 34.606541, 19.244421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161095, 34.584438, 19.394531>,  <36.471016, 34.547600, 19.644714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161095, 34.584438, 19.394531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611034, 0.144780, 0.778252,
		0.162226, 0.985169, -0.055904,
		-0.774803, 0.092094, -0.625459,
		35.928654, 34.612068, 19.206894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105843, 35.285980, 19.665176>,  <36.471016, 34.547600, 19.644714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105843, 35.285980, 19.665176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847118, 35.008080, 19.539349>,  <35.691883, 34.841339, 19.463852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847118, 35.008080, 19.539349>,  <36.105843, 35.285980, 19.665176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847118, 35.008080, 19.539349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688553, 0.354630, 0.632560,
		-0.327918, 0.625744, -0.707753,
		-0.646811, -0.694753, -0.314568,
		35.653076, 34.799652, 19.444979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558826, 35.668758, 19.757143>,  <36.105843, 35.285980, 19.665176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558826, 35.668758, 19.757143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443157, 35.286629, 19.732693>,  <35.373756, 35.057350, 19.718023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443157, 35.286629, 19.732693>,  <35.558826, 35.668758, 19.757143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443157, 35.286629, 19.732693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699383, 0.167239, 0.694906,
		-0.653638, 0.243697, -0.716498,
		-0.289173, -0.955323, -0.061124,
		35.356403, 35.000031, 19.714355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887005, 35.643024, 19.518068>,  <35.558826, 35.668758, 19.757143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887005, 35.643024, 19.518068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991028, 35.357796, 19.778496>,  <35.053440, 35.186657, 19.934753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991028, 35.357796, 19.778496>,  <34.887005, 35.643024, 19.518068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991028, 35.357796, 19.778496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550294, 0.444607, 0.706753,
		-0.793440, -0.542076, -0.276779,
		0.260056, -0.713076, 0.651071,
		35.069046, 35.143871, 19.973818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345497, 35.260399, 19.868889>,  <34.887005, 35.643024, 19.518068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345497, 35.260399, 19.868889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640224, 35.315933, 20.133560>,  <34.817062, 35.349255, 20.292364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640224, 35.315933, 20.133560>,  <34.345497, 35.260399, 19.868889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640224, 35.315933, 20.133560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660525, 0.356612, 0.660708,
		-0.144233, -0.923879, 0.354463,
		0.736820, 0.138836, 0.661680,
		34.861271, 35.357586, 20.332064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101826, 35.074898, 20.558374>,  <34.345497, 35.260399, 19.868889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101826, 35.074898, 20.558374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425831, 35.290260, 20.651327>,  <34.620232, 35.419479, 20.707098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425831, 35.290260, 20.651327>,  <34.101826, 35.074898, 20.558374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425831, 35.290260, 20.651327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505454, 0.440104, 0.742176,
		0.297321, -0.718627, 0.628629,
		0.810010, 0.538408, 0.232380,
		34.668835, 35.451782, 20.721041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139194, 35.070229, 21.274734>,  <34.101826, 35.074898, 20.558374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139194, 35.070229, 21.274734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368328, 35.386879, 21.189701>,  <34.505806, 35.576870, 21.138681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368328, 35.386879, 21.189701>,  <34.139194, 35.070229, 21.274734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368328, 35.386879, 21.189701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382236, 0.487410, 0.785065,
		0.725095, -0.368452, 0.581791,
		0.572830, 0.791628, -0.212583,
		34.540176, 35.624367, 21.125927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265728, 35.294064, 21.927217>,  <34.139194, 35.070229, 21.274734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265728, 35.294064, 21.927217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352409, 35.607838, 21.694771>,  <34.404419, 35.796104, 21.555302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352409, 35.607838, 21.694771>,  <34.265728, 35.294064, 21.927217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352409, 35.607838, 21.694771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229020, 0.619500, 0.750846,
		0.948994, -0.029622, 0.313899,
		0.216702, 0.784437, -0.581118,
		34.417419, 35.843170, 21.520435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800564, 35.645103, 22.314301>,  <34.265728, 35.294064, 21.927217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800564, 35.645103, 22.314301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625134, 35.908443, 22.069601>,  <34.519875, 36.066448, 21.922781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625134, 35.908443, 22.069601>,  <34.800564, 35.645103, 22.314301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625134, 35.908443, 22.069601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018904, 0.673797, 0.738675,
		0.898496, 0.335528, -0.283064,
		-0.438574, 0.658346, -0.611746,
		34.493561, 36.105946, 21.886078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236412, 36.164272, 22.328075>,  <34.800564, 35.645103, 22.314301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236412, 36.164272, 22.328075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871250, 36.288300, 22.221901>,  <34.652153, 36.362717, 22.158197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871250, 36.288300, 22.221901>,  <35.236412, 36.164272, 22.328075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871250, 36.288300, 22.221901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002869, 0.655173, 0.755474,
		0.408154, 0.688917, -0.599003,
		-0.912909, 0.310068, -0.265435,
		34.597378, 36.381321, 22.142271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213486, 36.928879, 22.591898>,  <35.236412, 36.164272, 22.328075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213486, 36.928879, 22.591898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842598, 36.823643, 22.485281>,  <34.620064, 36.760502, 22.421310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842598, 36.823643, 22.485281>,  <35.213486, 36.928879, 22.591898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842598, 36.823643, 22.485281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374065, 0.615780, 0.693463,
		-0.018311, 0.742698, -0.669376,
		-0.927222, -0.263088, -0.266542,
		34.564430, 36.744717, 22.405319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812462, 37.550926, 22.614981>,  <35.213486, 36.928879, 22.591898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812462, 37.550926, 22.614981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552143, 37.249279, 22.650248>,  <34.395954, 37.068291, 22.671408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552143, 37.249279, 22.650248>,  <34.812462, 37.550926, 22.614981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552143, 37.249279, 22.650248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461457, 0.485073, 0.742807,
		-0.602932, 0.442728, -0.663675,
		-0.650793, -0.754119, 0.088166,
		34.356907, 37.023045, 22.676697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204891, 37.862171, 22.700352>,  <34.812462, 37.550926, 22.614981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204891, 37.862171, 22.700352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144695, 37.492451, 22.840647>,  <34.108578, 37.270618, 22.924824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144695, 37.492451, 22.840647>,  <34.204891, 37.862171, 22.700352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144695, 37.492451, 22.840647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525342, 0.375307, 0.763650,
		-0.837478, -0.069337, -0.542054,
		-0.150487, -0.924303, 0.350737,
		34.099548, 37.215160, 22.945868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538895, 37.821060, 22.941828>,  <34.204891, 37.862171, 22.700352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538895, 37.821060, 22.941828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713276, 37.514160, 23.129984>,  <33.817905, 37.330021, 23.242878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713276, 37.514160, 23.129984>,  <33.538895, 37.821060, 22.941828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713276, 37.514160, 23.129984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488762, 0.237030, 0.839600,
		-0.755681, -0.595938, -0.271669,
		0.435956, -0.767251, 0.470391,
		33.844063, 37.283985, 23.271101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023365, 37.674377, 23.424227>,  <33.538895, 37.821060, 22.941828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023365, 37.674377, 23.424227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348454, 37.473644, 23.542645>,  <33.543507, 37.353203, 23.613695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348454, 37.473644, 23.542645>,  <33.023365, 37.674377, 23.424227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348454, 37.473644, 23.542645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321114, 0.038179, 0.946271,
		-0.486173, -0.864121, -0.130117,
		0.812724, -0.501833, 0.296043,
		33.592270, 37.323093, 23.631458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754280, 37.209492, 23.880379>,  <33.023365, 37.674377, 23.424227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754280, 37.209492, 23.880379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140472, 37.230652, 23.982399>,  <33.372189, 37.243347, 24.043612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140472, 37.230652, 23.982399>,  <32.754280, 37.209492, 23.880379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140472, 37.230652, 23.982399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252875, -0.044484, 0.966476,
		0.062471, -0.997609, -0.029572,
		0.965480, 0.052898, 0.255049,
		33.430115, 37.246521, 24.058914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946308, 36.565968, 24.311262>,  <32.754280, 37.209492, 23.880379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946308, 36.565968, 24.311262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222168, 36.846699, 24.382626>,  <33.387684, 37.015137, 24.425444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222168, 36.846699, 24.382626>,  <32.946308, 36.565968, 24.311262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222168, 36.846699, 24.382626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080114, -0.170915, 0.982023,
		0.719700, -0.691543, -0.061645,
		0.689647, 0.701823, 0.178410,
		33.429062, 37.057247, 24.436148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531300, 36.292965, 24.544361>,  <32.946308, 36.565968, 24.311262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531300, 36.292965, 24.544361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514980, 36.667667, 24.683397>,  <33.505188, 36.892490, 24.766819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514980, 36.667667, 24.683397>,  <33.531300, 36.292965, 24.544361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514980, 36.667667, 24.683397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129623, -0.349904, 0.927774,
		0.990724, -0.007205, 0.135700,
		-0.040798, 0.936758, 0.347593,
		33.502743, 36.948696, 24.787676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735722, 36.316978, 25.308224>,  <33.531300, 36.292965, 24.544361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735722, 36.316978, 25.308224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609901, 36.695644, 25.280293>,  <33.534409, 36.922844, 25.263535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609901, 36.695644, 25.280293>,  <33.735722, 36.316978, 25.308224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609901, 36.695644, 25.280293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239164, -0.007849, 0.970947,
		0.918618, 0.322113, 0.228878,
		-0.314551, 0.946669, -0.069827,
		33.515537, 36.979645, 25.259344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034107, 36.697124, 25.819160>,  <33.735722, 36.316978, 25.308224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034107, 36.697124, 25.819160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694035, 36.883678, 25.721443>,  <33.489990, 36.995609, 25.662813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694035, 36.883678, 25.721443>,  <34.034107, 36.697124, 25.819160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694035, 36.883678, 25.721443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324678, -0.099166, 0.940612,
		0.414459, 0.879007, 0.235733,
		-0.850181, 0.466382, -0.244294,
		33.438980, 37.023594, 25.648155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965588, 37.339214, 26.344296>,  <34.034107, 36.697124, 25.819160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965588, 37.339214, 26.344296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602596, 37.270752, 26.190836>,  <33.384800, 37.229675, 26.098761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602596, 37.270752, 26.190836>,  <33.965588, 37.339214, 26.344296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602596, 37.270752, 26.190836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411380, 0.177026, 0.894108,
		-0.085113, 0.969211, -0.231056,
		-0.907481, -0.171152, -0.383646,
		33.330353, 37.219406, 26.075743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548519, 37.870125, 26.613867>,  <33.965588, 37.339214, 26.344296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548519, 37.870125, 26.613867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289989, 37.580986, 26.516079>,  <33.134872, 37.407505, 26.457405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289989, 37.580986, 26.516079>,  <33.548519, 37.870125, 26.613867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289989, 37.580986, 26.516079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564888, 0.237856, 0.790143,
		-0.513000, 0.648786, -0.562057,
		-0.646322, -0.722842, -0.244471,
		33.096092, 37.364132, 26.442738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817978, 38.197243, 26.627409>,  <33.548519, 37.870125, 26.613867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817978, 38.197243, 26.627409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807899, 37.799026, 26.663759>,  <32.801853, 37.560097, 26.685570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807899, 37.799026, 26.663759>,  <32.817978, 38.197243, 26.627409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807899, 37.799026, 26.663759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427587, 0.092899, 0.899188,
		-0.903623, -0.016204, -0.428022,
		-0.025192, -0.995544, 0.090874,
		32.800343, 37.500362, 26.691021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089581, 38.006996, 26.865738>,  <32.817978, 38.197243, 26.627409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089581, 38.006996, 26.865738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286060, 37.667767, 26.945229>,  <32.403950, 37.464230, 26.992924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286060, 37.667767, 26.945229>,  <32.089581, 38.006996, 26.865738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286060, 37.667767, 26.945229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431476, -0.038711, 0.901294,
		-0.756669, -0.528465, -0.384938,
		0.491204, -0.848072, 0.198728,
		32.433422, 37.413345, 27.004847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688343, 37.591568, 27.433620>,  <32.089581, 38.006996, 26.865738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688343, 37.591568, 27.433620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060936, 37.447773, 27.455921>,  <32.284492, 37.361496, 27.469301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060936, 37.447773, 27.455921>,  <31.688343, 37.591568, 27.433620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060936, 37.447773, 27.455921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128316, -0.181265, 0.975027,
		-0.340410, -0.915373, -0.214974,
		0.931481, -0.359493, 0.055752,
		32.340382, 37.339924, 27.472647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599346, 37.006355, 27.952456>,  <31.688343, 37.591568, 27.433620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599346, 37.006355, 27.952456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991438, 37.081001, 27.926155>,  <32.226692, 37.125790, 27.910376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991438, 37.081001, 27.926155>,  <31.599346, 37.006355, 27.952456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991438, 37.081001, 27.926155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139203, -0.414275, 0.899444,
		0.140613, -0.890814, -0.432063,
		0.980230, 0.186618, -0.065751,
		32.285507, 37.136986, 27.906429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870298, 36.392670, 28.041916>,  <31.599346, 37.006355, 27.952456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870298, 36.392670, 28.041916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109188, 36.690228, 28.161873>,  <32.252522, 36.868763, 28.233847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109188, 36.690228, 28.161873>,  <31.870298, 36.392670, 28.041916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109188, 36.690228, 28.161873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065794, -0.418072, 0.906028,
		0.799370, -0.521373, -0.298628,
		0.597226, 0.743899, 0.299892,
		32.288357, 36.913399, 28.251841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326759, 36.068466, 28.439919>,  <31.870298, 36.392670, 28.041916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326759, 36.068466, 28.439919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414211, 36.451271, 28.516163>,  <32.466682, 36.680954, 28.561909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414211, 36.451271, 28.516163>,  <32.326759, 36.068466, 28.439919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414211, 36.451271, 28.516163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208764, -0.236686, 0.948893,
		0.953214, -0.167667, -0.251536,
		0.218633, 0.957010, 0.190610,
		32.479801, 36.738373, 28.573345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975708, 36.071980, 28.803486>,  <32.326759, 36.068466, 28.439919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975708, 36.071980, 28.803486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838730, 36.435814, 28.897629>,  <32.756542, 36.654114, 28.954115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838730, 36.435814, 28.897629>,  <32.975708, 36.071980, 28.803486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838730, 36.435814, 28.897629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256192, -0.150610, 0.954821,
		0.903934, 0.387270, -0.181452,
		-0.342445, 0.909582, 0.235356,
		32.735996, 36.708687, 28.968235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343098, 36.175510, 29.385210>,  <32.975708, 36.071980, 28.803486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343098, 36.175510, 29.385210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075928, 36.471981, 29.412151>,  <32.915627, 36.649864, 29.428316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075928, 36.471981, 29.412151>,  <33.343098, 36.175510, 29.385210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075928, 36.471981, 29.412151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136051, -0.210575, 0.968064,
		0.731685, 0.637433, 0.241486,
		-0.667927, 0.741173, 0.067351,
		32.875549, 36.694332, 29.432356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674400, 36.680397, 29.839159>,  <33.343098, 36.175510, 29.385210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674400, 36.680397, 29.839159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275589, 36.710781, 29.844276>,  <33.036301, 36.729012, 29.847347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275589, 36.710781, 29.844276>,  <33.674400, 36.680397, 29.839159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275589, 36.710781, 29.844276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009157, -0.048018, 0.998805,
		0.076486, 0.995954, 0.047180,
		-0.997029, 0.075962, 0.012792,
		32.976479, 36.733570, 29.848114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521561, 37.189388, 30.348537>,  <33.674400, 36.680397, 29.839159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521561, 37.189388, 30.348537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171829, 37.003040, 30.294106>,  <32.961990, 36.891232, 30.261446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171829, 37.003040, 30.294106>,  <33.521561, 37.189388, 30.348537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171829, 37.003040, 30.294106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098875, -0.103524, 0.989700,
		-0.475156, 0.878778, 0.044451,
		-0.874329, -0.465867, -0.136080,
		32.909531, 36.863281, 30.253283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137337, 37.575630, 30.784969>,  <33.521561, 37.189388, 30.348537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137337, 37.575630, 30.784969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975136, 37.215267, 30.723083>,  <32.877815, 36.999050, 30.685953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975136, 37.215267, 30.723083>,  <33.137337, 37.575630, 30.784969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975136, 37.215267, 30.723083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237291, -0.059704, 0.969602,
		-0.882758, 0.429887, -0.189566,
		-0.405502, -0.900906, -0.154712,
		32.853485, 36.944996, 30.676670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493736, 37.636093, 31.048592>,  <33.137337, 37.575630, 30.784969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493736, 37.636093, 31.048592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611725, 37.253906, 31.045029>,  <32.682518, 37.024593, 31.042891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611725, 37.253906, 31.045029>,  <32.493736, 37.636093, 31.048592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611725, 37.253906, 31.045029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218506, -0.076527, 0.972830,
		-0.930188, -0.285007, -0.231348,
		0.294967, -0.955466, -0.008909,
		32.700214, 36.967266, 31.042356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138165, 37.273949, 31.562550>,  <32.493736, 37.636093, 31.048592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138165, 37.273949, 31.562550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398293, 36.980259, 31.484587>,  <32.554371, 36.804043, 31.437809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398293, 36.980259, 31.484587>,  <32.138165, 37.273949, 31.562550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398293, 36.980259, 31.484587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048410, -0.296107, 0.953927,
		-0.758114, -0.610925, -0.228109,
		0.650323, -0.734228, -0.194908,
		32.593388, 36.759991, 31.426115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924885, 36.600292, 31.884583>,  <32.138165, 37.273949, 31.562550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924885, 36.600292, 31.884583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322399, 36.600197, 31.840061>,  <32.560909, 36.600140, 31.813349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322399, 36.600197, 31.840061>,  <31.924885, 36.600292, 31.884583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322399, 36.600197, 31.840061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104937, -0.331325, 0.937663,
		-0.037098, -0.943516, -0.329242,
		0.993786, -0.000235, -0.111301,
		32.620537, 36.600124, 31.806671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194580, 35.850906, 32.055176>,  <31.924885, 36.600292, 31.884583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194580, 35.850906, 32.055176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509380, 36.094532, 32.094501>,  <32.698261, 36.240707, 32.118095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509380, 36.094532, 32.094501>,  <32.194580, 35.850906, 32.055176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509380, 36.094532, 32.094501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212728, -0.417480, 0.883435,
		0.579115, -0.674351, -0.458123,
		0.787003, 0.609066, 0.098315,
		32.745480, 36.277252, 32.123997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779671, 35.480064, 32.283066>,  <32.194580, 35.850906, 32.055176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779671, 35.480064, 32.283066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864056, 35.851677, 32.404655>,  <32.914684, 36.074642, 32.477612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864056, 35.851677, 32.404655>,  <32.779671, 35.480064, 32.283066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864056, 35.851677, 32.404655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305353, -0.358046, 0.882362,
		0.928577, -0.093322, -0.359214,
		0.210959, 0.929028, 0.303978,
		32.927345, 36.130386, 32.495850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107742, 35.357948, 32.824242>,  <32.779671, 35.480064, 32.283066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107742, 35.357948, 32.824242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140354, 35.754520, 32.865082>,  <33.159924, 35.992462, 32.889587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140354, 35.754520, 32.865082>,  <33.107742, 35.357948, 32.824242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140354, 35.754520, 32.865082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408812, -0.126695, 0.903782,
		0.908969, -0.031948, -0.415637,
		0.081534, 0.991427, 0.102101,
		33.164814, 36.051949, 32.895714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840302, 35.597656, 32.959888>,  <33.107742, 35.357948, 32.824242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840302, 35.597656, 32.959888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569321, 35.845123, 33.119038>,  <33.406731, 35.993603, 33.214527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569321, 35.845123, 33.119038>,  <33.840302, 35.597656, 32.959888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569321, 35.845123, 33.119038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330135, -0.227639, 0.916074,
		0.657316, 0.751952, -0.050028,
		-0.677456, 0.618666, 0.397877,
		33.366085, 36.030724, 33.238400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203461, 35.913364, 33.540264>,  <33.840302, 35.597656, 32.959888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203461, 35.913364, 33.540264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813179, 35.973610, 33.603901>,  <33.579010, 36.009758, 33.642082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813179, 35.973610, 33.603901>,  <34.203461, 35.913364, 33.540264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813179, 35.973610, 33.603901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142701, -0.114082, 0.983169,
		0.166227, 0.981988, 0.089818,
		-0.975707, 0.150612, 0.159094,
		33.520466, 36.018795, 33.651630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543491, 36.052818, 34.077354>,  <34.203461, 35.913364, 33.540264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543491, 36.052818, 34.077354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856647, 36.289509, 34.154232>,  <35.044540, 36.431522, 34.200359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856647, 36.289509, 34.154232>,  <34.543491, 36.052818, 34.077354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856647, 36.289509, 34.154232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122684, 0.156017, -0.980106,
		-0.609938, 0.790899, 0.049550,
		0.782895, 0.591725, 0.192191,
		35.091515, 36.467026, 34.211891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331963, 36.805328, 33.899155>,  <34.543491, 36.052818, 34.077354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331963, 36.805328, 33.899155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731472, 36.785507, 33.898460>,  <34.971176, 36.773613, 33.898045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731472, 36.785507, 33.898460>,  <34.331963, 36.805328, 33.899155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731472, 36.785507, 33.898460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023389, 0.501616, -0.864774,
		0.043724, 0.863670, 0.502158,
		0.998770, -0.049556, -0.001732,
		35.031101, 36.770641, 33.897942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557541, 37.389954, 33.512405>,  <34.331963, 36.805328, 33.899155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557541, 37.389954, 33.512405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904156, 37.190346, 33.508678>,  <35.112125, 37.070580, 33.506443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904156, 37.190346, 33.508678>,  <34.557541, 37.389954, 33.512405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904156, 37.190346, 33.508678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322816, 0.574601, -0.752079,
		0.380656, 0.648699, 0.659007,
		0.866539, -0.499022, -0.009315,
		35.164116, 37.040638, 33.505882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056141, 37.880520, 33.370808>,  <34.557541, 37.389954, 33.512405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056141, 37.880520, 33.370808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203236, 37.518730, 33.284370>,  <35.291492, 37.301655, 33.232510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203236, 37.518730, 33.284370>,  <35.056141, 37.880520, 33.370808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203236, 37.518730, 33.284370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372648, 0.356230, -0.856874,
		0.852000, 0.234577, 0.468049,
		0.367736, -0.904474, -0.216093,
		35.313557, 37.247387, 33.219543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779682, 38.026585, 33.233425>,  <35.056141, 37.880520, 33.370808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779682, 38.026585, 33.233425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664024, 37.682663, 33.065079>,  <35.594631, 37.476311, 32.964069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664024, 37.682663, 33.065079>,  <35.779682, 38.026585, 33.233425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664024, 37.682663, 33.065079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067302, 0.420298, -0.904886,
		0.954916, -0.289969, -0.063661,
		-0.289145, -0.859807, -0.420865,
		35.577282, 37.424721, 32.938820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178410, 37.940380, 32.702866>,  <35.779682, 38.026585, 33.233425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178410, 37.940380, 32.702866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884064, 37.698765, 32.580460>,  <35.707458, 37.553795, 32.507015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884064, 37.698765, 32.580460>,  <36.178410, 37.940380, 32.702866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884064, 37.698765, 32.580460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126046, 0.321839, -0.938367,
		0.665298, -0.729079, -0.160692,
		-0.735861, -0.604039, -0.306016,
		35.663307, 37.517551, 32.488655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339188, 37.940105, 32.122303>,  <36.178410, 37.940380, 32.702866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339188, 37.940105, 32.122303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975285, 37.781704, 32.072460>,  <35.756943, 37.686661, 32.042553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975285, 37.781704, 32.072460>,  <36.339188, 37.940105, 32.122303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975285, 37.781704, 32.072460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010154, 0.278833, -0.960286,
		0.415025, -0.874889, -0.249648,
		-0.909753, -0.396008, -0.124607,
		35.702358, 37.662903, 32.035080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431618, 37.548985, 31.521013>,  <36.339188, 37.940105, 32.122303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431618, 37.548985, 31.521013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046593, 37.641102, 31.578186>,  <35.815578, 37.696373, 31.612490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046593, 37.641102, 31.578186>,  <36.431618, 37.548985, 31.521013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046593, 37.641102, 31.578186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125641, 0.088150, -0.988152,
		-0.240168, -0.969119, -0.055916,
		-0.962566, 0.230297, 0.142932,
		35.757824, 37.710190, 31.621065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027275, 37.188000, 30.981161>,  <36.431618, 37.548985, 31.521013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027275, 37.188000, 30.981161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786171, 37.483776, 31.101101>,  <35.641510, 37.661240, 31.173065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786171, 37.483776, 31.101101>,  <36.027275, 37.188000, 30.981161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786171, 37.483776, 31.101101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195625, 0.227374, -0.953956,
		-0.773570, -0.633665, 0.007601,
		-0.602761, 0.739439, 0.299850,
		35.605343, 37.705608, 31.191055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518269, 37.074501, 30.504854>,  <36.027275, 37.188000, 30.981161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518269, 37.074501, 30.504854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473206, 37.443676, 30.652096>,  <35.446167, 37.665180, 30.740440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473206, 37.443676, 30.652096>,  <35.518269, 37.074501, 30.504854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473206, 37.443676, 30.652096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209359, 0.340095, -0.916790,
		-0.971327, -0.180353, 0.154909,
		-0.112662, 0.922934, 0.368102,
		35.439407, 37.720558, 30.762526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865253, 37.350742, 30.349934>,  <35.518269, 37.074501, 30.504854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865253, 37.350742, 30.349934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070274, 37.688961, 30.409725>,  <35.193287, 37.891891, 30.445601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070274, 37.688961, 30.409725>,  <34.865253, 37.350742, 30.349934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070274, 37.688961, 30.409725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355815, 0.367584, -0.859231,
		-0.781466, 0.387211, 0.489263,
		0.512549, 0.845547, 0.149479,
		35.224041, 37.942627, 30.454569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386192, 37.880844, 30.265675>,  <34.865253, 37.350742, 30.349934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386192, 37.880844, 30.265675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736080, 38.059383, 30.190163>,  <34.946014, 38.166508, 30.144855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736080, 38.059383, 30.190163>,  <34.386192, 37.880844, 30.265675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736080, 38.059383, 30.190163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378448, 0.385796, -0.841391,
		-0.302721, 0.807426, 0.506382,
		0.874721, 0.446346, -0.188781,
		34.998497, 38.193287, 30.133528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207909, 38.433472, 29.885714>,  <34.386192, 37.880844, 30.265675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207909, 38.433472, 29.885714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599339, 38.388668, 29.816610>,  <34.834198, 38.361786, 29.775148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599339, 38.388668, 29.816610>,  <34.207909, 38.433472, 29.885714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599339, 38.388668, 29.816610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124031, 0.349044, -0.928862,
		0.164337, 0.930389, 0.327674,
		0.978575, -0.112004, -0.172757,
		34.892910, 38.355068, 29.764784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335327, 39.016647, 29.513691>,  <34.207909, 38.433472, 29.885714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335327, 39.016647, 29.513691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644779, 38.780853, 29.420732>,  <34.830448, 38.639378, 29.364958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644779, 38.780853, 29.420732>,  <34.335327, 39.016647, 29.513691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644779, 38.780853, 29.420732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062667, 0.293782, -0.953816,
		0.630535, 0.752461, 0.190336,
		0.773627, -0.589487, -0.232395,
		34.876865, 38.604008, 29.351013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882404, 39.398762, 29.111441>,  <34.335327, 39.016647, 29.513691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882404, 39.398762, 29.111441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975998, 39.024216, 29.006769>,  <35.032154, 38.799488, 28.943966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975998, 39.024216, 29.006769>,  <34.882404, 39.398762, 29.111441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975998, 39.024216, 29.006769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182086, 0.306591, -0.934263,
		0.955037, 0.170956, 0.242237,
		0.233986, -0.936363, -0.261677,
		35.046192, 38.743305, 28.928267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375076, 39.449059, 28.591972>,  <34.882404, 39.398762, 29.111441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375076, 39.449059, 28.591972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277515, 39.064705, 28.539501>,  <35.218979, 38.834091, 28.508018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277515, 39.064705, 28.539501>,  <35.375076, 39.449059, 28.591972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277515, 39.064705, 28.539501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075258, 0.116104, -0.990382,
		0.966876, -0.251427, 0.043997,
		-0.243901, -0.960887, -0.131180,
		35.204346, 38.776440, 28.500147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875607, 39.094990, 28.105051>,  <35.375076, 39.449059, 28.591972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875607, 39.094990, 28.105051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541218, 38.875599, 28.097971>,  <35.340584, 38.743965, 28.093723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541218, 38.875599, 28.097971>,  <35.875607, 39.094990, 28.105051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541218, 38.875599, 28.097971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050693, -0.045066, -0.997697,
		0.546420, -0.834948, 0.065478,
		-0.835976, -0.548480, -0.017701,
		35.290424, 38.711056, 28.092661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026375, 38.484200, 27.734850>,  <35.875607, 39.094990, 28.105051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026375, 38.484200, 27.734850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630596, 38.537426, 27.711906>,  <35.393127, 38.569363, 27.698141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630596, 38.537426, 27.711906>,  <36.026375, 38.484200, 27.734850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630596, 38.537426, 27.711906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022399, -0.250636, -0.967822,
		-0.143157, -0.958893, 0.245011,
		-0.989447, 0.133062, -0.057358,
		35.333763, 38.577347, 27.694698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930061, 38.006592, 27.390411>,  <36.026375, 38.484200, 27.734850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930061, 38.006592, 27.390411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605904, 38.235439, 27.339911>,  <35.411407, 38.372749, 27.309610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605904, 38.235439, 27.339911>,  <35.930061, 38.006592, 27.390411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605904, 38.235439, 27.339911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048300, -0.149518, -0.987579,
		-0.583892, -0.806425, 0.093534,
		-0.810393, 0.572122, -0.126253,
		35.362785, 38.407074, 27.302034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493404, 37.597260, 27.015173>,  <35.930061, 38.006592, 27.390411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493404, 37.597260, 27.015173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366062, 37.970016, 26.945631>,  <35.289658, 38.193672, 26.903906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366062, 37.970016, 26.945631>,  <35.493404, 37.597260, 27.015173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366062, 37.970016, 26.945631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058113, -0.163868, -0.984769,
		-0.946189, -0.323608, -0.001987,
		-0.318354, 0.931893, -0.173856,
		35.270557, 38.249584, 26.893475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944103, 37.471462, 26.456884>,  <35.493404, 37.597260, 27.015173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944103, 37.471462, 26.456884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041252, 37.859318, 26.445498>,  <35.099541, 38.092030, 26.438665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041252, 37.859318, 26.445498>,  <34.944103, 37.471462, 26.456884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041252, 37.859318, 26.445498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174931, -0.072645, -0.981897,
		-0.954155, 0.233498, -0.187263,
		0.242875, 0.969640, -0.028469,
		35.114113, 38.150211, 26.436956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706863, 37.805790, 25.818668>,  <34.944103, 37.471462, 26.456884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706863, 37.805790, 25.818668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991001, 38.067982, 25.921246>,  <35.161484, 38.225296, 25.982792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991001, 38.067982, 25.921246>,  <34.706863, 37.805790, 25.818668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991001, 38.067982, 25.921246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284607, 0.065736, -0.956388,
		-0.643750, 0.752346, -0.139859,
		0.710341, 0.655480, 0.256441,
		35.204102, 38.264626, 25.998178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654308, 38.382442, 25.331690>,  <34.706863, 37.805790, 25.818668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654308, 38.382442, 25.331690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017551, 38.382248, 25.499186>,  <35.235497, 38.382130, 25.599682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017551, 38.382248, 25.499186>,  <34.654308, 38.382442, 25.331690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017551, 38.382248, 25.499186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417642, -0.071238, -0.905815,
		0.030270, 0.997459, -0.064489,
		0.908107, -0.000486, 0.418737,
		35.289982, 38.382103, 25.624807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113411, 38.869797, 24.907692>,  <34.654308, 38.382442, 25.331690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113411, 38.869797, 24.907692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338387, 38.614395, 25.117823>,  <35.473373, 38.461155, 25.243902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338387, 38.614395, 25.117823>,  <35.113411, 38.869797, 24.907692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338387, 38.614395, 25.117823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607566, -0.111792, -0.786362,
		0.560826, 0.761452, 0.325061,
		0.562438, -0.638509, 0.525329,
		35.507118, 38.422844, 25.275421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827667, 38.975403, 24.632240>,  <35.113411, 38.869797, 24.907692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827667, 38.975403, 24.632240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822632, 38.617062, 24.809912>,  <35.819611, 38.402058, 24.916513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822632, 38.617062, 24.809912>,  <35.827667, 38.975403, 24.632240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822632, 38.617062, 24.809912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557707, -0.374991, -0.740503,
		0.829942, 0.238396, 0.504344,
		-0.012592, -0.895851, 0.444176,
		35.818855, 38.348305, 24.943165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573593, 38.751461, 24.559359>,  <35.827667, 38.975403, 24.632240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573593, 38.751461, 24.559359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364380, 38.426270, 24.661730>,  <36.238850, 38.231155, 24.723152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364380, 38.426270, 24.661730>,  <36.573593, 38.751461, 24.559359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364380, 38.426270, 24.661730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576059, -0.558501, -0.596852,
		0.628164, -0.164746, 0.760440,
		-0.523035, -0.812979, 0.255927,
		36.207470, 38.182377, 24.738508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065975, 38.130051, 24.823301>,  <36.573593, 38.751461, 24.559359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065975, 38.130051, 24.823301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718609, 37.981831, 24.691513>,  <36.510189, 37.892899, 24.612440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718609, 37.981831, 24.691513>,  <37.065975, 38.130051, 24.823301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718609, 37.981831, 24.691513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495838, -0.649235, -0.576748,
		-0.000189, -0.664219, 0.747538,
		-0.868415, -0.370549, -0.329468,
		36.458084, 37.870667, 24.592672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268551, 37.483315, 24.825850>,  <37.065975, 38.130051, 24.823301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268551, 37.483315, 24.825850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950878, 37.523983, 24.586203>,  <36.760277, 37.548382, 24.442413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950878, 37.523983, 24.586203>,  <37.268551, 37.483315, 24.825850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950878, 37.523983, 24.586203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420909, -0.619082, -0.663003,
		-0.438308, -0.778718, 0.448870,
		-0.794180, 0.101667, -0.599118,
		36.712624, 37.554482, 24.406467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225986, 36.794407, 24.466465>,  <37.268551, 37.483315, 24.825850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225986, 36.794407, 24.466465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992924, 37.022266, 24.234600>,  <36.853085, 37.158981, 24.095482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992924, 37.022266, 24.234600>,  <37.225986, 36.794407, 24.466465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992924, 37.022266, 24.234600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228664, -0.569521, -0.789530,
		-0.779884, -0.592577, 0.201580,
		-0.582661, 0.569648, -0.579661,
		36.818127, 37.193161, 24.060701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917362, 36.389645, 23.966270>,  <37.225986, 36.794407, 24.466465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917362, 36.389645, 23.966270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898445, 36.749062, 23.791740>,  <36.887093, 36.964714, 23.687023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898445, 36.749062, 23.791740>,  <36.917362, 36.389645, 23.966270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898445, 36.749062, 23.791740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156982, -0.424700, -0.891620,
		-0.986468, -0.110666, -0.120968,
		-0.047297, 0.898545, -0.436326,
		36.884254, 37.018623, 23.660843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575211, 36.167210, 23.425449>,  <36.917362, 36.389645, 23.966270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575211, 36.167210, 23.425449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743465, 36.518768, 23.335468>,  <36.844418, 36.729702, 23.281479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743465, 36.518768, 23.335468>,  <36.575211, 36.167210, 23.425449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743465, 36.518768, 23.335468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313063, -0.373344, -0.873273,
		-0.851502, 0.296907, -0.432193,
		0.420638, 0.878897, -0.224953,
		36.869656, 36.782436, 23.267982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401405, 36.301125, 22.713762>,  <36.575211, 36.167210, 23.425449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401405, 36.301125, 22.713762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734856, 36.506168, 22.796036>,  <36.934925, 36.629196, 22.845400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734856, 36.506168, 22.796036>,  <36.401405, 36.301125, 22.713762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734856, 36.506168, 22.796036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381471, -0.265024, -0.885575,
		-0.399444, 0.816696, -0.416475,
		0.833621, 0.512610, 0.205684,
		36.984943, 36.659950, 22.857740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618244, 36.410458, 22.094860>,  <36.401405, 36.301125, 22.713762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618244, 36.410458, 22.094860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930386, 36.488396, 22.332542>,  <37.117672, 36.535160, 22.475153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930386, 36.488396, 22.332542>,  <36.618244, 36.410458, 22.094860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930386, 36.488396, 22.332542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625101, -0.216889, -0.749805,
		-0.017219, 0.956553, -0.291049,
		0.780354, 0.194846, 0.594208,
		37.164494, 36.546848, 22.510805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007229, 36.797913, 21.644217>,  <36.618244, 36.410458, 22.094860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007229, 36.797913, 21.644217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244228, 36.664288, 21.937431>,  <37.386429, 36.584110, 22.113359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244228, 36.664288, 21.937431>,  <37.007229, 36.797913, 21.644217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244228, 36.664288, 21.937431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693807, -0.250785, -0.675084,
		0.409357, 0.908574, 0.083187,
		0.592502, -0.334066, 0.733036,
		37.421978, 36.564068, 22.157343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690670, 37.010452, 21.480768>,  <37.007229, 36.797913, 21.644217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690670, 37.010452, 21.480768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712151, 36.682735, 21.709108>,  <37.725040, 36.486103, 21.846113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712151, 36.682735, 21.709108>,  <37.690670, 37.010452, 21.480768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712151, 36.682735, 21.709108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674717, -0.391657, -0.625588,
		0.736120, 0.418761, 0.531758,
		0.053705, -0.819294, 0.570852,
		37.728264, 36.436947, 21.880363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430576, 36.872036, 21.307945>,  <37.690670, 37.010452, 21.480768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430576, 36.872036, 21.307945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251942, 36.555683, 21.475307>,  <38.144760, 36.365871, 21.575726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251942, 36.555683, 21.475307>,  <38.430576, 36.872036, 21.307945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251942, 36.555683, 21.475307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400142, -0.594799, -0.697209,
		0.800278, -0.143943, 0.582096,
		-0.446589, -0.790882, 0.418407,
		38.117966, 36.318417, 21.600830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927029, 36.304611, 21.384056>,  <38.430576, 36.872036, 21.307945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927029, 36.304611, 21.384056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562042, 36.141262, 21.373920>,  <38.343052, 36.043251, 21.367840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562042, 36.141262, 21.373920>,  <38.927029, 36.304611, 21.384056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562042, 36.141262, 21.373920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321855, -0.678152, -0.660696,
		0.252627, -0.611017, 0.750225,
		-0.912463, -0.408373, -0.025340,
		38.288303, 36.018749, 21.366318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077442, 35.579754, 21.487963>,  <38.927029, 36.304611, 21.384056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077442, 35.579754, 21.487963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731556, 35.670494, 21.308720>,  <38.524025, 35.724937, 21.201174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731556, 35.670494, 21.308720>,  <39.077442, 35.579754, 21.487963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731556, 35.670494, 21.308720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076017, -0.822805, -0.563218,
		-0.496470, -0.521089, 0.694251,
		-0.864719, 0.226846, -0.448109,
		38.472141, 35.738548, 21.174286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333580, 34.915894, 21.048662>,  <39.077442, 35.579754, 21.487963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333580, 34.915894, 21.048662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664883, 34.692493, 21.066847>,  <39.863663, 34.558453, 21.077759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664883, 34.692493, 21.066847>,  <39.333580, 34.915894, 21.048662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664883, 34.692493, 21.066847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051990, 0.004190, 0.998639,
		-0.557930, -0.829494, -0.025566,
		0.828258, -0.558500, 0.045463,
		39.913361, 34.524944, 21.080486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224041, 34.245190, 21.356697>,  <39.333580, 34.915894, 21.048662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224041, 34.245190, 21.356697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576611, 34.429073, 21.400078>,  <39.788151, 34.539402, 21.426105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576611, 34.429073, 21.400078>,  <39.224041, 34.245190, 21.356697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576611, 34.429073, 21.400078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207509, 0.170625, 0.963238,
		0.424303, -0.871525, 0.245786,
		0.881423, 0.459708, 0.108453,
		39.841038, 34.566986, 21.432613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343555, 34.127102, 21.972572>,  <39.224041, 34.245190, 21.356697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343555, 34.127102, 21.972572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645332, 34.388599, 21.949118>,  <39.826397, 34.545498, 21.935045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645332, 34.388599, 21.949118>,  <39.343555, 34.127102, 21.972572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645332, 34.388599, 21.949118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105648, 0.209120, 0.972166,
		0.647808, -0.727248, 0.226835,
		0.754442, 0.653742, -0.058637,
		39.871666, 34.584721, 21.931526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819588, 33.966511, 22.532415>,  <39.343555, 34.127102, 21.972572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819588, 33.966511, 22.532415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860825, 34.348358, 22.420654>,  <39.885567, 34.577469, 22.353598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860825, 34.348358, 22.420654>,  <39.819588, 33.966511, 22.532415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860825, 34.348358, 22.420654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079299, 0.287895, 0.954373,
		0.991506, -0.076234, 0.105381,
		0.103094, 0.954623, -0.279404,
		39.891754, 34.634747, 22.336834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317543, 34.240284, 22.966040>,  <39.819588, 33.966511, 22.532415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317543, 34.240284, 22.966040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113514, 34.544178, 22.804733>,  <39.991096, 34.726513, 22.707949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113514, 34.544178, 22.804733>,  <40.317543, 34.240284, 22.966040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113514, 34.544178, 22.804733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000226, 0.468961, 0.883219,
		0.860129, 0.450418, -0.239378,
		-0.510077, 0.759736, -0.403265,
		39.960491, 34.772099, 22.683754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620934, 34.843960, 23.221666>,  <40.317543, 34.240284, 22.966040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620934, 34.843960, 23.221666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269775, 34.981956, 23.088827>,  <40.059082, 35.064754, 23.009123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269775, 34.981956, 23.088827>,  <40.620934, 34.843960, 23.221666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269775, 34.981956, 23.088827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026306, 0.657728, 0.752796,
		0.478138, 0.669609, -0.568338,
		-0.877891, 0.344989, -0.332099,
		40.006409, 35.085453, 22.989197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644905, 35.469509, 23.340414>,  <40.620934, 34.843960, 23.221666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644905, 35.469509, 23.340414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252647, 35.444958, 23.266039>,  <40.017292, 35.430229, 23.221413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252647, 35.444958, 23.266039>,  <40.644905, 35.469509, 23.340414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252647, 35.444958, 23.266039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173439, 0.713010, 0.679365,
		0.090881, 0.698463, -0.709852,
		-0.980642, -0.061375, -0.185939,
		39.958454, 35.426544, 23.210257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349850, 36.114494, 23.543013>,  <40.644905, 35.469509, 23.340414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349850, 36.114494, 23.543013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040894, 35.860840, 23.557318>,  <39.855518, 35.708649, 23.565901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040894, 35.860840, 23.557318>,  <40.349850, 36.114494, 23.543013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040894, 35.860840, 23.557318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420323, 0.552554, 0.719730,
		-0.476169, 0.540883, -0.693332,
		-0.772394, -0.634136, 0.035763,
		39.809174, 35.670597, 23.568047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732304, 36.474430, 23.334156>,  <40.349850, 36.114494, 23.543013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732304, 36.474430, 23.334156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606522, 36.163891, 23.552662>,  <39.531052, 35.977566, 23.683765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606522, 36.163891, 23.552662>,  <39.732304, 36.474430, 23.334156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606522, 36.163891, 23.552662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457865, 0.628134, 0.629132,
		-0.831553, -0.052284, -0.552980,
		-0.314452, -0.776347, 0.546265,
		39.512188, 35.930988, 23.716541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029758, 36.606815, 23.423988>,  <39.732304, 36.474430, 23.334156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029758, 36.606815, 23.423988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142914, 36.362820, 23.720068>,  <39.210808, 36.216423, 23.897717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142914, 36.362820, 23.720068>,  <39.029758, 36.606815, 23.423988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142914, 36.362820, 23.720068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385158, 0.634525, 0.670098,
		-0.878425, -0.474653, -0.055444,
		0.282884, -0.609986, 0.740199,
		39.227779, 36.179825, 23.942127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435192, 36.528271, 23.792168>,  <39.029758, 36.606815, 23.423988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435192, 36.528271, 23.792168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733562, 36.429520, 24.039604>,  <38.912582, 36.370270, 24.188066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733562, 36.429520, 24.039604>,  <38.435192, 36.528271, 23.792168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733562, 36.429520, 24.039604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437226, 0.519119, 0.734404,
		-0.502429, -0.818271, 0.279281,
		0.745921, -0.246877, 0.618589,
		38.957340, 36.355457, 24.225182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188042, 36.175617, 24.361073>,  <38.435192, 36.528271, 23.792168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188042, 36.175617, 24.361073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538532, 36.301865, 24.506742>,  <38.748825, 36.377613, 24.594145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538532, 36.301865, 24.506742>,  <38.188042, 36.175617, 24.361073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538532, 36.301865, 24.506742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469788, 0.391015, 0.791458,
		0.107397, -0.864578, 0.490887,
		0.876222, 0.315613, 0.364174,
		38.801399, 36.396549, 24.615995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146198, 36.099331, 25.053823>,  <38.188042, 36.175617, 24.361073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146198, 36.099331, 25.053823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480236, 36.319359, 25.051123>,  <38.680660, 36.451374, 25.049501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480236, 36.319359, 25.051123>,  <38.146198, 36.099331, 25.053823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480236, 36.319359, 25.051123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229860, 0.360069, 0.904165,
		0.499782, -0.753510, 0.427130,
		0.835094, 0.550066, -0.006754,
		38.730766, 36.484379, 25.049097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499989, 35.903809, 25.633270>,  <38.146198, 36.099331, 25.053823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499989, 35.903809, 25.633270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615868, 36.274494, 25.537531>,  <38.685394, 36.496906, 25.480087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615868, 36.274494, 25.537531>,  <38.499989, 35.903809, 25.633270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615868, 36.274494, 25.537531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068489, 0.229358, 0.970929,
		0.954666, -0.297664, 0.002974,
		0.289693, 0.926709, -0.239347,
		38.702774, 36.552505, 25.465727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974491, 36.055149, 26.102638>,  <38.499989, 35.903809, 25.633270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974491, 36.055149, 26.102638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832603, 36.405289, 25.971218>,  <38.747471, 36.615372, 25.892366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832603, 36.405289, 25.971218>,  <38.974491, 36.055149, 26.102638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832603, 36.405289, 25.971218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136120, 0.299307, 0.944398,
		0.925010, 0.379720, 0.012982,
		-0.354722, 0.875345, -0.328549,
		38.726189, 36.667892, 25.872654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225300, 36.616180, 26.507000>,  <38.974491, 36.055149, 26.102638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225300, 36.616180, 26.507000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918629, 36.783813, 26.312443>,  <38.734627, 36.884392, 26.195707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918629, 36.783813, 26.312443>,  <39.225300, 36.616180, 26.507000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918629, 36.783813, 26.312443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210151, 0.552048, 0.806895,
		0.606665, 0.720844, -0.335173,
		-0.766677, 0.419078, -0.486395,
		38.688625, 36.909538, 26.166525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256283, 37.298206, 26.664446>,  <39.225300, 36.616180, 26.507000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256283, 37.298206, 26.664446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879520, 37.236118, 26.545307>,  <38.653461, 37.198864, 26.473824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879520, 37.236118, 26.545307>,  <39.256283, 37.298206, 26.664446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879520, 37.236118, 26.545307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335336, 0.484428, 0.808009,
		0.018865, 0.860950, -0.508339,
		-0.941910, -0.155221, -0.297846,
		38.596947, 37.189552, 26.455954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943913, 37.833202, 26.977839>,  <39.256283, 37.298206, 26.664446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943913, 37.833202, 26.977839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637932, 37.596561, 26.875973>,  <38.454346, 37.454575, 26.814854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637932, 37.596561, 26.875973>,  <38.943913, 37.833202, 26.977839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637932, 37.596561, 26.875973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549404, 0.392962, 0.737385,
		-0.336168, 0.703976, -0.625627,
		-0.764949, -0.591607, -0.254667,
		38.408447, 37.419079, 26.799572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404449, 38.275299, 26.912945>,  <38.943913, 37.833202, 26.977839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404449, 38.275299, 26.912945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272949, 37.905590, 26.990559>,  <38.194050, 37.683765, 27.037127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272949, 37.905590, 26.990559>,  <38.404449, 38.275299, 26.912945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272949, 37.905590, 26.990559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602187, 0.363415, 0.710845,
		-0.727527, 0.116844, -0.676056,
		-0.328747, -0.924271, 0.194032,
		38.174324, 37.628307, 27.048769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635521, 38.322739, 27.166821>,  <38.404449, 38.275299, 26.912945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635521, 38.322739, 27.166821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781723, 37.980869, 27.314299>,  <37.869446, 37.775749, 27.402786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781723, 37.980869, 27.314299>,  <37.635521, 38.322739, 27.166821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781723, 37.980869, 27.314299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348277, 0.241755, 0.905681,
		-0.863196, -0.459441, -0.209300,
		0.365507, -0.854674, 0.368695,
		37.891376, 37.724468, 27.424908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132828, 38.130013, 27.621763>,  <37.635521, 38.322739, 27.166821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132828, 38.130013, 27.621763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455666, 37.916553, 27.722805>,  <37.649368, 37.788479, 27.783430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455666, 37.916553, 27.722805>,  <37.132828, 38.130013, 27.621763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455666, 37.916553, 27.722805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157172, 0.218204, 0.963163,
		-0.569113, -0.817070, 0.092237,
		0.807098, -0.533651, 0.252603,
		37.697796, 37.756458, 27.798586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860004, 37.599197, 28.066381>,  <37.132828, 38.130013, 27.621763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860004, 37.599197, 28.066381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250683, 37.641914, 28.140846>,  <37.485092, 37.667545, 28.185526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250683, 37.641914, 28.140846>,  <36.860004, 37.599197, 28.066381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250683, 37.641914, 28.140846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202857, 0.176140, 0.963236,
		0.070074, -0.978555, 0.193699,
		0.976698, 0.106791, 0.186164,
		37.543694, 37.673954, 28.196695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888344, 37.169296, 28.615887>,  <36.860004, 37.599197, 28.066381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888344, 37.169296, 28.615887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220947, 37.391495, 28.617334>,  <37.420509, 37.524815, 28.618204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220947, 37.391495, 28.617334>,  <36.888344, 37.169296, 28.615887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220947, 37.391495, 28.617334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092384, 0.131854, 0.986955,
		0.547775, -0.820996, 0.160957,
		0.831509, 0.555500, 0.003621,
		37.470402, 37.558144, 28.618422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292194, 36.925079, 29.186855>,  <36.888344, 37.169296, 28.615887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292194, 36.925079, 29.186855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417404, 37.295368, 29.101942>,  <37.492531, 37.517540, 29.050993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417404, 37.295368, 29.101942>,  <37.292194, 36.925079, 29.186855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417404, 37.295368, 29.101942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019815, 0.229833, 0.973028,
		0.949539, -0.300372, 0.090285,
		0.313022, 0.925718, -0.212284,
		37.511311, 37.573082, 29.038258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713970, 37.024097, 29.752970>,  <37.292194, 36.925079, 29.186855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713970, 37.024097, 29.752970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672123, 37.385933, 29.587671>,  <37.647015, 37.603035, 29.488493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672123, 37.385933, 29.587671>,  <37.713970, 37.024097, 29.752970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672123, 37.385933, 29.587671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003355, 0.415204, 0.909722,
		0.994507, 0.096558, -0.040402,
		-0.104617, 0.904590, -0.413247,
		37.640739, 37.657310, 29.463697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254475, 37.451096, 29.999920>,  <37.713970, 37.024097, 29.752970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254475, 37.451096, 29.999920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941399, 37.675312, 29.891706>,  <37.753551, 37.809841, 29.826778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941399, 37.675312, 29.891706>,  <38.254475, 37.451096, 29.999920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941399, 37.675312, 29.891706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107744, 0.306072, 0.945892,
		0.613011, 0.769492, -0.179166,
		-0.782693, 0.560538, -0.270533,
		37.706589, 37.843472, 29.810547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453728, 38.205257, 30.182356>,  <38.254475, 37.451096, 29.999920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453728, 38.205257, 30.182356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056519, 38.160313, 30.168013>,  <37.818195, 38.133347, 30.159407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056519, 38.160313, 30.168013>,  <38.453728, 38.205257, 30.182356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056519, 38.160313, 30.168013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076117, 0.378287, 0.922554,
		-0.090094, 0.918844, -0.384199,
		-0.993020, -0.112361, -0.035858,
		37.758614, 38.126606, 30.157255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146400, 38.888092, 30.363352>,  <38.453728, 38.205257, 30.182356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146400, 38.888092, 30.363352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882614, 38.602474, 30.457378>,  <37.724342, 38.431103, 30.513794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882614, 38.602474, 30.457378>,  <38.146400, 38.888092, 30.363352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882614, 38.602474, 30.457378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049613, 0.353354, 0.934173,
		-0.750099, 0.604390, -0.268449,
		-0.659462, -0.714041, 0.235065,
		37.684776, 38.388264, 30.527897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718636, 39.290215, 30.735386>,  <38.146400, 38.888092, 30.363352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718636, 39.290215, 30.735386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621353, 38.907314, 30.798035>,  <37.562984, 38.677574, 30.835625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621353, 38.907314, 30.798035>,  <37.718636, 39.290215, 30.735386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621353, 38.907314, 30.798035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060330, 0.146230, 0.987409,
		-0.968097, 0.249594, 0.022187,
		-0.243207, -0.957246, 0.156623,
		37.548389, 38.620140, 30.845022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281006, 39.252659, 31.304848>,  <37.718636, 39.290215, 30.735386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281006, 39.252659, 31.304848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416134, 38.876255, 31.312660>,  <37.497211, 38.650414, 31.317348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416134, 38.876255, 31.312660>,  <37.281006, 39.252659, 31.304848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416134, 38.876255, 31.312660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182603, 0.085885, 0.979428,
		-0.923327, -0.327304, 0.200845,
		0.337820, -0.941008, 0.019533,
		37.517479, 38.593952, 31.318520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939049, 38.979343, 31.829285>,  <37.281006, 39.252659, 31.304848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939049, 38.979343, 31.829285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257401, 38.746315, 31.763319>,  <37.448410, 38.606499, 31.723740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257401, 38.746315, 31.763319>,  <36.939049, 38.979343, 31.829285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257401, 38.746315, 31.763319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185070, -0.025263, 0.982401,
		-0.576482, -0.812389, 0.087709,
		0.795876, -0.582568, -0.164913,
		37.496162, 38.571545, 31.713846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896915, 38.373390, 32.318287>,  <36.939049, 38.979343, 31.829285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896915, 38.373390, 32.318287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277325, 38.417694, 32.202850>,  <37.505569, 38.444275, 32.133587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277325, 38.417694, 32.202850>,  <36.896915, 38.373390, 32.318287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277325, 38.417694, 32.202850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298531, -0.086859, 0.950439,
		0.080204, -0.990044, -0.115670,
		0.951024, 0.110761, -0.288592,
		37.562634, 38.450920, 32.116272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180481, 37.924717, 32.654743>,  <36.896915, 38.373390, 32.318287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180481, 37.924717, 32.654743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487118, 38.159229, 32.549965>,  <37.671101, 38.299934, 32.487099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487118, 38.159229, 32.549965>,  <37.180481, 37.924717, 32.654743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487118, 38.159229, 32.549965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466079, -0.227411, 0.855017,
		0.441708, -0.777537, -0.447583,
		0.766593, 0.586277, -0.261944,
		37.717094, 38.335114, 32.471382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880032, 37.547756, 32.718231>,  <37.180481, 37.924717, 32.654743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880032, 37.547756, 32.718231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967911, 37.936203, 32.755482>,  <38.020638, 38.169270, 32.777832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967911, 37.936203, 32.755482>,  <37.880032, 37.547756, 32.718231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967911, 37.936203, 32.755482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532145, -0.199301, 0.822862,
		0.817652, -0.131224, -0.560559,
		0.219699, 0.971113, 0.093129,
		38.033821, 38.227535, 32.783421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603725, 37.576622, 32.949085>,  <37.880032, 37.547756, 32.718231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603725, 37.576622, 32.949085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446899, 37.937637, 33.020302>,  <38.352802, 38.154247, 33.063034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446899, 37.937637, 33.020302>,  <38.603725, 37.576622, 32.949085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446899, 37.937637, 33.020302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570791, 0.086886, 0.816486,
		0.721444, 0.421743, -0.549228,
		-0.392067, 0.902543, 0.178044,
		38.329281, 38.208401, 33.073715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184460, 38.056587, 33.017487>,  <38.603725, 37.576622, 32.949085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184460, 38.056587, 33.017487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896915, 38.275078, 33.189476>,  <38.724388, 38.406170, 33.292671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896915, 38.275078, 33.189476>,  <39.184460, 38.056587, 33.017487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896915, 38.275078, 33.189476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624703, 0.236280, 0.744256,
		0.304936, 0.803624, -0.511080,
		-0.718860, 0.546224, 0.429976,
		38.681259, 38.438946, 33.318470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499172, 38.625736, 33.306042>,  <39.184460, 38.056587, 33.017487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499172, 38.625736, 33.306042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140598, 38.638885, 33.482826>,  <38.925453, 38.646774, 33.588898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140598, 38.638885, 33.482826>,  <39.499172, 38.625736, 33.306042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140598, 38.638885, 33.482826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436085, 0.243162, 0.866431,
		-0.078985, 0.969428, -0.232314,
		-0.896433, 0.032874, 0.441959,
		38.871670, 38.648746, 33.615414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484303, 39.199631, 33.710129>,  <39.499172, 38.625736, 33.306042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484303, 39.199631, 33.710129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214035, 38.942585, 33.854633>,  <39.051876, 38.788357, 33.941338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214035, 38.942585, 33.854633>,  <39.484303, 39.199631, 33.710129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214035, 38.942585, 33.854633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340051, 0.163120, 0.926152,
		-0.654091, 0.748622, 0.108307,
		-0.675670, -0.642618, 0.361265,
		39.011333, 38.749798, 33.963013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168308, 39.514633, 34.299412>,  <39.484303, 39.199631, 33.710129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168308, 39.514633, 34.299412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138107, 39.116108, 34.315727>,  <39.119987, 38.876995, 34.325516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138107, 39.116108, 34.315727>,  <39.168308, 39.514633, 34.299412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138107, 39.116108, 34.315727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474109, 0.000120, 0.880466,
		-0.877223, 0.085812, 0.472351,
		-0.075498, -0.996311, 0.040790,
		39.115459, 38.817215, 34.327965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035942, 39.449482, 34.992710>,  <39.168308, 39.514633, 34.299412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035942, 39.449482, 34.992710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170200, 39.098751, 34.855003>,  <39.250755, 38.888313, 34.772377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170200, 39.098751, 34.855003>,  <39.035942, 39.449482, 34.992710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170200, 39.098751, 34.855003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581463, -0.094683, 0.808044,
		-0.741110, -0.471395, 0.478062,
		0.335644, -0.876825, -0.344269,
		39.270893, 38.835705, 34.751724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985653, 39.049618, 35.582649>,  <39.035942, 39.449482, 34.992710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985653, 39.049618, 35.582649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251209, 38.894165, 35.327080>,  <39.410542, 38.800896, 35.173737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251209, 38.894165, 35.327080>,  <38.985653, 39.049618, 35.582649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251209, 38.894165, 35.327080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703878, 0.036133, 0.709401,
		-0.252607, -0.920686, 0.297535,
		0.663886, -0.388628, -0.638923,
		39.450375, 38.777576, 35.135403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315460, 38.383423, 35.893017>,  <38.985653, 39.049618, 35.582649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315460, 38.383423, 35.893017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576916, 38.488548, 35.609135>,  <39.733791, 38.551624, 35.438805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576916, 38.488548, 35.609135>,  <39.315460, 38.383423, 35.893017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576916, 38.488548, 35.609135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715499, 0.090971, 0.692665,
		0.246608, -0.960547, -0.128584,
		0.653640, 0.262819, -0.709705,
		39.773006, 38.567394, 35.396225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896973, 37.912197, 35.923729>,  <39.315460, 38.383423, 35.893017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896973, 37.912197, 35.923729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035278, 38.234837, 35.731960>,  <40.118263, 38.428421, 35.616898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035278, 38.234837, 35.731960>,  <39.896973, 37.912197, 35.923729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035278, 38.234837, 35.731960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858837, -0.066243, 0.507948,
		0.377952, -0.587376, -0.715640,
		0.345763, 0.806598, -0.479424,
		40.139008, 38.476814, 35.588135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589176, 37.783279, 35.834545>,  <39.896973, 37.912197, 35.923729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589176, 37.783279, 35.834545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534931, 38.179321, 35.820068>,  <40.502384, 38.416946, 35.811382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534931, 38.179321, 35.820068>,  <40.589176, 37.783279, 35.834545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534931, 38.179321, 35.820068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724970, 0.124060, 0.677515,
		0.675299, 0.065641, -0.734618,
		-0.135609, 0.990101, -0.036190,
		40.494247, 38.476353, 35.809212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303215, 38.135719, 35.927929>,  <40.589176, 37.783279, 35.834545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303215, 38.135719, 35.927929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041210, 38.431801, 35.988670>,  <40.884007, 38.609451, 36.025116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041210, 38.431801, 35.988670>,  <41.303215, 38.135719, 35.927929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041210, 38.431801, 35.988670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620926, 0.412750, 0.666399,
		0.430597, 0.530785, -0.729968,
		-0.655009, 0.740206, 0.151849,
		40.844707, 38.653862, 36.034225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703186, 38.710846, 35.770523>,  <41.303215, 38.135719, 35.927929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703186, 38.710846, 35.770523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424206, 38.808079, 36.040180>,  <41.256817, 38.866421, 36.201977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424206, 38.808079, 36.040180>,  <41.703186, 38.710846, 35.770523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424206, 38.808079, 36.040180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716269, 0.266457, 0.644950,
		-0.022852, 0.932690, -0.359956,
		-0.697450, 0.243087, 0.674145,
		41.214970, 38.881004, 36.242424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987904, 39.245113, 36.198544>,  <41.703186, 38.710846, 35.770523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987904, 39.245113, 36.198544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674263, 39.136208, 36.421631>,  <41.486076, 39.070862, 36.555485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674263, 39.136208, 36.421631>,  <41.987904, 39.245113, 36.198544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674263, 39.136208, 36.421631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461760, 0.344496, 0.817374,
		-0.414675, 0.898439, -0.144400,
		-0.784106, -0.272267, 0.557717,
		41.439030, 39.054527, 36.588947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054794, 39.751537, 36.739178>,  <41.987904, 39.245113, 36.198544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054794, 39.751537, 36.739178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782585, 39.496655, 36.883873>,  <41.619259, 39.343723, 36.970692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782585, 39.496655, 36.883873>,  <42.054794, 39.751537, 36.739178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782585, 39.496655, 36.883873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232571, 0.280319, 0.931307,
		-0.694838, 0.717905, -0.042567,
		-0.680523, -0.637207, 0.361740,
		41.578430, 39.305492, 36.992393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602104, 40.069996, 37.289505>,  <42.054794, 39.751537, 36.739178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602104, 40.069996, 37.289505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592331, 39.679947, 37.377632>,  <41.586468, 39.445919, 37.430508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592331, 39.679947, 37.377632>,  <41.602104, 40.069996, 37.289505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592331, 39.679947, 37.377632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120845, 0.215885, 0.968912,
		-0.992371, 0.050298, 0.112564,
		-0.024434, -0.975122, 0.220316,
		41.584999, 39.387409, 37.443726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421021, 40.146324, 37.928295>,  <41.602104, 40.069996, 37.289505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421021, 40.146324, 37.928295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538406, 39.768085, 37.872108>,  <41.608837, 39.541142, 37.838398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538406, 39.768085, 37.872108>,  <41.421021, 40.146324, 37.928295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538406, 39.768085, 37.872108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185346, -0.087867, 0.978737,
		-0.937831, -0.313255, 0.149477,
		0.293461, -0.945595, -0.140465,
		41.626446, 39.484406, 37.829967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091606, 39.736748, 38.431946>,  <41.421021, 40.146324, 37.928295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091606, 39.736748, 38.431946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397766, 39.502724, 38.324711>,  <41.581463, 39.362309, 38.260368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397766, 39.502724, 38.324711>,  <41.091606, 39.736748, 38.431946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397766, 39.502724, 38.324711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283780, -0.067058, 0.956542,
		-0.577611, -0.808214, 0.114702,
		0.765398, -0.585058, -0.268089,
		41.627384, 39.327206, 38.244286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173000, 39.327774, 39.009785>,  <41.091606, 39.736748, 38.431946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173000, 39.327774, 39.009785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493244, 39.250362, 38.782955>,  <41.685390, 39.203915, 38.646858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493244, 39.250362, 38.782955>,  <41.173000, 39.327774, 39.009785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493244, 39.250362, 38.782955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517533, -0.253595, 0.817220,
		-0.301962, -0.947753, -0.102874,
		0.800611, -0.193529, -0.567069,
		41.733429, 39.192303, 38.612835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383945, 38.644718, 39.074795>,  <41.173000, 39.327774, 39.009785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383945, 38.644718, 39.074795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721146, 38.844528, 38.994976>,  <41.923466, 38.964417, 38.947083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721146, 38.844528, 38.994976>,  <41.383945, 38.644718, 39.074795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721146, 38.844528, 38.994976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492842, -0.568608, 0.658629,
		0.215539, -0.653571, -0.725526,
		0.843000, 0.499530, -0.199550,
		41.974045, 38.994389, 38.935112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918846, 38.166294, 38.812225>,  <41.383945, 38.644718, 39.074795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918846, 38.166294, 38.812225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113483, 38.490288, 38.943161>,  <42.230267, 38.684685, 39.021721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113483, 38.490288, 38.943161>,  <41.918846, 38.166294, 38.812225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113483, 38.490288, 38.943161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440700, -0.551102, 0.708569,
		0.754326, -0.200530, -0.625124,
		0.486597, 0.809984, 0.327337,
		42.259464, 38.733284, 39.041363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637878, 37.976467, 38.975983>,  <41.918846, 38.166294, 38.812225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637878, 37.976467, 38.975983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544827, 38.285980, 39.211658>,  <42.488995, 38.471687, 39.353062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544827, 38.285980, 39.211658>,  <42.637878, 37.976467, 38.975983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544827, 38.285980, 39.211658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346157, -0.500260, 0.793672,
		0.908879, 0.388579, -0.151479,
		-0.232625, 0.773787, 0.589185,
		42.475040, 38.518116, 39.388412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227119, 38.282951, 39.377327>,  <42.637878, 37.976467, 38.975983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227119, 38.282951, 39.377327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896370, 38.336994, 39.595692>,  <42.697918, 38.369419, 39.726711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896370, 38.336994, 39.595692>,  <43.227119, 38.282951, 39.377327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896370, 38.336994, 39.595692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430677, -0.472109, 0.769175,
		0.361652, 0.871125, 0.332189,
		-0.826877, 0.135107, 0.545913,
		42.648308, 38.377525, 39.759464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534088, 38.536312, 39.892269>,  <43.227119, 38.282951, 39.377327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534088, 38.536312, 39.892269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184956, 38.378429, 40.007072>,  <42.975475, 38.283699, 40.075954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184956, 38.378429, 40.007072>,  <43.534088, 38.536312, 39.892269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184956, 38.378429, 40.007072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444748, -0.401224, 0.800761,
		-0.200909, 0.826576, 0.525745,
		-0.872831, -0.394704, 0.287009,
		42.923107, 38.260017, 40.093174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520538, 38.639824, 40.663059>,  <43.534088, 38.536312, 39.892269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520538, 38.639824, 40.663059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215107, 38.385380, 40.618671>,  <43.031849, 38.232712, 40.592041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215107, 38.385380, 40.618671>,  <43.520538, 38.639824, 40.663059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215107, 38.385380, 40.618671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284391, -0.485582, 0.826639,
		-0.579718, 0.599644, 0.551683,
		-0.763576, -0.636111, -0.110967,
		42.986034, 38.194546, 40.585381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197227, 38.553654, 41.332993>,  <43.520538, 38.639824, 40.663059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197227, 38.553654, 41.332993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108589, 38.222645, 41.126656>,  <43.055405, 38.024040, 41.002853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108589, 38.222645, 41.126656>,  <43.197227, 38.553654, 41.332993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108589, 38.222645, 41.126656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311050, -0.561348, 0.766901,
		-0.924198, 0.009492, 0.381796,
		-0.221599, -0.827526, -0.515844,
		43.042110, 37.974388, 40.971901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740139, 38.059551, 41.696747>,  <43.197227, 38.553654, 41.332993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740139, 38.059551, 41.696747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968544, 37.852337, 41.442005>,  <43.105587, 37.728008, 41.289158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.968544, 37.852337, 41.442005>,  <42.740139, 38.059551, 41.696747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968544, 37.852337, 41.442005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411417, -0.490739, 0.768056,
		-0.710413, -0.700581, -0.067087,
		0.571008, -0.518036, -0.636858,
		43.139847, 37.696926, 41.250946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736076, 37.346268, 41.821991>,  <42.740139, 38.059551, 41.696747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736076, 37.346268, 41.821991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085499, 37.441971, 41.652451>,  <43.295155, 37.499393, 41.550728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085499, 37.441971, 41.652451>,  <42.736076, 37.346268, 41.821991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085499, 37.441971, 41.652451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486489, -0.455995, 0.745250,
		-0.014965, -0.857219, -0.514735,
		0.873559, 0.239260, -0.423851,
		43.347565, 37.513748, 41.525295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152386, 36.790901, 42.013245>,  <42.736076, 37.346268, 41.821991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152386, 36.790901, 42.013245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428967, 37.059895, 41.907665>,  <43.594913, 37.221291, 41.844318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428967, 37.059895, 41.907665>,  <43.152386, 36.790901, 42.013245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428967, 37.059895, 41.907665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650894, -0.421405, 0.631470,
		0.313423, -0.608432, -0.729093,
		0.691450, 0.672480, -0.263946,
		43.636402, 37.261639, 41.828480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692616, 37.388924, 42.392506>,  <43.152386, 36.790901, 42.013245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692616, 37.388924, 42.392506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815918, 37.141136, 42.103718>,  <43.889900, 36.992466, 41.930447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815918, 37.141136, 42.103718>,  <43.692616, 37.388924, 42.392506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815918, 37.141136, 42.103718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695108, 0.371454, -0.615505,
		0.649464, 0.691579, -0.316093,
		0.308256, -0.619467, -0.721969,
		43.908394, 36.955296, 41.887127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091358, 37.728416, 41.808651>,  <43.692616, 37.388924, 42.392506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091358, 37.728416, 41.808651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894840, 37.400425, 41.691174>,  <43.776928, 37.203629, 41.620686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894840, 37.400425, 41.691174>,  <44.091358, 37.728416, 41.808651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894840, 37.400425, 41.691174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451665, 0.528163, -0.719056,
		0.744731, -0.220620, -0.629843,
		-0.491298, -0.819982, -0.293693,
		43.747452, 37.154430, 41.603065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074970, 37.680916, 41.034222>,  <44.091358, 37.728416, 41.808651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074970, 37.680916, 41.034222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761257, 37.447884, 41.119541>,  <43.573029, 37.308064, 41.170731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761257, 37.447884, 41.119541>,  <44.074970, 37.680916, 41.034222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761257, 37.447884, 41.119541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551151, 0.496430, -0.670663,
		0.284830, -0.643550, -0.710434,
		-0.784286, -0.582581, 0.213295,
		43.525970, 37.273109, 41.183529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565754, 37.653271, 40.463421>,  <44.074970, 37.680916, 41.034222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565754, 37.653271, 40.463421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341476, 37.495998, 40.754910>,  <43.206909, 37.401634, 40.929802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341476, 37.495998, 40.754910>,  <43.565754, 37.653271, 40.463421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341476, 37.495998, 40.754910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825178, 0.338213, -0.452431,
		-0.068576, -0.854999, -0.514076,
		-0.560695, -0.393178, 0.728719,
		43.173267, 37.378044, 40.973526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047623, 37.266434, 40.083813>,  <43.565754, 37.653271, 40.463421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047623, 37.266434, 40.083813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955677, 37.451340, 40.426384>,  <42.900509, 37.562283, 40.631927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955677, 37.451340, 40.426384>,  <43.047623, 37.266434, 40.083813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955677, 37.451340, 40.426384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668650, 0.564402, -0.484105,
		-0.707157, -0.683928, 0.179363,
		-0.229860, 0.462269, 0.856430,
		42.886719, 37.590019, 40.683311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262344, 37.250679, 40.135460>,  <43.047623, 37.266434, 40.083813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262344, 37.250679, 40.135460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464096, 37.549812, 40.308136>,  <42.585148, 37.729290, 40.411739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464096, 37.549812, 40.308136>,  <42.262344, 37.250679, 40.135460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464096, 37.549812, 40.308136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578901, 0.663799, -0.473544,
		-0.640683, -0.011057, 0.767726,
		0.504380, 0.747829, 0.431686,
		42.615410, 37.774162, 40.437641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813652, 37.763912, 40.436901>,  <42.262344, 37.250679, 40.135460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813652, 37.763912, 40.436901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166161, 37.912266, 40.319725>,  <42.377666, 38.001278, 40.249420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166161, 37.912266, 40.319725>,  <41.813652, 37.763912, 40.436901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166161, 37.912266, 40.319725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470499, 0.629835, -0.618012,
		-0.044708, 0.682461, 0.729554,
		0.881267, 0.370884, -0.292938,
		42.430542, 38.023533, 40.231842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492279, 38.319233, 40.074692>,  <41.813652, 37.763912, 40.436901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492279, 38.319233, 40.074692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885605, 38.381691, 40.037350>,  <42.121601, 38.419167, 40.014946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885605, 38.381691, 40.037350>,  <41.492279, 38.319233, 40.074692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885605, 38.381691, 40.037350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159537, 0.493470, -0.855006,
		-0.087440, 0.855631, 0.510146,
		0.983312, 0.156149, -0.093356,
		42.180599, 38.428535, 40.009342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724430, 38.917679, 39.951061>,  <41.492279, 38.319233, 40.074692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724430, 38.917679, 39.951061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122467, 38.884384, 39.929653>,  <42.361290, 38.864407, 39.916809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122467, 38.884384, 39.929653>,  <41.724430, 38.917679, 39.951061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122467, 38.884384, 39.929653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016668, 0.392098, -0.919773,
		0.097547, 0.916150, 0.388786,
		0.995091, -0.083240, -0.053518,
		42.420994, 38.859413, 39.913597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040577, 39.625587, 39.725204>,  <41.724430, 38.917679, 39.951061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040577, 39.625587, 39.725204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271339, 39.315006, 39.623772>,  <42.409798, 39.128658, 39.562912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271339, 39.315006, 39.623772>,  <42.040577, 39.625587, 39.725204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271339, 39.315006, 39.623772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075488, 0.258439, -0.963074,
		0.813318, 0.574741, 0.090481,
		0.576902, -0.776455, -0.253579,
		42.444408, 39.082069, 39.547699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688259, 39.907272, 39.349758>,  <42.040577, 39.625587, 39.725204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688259, 39.907272, 39.349758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582455, 39.530807, 39.265621>,  <42.518970, 39.304928, 39.215141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582455, 39.530807, 39.265621>,  <42.688259, 39.907272, 39.349758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582455, 39.530807, 39.265621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155125, 0.256792, -0.953936,
		0.951824, -0.219700, -0.213923,
		-0.264513, -0.941164, -0.210340,
		42.503101, 39.248459, 39.202518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039177, 39.634369, 38.646530>,  <42.688259, 39.907272, 39.349758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039177, 39.634369, 38.646530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697155, 39.450554, 38.742615>,  <42.491940, 39.340267, 38.800266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697155, 39.450554, 38.742615>,  <43.039177, 39.634369, 38.646530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697155, 39.450554, 38.742615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311984, 0.085907, -0.946195,
		0.414173, -0.883995, -0.216823,
		-0.855059, -0.459535, 0.240212,
		42.440636, 39.312695, 38.814678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919796, 39.348167, 38.111511>,  <43.039177, 39.634369, 38.646530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919796, 39.348167, 38.111511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582302, 39.276157, 38.313778>,  <42.379807, 39.232952, 38.435139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582302, 39.276157, 38.313778>,  <42.919796, 39.348167, 38.111511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582302, 39.276157, 38.313778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502543, -0.065999, -0.862029,
		0.188564, -0.981444, -0.034786,
		-0.843738, -0.180030, 0.505663,
		42.329182, 39.222149, 38.465477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683178, 38.593510, 38.030384>,  <42.919796, 39.348167, 38.111511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683178, 38.593510, 38.030384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392941, 38.858654, 38.104275>,  <42.218800, 39.017742, 38.148609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392941, 38.858654, 38.104275>,  <42.683178, 38.593510, 38.030384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392941, 38.858654, 38.104275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403803, -0.192788, -0.894302,
		-0.557186, -0.723495, 0.407552,
		-0.725595, 0.662863, 0.184731,
		42.175262, 39.057514, 38.159695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191967, 38.433487, 37.542812>,  <42.683178, 38.593510, 38.030384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191967, 38.433487, 37.542812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017441, 38.739109, 37.732906>,  <41.912724, 38.922482, 37.846962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017441, 38.739109, 37.732906>,  <42.191967, 38.433487, 37.542812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017441, 38.739109, 37.732906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661134, 0.086038, -0.745318,
		-0.610350, -0.639392, 0.467601,
		-0.436319, 0.764052, 0.475237,
		41.886543, 38.968323, 37.875477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573139, 38.121868, 37.497181>,  <42.191967, 38.433487, 37.542812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573139, 38.121868, 37.497181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527664, 38.516075, 37.547501>,  <41.500378, 38.752602, 37.577694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527664, 38.516075, 37.547501>,  <41.573139, 38.121868, 37.497181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527664, 38.516075, 37.547501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536853, 0.045605, -0.842442,
		-0.835981, -0.163310, 0.523895,
		-0.113687, 0.985520, 0.125799,
		41.493557, 38.811729, 37.585239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864185, 38.342247, 37.509197>,  <41.573139, 38.121868, 37.497181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864185, 38.342247, 37.509197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056576, 38.661610, 37.364304>,  <41.172009, 38.853226, 37.277367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056576, 38.661610, 37.364304>,  <40.864185, 38.342247, 37.509197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056576, 38.661610, 37.364304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555403, -0.042213, -0.830509,
		-0.678373, 0.600640, 0.423133,
		0.480976, 0.798404, -0.362233,
		41.200867, 38.901131, 37.255634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361351, 38.823692, 37.285839>,  <40.864185, 38.342247, 37.509197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361351, 38.823692, 37.285839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681149, 38.911255, 37.062092>,  <40.873028, 38.963791, 36.927845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681149, 38.911255, 37.062092>,  <40.361351, 38.823692, 37.285839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681149, 38.911255, 37.062092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561317, -0.059259, -0.825477,
		-0.213846, 0.973946, 0.075497,
		0.799496, 0.218903, -0.559364,
		40.920998, 38.976925, 36.894283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324814, 39.447670, 36.981098>,  <40.361351, 38.823692, 37.285839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324814, 39.447670, 36.981098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545677, 39.209900, 36.747253>,  <40.678196, 39.067238, 36.606945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545677, 39.209900, 36.747253>,  <40.324814, 39.447670, 36.981098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545677, 39.209900, 36.747253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735005, -0.016062, -0.677871,
		0.393557, 0.803987, -0.445777,
		0.552160, -0.594429, -0.584614,
		40.711327, 39.031570, 36.571869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112286, 39.622562, 36.369373>,  <40.324814, 39.447670, 36.981098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112286, 39.622562, 36.369373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332314, 39.296818, 36.295361>,  <40.464329, 39.101372, 36.250954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332314, 39.296818, 36.295361>,  <40.112286, 39.622562, 36.369373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332314, 39.296818, 36.295361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372874, -0.041241, -0.926965,
		0.747253, 0.578892, -0.326340,
		0.550071, -0.814361, -0.185037,
		40.497334, 39.052509, 36.239849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415848, 39.765594, 35.677120>,  <40.112286, 39.622562, 36.369373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415848, 39.765594, 35.677120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434563, 39.367065, 35.705853>,  <40.445789, 39.127949, 35.723091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434563, 39.367065, 35.705853>,  <40.415848, 39.765594, 35.677120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434563, 39.367065, 35.705853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497390, -0.085599, -0.863294,
		0.866265, 0.004659, -0.499564,
		0.046784, -0.996319, 0.071835,
		40.448597, 39.068169, 35.727402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590046, 39.546093, 35.019100>,  <40.415848, 39.765594, 35.677120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590046, 39.546093, 35.019100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446136, 39.211151, 35.183731>,  <40.359791, 39.010185, 35.282509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446136, 39.211151, 35.183731>,  <40.590046, 39.546093, 35.019100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446136, 39.211151, 35.183731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586768, -0.139916, -0.797576,
		0.725440, -0.528452, -0.440994,
		-0.359778, -0.837354, 0.411579,
		40.338203, 38.959946, 35.307205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540913, 39.016922, 34.408657>,  <40.590046, 39.546093, 35.019100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540913, 39.016922, 34.408657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316113, 38.894066, 34.715855>,  <40.181232, 38.820354, 34.900173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316113, 38.894066, 34.715855>,  <40.540913, 39.016922, 34.408657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316113, 38.894066, 34.715855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765443, -0.158744, -0.623616,
		0.313451, -0.938332, -0.145882,
		-0.562001, -0.307138, 0.767998,
		40.147511, 38.801926, 34.946255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473312, 38.398350, 34.287941>,  <40.540913, 39.016922, 34.408657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473312, 38.398350, 34.287941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167233, 38.527180, 34.510918>,  <39.983585, 38.604477, 34.644703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167233, 38.527180, 34.510918>,  <40.473312, 38.398350, 34.287941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167233, 38.527180, 34.510918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624047, -0.158239, -0.765197,
		-0.158239, -0.933397, 0.322071,
		0.765197, -0.322071, -0.557444,
		39.937672, 38.623802, 34.678150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826866, 38.392307, 33.532158>,  <40.473312, 38.398350, 34.287941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826866, 38.392307, 33.532158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108265, 38.115063, 33.469318>,  <41.277103, 37.948715, 33.431614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108265, 38.115063, 33.469318>,  <40.826866, 38.392307, 33.532158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108265, 38.115063, 33.469318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408850, 0.575510, -0.708258,
		0.581315, 0.434031, 0.688251,
		0.703501, -0.693113, -0.157099,
		41.319317, 37.907127, 33.422188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517708, 38.593002, 33.621231>,  <40.826866, 38.392307, 33.532158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517708, 38.593002, 33.621231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477116, 38.319164, 33.332500>,  <41.452759, 38.154861, 33.159264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477116, 38.319164, 33.332500>,  <41.517708, 38.593002, 33.621231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477116, 38.319164, 33.332500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203377, 0.695972, -0.688666,
		0.973827, -0.216690, 0.068602,
		-0.101482, -0.684594, -0.721826,
		41.446671, 38.113785, 33.115952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743431, 38.297821, 34.180016>,  <41.517708, 38.593002, 33.621231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743431, 38.297821, 34.180016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982708, 38.522675, 33.951572>,  <42.126274, 38.657589, 33.814507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982708, 38.522675, 33.951572>,  <41.743431, 38.297821, 34.180016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982708, 38.522675, 33.951572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800807, -0.393051, 0.451907,
		0.029560, -0.727675, -0.685284,
		0.598193, 0.562138, -0.571109,
		42.162167, 38.691315, 33.780239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298756, 37.969769, 33.884331>,  <41.743431, 38.297821, 34.180016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298756, 37.969769, 33.884331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427479, 38.348240, 33.898064>,  <42.504711, 38.575325, 33.906303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427479, 38.348240, 33.898064>,  <42.298756, 37.969769, 33.884331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427479, 38.348240, 33.898064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826668, -0.298468, 0.477009,
		0.461586, -0.125121, -0.878227,
		0.321806, 0.946183, 0.034335,
		42.524021, 38.632095, 33.908363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823574, 38.050953, 34.394489>,  <42.298756, 37.969769, 33.884331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823574, 38.050953, 34.394489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933117, 38.413799, 34.522327>,  <42.998844, 38.631508, 34.599030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933117, 38.413799, 34.522327>,  <42.823574, 38.050953, 34.394489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933117, 38.413799, 34.522327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780621, 0.403757, -0.477086,
		-0.561812, -0.118831, 0.818686,
		0.273857, 0.907116, 0.319598,
		43.015274, 38.685936, 34.618206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377789, 37.448078, 34.504711>,  <42.823574, 38.050953, 34.394489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377789, 37.448078, 34.504711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066490, 37.242786, 34.649452>,  <42.879711, 37.119614, 34.736298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066490, 37.242786, 34.649452>,  <43.377789, 37.448078, 34.504711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066490, 37.242786, 34.649452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477092, 0.857911, 0.190713,
		-0.408315, -0.024215, -0.912520,
		-0.778243, -0.513227, 0.361850,
		42.833015, 37.088818, 34.758007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037319, 37.901630, 34.890808>,  <43.377789, 37.448078, 34.504711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037319, 37.901630, 34.890808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114773, 38.130875, 35.209316>,  <44.161243, 38.268421, 35.400421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114773, 38.130875, 35.209316>,  <44.037319, 37.901630, 34.890808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114773, 38.130875, 35.209316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103958, -0.819051, 0.564224,
		0.975551, -0.026473, -0.218175,
		0.193633, 0.573110, 0.796274,
		44.172863, 38.302807, 35.448196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646564, 37.630314, 35.248001>,  <44.037319, 37.901630, 34.890808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646564, 37.630314, 35.248001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386112, 37.830109, 35.476582>,  <44.229843, 37.949986, 35.613728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386112, 37.830109, 35.476582>,  <44.646564, 37.630314, 35.248001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386112, 37.830109, 35.476582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011640, -0.759408, 0.650510,
		0.758880, 0.416913, 0.500285,
		-0.651127, 0.499482, 0.571447,
		44.190773, 37.979954, 35.648014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774185, 37.508541, 35.885727>,  <44.646564, 37.630314, 35.248001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774185, 37.508541, 35.885727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385666, 37.600372, 35.910622>,  <44.152554, 37.655472, 35.925560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385666, 37.600372, 35.910622>,  <44.774185, 37.508541, 35.885727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385666, 37.600372, 35.910622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133673, -0.743247, 0.655527,
		0.196756, 0.628392, 0.752603,
		-0.971297, 0.229582, 0.062239,
		44.094276, 37.669247, 35.929295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707550, 37.817642, 36.494976>,  <44.774185, 37.508541, 35.885727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707550, 37.817642, 36.494976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601055, 37.540726, 36.763260>,  <44.537159, 37.374577, 36.924232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601055, 37.540726, 36.763260>,  <44.707550, 37.817642, 36.494976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601055, 37.540726, 36.763260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660315, -0.637902, -0.396314,
		0.702212, 0.337367, 0.626962,
		-0.266237, -0.692289, 0.670712,
		44.521183, 37.333038, 36.964474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.396687, 37.498024, 36.836926>,  <44.707550, 37.817642, 36.494976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.396687, 37.498024, 36.836926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069363, 37.271042, 36.800327>,  <44.872971, 37.134853, 36.778370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069363, 37.271042, 36.800327>,  <45.396687, 37.498024, 36.836926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069363, 37.271042, 36.800327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533482, -0.690579, -0.488362,
		0.213940, -0.448440, 0.867831,
		-0.818307, -0.567453, -0.091492,
		44.823872, 37.100807, 36.772881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495182, 36.739536, 37.137691>,  <45.396687, 37.498024, 36.836926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495182, 36.739536, 37.137691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249420, 36.751335, 36.822315>,  <45.101963, 36.758415, 36.633091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249420, 36.751335, 36.822315>,  <45.495182, 36.739536, 37.137691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249420, 36.751335, 36.822315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563077, -0.683599, -0.464366,
		-0.552672, -0.729261, 0.403400,
		-0.614408, 0.029497, -0.788436,
		45.065098, 36.760185, 36.585785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323078, 36.120686, 37.028675>,  <45.495182, 36.739536, 37.137691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323078, 36.120686, 37.028675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337723, 36.363892, 36.711445>,  <45.346512, 36.509815, 36.521107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337723, 36.363892, 36.711445>,  <45.323078, 36.120686, 37.028675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337723, 36.363892, 36.711445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723117, -0.563884, -0.398920,
		-0.689755, -0.558881, -0.460316,
		0.036616, 0.608019, -0.793077,
		45.348709, 36.546299, 36.473522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249416, 35.748577, 36.270866>,  <45.323078, 36.120686, 37.028675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249416, 35.748577, 36.270866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444633, 36.094555, 36.224083>,  <45.561764, 36.302143, 36.196011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444633, 36.094555, 36.224083>,  <45.249416, 35.748577, 36.270866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444633, 36.094555, 36.224083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809245, -0.498624, -0.310639,
		-0.327005, 0.056957, -0.943305,
		0.488047, 0.864945, -0.116961,
		45.591049, 36.354038, 36.188995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528206, 35.811188, 35.515907>,  <45.249416, 35.748577, 36.270866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528206, 35.811188, 35.515907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731953, 36.027538, 35.783638>,  <45.854202, 36.157349, 35.944275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731953, 36.027538, 35.783638>,  <45.528206, 35.811188, 35.515907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731953, 36.027538, 35.783638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846775, -0.453630, -0.277835,
		0.153351, 0.708287, -0.689067,
		0.509368, 0.540879, 0.669324,
		45.884762, 36.189800, 35.984436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.977890, 36.396061, 35.244427>,  <45.528206, 35.811188, 35.515907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.977890, 36.396061, 35.244427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115883, 36.191437, 35.559208>,  <46.198681, 36.068661, 35.748077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115883, 36.191437, 35.559208>,  <45.977890, 36.396061, 35.244427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115883, 36.191437, 35.559208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777631, -0.313736, -0.544848,
		0.525618, 0.799921, 0.289573,
		0.344986, -0.511563, 0.786948,
		46.219379, 36.037968, 35.795292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.682865, 36.553551, 35.453880>,  <45.977890, 36.396061, 35.244427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.682865, 36.553551, 35.453880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580372, 36.171185, 35.511246>,  <46.518875, 35.941765, 35.545666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.580372, 36.171185, 35.511246>,  <46.682865, 36.553551, 35.453880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.580372, 36.171185, 35.511246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815346, -0.293429, -0.499110,
		0.519190, -0.010956, 0.854589,
		-0.256229, -0.955918, 0.143412,
		46.503502, 35.884411, 35.554268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.294739, 36.251923, 35.807915>,  <46.682865, 36.553551, 35.453880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.294739, 36.251923, 35.807915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.081585, 36.037529, 35.545998>,  <46.953693, 35.908894, 35.388847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.081585, 36.037529, 35.545998>,  <47.294739, 36.251923, 35.807915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.081585, 36.037529, 35.545998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844559, -0.288927, -0.450822,
		0.052443, -0.793251, 0.606632,
		-0.532888, -0.535980, -0.654795,
		46.921719, 35.876736, 35.349560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.420704, 35.491104, 35.897213>,  <47.294739, 36.251923, 35.807915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.420704, 35.491104, 35.897213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.324566, 35.644798, 35.540653>,  <47.266884, 35.737015, 35.326717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.324566, 35.644798, 35.540653>,  <47.420704, 35.491104, 35.897213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.324566, 35.644798, 35.540653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815092, -0.418797, -0.400293,
		-0.527122, -0.822784, -0.212529,
		-0.240348, 0.384234, -0.891402,
		47.252460, 35.760067, 35.273232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.343884, 34.905720, 35.371174>,  <47.420704, 35.491104, 35.897213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.343884, 34.905720, 35.371174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.467022, 35.250641, 35.210339>,  <47.540905, 35.457592, 35.113838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.467022, 35.250641, 35.210339>,  <47.343884, 34.905720, 35.371174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.467022, 35.250641, 35.210339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785590, -0.468773, -0.403856,
		-0.536732, -0.191550, -0.821722,
		0.307842, 0.862300, -0.402085,
		47.559376, 35.509331, 35.089714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.505466, 34.825863, 34.744926>,  <47.343884, 34.905720, 35.371174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.505466, 34.825863, 34.744926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735676, 35.123775, 34.880028>,  <47.873802, 35.302521, 34.961086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735676, 35.123775, 34.880028>,  <47.505466, 34.825863, 34.744926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.735676, 35.123775, 34.880028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817640, -0.516321, -0.254708,
		-0.015313, 0.422751, -0.906117,
		0.575526, 0.744778, 0.337752,
		47.908333, 35.347210, 34.981354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.405113, 31.456985, 27.142920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015858, 31.382130, 27.196543>,  <36.782303, 31.337215, 27.228718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015858, 31.382130, 27.196543>,  <37.405113, 31.456985, 27.142920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015858, 31.382130, 27.196543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147701, -0.060898, 0.987155,
		-0.176573, 0.980444, 0.086904,
		-0.973143, -0.187141, 0.134059,
		36.723915, 31.325987, 27.236761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157078, 32.050880, 27.600357>,  <37.405113, 31.456985, 27.142920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157078, 32.050880, 27.600357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.867863, 31.778212, 27.645164>,  <36.694336, 31.614611, 27.672049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.867863, 31.778212, 27.645164>,  <37.157078, 32.050880, 27.600357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867863, 31.778212, 27.645164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036204, 0.199324, 0.979264,
		-0.689863, 0.703986, -0.168797,
		-0.723034, -0.681670, 0.112019,
		36.650951, 31.573711, 27.678770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746265, 32.336296, 28.123257>,  <37.157078, 32.050880, 27.600357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746265, 32.336296, 28.123257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.666100, 31.944477, 28.116098>,  <36.618000, 31.709385, 28.111803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.666100, 31.944477, 28.116098>,  <36.746265, 32.336296, 28.123257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666100, 31.944477, 28.116098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086572, -0.000489, 0.996246,
		-0.975879, 0.201212, -0.084704,
		-0.200415, -0.979548, -0.017897,
		36.605976, 31.650612, 28.110729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173706, 32.283897, 28.524815>,  <36.746265, 32.336296, 28.123257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173706, 32.283897, 28.524815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.330849, 31.916319, 28.538704>,  <36.425137, 31.695772, 28.547037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.330849, 31.916319, 28.538704>,  <36.173706, 32.283897, 28.524815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330849, 31.916319, 28.538704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226599, -0.060143, 0.972129,
		-0.891243, -0.389777, -0.231859,
		0.392858, -0.918943, 0.034721,
		36.448708, 31.640636, 28.549120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884087, 32.075123, 29.168873>,  <36.173706, 32.283897, 28.524815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884087, 32.075123, 29.168873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118736, 31.757711, 29.104155>,  <36.259525, 31.567265, 29.065323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118736, 31.757711, 29.104155>,  <35.884087, 32.075123, 29.168873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118736, 31.757711, 29.104155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230267, -0.028105, 0.972721,
		-0.776431, -0.607881, 0.166236,
		0.586627, -0.793530, -0.161797,
		36.294724, 31.519653, 29.055616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670166, 31.467211, 29.702209>,  <35.884087, 32.075123, 29.168873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670166, 31.467211, 29.702209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052776, 31.454264, 29.586271>,  <36.282341, 31.446495, 29.516708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052776, 31.454264, 29.586271>,  <35.670166, 31.467211, 29.702209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052776, 31.454264, 29.586271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291645, 0.100792, 0.951201,
		-0.001577, -0.994381, 0.105851,
		0.956525, -0.032371, -0.289847,
		36.339733, 31.444553, 29.499317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010132, 31.100180, 30.293423>,  <35.670166, 31.467211, 29.702209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010132, 31.100180, 30.293423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282734, 31.294010, 30.074066>,  <36.446297, 31.410309, 29.942451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282734, 31.294010, 30.074066>,  <36.010132, 31.100180, 30.293423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282734, 31.294010, 30.074066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362892, 0.426965, 0.828258,
		0.635499, -0.763470, 0.115130,
		0.681506, 0.484577, -0.548393,
		36.487186, 31.439383, 29.909548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524273, 30.911963, 30.652683>,  <36.010132, 31.100180, 30.293423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524273, 30.911963, 30.652683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585842, 31.257105, 30.460104>,  <36.622784, 31.464190, 30.344557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585842, 31.257105, 30.460104>,  <36.524273, 30.911963, 30.652683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585842, 31.257105, 30.460104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365245, 0.403057, 0.839131,
		0.918099, -0.305005, -0.253115,
		0.153919, 0.862854, -0.481448,
		36.632019, 31.515961, 30.315670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201832, 31.264566, 31.013687>,  <36.524273, 30.911963, 30.652683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201832, 31.264566, 31.013687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.022499, 31.566938, 30.822870>,  <36.914898, 31.748362, 30.708380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.022499, 31.566938, 30.822870>,  <37.201832, 31.264566, 31.013687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022499, 31.566938, 30.822870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192602, 0.602844, 0.774263,
		0.872869, 0.255249, -0.415869,
		-0.448334, 0.755928, -0.477042,
		36.888000, 31.793716, 30.679758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626911, 31.848623, 31.229578>,  <37.201832, 31.264566, 31.013687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626911, 31.848623, 31.229578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295017, 31.992792, 31.059105>,  <37.095879, 32.079292, 30.956821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295017, 31.992792, 31.059105>,  <37.626911, 31.848623, 31.229578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295017, 31.992792, 31.059105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083779, 0.674483, 0.733522,
		0.551832, 0.644335, -0.529447,
		-0.829737, 0.360424, -0.426183,
		37.046097, 32.100918, 30.931250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664516, 32.588909, 31.000898>,  <37.626911, 31.848623, 31.229578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664516, 32.588909, 31.000898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274124, 32.530277, 31.065372>,  <37.039890, 32.495098, 31.104057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274124, 32.530277, 31.065372>,  <37.664516, 32.588909, 31.000898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274124, 32.530277, 31.065372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005061, 0.754882, 0.655842,
		-0.217808, 0.639272, -0.737490,
		-0.975979, -0.146580, 0.161183,
		36.981331, 32.486301, 31.113728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395271, 33.217655, 31.037970>,  <37.664516, 32.588909, 31.000898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395271, 33.217655, 31.037970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074814, 33.018387, 31.170631>,  <36.882542, 32.898827, 31.250229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074814, 33.018387, 31.170631>,  <37.395271, 33.217655, 31.037970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074814, 33.018387, 31.170631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155752, 0.708626, 0.688179,
		-0.577853, 0.499673, -0.645301,
		-0.801141, -0.498173, 0.331656,
		36.834473, 32.868935, 31.270128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874165, 33.767212, 31.090986>,  <37.395271, 33.217655, 31.037970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874165, 33.767212, 31.090986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816151, 33.458862, 31.339087>,  <36.781342, 33.273853, 31.487947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.816151, 33.458862, 31.339087>,  <36.874165, 33.767212, 31.090986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816151, 33.458862, 31.339087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204772, 0.636694, 0.743431,
		-0.968004, -0.019186, -0.250198,
		-0.145036, -0.770878, 0.620251,
		36.772640, 33.227600, 31.525162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458317, 34.099655, 31.675802>,  <36.874165, 33.767212, 31.090986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458317, 34.099655, 31.675802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.548763, 33.740898, 31.827835>,  <36.603031, 33.525646, 31.919056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.548763, 33.740898, 31.827835>,  <36.458317, 34.099655, 31.675802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548763, 33.740898, 31.827835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032729, 0.396963, 0.917251,
		-0.973551, -0.194964, 0.119114,
		0.226115, -0.896888, 0.380083,
		36.616596, 33.471832, 31.941860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005802, 33.945683, 32.175182>,  <36.458317, 34.099655, 31.675802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005802, 33.945683, 32.175182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337502, 33.737400, 32.256374>,  <36.536522, 33.612431, 32.305092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337502, 33.737400, 32.256374>,  <36.005802, 33.945683, 32.175182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337502, 33.737400, 32.256374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003330, 0.358592, 0.933488,
		-0.558864, -0.774773, 0.295629,
		0.829253, -0.520709, 0.202984,
		36.586277, 33.581188, 32.317268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934834, 33.599861, 32.814457>,  <36.005802, 33.945683, 32.175182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934834, 33.599861, 32.814457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.332722, 33.634560, 32.792515>,  <36.571453, 33.655376, 32.779350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.332722, 33.634560, 32.792515>,  <35.934834, 33.599861, 32.814457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332722, 33.634560, 32.792515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031610, 0.249551, 0.967846,
		0.097642, -0.964469, 0.245491,
		0.994719, 0.086743, -0.054853,
		36.631138, 33.660583, 32.776058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251186, 33.303875, 33.475006>,  <35.934834, 33.599861, 32.814457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251186, 33.303875, 33.475006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542934, 33.533249, 33.325771>,  <36.717983, 33.670876, 33.236229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542934, 33.533249, 33.325771>,  <36.251186, 33.303875, 33.475006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542934, 33.533249, 33.325771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199820, 0.343003, 0.917835,
		0.654291, -0.743988, 0.135591,
		0.729366, 0.573437, -0.373088,
		36.761745, 33.705280, 33.213844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701748, 33.577587, 34.063610>,  <36.251186, 33.303875, 33.475006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701748, 33.577587, 34.063610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.846889, 33.803200, 33.766907>,  <36.933975, 33.938568, 33.588886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.846889, 33.803200, 33.766907>,  <36.701748, 33.577587, 34.063610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846889, 33.803200, 33.766907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358438, 0.650283, 0.669817,
		0.860151, -0.508919, 0.033786,
		0.362853, 0.564033, -0.741757,
		36.955746, 33.972408, 33.544380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397884, 33.629860, 34.260921>,  <36.701748, 33.577587, 34.063610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397884, 33.629860, 34.260921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292698, 33.925770, 34.013184>,  <37.229588, 34.103317, 33.864540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292698, 33.925770, 34.013184>,  <37.397884, 33.629860, 34.260921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292698, 33.925770, 34.013184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359323, 0.670847, 0.648731,
		0.895398, -0.051950, -0.442226,
		-0.262964, 0.739774, -0.619342,
		37.213810, 34.147701, 33.827381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997845, 33.988583, 34.102314>,  <37.397884, 33.629860, 34.260921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997845, 33.988583, 34.102314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.683018, 34.233170, 34.069752>,  <37.494122, 34.379921, 34.050213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.683018, 34.233170, 34.069752>,  <37.997845, 33.988583, 34.102314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683018, 34.233170, 34.069752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408113, 0.615127, 0.674583,
		0.462563, 0.497720, -0.733696,
		-0.787070, 0.611468, -0.081410,
		37.446896, 34.416611, 34.045330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276871, 34.572937, 34.240356>,  <37.997845, 33.988583, 34.102314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276871, 34.572937, 34.240356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.889584, 34.671906, 34.254978>,  <37.657211, 34.731285, 34.263752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.889584, 34.671906, 34.254978>,  <38.276871, 34.572937, 34.240356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889584, 34.671906, 34.254978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179400, 0.585202, 0.790793,
		0.174262, 0.772219, -0.610991,
		-0.968219, 0.247417, 0.036558,
		37.599117, 34.746132, 34.265945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235138, 35.309696, 34.224941>,  <38.276871, 34.572937, 34.240356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235138, 35.309696, 34.224941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.890823, 35.202606, 34.398087>,  <37.684235, 35.138351, 34.501972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.890823, 35.202606, 34.398087>,  <38.235138, 35.309696, 34.224941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890823, 35.202606, 34.398087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239854, 0.536733, 0.808942,
		-0.448907, 0.800150, -0.397798,
		-0.860786, -0.267726, 0.432862,
		37.632587, 35.122288, 34.527946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447350, 35.948460, 34.638096>,  <38.235138, 35.309696, 34.224941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447350, 35.948460, 34.638096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833946, 36.008289, 34.554653>,  <39.065903, 36.044189, 34.504585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833946, 36.008289, 34.554653>,  <38.447350, 35.948460, 34.638096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833946, 36.008289, 34.554653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144161, -0.356125, -0.923251,
		-0.212389, 0.922389, -0.322629,
		0.966493, 0.149577, -0.208610,
		39.123894, 36.053162, 34.492069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488228, 36.141026, 33.994373>,  <38.447350, 35.948460, 34.638096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488228, 36.141026, 33.994373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856461, 35.999908, 34.061382>,  <39.077400, 35.915237, 34.101589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856461, 35.999908, 34.061382>,  <38.488228, 36.141026, 33.994373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856461, 35.999908, 34.061382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019850, -0.386122, -0.922234,
		0.390044, 0.852318, -0.348454,
		0.920582, -0.352795, 0.167523,
		39.132637, 35.894070, 34.111641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861340, 36.265141, 33.331909>,  <38.488228, 36.141026, 33.994373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861340, 36.265141, 33.331909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.085369, 35.997185, 33.526871>,  <39.219788, 35.836411, 33.643848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.085369, 35.997185, 33.526871>,  <38.861340, 36.265141, 33.331909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085369, 35.997185, 33.526871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147231, -0.498488, -0.854302,
		0.815256, 0.550232, -0.180560,
		0.560071, -0.669891, 0.487407,
		39.253391, 35.796219, 33.673092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522579, 36.321804, 32.971714>,  <38.861340, 36.265141, 33.331909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522579, 36.321804, 32.971714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448471, 35.970509, 33.148064>,  <39.404007, 35.759731, 33.253876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448471, 35.970509, 33.148064>,  <39.522579, 36.321804, 32.971714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448471, 35.970509, 33.148064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072947, -0.459696, -0.885075,
		0.979976, -0.131816, 0.149232,
		-0.185269, -0.878239, 0.440876,
		39.392891, 35.707035, 33.280327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021534, 35.886662, 32.735847>,  <39.522579, 36.321804, 32.971714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021534, 35.886662, 32.735847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749268, 35.627689, 32.872982>,  <39.585907, 35.472305, 32.955261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.749268, 35.627689, 32.872982>,  <40.021534, 35.886662, 32.735847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749268, 35.627689, 32.872982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215352, -0.624120, -0.751064,
		0.700231, -0.437390, 0.564240,
		-0.680661, -0.647429, 0.342836,
		39.545071, 35.433460, 32.975834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372814, 35.147743, 32.834972>,  <40.021534, 35.886662, 32.735847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372814, 35.147743, 32.834972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.976414, 35.126209, 32.785954>,  <39.738575, 35.113289, 32.756542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.976414, 35.126209, 32.785954>,  <40.372814, 35.147743, 32.834972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976414, 35.126209, 32.785954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129683, -0.612904, -0.779443,
		-0.033152, -0.788321, 0.614370,
		-0.991001, -0.053833, -0.122551,
		39.679115, 35.110058, 32.749187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290527, 34.500668, 32.551079>,  <40.372814, 35.147743, 32.834972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290527, 34.500668, 32.551079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.922859, 34.637787, 32.473499>,  <39.702259, 34.720058, 32.426952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.922859, 34.637787, 32.473499>,  <40.290527, 34.500668, 32.551079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922859, 34.637787, 32.473499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028660, -0.549333, -0.835112,
		-0.392812, -0.762053, 0.514756,
		-0.919172, 0.342794, -0.193944,
		39.647106, 34.740627, 32.415318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980728, 33.926895, 32.341671>,  <40.290527, 34.500668, 32.551079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980728, 33.926895, 32.341671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.743862, 34.221176, 32.210167>,  <39.601742, 34.397743, 32.131264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.743862, 34.221176, 32.210167>,  <39.980728, 33.926895, 32.341671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743862, 34.221176, 32.210167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007802, -0.413201, -0.910606,
		-0.805778, -0.536666, 0.250424,
		-0.592167, 0.735700, -0.328761,
		39.566212, 34.441887, 32.111538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381035, 33.644524, 32.093498>,  <39.980728, 33.926895, 32.341671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381035, 33.644524, 32.093498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.392986, 34.000824, 31.912090>,  <39.400158, 34.214603, 31.803246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.392986, 34.000824, 31.912090>,  <39.381035, 33.644524, 32.093498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392986, 34.000824, 31.912090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155695, -0.444033, -0.882379,
		-0.987353, 0.096974, 0.125418,
		0.029878, 0.890747, -0.453516,
		39.401951, 34.268047, 31.776035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900875, 33.618629, 31.546755>,  <39.381035, 33.644524, 32.093498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900875, 33.618629, 31.546755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.136719, 33.926907, 31.450090>,  <39.278225, 34.111874, 31.392092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.136719, 33.926907, 31.450090>,  <38.900875, 33.618629, 31.546755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136719, 33.926907, 31.450090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125178, -0.382775, -0.915322,
		-0.797933, 0.509428, -0.322159,
		0.589605, 0.770693, -0.241660,
		39.313599, 34.158115, 31.377592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570324, 33.907635, 30.927896>,  <38.900875, 33.618629, 31.546755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570324, 33.907635, 30.927896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954079, 34.018394, 30.949423>,  <39.184334, 34.084850, 30.962337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.954079, 34.018394, 30.949423>,  <38.570324, 33.907635, 30.927896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954079, 34.018394, 30.949423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173900, -0.430382, -0.885737,
		-0.222098, 0.859127, -0.461057,
		0.959391, 0.276899, 0.053815,
		39.241898, 34.101463, 30.965567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617168, 34.217583, 30.309084>,  <38.570324, 33.907635, 30.927896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617168, 34.217583, 30.309084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981525, 34.131756, 30.450069>,  <39.200142, 34.080261, 30.534660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981525, 34.131756, 30.450069>,  <38.617168, 34.217583, 30.309084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981525, 34.131756, 30.450069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247503, -0.399357, -0.882755,
		0.330166, 0.891334, -0.310668,
		0.910897, -0.214564, 0.352462,
		39.254795, 34.067387, 30.555807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077435, 34.482655, 29.845366>,  <38.617168, 34.217583, 30.309084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077435, 34.482655, 29.845366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.247059, 34.185658, 30.052778>,  <39.348835, 34.007462, 30.177227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.247059, 34.185658, 30.052778>,  <39.077435, 34.482655, 29.845366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247059, 34.185658, 30.052778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349240, -0.394206, -0.850078,
		0.835584, 0.541581, 0.092138,
		0.424065, -0.742490, 0.518534,
		39.374279, 33.962910, 30.208338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638729, 34.356579, 29.479061>,  <39.077435, 34.482655, 29.845366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638729, 34.356579, 29.479061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623409, 34.015156, 29.686897>,  <39.614216, 33.810303, 29.811600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623409, 34.015156, 29.686897>,  <39.638729, 34.356579, 29.479061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623409, 34.015156, 29.686897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104889, -0.520533, -0.847374,
		0.993746, 0.022044, 0.109466,
		-0.038302, -0.853557, 0.519590,
		39.611919, 33.759090, 29.842773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104172, 33.935772, 29.083738>,  <39.638729, 34.356579, 29.479061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104172, 33.935772, 29.083738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.891232, 33.681515, 29.307369>,  <39.763470, 33.528961, 29.441547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.891232, 33.681515, 29.307369>,  <40.104172, 33.935772, 29.083738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891232, 33.681515, 29.307369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015237, -0.667527, -0.744430,
		0.846388, -0.387777, 0.365042,
		-0.532348, -0.635639, 0.559079,
		39.731525, 33.490822, 29.475092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505424, 33.281723, 29.078800>,  <40.104172, 33.935772, 29.083738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505424, 33.281723, 29.078800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.121056, 33.205177, 29.158813>,  <39.890434, 33.159248, 29.206821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.121056, 33.205177, 29.158813>,  <40.505424, 33.281723, 29.078800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121056, 33.205177, 29.158813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034942, -0.632956, -0.773399,
		0.274614, -0.750164, 0.601533,
		-0.960919, -0.191367, 0.200031,
		39.832779, 33.147766, 29.218822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450733, 32.592735, 28.801130>,  <40.505424, 33.281723, 29.078800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450733, 32.592735, 28.801130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.066933, 32.687450, 28.862167>,  <39.836651, 32.744278, 28.898790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.066933, 32.687450, 28.862167>,  <40.450733, 32.592735, 28.801130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066933, 32.687450, 28.862167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278796, -0.720686, -0.634732,
		-0.040325, -0.651570, 0.757517,
		-0.959503, 0.236788, 0.152593,
		39.779083, 32.758488, 28.907946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134521, 31.883623, 28.930309>,  <40.450733, 32.592735, 28.801130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134521, 31.883623, 28.930309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.852203, 32.145676, 28.822496>,  <39.682812, 32.302906, 28.757809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.852203, 32.145676, 28.822496>,  <40.134521, 31.883623, 28.930309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852203, 32.145676, 28.822496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324261, -0.637043, -0.699307,
		-0.629832, -0.406182, 0.662063,
		-0.705809, 0.655127, -0.269522,
		39.640465, 32.342216, 28.741636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.827003, 31.533079, 28.774784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.919250, 31.886517, 28.611774>,  <38.974598, 32.098579, 28.513969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.919250, 31.886517, 28.611774>,  <38.827003, 31.533079, 28.774784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919250, 31.886517, 28.611774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564347, -0.219722, -0.795760,
		-0.792672, 0.413499, 0.447984,
		0.230614, 0.883595, -0.407525,
		38.988434, 32.151596, 28.489517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227371, 31.972097, 28.601271>,  <38.827003, 31.533079, 28.774784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227371, 31.972097, 28.601271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524296, 32.096558, 28.363899>,  <38.702450, 32.171234, 28.221476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.524296, 32.096558, 28.363899>,  <38.227371, 31.972097, 28.601271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524296, 32.096558, 28.363899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484074, -0.363334, -0.796028,
		-0.463298, 0.878165, -0.119087,
		0.742313, 0.311151, -0.593428,
		38.746990, 32.189903, 28.185871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948009, 32.154205, 27.845371>,  <38.227371, 31.972097, 28.601271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948009, 32.154205, 27.845371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.342331, 32.162724, 27.778751>,  <38.578922, 32.167835, 27.738779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.342331, 32.162724, 27.778751>,  <37.948009, 32.154205, 27.845371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342331, 32.162724, 27.778751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158545, -0.208532, -0.965079,
		-0.055284, 0.977784, -0.202195,
		0.985803, 0.021296, -0.166552,
		38.638073, 32.169113, 27.728786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078182, 32.579540, 27.224371>,  <37.948009, 32.154205, 27.845371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078182, 32.579540, 27.224371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.383762, 32.325314, 27.268969>,  <38.567112, 32.172775, 27.295727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.383762, 32.325314, 27.268969>,  <38.078182, 32.579540, 27.224371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383762, 32.325314, 27.268969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016425, -0.191883, -0.981281,
		0.645066, 0.747818, -0.157028,
		0.763950, -0.635570, 0.111494,
		38.612946, 32.134644, 27.302418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592064, 32.760422, 26.799692>,  <38.078182, 32.579540, 27.224371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592064, 32.760422, 26.799692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.641972, 32.367115, 26.852787>,  <38.671917, 32.131130, 26.884644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.641972, 32.367115, 26.852787>,  <38.592064, 32.760422, 26.799692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641972, 32.367115, 26.852787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124562, -0.117199, -0.985266,
		0.984336, 0.139461, 0.107856,
		0.124765, -0.983268, 0.132735,
		38.679401, 32.072136, 26.892607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038651, 32.651745, 26.317879>,  <38.592064, 32.760422, 26.799692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038651, 32.651745, 26.317879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949726, 32.279251, 26.433382>,  <38.896370, 32.055756, 26.502684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.949726, 32.279251, 26.433382>,  <39.038651, 32.651745, 26.317879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949726, 32.279251, 26.433382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156366, -0.326389, -0.932212,
		0.962355, -0.162089, 0.218173,
		-0.222310, -0.931235, 0.288757,
		38.883034, 31.999880, 26.520008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572277, 32.245365, 26.137779>,  <39.038651, 32.651745, 26.317879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572277, 32.245365, 26.137779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.240143, 32.022457, 26.137922>,  <39.040863, 31.888714, 26.138008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.240143, 32.022457, 26.137922>,  <39.572277, 32.245365, 26.137779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240143, 32.022457, 26.137922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168446, -0.251597, -0.953061,
		0.531198, -0.791298, 0.302779,
		-0.830334, -0.557266, 0.000357,
		38.991043, 31.855278, 26.138029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829090, 31.716509, 25.752972>,  <39.572277, 32.245365, 26.137779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829090, 31.716509, 25.752972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.429962, 31.693768, 25.739550>,  <39.190487, 31.680122, 25.731497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.429962, 31.693768, 25.739550>,  <39.829090, 31.716509, 25.752972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429962, 31.693768, 25.739550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050874, -0.338298, -0.939663,
		0.042074, -0.939320, 0.340453,
		-0.997818, -0.056855, -0.033553,
		39.130615, 31.676710, 25.729485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677338, 31.116888, 25.319254>,  <39.829090, 31.716509, 25.752972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677338, 31.116888, 25.319254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.320175, 31.296774, 25.310476>,  <39.105877, 31.404705, 25.305210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.320175, 31.296774, 25.310476>,  <39.677338, 31.116888, 25.319254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320175, 31.296774, 25.310476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164903, -0.371988, -0.913472,
		-0.418968, -0.812022, 0.406308,
		-0.892901, 0.449718, -0.021946,
		39.052303, 31.431688, 25.303894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224800, 30.661135, 24.969633>,  <39.677338, 31.116888, 25.319254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224800, 30.661135, 24.969633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.033916, 31.011446, 24.940542>,  <38.919388, 31.221632, 24.923088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.033916, 31.011446, 24.940542>,  <39.224800, 30.661135, 24.969633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033916, 31.011446, 24.940542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128984, -0.151662, -0.979980,
		-0.869274, -0.458273, 0.185335,
		-0.477207, 0.875777, -0.072726,
		38.890755, 31.274179, 24.918724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624756, 30.608381, 24.582420>,  <39.224800, 30.661135, 24.969633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624756, 30.608381, 24.582420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716648, 30.995974, 24.545984>,  <38.771786, 31.228529, 24.524122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716648, 30.995974, 24.545984>,  <38.624756, 30.608381, 24.582420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716648, 30.995974, 24.545984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236099, -0.035313, -0.971087,
		-0.944182, 0.244597, 0.220663,
		0.229733, 0.968982, -0.091091,
		38.785568, 31.286669, 24.518658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126972, 30.931103, 24.048340>,  <38.624756, 30.608381, 24.582420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126972, 30.931103, 24.048340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.422371, 31.198757, 24.081535>,  <38.599609, 31.359350, 24.101452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.422371, 31.198757, 24.081535>,  <38.126972, 30.931103, 24.048340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422371, 31.198757, 24.081535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058262, 0.185948, -0.980831,
		-0.671739, 0.719502, 0.176307,
		0.738493, 0.669134, 0.082989,
		38.643917, 31.399498, 24.106432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927036, 31.521671, 23.623940>,  <38.126972, 30.931103, 24.048340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927036, 31.521671, 23.623940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.323536, 31.562653, 23.657234>,  <38.561436, 31.587242, 23.677212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.323536, 31.562653, 23.657234>,  <37.927036, 31.521671, 23.623940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323536, 31.562653, 23.657234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056277, 0.242392, -0.968545,
		-0.119407, 0.964753, 0.234506,
		0.991249, 0.102454, 0.083237,
		38.620911, 31.593390, 23.682205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070564, 32.215454, 23.303614>,  <37.927036, 31.521671, 23.623940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070564, 32.215454, 23.303614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396381, 31.983694, 23.292225>,  <38.591873, 31.844639, 23.285391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396381, 31.983694, 23.292225>,  <38.070564, 32.215454, 23.303614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396381, 31.983694, 23.292225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056468, 0.128045, -0.990159,
		0.577344, 0.804923, 0.137017,
		0.814546, -0.579399, -0.028474,
		38.640747, 31.809874, 23.283682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506165, 32.611961, 22.907261>,  <38.070564, 32.215454, 23.303614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506165, 32.611961, 22.907261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685410, 32.254936, 22.887156>,  <38.792957, 32.040722, 22.875092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685410, 32.254936, 22.887156>,  <38.506165, 32.611961, 22.907261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685410, 32.254936, 22.887156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194956, 0.152440, -0.968893,
		0.872462, 0.424370, 0.242321,
		0.448109, -0.892565, -0.050265,
		38.819843, 31.987167, 22.872076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173122, 32.682091, 22.549982>,  <38.506165, 32.611961, 22.907261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173122, 32.682091, 22.549982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132885, 32.286095, 22.510395>,  <39.108742, 32.048496, 22.486643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.132885, 32.286095, 22.510395>,  <39.173122, 32.682091, 22.549982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132885, 32.286095, 22.510395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325016, 0.061314, -0.943719,
		0.940343, -0.127102, 0.315595,
		-0.100598, -0.989993, -0.098967,
		39.102707, 31.989098, 22.480705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701553, 32.525265, 22.122219>,  <39.173122, 32.682091, 22.549982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701553, 32.525265, 22.122219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.489594, 32.186192, 22.112171>,  <39.362415, 31.982746, 22.106142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.489594, 32.186192, 22.112171>,  <39.701553, 32.525265, 22.122219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489594, 32.186192, 22.112171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400093, -0.223768, -0.888737,
		0.747749, -0.480994, 0.457729,
		-0.529903, -0.847686, -0.025120,
		39.330624, 31.931885, 22.104635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167328, 32.037090, 21.893211>,  <39.701553, 32.525265, 22.122219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167328, 32.037090, 21.893211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.804340, 31.894861, 21.803705>,  <39.586548, 31.809525, 21.750002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.804340, 31.894861, 21.803705>,  <40.167328, 32.037090, 21.893211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804340, 31.894861, 21.803705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288520, -0.140306, -0.947138,
		0.305379, -0.924059, 0.229912,
		-0.907469, -0.355570, -0.223763,
		39.532101, 31.788191, 21.736576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305237, 31.482431, 21.541674>,  <40.167328, 32.037090, 21.893211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305237, 31.482431, 21.541674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.950092, 31.629183, 21.430605>,  <39.737007, 31.717234, 21.363964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.950092, 31.629183, 21.430605>,  <40.305237, 31.482431, 21.541674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950092, 31.629183, 21.430605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294567, -0.010359, -0.955575,
		-0.353458, -0.930210, -0.098874,
		-0.887861, 0.366881, -0.277671,
		39.683735, 31.739246, 21.347303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143600, 31.033007, 20.924728>,  <40.305237, 31.482431, 21.541674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143600, 31.033007, 20.924728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.922943, 31.365650, 20.899054>,  <39.790550, 31.565237, 20.883648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.922943, 31.365650, 20.899054>,  <40.143600, 31.033007, 20.924728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922943, 31.365650, 20.899054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209047, 0.063347, -0.975852,
		-0.807461, -0.551736, -0.208790,
		-0.551639, 0.831609, -0.064188,
		39.757450, 31.615133, 20.879797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707779, 30.973866, 20.316616>,  <40.143600, 31.033007, 20.924728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707779, 30.973866, 20.316616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.706833, 31.369001, 20.378803>,  <39.706264, 31.606083, 20.416117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.706833, 31.369001, 20.378803>,  <39.707779, 30.973866, 20.316616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706833, 31.369001, 20.378803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133063, 0.154398, -0.979007,
		-0.991105, 0.018368, -0.131810,
		-0.002369, 0.987838, 0.155469,
		39.706123, 31.665352, 20.425444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286015, 31.252829, 19.803995>,  <39.707779, 30.973866, 20.316616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286015, 31.252829, 19.803995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.484718, 31.577963, 19.925667>,  <39.603939, 31.773045, 19.998671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.484718, 31.577963, 19.925667>,  <39.286015, 31.252829, 19.803995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484718, 31.577963, 19.925667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151526, 0.426328, -0.891787,
		-0.854557, 0.396914, 0.334949,
		0.496761, 0.812837, 0.304179,
		39.633747, 31.821814, 20.016920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866497, 31.961992, 19.841930>,  <39.286015, 31.252829, 19.803995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866497, 31.961992, 19.841930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247078, 31.971409, 19.719175>,  <39.475426, 31.977058, 19.645523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247078, 31.971409, 19.719175>,  <38.866497, 31.961992, 19.841930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247078, 31.971409, 19.719175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299057, 0.306522, -0.903664,
		0.072796, 0.951573, 0.298682,
		0.951455, 0.023540, -0.306888,
		39.532513, 31.978472, 19.627110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137238, 32.171417, 19.958708>,  <38.866497, 31.961992, 19.841930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137238, 32.171417, 19.958708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878433, 32.364098, 19.722286>,  <37.723152, 32.479706, 19.580433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.878433, 32.364098, 19.722286>,  <38.137238, 32.171417, 19.958708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878433, 32.364098, 19.722286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739026, -0.205383, 0.641606,
		0.187669, 0.851929, 0.488873,
		-0.647009, 0.481700, -0.591054,
		37.684330, 32.508606, 19.544970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887154, 32.714348, 20.184496>,  <38.137238, 32.171417, 19.958708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887154, 32.714348, 20.184496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621208, 32.529728, 19.949574>,  <37.461643, 32.418957, 19.808620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621208, 32.529728, 19.949574>,  <37.887154, 32.714348, 20.184496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621208, 32.529728, 19.949574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634159, -0.066700, 0.770320,
		-0.394717, 0.884601, -0.248352,
		-0.664861, -0.461553, -0.587305,
		37.421749, 32.391262, 19.773382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099106, 32.904659, 20.389904>,  <37.887154, 32.714348, 20.184496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099106, 32.904659, 20.389904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.114502, 32.550232, 20.205120>,  <37.123737, 32.337578, 20.094250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.114502, 32.550232, 20.205120>,  <37.099106, 32.904659, 20.389904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114502, 32.550232, 20.205120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581015, -0.395965, 0.711079,
		-0.812982, 0.241040, -0.530056,
		0.038486, -0.886065, -0.461960,
		37.126049, 32.284412, 20.066532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454124, 32.697071, 20.490202>,  <37.099106, 32.904659, 20.389904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454124, 32.697071, 20.490202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.682194, 32.372658, 20.437862>,  <36.819035, 32.178009, 20.406458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.682194, 32.372658, 20.437862>,  <36.454124, 32.697071, 20.490202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682194, 32.372658, 20.437862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501221, -0.469626, 0.726793,
		-0.650905, -0.348815, -0.674278,
		0.570175, -0.811036, -0.130848,
		36.853245, 32.129349, 20.398607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081909, 32.125294, 20.376087>,  <36.454124, 32.697071, 20.490202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081909, 32.125294, 20.376087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395638, 31.901310, 20.482891>,  <36.583874, 31.766920, 20.546972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395638, 31.901310, 20.482891>,  <36.081909, 32.125294, 20.376087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395638, 31.901310, 20.482891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510054, -0.337083, 0.791341,
		-0.353127, -0.756841, -0.549993,
		0.784313, -0.559970, 0.266997,
		36.630932, 31.733322, 20.562994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829964, 31.548117, 20.576653>,  <36.081909, 32.125294, 20.376087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829964, 31.548117, 20.576653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193787, 31.542421, 20.742786>,  <36.412079, 31.539005, 20.842466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193787, 31.542421, 20.742786>,  <35.829964, 31.548117, 20.576653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193787, 31.542421, 20.742786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410346, -0.188840, 0.892164,
		0.065731, -0.981905, -0.177602,
		0.909558, -0.014235, 0.415333,
		36.466656, 31.538151, 20.867386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797634, 31.078386, 21.103220>,  <35.829964, 31.548117, 20.576653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797634, 31.078386, 21.103220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143417, 31.243408, 21.218119>,  <36.350887, 31.342422, 21.287058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143417, 31.243408, 21.218119>,  <35.797634, 31.078386, 21.103220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143417, 31.243408, 21.218119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293004, -0.050806, 0.954761,
		0.408485, -0.909515, 0.076961,
		0.864459, 0.412555, 0.287245,
		36.402756, 31.367174, 21.304293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112679, 30.607912, 21.564690>,  <35.797634, 31.078386, 21.103220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112679, 30.607912, 21.564690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272686, 30.967367, 21.636728>,  <36.368690, 31.183041, 21.679953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272686, 30.967367, 21.636728>,  <36.112679, 30.607912, 21.564690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272686, 30.967367, 21.636728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163596, -0.123338, 0.978787,
		0.901787, -0.420999, 0.097676,
		0.400021, 0.898636, 0.180098,
		36.392693, 31.236958, 21.690758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560631, 30.479349, 22.066397>,  <36.112679, 30.607912, 21.564690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560631, 30.479349, 22.066397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479908, 30.870754, 22.083321>,  <36.431473, 31.105597, 22.093475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479908, 30.870754, 22.083321>,  <36.560631, 30.479349, 22.066397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479908, 30.870754, 22.083321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238937, -0.091080, 0.966754,
		0.949833, 0.184988, 0.252183,
		-0.201807, 0.978511, 0.042310,
		36.419365, 31.164307, 22.096014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874126, 30.673084, 22.629351>,  <36.560631, 30.479349, 22.066397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874126, 30.673084, 22.629351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.631271, 30.989801, 22.602674>,  <36.485558, 31.179832, 22.586670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.631271, 30.989801, 22.602674>,  <36.874126, 30.673084, 22.629351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631271, 30.989801, 22.602674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101725, 0.005784, 0.994796,
		0.788059, 0.610761, 0.077034,
		-0.607136, 0.791794, -0.066688,
		36.449131, 31.227339, 22.582668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128647, 31.331875, 22.968872>,  <36.874126, 30.673084, 22.629351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128647, 31.331875, 22.968872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.730808, 31.372488, 22.977512>,  <36.492104, 31.396856, 22.982697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.730808, 31.372488, 22.977512>,  <37.128647, 31.331875, 22.968872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730808, 31.372488, 22.977512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017069, -0.045291, 0.998828,
		0.102392, 0.993801, 0.043314,
		-0.994598, 0.101533, 0.021601,
		36.432430, 31.402948, 22.983992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928654, 31.973433, 23.263685>,  <37.128647, 31.331875, 22.968872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928654, 31.973433, 23.263685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605949, 31.743002, 23.316256>,  <36.412327, 31.604744, 23.347797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605949, 31.743002, 23.316256>,  <36.928654, 31.973433, 23.263685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605949, 31.743002, 23.316256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089783, 0.100325, 0.990896,
		-0.584015, 0.811217, -0.029216,
		-0.806762, -0.576075, 0.131425,
		36.363922, 31.570179, 23.355682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679211, 32.187626, 23.804873>,  <36.928654, 31.973433, 23.263685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679211, 32.187626, 23.804873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483772, 31.838627, 23.806540>,  <36.366508, 31.629227, 23.807539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483772, 31.838627, 23.806540>,  <36.679211, 32.187626, 23.804873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483772, 31.838627, 23.806540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031542, -0.012890, 0.999419,
		-0.871939, 0.488445, 0.033819,
		-0.488597, -0.872499, 0.004167,
		36.337193, 31.576878, 23.807789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154358, 32.302071, 24.380768>,  <36.679211, 32.187626, 23.804873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154358, 32.302071, 24.380768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.156754, 31.909208, 24.305582>,  <36.158192, 31.673491, 24.260471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.156754, 31.909208, 24.305582>,  <36.154358, 32.302071, 24.380768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156754, 31.909208, 24.305582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164428, -0.186374, 0.968622,
		-0.986371, 0.025108, -0.162609,
		0.005986, -0.982158, -0.187963,
		36.158550, 31.614561, 24.249193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638786, 32.018425, 24.736340>,  <36.154358, 32.302071, 24.380768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638786, 32.018425, 24.736340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894295, 31.714287, 24.689268>,  <36.047600, 31.531805, 24.661026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894295, 31.714287, 24.689268>,  <35.638786, 32.018425, 24.736340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894295, 31.714287, 24.689268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014980, -0.140631, 0.989949,
		-0.769248, -0.634117, -0.078442,
		0.638774, -0.760341, -0.117679,
		36.085926, 31.486185, 24.653965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577774, 31.602276, 25.242575>,  <35.638786, 32.018425, 24.736340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577774, 31.602276, 25.242575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927349, 31.448122, 25.124107>,  <36.137093, 31.355629, 25.053028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927349, 31.448122, 25.124107>,  <35.577774, 31.602276, 25.242575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927349, 31.448122, 25.124107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160018, -0.347236, 0.924025,
		-0.458947, -0.854929, -0.241792,
		0.873935, -0.385387, -0.296167,
		36.189529, 31.332506, 25.035257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590942, 30.882113, 25.404200>,  <35.577774, 31.602276, 25.242575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590942, 30.882113, 25.404200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.972992, 30.999523, 25.388329>,  <36.202221, 31.069969, 25.378805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.972992, 30.999523, 25.388329>,  <35.590942, 30.882113, 25.404200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972992, 30.999523, 25.388329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171756, -0.439726, 0.881556,
		0.241313, -0.848813, -0.470410,
		0.955127, 0.293527, -0.039677,
		36.259529, 31.087582, 25.376425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930794, 30.370888, 25.759388>,  <35.590942, 30.882113, 25.404200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930794, 30.370888, 25.759388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188992, 30.674164, 25.722536>,  <36.343910, 30.856129, 25.700426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188992, 30.674164, 25.722536>,  <35.930794, 30.370888, 25.759388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188992, 30.674164, 25.722536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195156, -0.047112, 0.979640,
		0.738414, -0.650329, -0.178376,
		0.645492, 0.758191, -0.092127,
		36.382641, 30.901621, 25.694899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500832, 30.123476, 26.049166>,  <35.930794, 30.370888, 25.759388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500832, 30.123476, 26.049166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516060, 30.522905, 26.064117>,  <36.525196, 30.762564, 26.073090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.516060, 30.522905, 26.064117>,  <36.500832, 30.123476, 26.049166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516060, 30.522905, 26.064117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102810, -0.041124, 0.993851,
		0.993972, -0.033997, -0.104229,
		0.038074, 0.998576, 0.037381,
		36.527481, 30.822477, 26.075333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977406, 30.327784, 26.487673>,  <36.500832, 30.123476, 26.049166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977406, 30.327784, 26.487673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.761078, 30.664074, 26.498243>,  <36.631283, 30.865849, 26.504585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.761078, 30.664074, 26.498243>,  <36.977406, 30.327784, 26.487673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761078, 30.664074, 26.498243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145171, 0.062346, 0.987440,
		0.828519, 0.537859, -0.155767,
		-0.540815, 0.840726, 0.026426,
		36.598835, 30.916292, 26.506172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328045, 30.814991, 26.788853>,  <36.977406, 30.327784, 26.487673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328045, 30.814991, 26.788853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964863, 30.977312, 26.830692>,  <36.746952, 31.074705, 26.855797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964863, 30.977312, 26.830692>,  <37.328045, 30.814991, 26.788853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964863, 30.977312, 26.830692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058714, -0.123955, 0.990549,
		0.414931, 0.905517, 0.088720,
		-0.907956, 0.405801, 0.104600,
		36.692474, 31.099052, 26.862072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.459942, 33.704941, 30.917576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.106449, 33.851742, 30.801414>,  <39.894356, 33.939823, 30.731718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.106449, 33.851742, 30.801414>,  <40.459942, 33.704941, 30.917576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106449, 33.851742, 30.801414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054703, 0.535263, 0.842912,
		0.464790, 0.760792, -0.452952,
		-0.883729, 0.366999, -0.290403,
		39.841331, 33.961842, 30.714294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488266, 34.419933, 30.940313>,  <40.459942, 33.704941, 30.917576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488266, 34.419933, 30.940313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.096054, 34.341965, 30.949781>,  <39.860725, 34.295185, 30.955462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.096054, 34.341965, 30.949781>,  <40.488266, 34.419933, 30.940313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096054, 34.341965, 30.949781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082846, 0.519982, 0.850151,
		-0.178021, 0.831640, -0.526008,
		-0.980533, -0.194922, 0.023670,
		39.801895, 34.283489, 30.956882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163319, 35.106125, 31.083885>,  <40.488266, 34.419933, 30.940313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163319, 35.106125, 31.083885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.899540, 34.817413, 31.167950>,  <39.741272, 34.644188, 31.218388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.899540, 34.817413, 31.167950>,  <40.163319, 35.106125, 31.083885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899540, 34.817413, 31.167950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282444, 0.496965, 0.820519,
		-0.696672, 0.481732, -0.531585,
		-0.659449, -0.721775, 0.210159,
		39.701706, 34.600880, 31.230997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421009, 35.433048, 31.136169>,  <40.163319, 35.106125, 31.083885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421009, 35.433048, 31.136169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437366, 35.079609, 31.322752>,  <39.447182, 34.867546, 31.434702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.437366, 35.079609, 31.322752>,  <39.421009, 35.433048, 31.136169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437366, 35.079609, 31.322752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308929, 0.432789, 0.846910,
		-0.950205, -0.178737, -0.255270,
		0.040896, -0.883599, 0.466455,
		39.449635, 34.814529, 31.462688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856632, 35.440304, 31.668579>,  <39.421009, 35.433048, 31.136169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856632, 35.440304, 31.668579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.071369, 35.133617, 31.809404>,  <39.200211, 34.949608, 31.893900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.071369, 35.133617, 31.809404>,  <38.856632, 35.440304, 31.668579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071369, 35.133617, 31.809404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248366, 0.255183, 0.934449,
		-0.806294, -0.589097, -0.053431,
		0.536847, -0.766711, 0.352064,
		39.232422, 34.903603, 31.915024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421196, 35.119431, 32.180397>,  <38.856632, 35.440304, 31.668579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421196, 35.119431, 32.180397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.803814, 35.016705, 32.235619>,  <39.033386, 34.955070, 32.268753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.803814, 35.016705, 32.235619>,  <38.421196, 35.119431, 32.180397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803814, 35.016705, 32.235619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028154, 0.389927, 0.920415,
		-0.290209, -0.884309, 0.365754,
		0.956549, -0.256815, 0.138057,
		39.090778, 34.939659, 32.277035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342403, 34.784794, 32.797821>,  <38.421196, 35.119431, 32.180397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342403, 34.784794, 32.797821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719624, 34.911533, 32.757309>,  <38.945957, 34.987576, 32.733002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.719624, 34.911533, 32.757309>,  <38.342403, 34.784794, 32.797821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719624, 34.911533, 32.757309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007372, 0.284502, 0.958647,
		0.332562, -0.904801, 0.265965,
		0.943053, 0.316849, -0.101284,
		39.002541, 35.006588, 32.726925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691822, 34.489304, 33.389065>,  <38.342403, 34.784794, 32.797821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691822, 34.489304, 33.389065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927185, 34.787350, 33.263477>,  <39.068401, 34.966179, 33.188126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927185, 34.787350, 33.263477>,  <38.691822, 34.489304, 33.389065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927185, 34.787350, 33.263477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163970, 0.270278, 0.948717,
		0.791765, -0.609713, 0.036857,
		0.588407, 0.745117, -0.313971,
		39.103706, 35.010883, 33.169285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366364, 34.489441, 33.764805>,  <38.691822, 34.489304, 33.389065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366364, 34.489441, 33.764805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.362888, 34.873329, 33.652473>,  <39.360802, 35.103661, 33.585075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.362888, 34.873329, 33.652473>,  <39.366364, 34.489441, 33.764805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362888, 34.873329, 33.652473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307398, 0.269804, 0.912530,
		0.951541, -0.078398, -0.297360,
		-0.008688, 0.959718, -0.280829,
		39.360283, 35.161243, 33.568226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918198, 34.814632, 34.193138>,  <39.366364, 34.489441, 33.764805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918198, 34.814632, 34.193138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700127, 35.113503, 34.041080>,  <39.569283, 35.292824, 33.949848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700127, 35.113503, 34.041080>,  <39.918198, 34.814632, 34.193138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700127, 35.113503, 34.041080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139830, 0.528154, 0.837557,
		0.826574, 0.403464, -0.392417,
		-0.545181, 0.747175, -0.380142,
		39.536572, 35.337654, 33.927036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344860, 35.445442, 34.278858>,  <39.918198, 34.814632, 34.193138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344860, 35.445442, 34.278858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973728, 35.588715, 34.237209>,  <39.751049, 35.674679, 34.212219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973728, 35.588715, 34.237209>,  <40.344860, 35.445442, 34.278858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973728, 35.588715, 34.237209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163176, 0.640758, 0.750202,
		0.335424, 0.679069, -0.652960,
		-0.927828, 0.358183, -0.104118,
		39.695381, 35.696171, 34.205975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405247, 36.189934, 34.200951>,  <40.344860, 35.445442, 34.278858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405247, 36.189934, 34.200951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.020115, 36.142578, 34.298058>,  <39.789036, 36.114162, 34.356323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.020115, 36.142578, 34.298058>,  <40.405247, 36.189934, 34.200951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020115, 36.142578, 34.298058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131914, 0.578196, 0.805163,
		-0.235693, 0.807262, -0.541088,
		-0.962833, -0.118394, 0.242766,
		39.731266, 36.107059, 34.370888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132812, 36.783894, 34.449089>,  <40.405247, 36.189934, 34.200951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132812, 36.783894, 34.449089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.890133, 36.527843, 34.637623>,  <39.744526, 36.374214, 34.750744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.890133, 36.527843, 34.637623>,  <40.132812, 36.783894, 34.449089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890133, 36.527843, 34.637623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034934, 0.570885, 0.820287,
		-0.794166, 0.514130, -0.323991,
		-0.606696, -0.640126, 0.471338,
		39.708126, 36.335804, 34.779026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393459, 36.994602, 34.550335>,  <40.132812, 36.783894, 34.449089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393459, 36.994602, 34.550335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517723, 36.757339, 34.847427>,  <39.592281, 36.614983, 35.025684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517723, 36.757339, 34.847427>,  <39.393459, 36.994602, 34.550335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517723, 36.757339, 34.847427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146249, 0.742262, 0.653955,
		-0.939203, -0.311781, 0.143842,
		0.310660, -0.593160, 0.742733,
		39.610920, 36.579391, 35.070248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582775, 37.664307, 34.270325>,  <39.393459, 36.994602, 34.550335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582775, 37.664307, 34.270325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482773, 38.021252, 34.420620>,  <39.422771, 38.235420, 34.510796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482773, 38.021252, 34.420620>,  <39.582775, 37.664307, 34.270325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482773, 38.021252, 34.420620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791367, 0.035267, -0.610324,
		-0.557884, -0.449930, 0.697373,
		-0.250009, 0.892368, 0.375734,
		39.407772, 38.288963, 34.533340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868958, 37.544979, 34.404671>,  <39.582775, 37.664307, 34.270325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868958, 37.544979, 34.404671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.947365, 37.936180, 34.376144>,  <38.994408, 38.170902, 34.359028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.947365, 37.936180, 34.376144>,  <38.868958, 37.544979, 34.404671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947365, 37.936180, 34.376144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791929, 0.114992, -0.599688,
		-0.578296, 0.174031, 0.797049,
		0.196019, 0.978003, -0.071320,
		39.006172, 38.229580, 34.354748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181103, 37.853977, 34.420639>,  <38.868958, 37.544979, 34.404671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181103, 37.853977, 34.420639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.432873, 38.123783, 34.266319>,  <38.583935, 38.285667, 34.173729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.432873, 38.123783, 34.266319>,  <38.181103, 37.853977, 34.420639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432873, 38.123783, 34.266319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696030, 0.268655, -0.665858,
		-0.345487, 0.687640, 0.638585,
		0.629430, 0.674519, -0.385801,
		38.621700, 38.326138, 34.150578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710274, 38.461834, 34.262840>,  <38.181103, 37.853977, 34.420639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710274, 38.461834, 34.262840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056137, 38.519474, 34.070339>,  <38.263657, 38.554058, 33.954838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056137, 38.519474, 34.070339>,  <37.710274, 38.461834, 34.262840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056137, 38.519474, 34.070339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501934, 0.287301, -0.815794,
		0.020711, 0.946939, 0.320744,
		0.864658, 0.144096, -0.481251,
		38.315533, 38.562702, 33.925964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660305, 39.087502, 33.876789>,  <37.710274, 38.461834, 34.262840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660305, 39.087502, 33.876789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.957317, 38.882217, 33.704624>,  <38.135525, 38.759045, 33.601326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.957317, 38.882217, 33.704624>,  <37.660305, 39.087502, 33.876789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957317, 38.882217, 33.704624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424090, 0.137161, -0.895173,
		0.518450, 0.847230, -0.115801,
		0.742534, -0.513213, -0.430413,
		38.180077, 38.728252, 33.575500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911156, 39.427223, 33.353565>,  <37.660305, 39.087502, 33.876789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911156, 39.427223, 33.353565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.005844, 39.051029, 33.256039>,  <38.062656, 38.825314, 33.197521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.005844, 39.051029, 33.256039>,  <37.911156, 39.427223, 33.353565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005844, 39.051029, 33.256039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152694, 0.211817, -0.965307,
		0.959503, 0.265740, -0.093464,
		0.236723, -0.940487, -0.243816,
		38.076862, 38.768883, 33.182896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251965, 39.491623, 32.721893>,  <37.911156, 39.427223, 33.353565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251965, 39.491623, 32.721893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185081, 39.098595, 32.754383>,  <38.144951, 38.862778, 32.773876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185081, 39.098595, 32.754383>,  <38.251965, 39.491623, 32.721893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185081, 39.098595, 32.754383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217585, -0.043578, -0.975068,
		0.961613, -0.180710, -0.206506,
		-0.167205, -0.982571, 0.081225,
		38.134918, 38.803825, 32.778751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719727, 39.063038, 32.237915>,  <38.251965, 39.491623, 32.721893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719727, 39.063038, 32.237915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400379, 38.831921, 32.305763>,  <38.208771, 38.693253, 32.346474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.400379, 38.831921, 32.305763>,  <38.719727, 39.063038, 32.237915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400379, 38.831921, 32.305763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205695, -0.003068, -0.978611,
		0.565954, -0.816178, -0.116399,
		-0.798364, -0.577792, 0.169620,
		38.160870, 38.658585, 32.356647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837204, 38.560623, 31.833853>,  <38.719727, 39.063038, 32.237915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837204, 38.560623, 31.833853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.445538, 38.537971, 31.911848>,  <38.210537, 38.524380, 31.958645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.445538, 38.537971, 31.911848>,  <38.837204, 38.560623, 31.833853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445538, 38.537971, 31.911848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192217, -0.050857, -0.980034,
		0.065414, -0.997099, 0.038912,
		-0.979169, -0.056628, 0.194986,
		38.151787, 38.520985, 31.970345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564796, 37.980183, 31.389532>,  <38.837204, 38.560623, 31.833853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564796, 37.980183, 31.389532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223995, 38.140308, 31.524488>,  <38.019512, 38.236385, 31.605463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223995, 38.140308, 31.524488>,  <38.564796, 37.980183, 31.389532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223995, 38.140308, 31.524488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488145, -0.374539, -0.788311,
		-0.189204, -0.836343, 0.514521,
		-0.852007, 0.400313, 0.337392,
		37.968391, 38.260403, 31.625706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052860, 37.435165, 31.326042>,  <38.564796, 37.980183, 31.389532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052860, 37.435165, 31.326042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.855656, 37.783142, 31.321203>,  <37.737331, 37.991928, 31.318300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.855656, 37.783142, 31.321203>,  <38.052860, 37.435165, 31.326042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855656, 37.783142, 31.321203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368658, -0.221479, -0.902795,
		-0.788055, -0.440629, 0.429902,
		-0.493012, 0.869938, -0.012097,
		37.707752, 38.044125, 31.317574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274414, 37.385185, 31.200302>,  <38.052860, 37.435165, 31.326042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274414, 37.385185, 31.200302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.397774, 37.742336, 31.069054>,  <37.471790, 37.956627, 30.990305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.397774, 37.742336, 31.069054>,  <37.274414, 37.385185, 31.200302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397774, 37.742336, 31.069054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333698, -0.221466, -0.916296,
		-0.890805, 0.392080, 0.229650,
		0.308402, 0.892875, -0.328120,
		37.490295, 38.010201, 30.970617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680241, 37.525276, 30.719824>,  <37.274414, 37.385185, 31.200302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680241, 37.525276, 30.719824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.973064, 37.789093, 30.651592>,  <37.148758, 37.947384, 30.610653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.973064, 37.789093, 30.651592>,  <36.680241, 37.525276, 30.719824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973064, 37.789093, 30.651592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246779, 0.023352, -0.968790,
		-0.634972, 0.751307, 0.179856,
		0.732059, 0.659539, -0.170579,
		37.192680, 37.986954, 30.600418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450268, 37.986862, 30.224686>,  <36.680241, 37.525276, 30.719824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450268, 37.986862, 30.224686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.848255, 38.023300, 30.207975>,  <37.087048, 38.045162, 30.197950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.848255, 38.023300, 30.207975>,  <36.450268, 37.986862, 30.224686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848255, 38.023300, 30.207975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019904, -0.228910, -0.973244,
		-0.098224, 0.969175, -0.225944,
		0.994965, 0.091099, -0.041775,
		37.146744, 38.050629, 30.195442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200397, 38.720512, 30.041323>,  <36.450268, 37.986862, 30.224686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200397, 38.720512, 30.041323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.829720, 38.572704, 30.068733>,  <35.607315, 38.484020, 30.085178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.829720, 38.572704, 30.068733>,  <36.200397, 38.720512, 30.041323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829720, 38.572704, 30.068733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136625, -0.161380, 0.977389,
		-0.350109, 0.915100, 0.200036,
		-0.926691, -0.369523, 0.068524,
		35.551712, 38.461849, 30.089291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847778, 39.031155, 30.649214>,  <36.200397, 38.720512, 30.041323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847778, 39.031155, 30.649214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.657360, 38.684471, 30.589636>,  <35.543110, 38.476460, 30.553888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.657360, 38.684471, 30.589636>,  <35.847778, 39.031155, 30.649214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657360, 38.684471, 30.589636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004330, -0.171676, 0.985144,
		-0.879408, 0.468332, 0.085479,
		-0.476049, -0.866714, -0.148946,
		35.514545, 38.424458, 30.544952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422150, 38.977936, 31.262211>,  <35.847778, 39.031155, 30.649214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422150, 38.977936, 31.262211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.393429, 38.607109, 31.115025>,  <35.376198, 38.384613, 31.026712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.393429, 38.607109, 31.115025>,  <35.422150, 38.977936, 31.262211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393429, 38.607109, 31.115025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075703, -0.372920, 0.924770,
		-0.994542, 0.038543, 0.096957,
		-0.071801, -0.927063, -0.367967,
		35.371887, 38.328991, 31.004635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810341, 38.649021, 31.588486>,  <35.422150, 38.977936, 31.262211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810341, 38.649021, 31.588486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.045372, 38.354481, 31.454300>,  <35.186390, 38.177757, 31.373789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.045372, 38.354481, 31.454300>,  <34.810341, 38.649021, 31.588486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045372, 38.354481, 31.454300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059369, -0.452693, 0.889688,
		-0.806985, -0.502846, -0.309710,
		0.587580, -0.736352, -0.335463,
		35.221645, 38.133575, 31.353661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446999, 38.090973, 31.740112>,  <34.810341, 38.649021, 31.588486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446999, 38.090973, 31.740112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.832024, 37.985817, 31.713694>,  <35.063038, 37.922726, 31.697842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.832024, 37.985817, 31.713694>,  <34.446999, 38.090973, 31.740112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832024, 37.985817, 31.713694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062484, -0.452310, 0.889669,
		-0.263756, -0.852236, -0.451803,
		0.962563, -0.262886, -0.066048,
		35.120792, 37.906952, 31.693880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493107, 37.259613, 31.732077>,  <34.446999, 38.090973, 31.740112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493107, 37.259613, 31.732077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.858662, 37.387077, 31.832691>,  <35.077995, 37.463554, 31.893059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.858662, 37.387077, 31.832691>,  <34.493107, 37.259613, 31.732077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858662, 37.387077, 31.832691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028917, -0.566914, 0.823270,
		0.404943, -0.759647, -0.508879,
		0.913885, 0.318662, 0.251534,
		35.132828, 37.482677, 31.908152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792095, 36.695332, 32.080967>,  <34.493107, 37.259613, 31.732077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792095, 36.695332, 32.080967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.048847, 36.966564, 32.224182>,  <35.202900, 37.129303, 32.310112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.048847, 36.966564, 32.224182>,  <34.792095, 36.695332, 32.080967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048847, 36.966564, 32.224182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009644, -0.474020, 0.880461,
		0.766742, -0.561700, -0.310805,
		0.641883, 0.678084, 0.358034,
		35.241413, 37.169991, 32.331593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176220, 36.219501, 32.404552>,  <34.792095, 36.695332, 32.080967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176220, 36.219501, 32.404552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.294392, 36.575859, 32.542561>,  <35.365295, 36.789673, 32.625366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.294392, 36.575859, 32.542561>,  <35.176220, 36.219501, 32.404552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294392, 36.575859, 32.542561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012490, -0.364709, 0.931038,
		0.955284, -0.270742, -0.118871,
		0.295425, 0.890890, 0.345019,
		35.383018, 36.843124, 32.646065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736320, 36.081257, 32.767281>,  <35.176220, 36.219501, 32.404552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736320, 36.081257, 32.767281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.639481, 36.436295, 32.924026>,  <35.581375, 36.649319, 33.018074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.639481, 36.436295, 32.924026>,  <35.736320, 36.081257, 32.767281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639481, 36.436295, 32.924026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118258, -0.373877, 0.919908,
		0.963017, 0.269055, -0.014449,
		-0.242103, 0.887596, 0.391868,
		35.566849, 36.702572, 33.041588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139549, 36.219032, 33.493183>,  <35.736320, 36.081257, 32.767281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139549, 36.219032, 33.493183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.843792, 36.488216, 33.501369>,  <35.666336, 36.649727, 33.506283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.843792, 36.488216, 33.501369>,  <36.139549, 36.219032, 33.493183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843792, 36.488216, 33.501369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153583, -0.198187, 0.968057,
		0.655518, 0.712636, 0.249893,
		-0.739397, 0.672958, 0.020466,
		35.621971, 36.690105, 33.507511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359509, 36.803543, 33.863754>,  <36.139549, 36.219032, 33.493183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359509, 36.803543, 33.863754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.960361, 36.798996, 33.889454>,  <35.720875, 36.796268, 33.904873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.960361, 36.798996, 33.889454>,  <36.359509, 36.803543, 33.863754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960361, 36.798996, 33.889454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064455, -0.018467, 0.997750,
		-0.010153, 0.999765, 0.019160,
		-0.997869, -0.011365, 0.064252,
		35.660999, 36.795586, 33.908730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128925, 37.239658, 34.392879>,  <36.359509, 36.803543, 33.863754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128925, 37.239658, 34.392879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.824768, 36.989262, 34.323673>,  <35.642273, 36.839024, 34.282150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.824768, 36.989262, 34.323673>,  <36.128925, 37.239658, 34.392879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824768, 36.989262, 34.323673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137685, -0.104965, 0.984899,
		-0.634700, 0.772732, -0.006376,
		-0.760393, -0.625993, -0.173015,
		35.596649, 36.801464, 34.271770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.562553, 39.390629, 26.517651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402424, 39.024773, 26.495131>,  <35.306347, 38.805260, 26.481619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402424, 39.024773, 26.495131>,  <35.562553, 39.390629, 26.517651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402424, 39.024773, 26.495131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463942, 0.149314, 0.873191,
		-0.790250, 0.375682, -0.484115,
		-0.400328, -0.914641, -0.056300,
		35.282326, 38.750381, 26.478241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916008, 39.509483, 26.780399>,  <35.562553, 39.390629, 26.517651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916008, 39.509483, 26.780399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011997, 39.121387, 26.793304>,  <35.069592, 38.888531, 26.801046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011997, 39.121387, 26.793304>,  <34.916008, 39.509483, 26.780399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011997, 39.121387, 26.793304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269417, -0.034634, 0.962400,
		-0.932646, -0.239638, -0.269712,
		0.239969, -0.970244, 0.032261,
		35.083988, 38.830315, 26.802982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318798, 39.112453, 27.043701>,  <34.916008, 39.509483, 26.780399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318798, 39.112453, 27.043701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651276, 38.912529, 27.141111>,  <34.850761, 38.792576, 27.199558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651276, 38.912529, 27.141111>,  <34.318798, 39.112453, 27.043701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651276, 38.912529, 27.141111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284116, -0.005337, 0.958775,
		-0.477905, -0.866119, -0.146440,
		0.831195, -0.499810, 0.243527,
		34.900635, 38.762585, 27.214170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061111, 38.598389, 27.624313>,  <34.318798, 39.112453, 27.043701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061111, 38.598389, 27.624313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459663, 38.565964, 27.634537>,  <34.698795, 38.546509, 27.640671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459663, 38.565964, 27.634537>,  <34.061111, 38.598389, 27.624313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459663, 38.565964, 27.634537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028497, -0.035314, 0.998970,
		-0.080073, -0.996083, -0.037497,
		0.996382, -0.081059, 0.025558,
		34.758579, 38.541645, 27.642204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181332, 38.025913, 27.985735>,  <34.061111, 38.598389, 27.624313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181332, 38.025913, 27.985735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522747, 38.232388, 28.014103>,  <34.727596, 38.356274, 28.031124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522747, 38.232388, 28.014103>,  <34.181332, 38.025913, 27.985735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522747, 38.232388, 28.014103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072734, -0.252821, 0.964775,
		0.515935, -0.818311, -0.253336,
		0.853534, 0.516188, 0.070920,
		34.778809, 38.387245, 28.035379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615059, 37.626480, 28.343224>,  <34.181332, 38.025913, 27.985735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615059, 37.626480, 28.343224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805759, 37.974144, 28.395771>,  <34.920181, 38.182743, 28.427299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805759, 37.974144, 28.395771>,  <34.615059, 37.626480, 28.343224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805759, 37.974144, 28.395771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231117, -0.268130, 0.935249,
		0.848109, -0.415523, -0.328711,
		0.476755, 0.869164, 0.131369,
		34.948788, 38.234894, 28.435183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237621, 37.496716, 28.694525>,  <34.615059, 37.626480, 28.343224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237621, 37.496716, 28.694525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186302, 37.886124, 28.770214>,  <35.155510, 38.119766, 28.815628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186302, 37.886124, 28.770214>,  <35.237621, 37.496716, 28.694525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186302, 37.886124, 28.770214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341237, -0.135814, 0.930114,
		0.931181, 0.183900, -0.314776,
		-0.128297, 0.973517, 0.189221,
		35.147812, 38.178177, 28.826981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886700, 37.791008, 29.042507>,  <35.237621, 37.496716, 28.694525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886700, 37.791008, 29.042507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584450, 38.030949, 29.147734>,  <35.403099, 38.174911, 29.210871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584450, 38.030949, 29.147734>,  <35.886700, 37.791008, 29.042507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584450, 38.030949, 29.147734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315434, -0.018736, 0.948763,
		0.574044, 0.799893, -0.175056,
		-0.755629, 0.599850, 0.263068,
		35.357761, 38.210903, 29.226654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109798, 38.358284, 29.436787>,  <35.886700, 37.791008, 29.042507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109798, 38.358284, 29.436787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729748, 38.295071, 29.544336>,  <35.501717, 38.257141, 29.608866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729748, 38.295071, 29.544336>,  <36.109798, 38.358284, 29.436787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729748, 38.295071, 29.544336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284501, -0.085962, 0.954814,
		-0.127779, 0.983685, 0.126635,
		-0.950122, -0.158033, 0.268875,
		35.444710, 38.247662, 29.624998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766628, 38.643467, 29.576393>,  <36.109798, 38.358284, 29.436787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766628, 38.643467, 29.576393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097946, 38.428757, 29.640652>,  <37.296738, 38.299931, 29.679207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097946, 38.428757, 29.640652>,  <36.766628, 38.643467, 29.576393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097946, 38.428757, 29.640652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112739, -0.121188, -0.986207,
		0.548839, 0.834977, -0.039863,
		0.828291, -0.536775, 0.160647,
		37.346432, 38.267723, 29.688847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301575, 38.812302, 29.022863>,  <36.766628, 38.643467, 29.576393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301575, 38.812302, 29.022863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431252, 38.467319, 29.178337>,  <37.509060, 38.260330, 29.271622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431252, 38.467319, 29.178337>,  <37.301575, 38.812302, 29.022863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431252, 38.467319, 29.178337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307627, -0.292428, -0.905457,
		0.894574, 0.413115, 0.170509,
		0.324196, -0.862451, 0.388683,
		37.528511, 38.208584, 29.294943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000252, 38.736992, 28.763489>,  <37.301575, 38.812302, 29.022863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000252, 38.736992, 28.763489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841278, 38.385204, 28.868242>,  <37.745895, 38.174133, 28.931093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841278, 38.385204, 28.868242>,  <38.000252, 38.736992, 28.763489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841278, 38.385204, 28.868242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458352, -0.437498, -0.773633,
		0.794959, -0.187434, 0.576982,
		-0.397434, -0.879468, 0.261882,
		37.722050, 38.121365, 28.946808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555298, 38.335400, 28.609816>,  <38.000252, 38.736992, 28.763489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555298, 38.335400, 28.609816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245869, 38.082970, 28.632866>,  <38.060211, 37.931511, 28.646696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245869, 38.082970, 28.632866>,  <38.555298, 38.335400, 28.609816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245869, 38.082970, 28.632866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198461, -0.327622, -0.923730,
		0.601826, -0.703138, 0.378685,
		-0.773575, -0.631079, 0.057627,
		38.013798, 37.893646, 28.650154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847324, 37.652813, 28.469656>,  <38.555298, 38.335400, 28.609816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847324, 37.652813, 28.469656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451424, 37.659485, 28.412926>,  <38.213882, 37.663486, 28.378887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451424, 37.659485, 28.412926>,  <38.847324, 37.652813, 28.469656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451424, 37.659485, 28.412926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130768, -0.293209, -0.947063,
		-0.057379, -0.955903, 0.288023,
		-0.989751, 0.016677, -0.141826,
		38.154499, 37.664490, 28.370378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651314, 36.925518, 28.116228>,  <38.847324, 37.652813, 28.469656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651314, 36.925518, 28.116228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367123, 37.184334, 28.005547>,  <38.196609, 37.339622, 27.939138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367123, 37.184334, 28.005547>,  <38.651314, 36.925518, 28.116228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367123, 37.184334, 28.005547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014876, -0.379303, -0.925153,
		-0.703563, -0.661416, 0.259861,
		-0.710477, 0.647038, -0.276703,
		38.153980, 37.378445, 27.922535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040710, 36.526306, 27.830767>,  <38.651314, 36.925518, 28.116228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040710, 36.526306, 27.830767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036407, 36.903404, 27.697432>,  <38.033825, 37.129662, 27.617432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036407, 36.903404, 27.697432>,  <38.040710, 36.526306, 27.830767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036407, 36.903404, 27.697432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283457, -0.316807, -0.905144,
		-0.958925, -0.104221, -0.263821,
		-0.010755, 0.942747, -0.333336,
		38.033180, 37.186230, 27.597431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666149, 36.424557, 27.159536>,  <38.040710, 36.526306, 27.830767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666149, 36.424557, 27.159536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848900, 36.779701, 27.137728>,  <37.958549, 36.992786, 27.124641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848900, 36.779701, 27.137728>,  <37.666149, 36.424557, 27.159536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848900, 36.779701, 27.137728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113625, -0.119042, -0.986366,
		-0.882244, 0.444450, -0.155270,
		0.456874, 0.887859, -0.054523,
		37.985962, 37.046059, 27.121370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422981, 36.623081, 26.574579>,  <37.666149, 36.424557, 27.159536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422981, 36.623081, 26.574579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743507, 36.854240, 26.636454>,  <37.935825, 36.992935, 26.673578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743507, 36.854240, 26.636454>,  <37.422981, 36.623081, 26.574579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743507, 36.854240, 26.636454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190817, -0.001839, -0.981624,
		-0.566990, 0.816110, -0.111746,
		0.801319, 0.577894, 0.154685,
		37.983902, 37.027607, 26.682859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463657, 36.925594, 25.987076>,  <37.422981, 36.623081, 26.574579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463657, 36.925594, 25.987076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818924, 37.027225, 26.140234>,  <38.032082, 37.088203, 26.232128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818924, 37.027225, 26.140234>,  <37.463657, 36.925594, 25.987076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818924, 37.027225, 26.140234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421206, -0.117016, -0.899385,
		-0.183709, 0.960079, -0.210948,
		0.888165, 0.254077, 0.382894,
		38.085373, 37.103447, 26.255102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723480, 37.538612, 25.587498>,  <37.463657, 36.925594, 25.987076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723480, 37.538612, 25.587498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015179, 37.321625, 25.754314>,  <38.190197, 37.191433, 25.854404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015179, 37.321625, 25.754314>,  <37.723480, 37.538612, 25.587498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015179, 37.321625, 25.754314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415433, -0.133289, -0.899805,
		0.543705, 0.829434, 0.128159,
		0.729247, -0.542470, 0.417044,
		38.233952, 37.158882, 25.879427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345860, 37.774048, 25.276304>,  <37.723480, 37.538612, 25.587498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345860, 37.774048, 25.276304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461910, 37.431149, 25.446459>,  <38.531540, 37.225410, 25.548552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461910, 37.431149, 25.446459>,  <38.345860, 37.774048, 25.276304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461910, 37.431149, 25.446459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422504, -0.284102, -0.860684,
		0.858673, 0.429431, 0.279767,
		0.290122, -0.857248, 0.425387,
		38.548946, 37.173973, 25.574076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975971, 37.710033, 25.068333>,  <38.345860, 37.774048, 25.276304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975971, 37.710033, 25.068333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885597, 37.345032, 25.204739>,  <38.831371, 37.126030, 25.286583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885597, 37.345032, 25.204739>,  <38.975971, 37.710033, 25.068333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885597, 37.345032, 25.204739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388679, -0.405439, -0.827374,
		0.893242, -0.054388, 0.446274,
		-0.225936, -0.912503, 0.341016,
		38.817818, 37.071281, 25.307043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665310, 37.328007, 25.082653>,  <38.975971, 37.710033, 25.068333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665310, 37.328007, 25.082653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359188, 37.070923, 25.068670>,  <39.175514, 36.916672, 25.060280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359188, 37.070923, 25.068670>,  <39.665310, 37.328007, 25.082653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359188, 37.070923, 25.068670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425699, -0.464667, -0.776444,
		0.482787, -0.609101, 0.629216,
		-0.765309, -0.642713, -0.034959,
		39.129597, 36.878109, 25.058182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.058826, 30.257301, 25.233936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.118584, 30.648664, 25.291065>,  <33.154438, 30.883482, 25.325342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.118584, 30.648664, 25.291065>,  <33.058826, 30.257301, 25.233936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118584, 30.648664, 25.291065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120892, -0.161431, 0.979451,
		0.981360, -0.129059, -0.142398,
		0.149395, 0.978409, 0.142820,
		33.163403, 30.942186, 25.333912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509048, 30.261406, 25.839958>,  <33.058826, 30.257301, 25.233936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509048, 30.261406, 25.839958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.377995, 30.639132, 25.827808>,  <33.299362, 30.865767, 25.820518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.377995, 30.639132, 25.827808>,  <33.509048, 30.261406, 25.839958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377995, 30.639132, 25.827808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233475, 0.112076, 0.965882,
		0.915502, 0.309367, -0.257195,
		-0.327637, 0.944315, -0.030377,
		33.279705, 30.922426, 25.818695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034958, 30.606287, 26.234310>,  <33.509048, 30.261406, 25.839958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034958, 30.606287, 26.234310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687454, 30.802042, 26.203951>,  <33.478951, 30.919495, 26.185736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687454, 30.802042, 26.203951>,  <34.034958, 30.606287, 26.234310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687454, 30.802042, 26.203951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114120, 0.346962, 0.930911,
		0.481908, 0.800075, -0.357274,
		-0.868758, 0.489386, -0.075899,
		33.426826, 30.948858, 26.181181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287418, 31.294918, 26.487747>,  <34.034958, 30.606287, 26.234310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287418, 31.294918, 26.487747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.888493, 31.276485, 26.510492>,  <33.649136, 31.265425, 26.524139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.888493, 31.276485, 26.510492>,  <34.287418, 31.294918, 26.487747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888493, 31.276485, 26.510492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038999, 0.322872, 0.945639,
		-0.061938, 0.945320, -0.320208,
		-0.997318, -0.046083, 0.056864,
		33.589298, 31.262661, 26.527552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013786, 31.967396, 26.642962>,  <34.287418, 31.294918, 26.487747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013786, 31.967396, 26.642962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.789490, 31.666759, 26.781919>,  <33.654911, 31.486378, 26.865294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.789490, 31.666759, 26.781919>,  <34.013786, 31.967396, 26.642962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789490, 31.666759, 26.781919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174191, 0.303089, 0.936907,
		-0.809462, 0.585873, -0.039034,
		-0.560739, -0.751591, 0.347393,
		33.621269, 31.441282, 26.886137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476807, 32.367489, 27.138649>,  <34.013786, 31.967396, 26.642962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476807, 32.367489, 27.138649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.479588, 31.974871, 27.215080>,  <33.481255, 31.739298, 27.260939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.479588, 31.974871, 27.215080>,  <33.476807, 32.367489, 27.138649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479588, 31.974871, 27.215080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102943, 0.190772, 0.976222,
		-0.994663, 0.012885, 0.102370,
		0.006951, -0.981550, 0.191080,
		33.481674, 31.680407, 27.272404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059849, 32.306244, 27.664068>,  <33.476807, 32.367489, 27.138649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059849, 32.306244, 27.664068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.271038, 31.967731, 27.692478>,  <33.397751, 31.764624, 27.709524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.271038, 31.967731, 27.692478>,  <33.059849, 32.306244, 27.664068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271038, 31.967731, 27.692478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175247, 0.190400, 0.965938,
		-0.830981, -0.497546, 0.248836,
		0.527977, -0.846284, 0.071026,
		33.429432, 31.713846, 27.713785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762939, 31.903143, 28.152161>,  <33.059849, 32.306244, 27.664068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762939, 31.903143, 28.152161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.135254, 31.757601, 28.138041>,  <33.358643, 31.670275, 28.129568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.135254, 31.757601, 28.138041>,  <32.762939, 31.903143, 28.152161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135254, 31.757601, 28.138041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096677, 0.151874, 0.983660,
		-0.352551, -0.918990, 0.176539,
		0.930785, -0.363857, -0.035302,
		33.414490, 31.648443, 28.127451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769947, 31.582195, 28.694050>,  <32.762939, 31.903143, 28.152161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769947, 31.582195, 28.694050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161144, 31.620968, 28.620157>,  <33.395863, 31.644232, 28.575823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161144, 31.620968, 28.620157>,  <32.769947, 31.582195, 28.694050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161144, 31.620968, 28.620157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182063, 0.035756, 0.982637,
		0.101855, -0.994649, 0.017321,
		0.977997, 0.096933, -0.184730,
		33.454544, 31.650047, 28.564737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154343, 31.229380, 29.142483>,  <32.769947, 31.582195, 28.694050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154343, 31.229380, 29.142483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.453815, 31.465528, 29.021860>,  <33.633499, 31.607218, 28.949486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.453815, 31.465528, 29.021860>,  <33.154343, 31.229380, 29.142483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453815, 31.465528, 29.021860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202967, 0.228911, 0.952053,
		0.631097, -0.773989, 0.051555,
		0.748680, 0.590373, -0.301559,
		33.678421, 31.642641, 28.931393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644035, 31.067627, 29.576990>,  <33.154343, 31.229380, 29.142483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644035, 31.067627, 29.576990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.773472, 31.416830, 29.431036>,  <33.851135, 31.626352, 29.343464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.773472, 31.416830, 29.431036>,  <33.644035, 31.067627, 29.576990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773472, 31.416830, 29.431036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182129, 0.320954, 0.929418,
		0.928501, -0.367212, -0.055141,
		0.323596, 0.873008, -0.364886,
		33.870552, 31.678732, 29.321569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248962, 31.135292, 29.971498>,  <33.644035, 31.067627, 29.576990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248962, 31.135292, 29.971498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.159615, 31.499945, 29.833494>,  <34.106007, 31.718737, 29.750690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.159615, 31.499945, 29.833494>,  <34.248962, 31.135292, 29.971498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159615, 31.499945, 29.833494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180412, 0.386507, 0.904469,
		0.957892, 0.139786, -0.250803,
		-0.223369, 0.911632, -0.345013,
		34.092606, 31.773434, 29.729990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877071, 31.657396, 30.061724>,  <34.248962, 31.135292, 29.971498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877071, 31.657396, 30.061724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.556080, 31.892328, 30.019630>,  <34.363487, 32.033287, 29.994375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.556080, 31.892328, 30.019630>,  <34.877071, 31.657396, 30.061724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556080, 31.892328, 30.019630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321922, 0.574657, 0.752420,
		0.502391, 0.569924, -0.650223,
		-0.802477, 0.587330, -0.105231,
		34.315338, 32.068527, 29.988062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185158, 32.266346, 30.139858>,  <34.877071, 31.657396, 30.061724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185158, 32.266346, 30.139858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.794094, 32.281624, 30.222528>,  <34.559456, 32.290791, 30.272131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.794094, 32.281624, 30.222528>,  <35.185158, 32.266346, 30.139858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794094, 32.281624, 30.222528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209675, 0.245046, 0.946567,
		-0.014491, 0.968759, -0.247582,
		-0.977664, 0.038195, 0.206675,
		34.500793, 32.293083, 30.284531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880486, 32.441673, 30.463400>,  <35.185158, 32.266346, 30.139858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880486, 32.441673, 30.463400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234272, 32.333908, 30.615784>,  <36.446545, 32.269249, 30.707214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234272, 32.333908, 30.615784>,  <35.880486, 32.441673, 30.463400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234272, 32.333908, 30.615784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199430, -0.519844, -0.830656,
		0.421832, 0.810664, -0.406056,
		0.884469, -0.269417, 0.380958,
		36.499611, 32.253082, 30.730070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355232, 32.732697, 29.953117>,  <35.880486, 32.441673, 30.463400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355232, 32.732697, 29.953117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542770, 32.445885, 30.159435>,  <36.655293, 32.273796, 30.283226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542770, 32.445885, 30.159435>,  <36.355232, 32.732697, 29.953117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542770, 32.445885, 30.159435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178038, -0.495251, -0.850311,
		0.865149, 0.490498, -0.104538,
		0.468848, -0.717034, 0.515794,
		36.683426, 32.230774, 30.314173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071869, 32.546791, 29.623728>,  <36.355232, 32.732697, 29.953117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071869, 32.546791, 29.623728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.927322, 32.243023, 29.840132>,  <36.840595, 32.060760, 29.969975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.927322, 32.243023, 29.840132>,  <37.071869, 32.546791, 29.623728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927322, 32.243023, 29.840132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012550, -0.576204, -0.817209,
		0.932341, -0.302098, 0.198688,
		-0.361362, -0.759424, 0.541010,
		36.818913, 32.015194, 30.002436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503716, 31.969938, 29.332552>,  <37.071869, 32.546791, 29.623728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503716, 31.969938, 29.332552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.175591, 31.827736, 29.511747>,  <36.978714, 31.742414, 29.619265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.175591, 31.827736, 29.511747>,  <37.503716, 31.969938, 29.332552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175591, 31.827736, 29.511747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203768, -0.550233, -0.809767,
		0.534377, -0.755551, 0.378923,
		-0.820317, -0.355509, 0.447989,
		36.929497, 31.721083, 29.646145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461224, 31.354338, 28.972492>,  <37.503716, 31.969938, 29.332552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461224, 31.354338, 28.972492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110752, 31.360243, 29.165195>,  <36.900471, 31.363787, 29.280817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110752, 31.360243, 29.165195>,  <37.461224, 31.354338, 28.972492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110752, 31.360243, 29.165195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454040, -0.360671, -0.814717,
		0.161728, -0.932576, 0.322716,
		-0.876180, 0.014763, 0.481758,
		36.847897, 31.364672, 29.309723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307533, 30.704811, 28.977631>,  <37.461224, 31.354338, 28.972492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307533, 30.704811, 28.977631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983322, 30.938749, 28.990269>,  <36.788795, 31.079111, 28.997850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983322, 30.938749, 28.990269>,  <37.307533, 30.704811, 28.977631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983322, 30.938749, 28.990269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255256, -0.304178, -0.917780,
		-0.527148, -0.751953, 0.395830,
		-0.810531, 0.584844, 0.031594,
		36.740162, 31.114202, 28.999746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824089, 30.365604, 28.604576>,  <37.307533, 30.704811, 28.977631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824089, 30.365604, 28.604576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.699219, 30.745613, 28.604052>,  <36.624294, 30.973618, 28.603737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.699219, 30.745613, 28.604052>,  <36.824089, 30.365604, 28.604576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699219, 30.745613, 28.604052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308064, -0.102539, -0.945824,
		-0.898688, -0.294863, 0.324678,
		-0.312180, 0.950022, -0.001314,
		36.605564, 31.030621, 28.603657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279121, 30.358128, 28.203632>,  <36.824089, 30.365604, 28.604576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279121, 30.358128, 28.203632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352234, 30.750385, 28.175547>,  <36.396103, 30.985739, 28.158695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352234, 30.750385, 28.175547>,  <36.279121, 30.358128, 28.203632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352234, 30.750385, 28.175547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075211, -0.057260, -0.995522,
		-0.980272, 0.187244, 0.063289,
		0.182782, 0.980643, -0.070213,
		36.407070, 31.044579, 28.154482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857956, 30.581581, 27.715927>,  <36.279121, 30.358128, 28.203632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857956, 30.581581, 27.715927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.122223, 30.881718, 27.724945>,  <36.280785, 31.061800, 27.730356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.122223, 30.881718, 27.724945>,  <35.857956, 30.581581, 27.715927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122223, 30.881718, 27.724945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035961, 0.061635, -0.997451,
		-0.749817, 0.658172, 0.067703,
		0.660667, 0.750340, 0.022546,
		36.320423, 31.106819, 27.731709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461597, 31.055288, 27.375164>,  <35.857956, 30.581581, 27.715927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461597, 31.055288, 27.375164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.852627, 31.136246, 27.351906>,  <36.087246, 31.184820, 27.337950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.852627, 31.136246, 27.351906>,  <35.461597, 31.055288, 27.375164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852627, 31.136246, 27.351906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114777, 0.280605, -0.952936,
		-0.176552, 0.938242, 0.297543,
		0.977577, 0.202393, -0.058148,
		36.145901, 31.196964, 27.334461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581310, 31.703901, 27.062120>,  <35.461597, 31.055288, 27.375164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581310, 31.703901, 27.062120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930920, 31.518715, 27.003126>,  <36.140686, 31.407604, 26.967730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930920, 31.518715, 27.003126>,  <35.581310, 31.703901, 27.062120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930920, 31.518715, 27.003126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021610, 0.266198, -0.963676,
		0.485408, 0.845460, 0.222658,
		0.874021, -0.462964, -0.147485,
		36.193127, 31.379826, 26.958881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912544, 32.002945, 26.432119>,  <35.581310, 31.703901, 27.062120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912544, 32.002945, 26.432119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.119038, 31.662186, 26.467373>,  <36.242935, 31.457729, 26.488525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.119038, 31.662186, 26.467373>,  <35.912544, 32.002945, 26.432119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119038, 31.662186, 26.467373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155513, -0.007956, -0.987802,
		0.842211, 0.523642, 0.128375,
		0.516233, -0.851901, 0.088134,
		36.273907, 31.406616, 26.493813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536362, 32.098068, 26.127659>,  <35.912544, 32.002945, 26.432119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536362, 32.098068, 26.127659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.539223, 31.698139, 26.120779>,  <36.540939, 31.458181, 26.116652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.539223, 31.698139, 26.120779>,  <36.536362, 32.098068, 26.127659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539223, 31.698139, 26.120779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193468, 0.018258, -0.980937,
		0.981081, 0.003692, 0.193565,
		0.007156, -0.999827, -0.017198,
		36.541370, 31.398191, 26.115620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192875, 31.951803, 25.824385>,  <36.536362, 32.098068, 26.127659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192875, 31.951803, 25.824385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.962910, 31.626204, 25.791201>,  <36.824932, 31.430843, 25.771290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.962910, 31.626204, 25.791201>,  <37.192875, 31.951803, 25.824385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962910, 31.626204, 25.791201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191330, -0.035165, -0.980896,
		0.795532, -0.579799, 0.175959,
		-0.574910, -0.814000, -0.082959,
		36.790436, 31.382004, 25.766314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863350, 31.583456, 25.729965>,  <37.192875, 31.951803, 25.824385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863350, 31.583456, 25.729965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.263313, 31.586430, 25.734547>,  <38.503292, 31.588213, 25.737295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.263313, 31.586430, 25.734547>,  <37.863350, 31.583456, 25.729965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263313, 31.586430, 25.734547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012325, 0.130702, 0.991345,
		0.005871, -0.991394, 0.130781,
		0.999907, 0.007432, 0.011452,
		38.563286, 31.588659, 25.737982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094315, 30.964703, 26.177238>,  <37.863350, 31.583456, 25.729965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094315, 30.964703, 26.177238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371155, 31.253147, 26.164640>,  <38.537258, 31.426214, 26.157082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371155, 31.253147, 26.164640>,  <38.094315, 30.964703, 26.177238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371155, 31.253147, 26.164640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004246, 0.039569, 0.999208,
		0.721785, -0.691690, 0.024324,
		0.692104, 0.721110, -0.031497,
		38.578785, 31.469481, 26.155191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469475, 30.783880, 26.728781>,  <38.094315, 30.964703, 26.177238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469475, 30.783880, 26.728781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613689, 31.151445, 26.664764>,  <38.700218, 31.371984, 26.626354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613689, 31.151445, 26.664764>,  <38.469475, 30.783880, 26.728781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613689, 31.151445, 26.664764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136174, 0.117885, 0.983646,
		0.922752, -0.376431, -0.082631,
		0.360534, 0.918914, -0.160039,
		38.721851, 31.427120, 26.616753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892265, 30.853359, 27.263166>,  <38.469475, 30.783880, 26.728781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892265, 30.853359, 27.263166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.814663, 31.220387, 27.124355>,  <38.768101, 31.440603, 27.041069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.814663, 31.220387, 27.124355>,  <38.892265, 30.853359, 27.263166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814663, 31.220387, 27.124355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205292, 0.383889, 0.900269,
		0.959280, 0.103413, -0.262845,
		-0.194003, 0.917570, -0.347027,
		38.756462, 31.495657, 27.020247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501484, 31.236179, 27.549986>,  <38.892265, 30.853359, 27.263166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501484, 31.236179, 27.549986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.236900, 31.522408, 27.460155>,  <39.078152, 31.694145, 27.406258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.236900, 31.522408, 27.460155>,  <39.501484, 31.236179, 27.549986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236900, 31.522408, 27.460155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349147, 0.558818, 0.752210,
		0.663757, 0.419142, -0.619472,
		-0.661455, 0.715571, -0.224577,
		39.038464, 31.737080, 27.392782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895836, 31.854902, 27.492830>,  <39.501484, 31.236179, 27.549986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895836, 31.854902, 27.492830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.508732, 31.920746, 27.569096>,  <39.276470, 31.960253, 27.614855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.508732, 31.920746, 27.569096>,  <39.895836, 31.854902, 27.492830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508732, 31.920746, 27.569096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251563, 0.592920, 0.764959,
		0.012869, 0.788257, -0.615211,
		-0.967755, 0.164609, 0.190666,
		39.218407, 31.970129, 27.626295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848949, 32.566887, 27.508553>,  <39.895836, 31.854902, 27.492830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848949, 32.566887, 27.508553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.534008, 32.430679, 27.714125>,  <39.345043, 32.348953, 27.837467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.534008, 32.430679, 27.714125>,  <39.848949, 32.566887, 27.508553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534008, 32.430679, 27.714125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224055, 0.618571, 0.753107,
		-0.574348, 0.708109, -0.410738,
		-0.787352, -0.340517, 0.513930,
		39.297802, 32.328526, 27.868303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331970, 33.127354, 27.794756>,  <39.848949, 32.566887, 27.508553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331970, 33.127354, 27.794756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.268925, 32.810020, 28.029966>,  <39.231098, 32.619621, 28.171093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.268925, 32.810020, 28.029966>,  <39.331970, 33.127354, 27.794756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268925, 32.810020, 28.029966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029118, 0.591478, 0.805795,
		-0.987072, 0.144124, -0.070123,
		-0.157611, -0.793336, 0.588028,
		39.221642, 32.572021, 28.206375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792904, 33.251472, 28.270889>,  <39.331970, 33.127354, 27.794756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792904, 33.251472, 28.270889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.043224, 32.985634, 28.434198>,  <39.193417, 32.826130, 28.532183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.043224, 32.985634, 28.434198>,  <38.792904, 33.251472, 28.270889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043224, 32.985634, 28.434198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012659, 0.532019, 0.846637,
		-0.779883, -0.524655, 0.341350,
		0.625798, -0.664599, 0.408271,
		39.230965, 32.786255, 28.556679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508270, 33.121651, 28.975327>,  <38.792904, 33.251472, 28.270889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508270, 33.121651, 28.975327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.890469, 33.003654, 28.975260>,  <39.119789, 32.932858, 28.975220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.890469, 33.003654, 28.975260>,  <38.508270, 33.121651, 28.975327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890469, 33.003654, 28.975260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118131, 0.382116, 0.916533,
		-0.270304, -0.875767, 0.399959,
		0.955500, -0.294990, -0.000167,
		39.177120, 32.915157, 28.975210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654575, 32.645302, 29.584791>,  <38.508270, 33.121651, 28.975327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654575, 32.645302, 29.584791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.000191, 32.813305, 29.473774>,  <39.207561, 32.914108, 29.407164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.000191, 32.813305, 29.473774>,  <38.654575, 32.645302, 29.584791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000191, 32.813305, 29.473774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141977, 0.325625, 0.934778,
		0.482994, -0.847088, 0.221720,
		0.864037, 0.420013, -0.277542,
		39.259403, 32.939308, 29.390511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977718, 32.698620, 30.177336>,  <38.654575, 32.645302, 29.584791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977718, 32.698620, 30.177336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217403, 32.943287, 29.970720>,  <39.361214, 33.090088, 29.846752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217403, 32.943287, 29.970720>,  <38.977718, 32.698620, 30.177336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217403, 32.943287, 29.970720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091870, 0.588399, 0.803335,
		0.795301, -0.528823, 0.296382,
		0.599213, 0.611664, -0.516537,
		39.397167, 33.126785, 29.815760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567108, 32.683502, 30.597265>,  <38.977718, 32.698620, 30.177336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567108, 32.683502, 30.597265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.559601, 33.014858, 30.373333>,  <39.555096, 33.213673, 30.238974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.559601, 33.014858, 30.373333>,  <39.567108, 32.683502, 30.597265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559601, 33.014858, 30.373333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216006, 0.550067, 0.806701,
		0.976211, -0.105786, -0.189263,
		-0.018770, 0.828393, -0.559832,
		39.553970, 33.263374, 30.205383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990318, 33.073814, 30.980587>,  <39.567108, 32.683502, 30.597265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990318, 33.073814, 30.980587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.788422, 33.336361, 30.756294>,  <39.667282, 33.493889, 30.621719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.788422, 33.336361, 30.756294>,  <39.990318, 33.073814, 30.980587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788422, 33.336361, 30.756294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211415, 0.723750, 0.656879,
		0.836981, 0.213008, -0.504073,
		-0.504743, 0.656364, -0.560732,
		39.636997, 33.533272, 30.588074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.985100, 36.636116, 25.041962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.614365, 36.563587, 24.910456>,  <39.391922, 36.520069, 24.831553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.614365, 36.563587, 24.910456>,  <39.985100, 36.636116, 25.041962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614365, 36.563587, 24.910456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353924, -0.714216, -0.603848,
		-0.125318, -0.676030, 0.726140,
		-0.926840, -0.181326, -0.328767,
		39.336311, 36.509190, 24.811825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961750, 35.970760, 24.993776>,  <39.985100, 36.636116, 25.041962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961750, 35.970760, 24.993776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.648762, 36.084858, 24.772369>,  <39.460968, 36.153316, 24.639524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.648762, 36.084858, 24.772369>,  <39.961750, 35.970760, 24.993776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648762, 36.084858, 24.772369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277802, -0.635640, -0.720270,
		-0.557289, -0.717356, 0.418127,
		-0.782468, 0.285242, -0.553517,
		39.414021, 36.170429, 24.606314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568428, 35.293446, 24.841400>,  <39.961750, 35.970760, 24.993776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568428, 35.293446, 24.841400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.465244, 35.571259, 24.572750>,  <39.403332, 35.737946, 24.411560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.465244, 35.571259, 24.572750>,  <39.568428, 35.293446, 24.841400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465244, 35.571259, 24.572750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036453, -0.687661, -0.725116,
		-0.965467, -0.211536, 0.152073,
		-0.257963, 0.694532, -0.671625,
		39.387856, 35.779617, 24.371262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151779, 34.910030, 24.401064>,  <39.568428, 35.293446, 24.841400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151779, 34.910030, 24.401064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.268608, 35.225670, 24.184908>,  <39.338707, 35.415054, 24.055214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.268608, 35.225670, 24.184908>,  <39.151779, 34.910030, 24.401064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268608, 35.225670, 24.184908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003589, -0.564119, -0.825686,
		-0.956389, 0.243101, -0.161932,
		0.292074, 0.789096, -0.540390,
		39.356232, 35.462399, 24.022791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807217, 34.868996, 23.744240>,  <39.151779, 34.910030, 24.401064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807217, 34.868996, 23.744240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.124374, 35.101627, 23.671484>,  <39.314671, 35.241207, 23.627831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.124374, 35.101627, 23.671484>,  <38.807217, 34.868996, 23.744240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124374, 35.101627, 23.671484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055720, -0.366439, -0.928772,
		-0.606806, 0.726284, -0.322953,
		0.792894, 0.581580, -0.181889,
		39.362244, 35.276100, 23.616917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724686, 35.100620, 23.071903>,  <38.807217, 34.868996, 23.744240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724686, 35.100620, 23.071903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.105438, 35.209358, 23.128506>,  <39.333889, 35.274601, 23.162466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.105438, 35.209358, 23.128506>,  <38.724686, 35.100620, 23.071903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105438, 35.209358, 23.128506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235061, -0.351346, -0.906257,
		-0.196642, 0.895912, -0.398339,
		0.951882, 0.271842, 0.141504,
		39.391003, 35.290913, 23.170958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891529, 35.445099, 22.501524>,  <38.724686, 35.100620, 23.071903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891529, 35.445099, 22.501524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252434, 35.373608, 22.658489>,  <39.468975, 35.330711, 22.752668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252434, 35.373608, 22.658489>,  <38.891529, 35.445099, 22.501524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252434, 35.373608, 22.658489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305307, -0.377854, -0.874079,
		0.304499, 0.908450, -0.286354,
		0.902257, -0.178730, 0.392412,
		39.523109, 35.319988, 22.776213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431293, 35.795654, 22.140217>,  <38.891529, 35.445099, 22.501524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431293, 35.795654, 22.140217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.584538, 35.472221, 22.318848>,  <39.676483, 35.278164, 22.426025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.584538, 35.472221, 22.318848>,  <39.431293, 35.795654, 22.140217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584538, 35.472221, 22.318848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253228, -0.373002, -0.892606,
		0.888315, 0.455050, 0.061854,
		0.383109, -0.808578, 0.446575,
		39.699471, 35.229649, 22.452820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960304, 35.806274, 21.800938>,  <39.431293, 35.795654, 22.140217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960304, 35.806274, 21.800938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.961666, 35.444695, 21.971987>,  <39.962482, 35.227745, 22.074617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.961666, 35.444695, 21.971987>,  <39.960304, 35.806274, 21.800938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961666, 35.444695, 21.971987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357644, -0.398240, -0.844686,
		0.933852, 0.155816, 0.321935,
		0.003408, -0.903950, 0.427624,
		39.962688, 35.173508, 22.100273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653732, 35.612785, 21.784182>,  <39.960304, 35.806274, 21.800938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653732, 35.612785, 21.784182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.414410, 35.293362, 21.810528>,  <40.270817, 35.101707, 21.826336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.414410, 35.293362, 21.810528>,  <40.653732, 35.612785, 21.784182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414410, 35.293362, 21.810528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518667, -0.448631, -0.727816,
		0.610752, -0.401293, 0.682603,
		-0.598304, -0.798558, 0.065865,
		40.234917, 35.053795, 21.830288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007778, 35.033245, 21.583122>,  <40.653732, 35.612785, 21.784182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007778, 35.033245, 21.583122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.638172, 34.885647, 21.543060>,  <40.416409, 34.797089, 21.519024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.638172, 34.885647, 21.543060>,  <41.007778, 35.033245, 21.583122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638172, 34.885647, 21.543060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263825, -0.425726, -0.865537,
		0.276745, -0.826194, 0.490730,
		-0.924018, -0.369000, -0.100153,
		40.360966, 34.774948, 21.513014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987427, 34.341068, 21.583307>,  <41.007778, 35.033245, 21.583122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987427, 34.341068, 21.583307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.690754, 34.474178, 21.350353>,  <40.512753, 34.554043, 21.210581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.690754, 34.474178, 21.350353>,  <40.987427, 34.341068, 21.583307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690754, 34.474178, 21.350353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340483, -0.561292, -0.754336,
		-0.577921, -0.757763, 0.302987,
		-0.741672, 0.332785, -0.582389,
		40.468250, 34.574009, 21.175638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713184, 33.789017, 21.228567>,  <40.987427, 34.341068, 21.583307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713184, 33.789017, 21.228567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571358, 34.081879, 20.995934>,  <40.486263, 34.257595, 20.856354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571358, 34.081879, 20.995934>,  <40.713184, 33.789017, 21.228567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571358, 34.081879, 20.995934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247279, -0.526426, -0.813467,
		-0.901742, -0.432239, 0.005605,
		-0.354563, 0.732151, -0.581584,
		40.464989, 34.301525, 20.821459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282211, 33.564678, 20.734489>,  <40.713184, 33.789017, 21.228567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282211, 33.564678, 20.734489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.411865, 33.902023, 20.563065>,  <40.489658, 34.104431, 20.460209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.411865, 33.902023, 20.563065>,  <40.282211, 33.564678, 20.734489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411865, 33.902023, 20.563065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063216, -0.432700, -0.899319,
		-0.943896, 0.318595, -0.086940,
		0.324137, 0.843367, -0.428563,
		40.509106, 34.155033, 20.434496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283714, 32.871696, 20.471130>,  <40.282211, 33.564678, 20.734489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283714, 32.871696, 20.471130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.063095, 32.568211, 20.332481>,  <39.930725, 32.386120, 20.249292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.063095, 32.568211, 20.332481>,  <40.283714, 32.871696, 20.471130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063095, 32.568211, 20.332481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353983, -0.163380, 0.920871,
		-0.755309, 0.630603, -0.178460,
		-0.551547, -0.758714, -0.346625,
		39.897633, 32.340595, 20.228495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561253, 32.899006, 20.593735>,  <40.283714, 32.871696, 20.471130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561253, 32.899006, 20.593735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.568523, 32.505363, 20.523077>,  <39.572884, 32.269176, 20.480682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.568523, 32.505363, 20.523077>,  <39.561253, 32.899006, 20.593735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568523, 32.505363, 20.523077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397279, -0.169236, 0.901958,
		-0.917518, 0.053785, -0.394040,
		0.018174, -0.984107, -0.176644,
		39.573975, 32.210133, 20.470083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942863, 32.655254, 20.831766>,  <39.561253, 32.899006, 20.593735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942863, 32.655254, 20.831766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.188519, 32.339584, 20.834368>,  <39.335911, 32.150181, 20.835928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.188519, 32.339584, 20.834368>,  <38.942863, 32.655254, 20.831766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188519, 32.339584, 20.834368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428023, -0.326140, 0.842870,
		-0.663050, -0.520419, -0.538079,
		0.614134, -0.789175, 0.006504,
		39.372757, 32.102833, 20.836319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486004, 32.047119, 20.852089>,  <38.942863, 32.655254, 20.831766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486004, 32.047119, 20.852089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.855724, 31.977121, 20.987759>,  <39.077557, 31.935122, 21.069160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.855724, 31.977121, 20.987759>,  <38.486004, 32.047119, 20.852089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855724, 31.977121, 20.987759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379755, -0.333067, 0.863048,
		-0.038063, -0.926522, -0.374311,
		0.924303, -0.174997, 0.339174,
		39.133015, 31.924622, 21.089510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361919, 31.440647, 21.259230>,  <38.486004, 32.047119, 20.852089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361919, 31.440647, 21.259230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.696224, 31.598642, 21.411804>,  <38.896805, 31.693439, 21.503349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.696224, 31.598642, 21.411804>,  <38.361919, 31.440647, 21.259230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696224, 31.598642, 21.411804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316317, -0.221493, 0.922434,
		0.448835, -0.891586, -0.060174,
		0.835757, 0.394987, 0.381438,
		38.946953, 31.717138, 21.526236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599518, 30.946129, 21.733969>,  <38.361919, 31.440647, 21.259230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599518, 30.946129, 21.733969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.791348, 31.268486, 21.872847>,  <38.906445, 31.461901, 21.956173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.791348, 31.268486, 21.872847>,  <38.599518, 30.946129, 21.733969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791348, 31.268486, 21.872847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067475, -0.360623, 0.930268,
		0.874903, -0.469560, -0.118569,
		0.479575, 0.805893, 0.347194,
		38.935219, 31.510254, 21.977005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659531, 30.826347, 22.476688>,  <38.599518, 30.946129, 21.733969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659531, 30.826347, 22.476688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.826920, 31.189264, 22.460171>,  <38.927353, 31.407015, 22.450260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.826920, 31.189264, 22.460171>,  <38.659531, 30.826347, 22.476688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826920, 31.189264, 22.460171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102367, -0.001941, 0.994745,
		0.902442, -0.420501, -0.093688,
		0.418473, 0.907290, -0.041294,
		38.952461, 31.461451, 22.447783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278664, 30.780094, 22.816107>,  <38.659531, 30.826347, 22.476688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278664, 30.780094, 22.816107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.171059, 31.165213, 22.826334>,  <39.106495, 31.396284, 22.832470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.171059, 31.165213, 22.826334>,  <39.278664, 30.780094, 22.816107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171059, 31.165213, 22.826334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211749, 0.033227, 0.976759,
		0.939572, 0.268172, -0.212810,
		-0.269011, 0.962798, 0.025566,
		39.090355, 31.454052, 22.834003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783985, 31.125774, 23.308786>,  <39.278664, 30.780094, 22.816107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783985, 31.125774, 23.308786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462353, 31.363306, 23.297312>,  <39.269375, 31.505825, 23.290426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462353, 31.363306, 23.297312>,  <39.783985, 31.125774, 23.308786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462353, 31.363306, 23.297312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014089, 0.067270, 0.997635,
		0.594356, 0.801773, -0.062457,
		-0.804078, 0.593831, -0.028686,
		39.221130, 31.541454, 23.288706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897533, 31.752590, 23.686636>,  <39.783985, 31.125774, 23.308786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897533, 31.752590, 23.686636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.501450, 31.697851, 23.697666>,  <39.263798, 31.665007, 23.704285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.501450, 31.697851, 23.697666>,  <39.897533, 31.752590, 23.686636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501450, 31.697851, 23.697666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009399, 0.131742, 0.991239,
		-0.139283, 0.981792, -0.129166,
		-0.990208, -0.136848, 0.027577,
		39.204388, 31.656797, 23.705940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685806, 32.200687, 24.167105>,  <39.897533, 31.752590, 23.686636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685806, 32.200687, 24.167105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.362137, 31.966835, 24.143625>,  <39.167934, 31.826525, 24.129538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.362137, 31.966835, 24.143625>,  <39.685806, 32.200687, 24.167105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362137, 31.966835, 24.143625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077493, 0.007162, 0.996967,
		-0.582435, 0.811269, -0.051100,
		-0.809175, -0.584629, -0.058697,
		39.119385, 31.791447, 24.126017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224197, 32.497852, 24.576988>,  <39.685806, 32.200687, 24.167105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224197, 32.497852, 24.576988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.065487, 32.132607, 24.539486>,  <38.970261, 31.913460, 24.516985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.065487, 32.132607, 24.539486>,  <39.224197, 32.497852, 24.576988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065487, 32.132607, 24.539486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279538, 0.022911, 0.959861,
		-0.874315, 0.407060, -0.264341,
		-0.396777, -0.913114, -0.093758,
		38.946453, 31.858673, 24.511358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530396, 32.554420, 24.809183>,  <39.224197, 32.497852, 24.576988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530396, 32.554420, 24.809183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.625912, 32.167568, 24.844137>,  <38.683220, 31.935457, 24.865108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.625912, 32.167568, 24.844137>,  <38.530396, 32.554420, 24.809183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625912, 32.167568, 24.844137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203512, 0.038147, 0.978329,
		-0.949506, -0.251400, -0.187713,
		0.238791, -0.967131, 0.087383,
		38.697548, 31.877428, 24.870352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039288, 32.134472, 25.204487>,  <38.530396, 32.554420, 24.809183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039288, 32.134472, 25.204487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368382, 31.913250, 25.257000>,  <38.565838, 31.780516, 25.288507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368382, 31.913250, 25.257000>,  <38.039288, 32.134472, 25.204487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368382, 31.913250, 25.257000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150137, 0.011325, 0.988600,
		-0.548240, -0.833066, -0.073717,
		0.822734, -0.553058, 0.131283,
		38.615200, 31.747332, 25.296385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461296, 31.603767, 25.107315>,  <38.039288, 32.134472, 25.204487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461296, 31.603767, 25.107315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.104164, 31.453983, 25.207420>,  <36.889885, 31.364113, 25.267485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.104164, 31.453983, 25.207420>,  <37.461296, 31.603767, 25.107315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104164, 31.453983, 25.207420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166068, -0.242806, -0.955755,
		0.418656, -0.894889, 0.154599,
		-0.892832, -0.374458, 0.250264,
		36.836315, 31.341646, 25.282499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357529, 30.894749, 24.762089>,  <37.461296, 31.603767, 25.107315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357529, 30.894749, 24.762089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.986679, 31.018768, 24.846283>,  <36.764168, 31.093180, 24.896799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.986679, 31.018768, 24.846283>,  <37.357529, 30.894749, 24.762089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986679, 31.018768, 24.846283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241516, -0.064883, -0.968225,
		-0.286541, -0.948504, 0.135037,
		-0.927127, 0.310050, 0.210487,
		36.708542, 31.111784, 24.909430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897133, 30.497961, 24.378977>,  <37.357529, 30.894749, 24.762089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897133, 30.497961, 24.378977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.635689, 30.787895, 24.466066>,  <36.478821, 30.961857, 24.518320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.635689, 30.787895, 24.466066>,  <36.897133, 30.497961, 24.378977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635689, 30.787895, 24.466066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362909, -0.047718, -0.930602,
		-0.664145, -0.687266, 0.294239,
		-0.653612, 0.724836, 0.217723,
		36.439606, 31.005346, 24.531384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272217, 30.302864, 24.053087>,  <36.897133, 30.497961, 24.378977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272217, 30.302864, 24.053087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249851, 30.699051, 24.103443>,  <36.236431, 30.936764, 24.133657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249851, 30.699051, 24.103443>,  <36.272217, 30.302864, 24.053087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249851, 30.699051, 24.103443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393875, 0.093979, -0.914347,
		-0.917462, -0.100712, 0.384865,
		-0.055917, 0.990467, 0.125890,
		36.233078, 30.996191, 24.141211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641705, 30.490788, 23.714197>,  <36.272217, 30.302864, 24.053087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641705, 30.490788, 23.714197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.856037, 30.826044, 23.755003>,  <35.984638, 31.027197, 23.779488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.856037, 30.826044, 23.755003>,  <35.641705, 30.490788, 23.714197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856037, 30.826044, 23.755003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214694, 0.252106, -0.943583,
		-0.816573, 0.483699, 0.315029,
		0.535831, 0.838140, 0.102015,
		36.016785, 31.077486, 23.785608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198177, 30.957233, 23.451105>,  <35.641705, 30.490788, 23.714197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198177, 30.957233, 23.451105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.555962, 31.133242, 23.419306>,  <35.770634, 31.238846, 23.400227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.555962, 31.133242, 23.419306>,  <35.198177, 30.957233, 23.451105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555962, 31.133242, 23.419306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214238, 0.265682, -0.939955,
		-0.392478, 0.857786, 0.331911,
		0.894463, 0.440019, -0.079496,
		35.824299, 31.265247, 23.395456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124794, 31.432114, 22.958906>,  <35.198177, 30.957233, 23.451105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124794, 31.432114, 22.958906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.524010, 31.407480, 22.954268>,  <35.763538, 31.392700, 22.951485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.524010, 31.407480, 22.954268>,  <35.124794, 31.432114, 22.958906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524010, 31.407480, 22.954268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001313, 0.164454, -0.986384,
		0.062652, 0.984460, 0.164050,
		0.998035, -0.061583, -0.011596,
		35.823421, 31.389006, 22.950788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808434, 32.091850, 23.131199>,  <35.124794, 31.432114, 22.958906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808434, 32.091850, 23.131199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424908, 32.080677, 23.018143>,  <34.194790, 32.073975, 22.950308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424908, 32.080677, 23.018143>,  <34.808434, 32.091850, 23.131199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424908, 32.080677, 23.018143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279277, -0.088362, 0.956136,
		-0.051683, 0.995697, 0.076922,
		-0.958819, -0.027933, -0.282642,
		34.137260, 32.072296, 22.933350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363487, 32.476337, 23.565098>,  <34.808434, 32.091850, 23.131199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363487, 32.476337, 23.565098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110092, 32.209831, 23.407726>,  <33.958057, 32.049927, 23.313303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.110092, 32.209831, 23.407726>,  <34.363487, 32.476337, 23.565098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110092, 32.209831, 23.407726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466049, -0.077330, 0.881373,
		-0.617655, 0.741691, -0.261526,
		-0.633483, -0.666269, -0.393428,
		33.920048, 32.009953, 23.289698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912922, 32.607731, 24.067554>,  <34.363487, 32.476337, 23.565098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912922, 32.607731, 24.067554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.816017, 32.282661, 23.855564>,  <33.757874, 32.087620, 23.728369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.816017, 32.282661, 23.855564>,  <33.912922, 32.607731, 24.067554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816017, 32.282661, 23.855564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436287, -0.396653, 0.807663,
		-0.866582, 0.426885, -0.258466,
		-0.242258, -0.812672, -0.529977,
		33.743340, 32.038860, 23.696571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180119, 32.435947, 24.056299>,  <33.912922, 32.607731, 24.067554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180119, 32.435947, 24.056299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373043, 32.092220, 23.988232>,  <33.488796, 31.885984, 23.947392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373043, 32.092220, 23.988232>,  <33.180119, 32.435947, 24.056299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373043, 32.092220, 23.988232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431836, -0.402243, 0.807290,
		-0.762167, -0.315876, -0.565088,
		0.482306, -0.859315, -0.170170,
		33.517735, 31.834425, 23.937181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666008, 31.974009, 24.250778>,  <33.180119, 32.435947, 24.056299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666008, 31.974009, 24.250778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.997997, 31.751270, 24.237726>,  <33.197193, 31.617628, 24.229895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.997997, 31.751270, 24.237726>,  <32.666008, 31.974009, 24.250778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997997, 31.751270, 24.237726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278917, -0.464962, 0.840247,
		-0.483068, -0.688277, -0.541220,
		0.829970, -0.556852, -0.032637,
		33.246990, 31.584217, 24.227938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393318, 31.303892, 24.533911>,  <32.666008, 31.974009, 24.250778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393318, 31.303892, 24.533911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.790119, 31.278776, 24.577717>,  <33.028198, 31.263706, 24.604000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.790119, 31.278776, 24.577717>,  <32.393318, 31.303892, 24.533911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790119, 31.278776, 24.577717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125765, -0.416567, 0.900364,
		-0.010912, -0.906934, -0.421131,
		0.992000, -0.062788, 0.109516,
		33.087719, 31.259939, 24.610571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502808, 30.569939, 24.833660>,  <32.393318, 31.303892, 24.533911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502808, 30.569939, 24.833660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.813896, 30.817772, 24.876110>,  <33.000549, 30.966473, 24.901579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.813896, 30.817772, 24.876110>,  <32.502808, 30.569939, 24.833660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813896, 30.817772, 24.876110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120724, -0.312898, 0.942083,
		0.616905, -0.719868, -0.318147,
		0.777723, 0.619584, 0.106123,
		33.047215, 31.003647, 24.907948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.268345, 35.698528, 20.740526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.645794, 35.627525, 20.852291>,  <37.872261, 35.584923, 20.919350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.645794, 35.627525, 20.852291>,  <37.268345, 35.698528, 20.740526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645794, 35.627525, 20.852291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202290, 0.358924, 0.911182,
		-0.262030, -0.916332, 0.302780,
		0.943620, -0.177508, 0.279414,
		37.928879, 35.574272, 20.936115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181118, 35.393398, 21.389420>,  <37.268345, 35.698528, 20.740526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181118, 35.393398, 21.389420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.534420, 35.580688, 21.379431>,  <37.746403, 35.693062, 21.373438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.534420, 35.580688, 21.379431>,  <37.181118, 35.393398, 21.389420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534420, 35.580688, 21.379431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199877, 0.424154, 0.883257,
		0.424154, -0.775151, 0.468224,
		-0.883257, -0.468224, 0.024972,
		37.799397, 35.721157, 21.371939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529522, 35.231483, 22.107624>,  <37.181118, 35.393398, 21.389420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529522, 35.231483, 22.107624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.685787, 35.563019, 21.947422>,  <37.779545, 35.761940, 21.851301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.685787, 35.563019, 21.947422>,  <37.529522, 35.231483, 22.107624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685787, 35.563019, 21.947422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206703, 0.502951, 0.839234,
		0.897027, -0.245070, 0.367808,
		0.390661, 0.828843, -0.400504,
		37.802986, 35.811672, 21.827271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028057, 35.441307, 22.594944>,  <37.529522, 35.231483, 22.107624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028057, 35.441307, 22.594944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.921314, 35.756920, 22.373594>,  <37.857269, 35.946285, 22.240784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.921314, 35.756920, 22.373594>,  <38.028057, 35.441307, 22.594944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921314, 35.756920, 22.373594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167697, 0.527422, 0.832889,
		0.949035, 0.315059, -0.008427,
		-0.266853, 0.789027, -0.553376,
		37.841259, 35.993629, 22.207581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150848, 35.970364, 23.021976>,  <38.028057, 35.441307, 22.594944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150848, 35.970364, 23.021976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.937675, 36.164753, 22.744900>,  <37.809772, 36.281387, 22.578653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.937675, 36.164753, 22.744900>,  <38.150848, 35.970364, 23.021976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937675, 36.164753, 22.744900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478417, 0.502167, 0.720379,
		0.697928, 0.715306, -0.035124,
		-0.532929, 0.485969, -0.692691,
		37.777798, 36.310543, 22.537092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337299, 36.684444, 23.047169>,  <38.150848, 35.970364, 23.021976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337299, 36.684444, 23.047169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.968079, 36.649864, 22.897234>,  <37.746548, 36.629116, 22.807274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.968079, 36.649864, 22.897234>,  <38.337299, 36.684444, 23.047169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968079, 36.649864, 22.897234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320456, 0.711853, 0.624959,
		0.212798, 0.696988, -0.684781,
		-0.923052, -0.086452, -0.374835,
		37.691162, 36.623928, 22.784784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061913, 37.402817, 23.090603>,  <38.337299, 36.684444, 23.047169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061913, 37.402817, 23.090603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.735264, 37.183033, 23.019930>,  <37.539272, 37.051163, 22.977526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.735264, 37.183033, 23.019930>,  <38.061913, 37.402817, 23.090603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735264, 37.183033, 23.019930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512689, 0.549972, 0.659303,
		-0.265089, 0.628988, -0.730823,
		-0.816626, -0.549459, -0.176684,
		37.490276, 37.018196, 22.966925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489902, 37.906918, 23.060629>,  <38.061913, 37.402817, 23.090603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489902, 37.906918, 23.060629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.310524, 37.556568, 23.131895>,  <37.202896, 37.346359, 23.174654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.310524, 37.556568, 23.131895>,  <37.489902, 37.906918, 23.060629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310524, 37.556568, 23.131895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569978, 0.433780, 0.697825,
		-0.688489, 0.211390, -0.693756,
		-0.448450, -0.875871, 0.178165,
		37.175987, 37.293808, 23.185345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859875, 38.094894, 23.012281>,  <37.489902, 37.906918, 23.060629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859875, 38.094894, 23.012281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.877357, 37.757103, 23.225801>,  <36.887848, 37.554428, 23.353914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.877357, 37.757103, 23.225801>,  <36.859875, 38.094894, 23.012281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877357, 37.757103, 23.225801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527673, 0.434188, 0.730097,
		-0.848322, -0.313585, -0.426631,
		0.043709, -0.844480, 0.533801,
		36.890469, 37.503757, 23.385942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139359, 37.952446, 23.323748>,  <36.859875, 38.094894, 23.012281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139359, 37.952446, 23.323748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.330521, 37.702065, 23.570253>,  <36.445217, 37.551834, 23.718157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.330521, 37.702065, 23.570253>,  <36.139359, 37.952446, 23.323748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330521, 37.702065, 23.570253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654815, 0.213766, 0.724928,
		-0.585511, -0.749988, -0.307726,
		0.477905, -0.625957, 0.616266,
		36.473892, 37.514278, 23.755133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597134, 37.586117, 23.693277>,  <36.139359, 37.952446, 23.323748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597134, 37.586117, 23.693277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.930996, 37.565643, 23.912630>,  <36.131313, 37.553360, 24.044243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.930996, 37.565643, 23.912630>,  <35.597134, 37.586117, 23.693277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930996, 37.565643, 23.912630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522268, 0.242580, 0.817552,
		-0.174871, -0.968780, 0.175741,
		0.834659, -0.051182, 0.548383,
		36.181393, 37.550289, 24.077145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448166, 37.086147, 24.194452>,  <35.597134, 37.586117, 23.693277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448166, 37.086147, 24.194452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.742546, 37.319763, 24.331432>,  <35.919174, 37.459930, 24.413620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.742546, 37.319763, 24.331432>,  <35.448166, 37.086147, 24.194452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742546, 37.319763, 24.331432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519448, 0.162697, 0.838870,
		0.434217, -0.795254, 0.423116,
		0.735954, 0.584039, 0.342447,
		35.963333, 37.494976, 24.434166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738022, 36.773659, 24.072117>,  <35.448166, 37.086147, 24.194452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738022, 36.773659, 24.072117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.388271, 36.928261, 23.954758>,  <34.178421, 37.021023, 23.884342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.388271, 36.928261, 23.954758>,  <34.738022, 36.773659, 24.072117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388271, 36.928261, 23.954758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058073, -0.516943, -0.854048,
		-0.481759, -0.763799, 0.429558,
		-0.874378, 0.386500, -0.293397,
		34.125957, 37.044212, 23.866737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278919, 36.274757, 23.902189>,  <34.738022, 36.773659, 24.072117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278919, 36.274757, 23.902189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.167927, 36.601486, 23.699879>,  <34.101334, 36.797523, 23.578491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.167927, 36.601486, 23.699879>,  <34.278919, 36.274757, 23.902189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167927, 36.601486, 23.699879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054158, -0.512314, -0.857089,
		-0.959205, -0.265214, 0.097918,
		-0.277477, 0.816820, -0.505778,
		34.084682, 36.846531, 23.548145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949669, 35.996063, 23.224619>,  <34.278919, 36.274757, 23.902189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949669, 35.996063, 23.224619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.008312, 36.386406, 23.159863>,  <34.043499, 36.620613, 23.121008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.008312, 36.386406, 23.159863>,  <33.949669, 35.996063, 23.224619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008312, 36.386406, 23.159863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257365, -0.195653, -0.946300,
		-0.955128, 0.097069, -0.279835,
		0.146607, 0.975857, -0.161891,
		34.052296, 36.679165, 23.111296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417721, 36.160713, 22.791601>,  <33.949669, 35.996063, 23.224619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417721, 36.160713, 22.791601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.738434, 36.399200, 22.775297>,  <33.930862, 36.542294, 22.765514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.738434, 36.399200, 22.775297>,  <33.417721, 36.160713, 22.791601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738434, 36.399200, 22.775297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166164, -0.287932, -0.943125,
		-0.574045, 0.749412, -0.329930,
		0.801787, 0.596219, -0.040760,
		33.978970, 36.578068, 22.763069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349960, 36.369736, 22.193373>,  <33.417721, 36.160713, 22.791601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349960, 36.369736, 22.193373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.722668, 36.507919, 22.238037>,  <33.946293, 36.590828, 22.264835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.722668, 36.507919, 22.238037>,  <33.349960, 36.369736, 22.193373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722668, 36.507919, 22.238037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210251, -0.262714, -0.941688,
		-0.295981, 0.900910, -0.317422,
		0.931767, 0.345460, 0.111659,
		34.002197, 36.611557, 22.271534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481838, 36.869736, 21.679214>,  <33.349960, 36.369736, 22.193373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481838, 36.869736, 21.679214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.830814, 36.714207, 21.797647>,  <34.040199, 36.620888, 21.868708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.830814, 36.714207, 21.797647>,  <33.481838, 36.869736, 21.679214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830814, 36.714207, 21.797647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273148, -0.114435, -0.955141,
		0.405262, 0.914178, 0.006368,
		0.872441, -0.388822, 0.296082,
		34.092548, 36.597561, 21.886473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925484, 36.883018, 21.032473>,  <33.481838, 36.869736, 21.679214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925484, 36.883018, 21.032473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.118061, 36.646160, 21.290951>,  <34.233608, 36.504044, 21.446037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.118061, 36.646160, 21.290951>,  <33.925484, 36.883018, 21.032473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118061, 36.646160, 21.290951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531490, -0.389009, -0.752456,
		0.696941, 0.705716, 0.127433,
		0.481448, -0.592147, 0.646197,
		34.262497, 36.468517, 21.484810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649364, 36.904961, 20.919809>,  <33.925484, 36.883018, 21.032473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649364, 36.904961, 20.919809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.585033, 36.551018, 21.094698>,  <34.546436, 36.338654, 21.199631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.585033, 36.551018, 21.094698>,  <34.649364, 36.904961, 20.919809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585033, 36.551018, 21.094698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694066, -0.416349, -0.587305,
		0.701717, 0.209006, 0.681109,
		-0.160829, -0.884856, 0.437223,
		34.536785, 36.285561, 21.225864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313751, 36.642723, 20.782200>,  <34.649364, 36.904961, 20.919809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313751, 36.642723, 20.782200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.065804, 36.346210, 20.885164>,  <34.917034, 36.168304, 20.946943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.065804, 36.346210, 20.885164>,  <35.313751, 36.642723, 20.782200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065804, 36.346210, 20.885164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602173, -0.659694, -0.449658,
		0.503135, -0.123725, 0.855306,
		-0.619873, -0.741280, 0.257411,
		34.879841, 36.123825, 20.962387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718323, 36.130497, 20.999254>,  <35.313751, 36.642723, 20.782200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718323, 36.130497, 20.999254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.385715, 35.927624, 20.908623>,  <35.186150, 35.805901, 20.854244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.385715, 35.927624, 20.908623>,  <35.718323, 36.130497, 20.999254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385715, 35.927624, 20.908623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542808, -0.655195, -0.525432,
		0.118036, -0.559897, 0.820112,
		-0.831521, -0.507183, -0.226579,
		35.136261, 35.775467, 20.840649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777607, 35.412407, 21.286484>,  <35.718323, 36.130497, 20.999254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777607, 35.412407, 21.286484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.503387, 35.413017, 20.995275>,  <35.338856, 35.413383, 20.820551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.503387, 35.413017, 20.995275>,  <35.777607, 35.412407, 21.286484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503387, 35.413017, 20.995275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528643, -0.686507, -0.499244,
		-0.500555, -0.727121, 0.469829,
		-0.685552, 0.001528, -0.728022,
		35.297722, 35.413475, 20.776869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671768, 34.728676, 20.946825>,  <35.777607, 35.412407, 21.286484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671768, 34.728676, 20.946825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.562073, 35.011715, 20.686335>,  <35.496258, 35.181538, 20.530041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.562073, 35.011715, 20.686335>,  <35.671768, 34.728676, 20.946825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562073, 35.011715, 20.686335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530433, -0.453559, -0.716188,
		-0.802144, -0.541837, -0.250952,
		-0.274236, 0.707599, -0.651228,
		35.479801, 35.223995, 20.490967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064121, 34.297821, 21.029905>,  <35.671768, 34.728676, 20.946825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064121, 34.297821, 21.029905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.736523, 34.510109, 20.942648>,  <34.539963, 34.637482, 20.890293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.736523, 34.510109, 20.942648>,  <35.064121, 34.297821, 21.029905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736523, 34.510109, 20.942648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571866, -0.723719, 0.386264,
		0.047126, 0.441095, 0.896222,
		-0.818992, 0.530722, -0.218141,
		34.490826, 34.669327, 20.877205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595135, 34.303314, 21.622742>,  <35.064121, 34.297821, 21.029905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595135, 34.303314, 21.622742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.449886, 34.302738, 21.250046>,  <34.362740, 34.302391, 21.026428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.449886, 34.302738, 21.250046>,  <34.595135, 34.303314, 21.622742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449886, 34.302738, 21.250046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479148, -0.857351, 0.188060,
		-0.799101, 0.514731, 0.310629,
		-0.363118, -0.001442, -0.931742,
		34.340950, 34.302307, 20.970524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841873, 34.244747, 21.654953>,  <34.595135, 34.303314, 21.622742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841873, 34.244747, 21.654953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.057430, 34.068966, 21.367489>,  <34.186764, 33.963497, 21.195011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.057430, 34.068966, 21.367489>,  <33.841873, 34.244747, 21.654953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057430, 34.068966, 21.367489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319727, -0.896003, 0.308144,
		-0.779336, 0.063717, -0.623358,
		0.538897, -0.439452, -0.718660,
		34.219101, 33.937130, 21.151892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434017, 33.675285, 21.340452>,  <33.841873, 34.244747, 21.654953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434017, 33.675285, 21.340452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.812462, 33.576893, 21.256201>,  <34.039528, 33.517857, 21.205650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.812462, 33.576893, 21.256201>,  <33.434017, 33.675285, 21.340452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812462, 33.576893, 21.256201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188383, -0.947093, 0.259858,
		-0.263402, -0.206177, -0.942396,
		0.946114, -0.245979, -0.210626,
		34.096294, 33.503098, 21.193012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269947, 33.081123, 21.079407>,  <33.434017, 33.675285, 21.340452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269947, 33.081123, 21.079407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.663082, 33.091797, 21.152412>,  <33.898964, 33.098202, 21.196215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.663082, 33.091797, 21.152412>,  <33.269947, 33.081123, 21.079407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663082, 33.091797, 21.152412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097979, -0.762803, 0.639165,
		0.156280, -0.646080, -0.747099,
		0.982841, 0.026688, 0.182513,
		33.957935, 33.099804, 21.207167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434669, 32.341370, 21.145889>,  <33.269947, 33.081123, 21.079407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434669, 32.341370, 21.145889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.751839, 32.533157, 21.296288>,  <33.942142, 32.648232, 21.386526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.751839, 32.533157, 21.296288>,  <33.434669, 32.341370, 21.145889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751839, 32.533157, 21.296288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117366, -0.725709, 0.677917,
		0.597906, -0.493409, -0.631708,
		0.792927, 0.479472, 0.375997,
		33.989716, 32.676998, 21.409086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938690, 31.889528, 21.245874>,  <33.434669, 32.341370, 21.145889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938690, 31.889528, 21.245874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.054893, 32.180977, 21.493977>,  <34.124615, 32.355846, 21.642838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.054893, 32.180977, 21.493977>,  <33.938690, 31.889528, 21.245874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054893, 32.180977, 21.493977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062379, -0.632412, 0.772116,
		0.954838, -0.262995, -0.138270,
		0.290506, 0.728621, 0.620256,
		34.142044, 32.399563, 21.680054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516972, 31.629837, 21.624664>,  <33.938690, 31.889528, 21.245874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516972, 31.629837, 21.624664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.368797, 31.938290, 21.831791>,  <34.279892, 32.123360, 21.956068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.368797, 31.938290, 21.831791>,  <34.516972, 31.629837, 21.624664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368797, 31.938290, 21.831791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035601, -0.568856, 0.821666,
		0.928175, 0.285941, 0.238177,
		-0.370436, 0.771130, 0.517818,
		34.257668, 32.169628, 21.987137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843174, 31.732231, 22.361265>,  <34.516972, 31.629837, 21.624664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843174, 31.732231, 22.361265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.484184, 31.898933, 22.419033>,  <34.268791, 31.998955, 22.453693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.484184, 31.898933, 22.419033>,  <34.843174, 31.732231, 22.361265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484184, 31.898933, 22.419033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034240, -0.392269, 0.919213,
		0.439740, 0.820023, 0.366320,
		-0.897472, 0.416758, 0.144419,
		34.214943, 32.023960, 22.462358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511864, 32.049404, 22.324532>,  <34.843174, 31.732231, 22.361265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511864, 32.049404, 22.324532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.829861, 31.829058, 22.426142>,  <36.020660, 31.696848, 22.487108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.829861, 31.829058, 22.426142>,  <35.511864, 32.049404, 22.324532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829861, 31.829058, 22.426142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463552, 0.281554, -0.840147,
		0.391290, 0.785664, 0.479191,
		0.794992, -0.550870, 0.254027,
		36.068359, 31.663797, 22.502350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210045, 32.458668, 22.284983>,  <35.511864, 32.049404, 22.324532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210045, 32.458668, 22.284983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.245968, 32.065769, 22.219099>,  <36.267521, 31.830030, 22.179569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.245968, 32.065769, 22.219099>,  <36.210045, 32.458668, 22.284983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245968, 32.065769, 22.219099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362607, 0.186274, -0.913137,
		0.927605, 0.022284, 0.372898,
		0.089810, -0.982245, -0.164708,
		36.272911, 31.771095, 22.169687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918129, 32.397625, 22.001913>,  <36.210045, 32.458668, 22.284983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918129, 32.397625, 22.001913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.768917, 32.037842, 21.910858>,  <36.679390, 31.821972, 21.856226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.768917, 32.037842, 21.910858>,  <36.918129, 32.397625, 22.001913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768917, 32.037842, 21.910858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350167, 0.090720, -0.932284,
		0.859203, -0.427483, 0.281119,
		-0.373032, -0.899460, -0.227637,
		36.657009, 31.768003, 21.842567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468575, 32.000938, 21.718817>,  <36.918129, 32.397625, 22.001913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468575, 32.000938, 21.718817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.138092, 31.818806, 21.586115>,  <36.939804, 31.709526, 21.506495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.138092, 31.818806, 21.586115>,  <37.468575, 32.000938, 21.718817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138092, 31.818806, 21.586115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447871, -0.173634, -0.877076,
		0.341755, -0.873228, 0.347386,
		-0.826205, -0.455329, -0.331753,
		36.890232, 31.682207, 21.486589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636932, 31.370157, 21.401018>,  <37.468575, 32.000938, 21.718817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636932, 31.370157, 21.401018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.280418, 31.449244, 21.237787>,  <37.066509, 31.496695, 21.139849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.280418, 31.449244, 21.237787>,  <37.636932, 31.370157, 21.401018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280418, 31.449244, 21.237787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393945, -0.108040, -0.912762,
		-0.224557, -0.974287, 0.018405,
		-0.891280, 0.197717, -0.408077,
		37.013035, 31.508558, 21.115364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683292, 31.038162, 20.700504>,  <37.636932, 31.370157, 21.401018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683292, 31.038162, 20.700504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.346207, 31.251167, 20.668858>,  <37.143955, 31.378971, 20.649870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.346207, 31.251167, 20.668858>,  <37.683292, 31.038162, 20.700504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346207, 31.251167, 20.668858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207725, 0.186052, -0.960331,
		-0.496671, -0.825719, -0.267405,
		-0.842715, 0.532515, -0.079116,
		37.093391, 31.410921, 20.645123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423023, 30.971235, 20.058821>,  <37.683292, 31.038162, 20.700504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423023, 30.971235, 20.058821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.245781, 31.316772, 20.154684>,  <37.139435, 31.524094, 20.212202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.245781, 31.316772, 20.154684>,  <37.423023, 30.971235, 20.058821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245781, 31.316772, 20.154684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242867, 0.373014, -0.895476,
		-0.862946, -0.338582, -0.375082,
		-0.443102, 0.863842, 0.239661,
		37.112850, 31.575926, 20.226582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059132, 31.148258, 19.473534>,  <37.423023, 30.971235, 20.058821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059132, 31.148258, 19.473534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.080494, 31.507814, 19.647495>,  <37.093311, 31.723549, 19.751873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.080494, 31.507814, 19.647495>,  <37.059132, 31.148258, 19.473534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080494, 31.507814, 19.647495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023999, 0.434247, -0.900475,
		-0.998285, 0.058527, 0.001618,
		0.053404, 0.898891, 0.434906,
		37.096516, 31.777481, 19.777967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541130, 31.667751, 19.150391>,  <37.059132, 31.148258, 19.473534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541130, 31.667751, 19.150391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.833813, 31.886761, 19.312786>,  <37.009422, 32.018166, 19.410223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.833813, 31.886761, 19.312786>,  <36.541130, 31.667751, 19.150391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833813, 31.886761, 19.312786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159569, 0.441479, -0.882969,
		-0.662682, 0.710855, 0.235664,
		0.731704, 0.547523, 0.405990,
		37.053326, 32.051018, 19.434584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.592602, 34.592274, 34.966202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889408, 34.821377, 34.826855>,  <37.067493, 34.958839, 34.743244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889408, 34.821377, 34.826855>,  <36.592602, 34.592274, 34.966202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889408, 34.821377, 34.826855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239403, -0.258998, -0.935739,
		-0.626177, 0.777735, -0.055061,
		0.742017, 0.572756, -0.348370,
		37.112015, 34.993202, 34.722343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326141, 35.063248, 34.294460>,  <36.592602, 34.592274, 34.966202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326141, 35.063248, 34.294460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720261, 34.998558, 34.272404>,  <36.956730, 34.959743, 34.259171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720261, 34.998558, 34.272404>,  <36.326141, 35.063248, 34.294460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720261, 34.998558, 34.272404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092426, -0.233020, -0.968070,
		0.143710, 0.958930, -0.244541,
		0.985294, -0.161723, -0.055143,
		37.015850, 34.950043, 34.255859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545078, 35.376976, 33.743778>,  <36.326141, 35.063248, 34.294460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545078, 35.376976, 33.743778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812653, 35.088654, 33.816395>,  <36.973198, 34.915661, 33.859966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812653, 35.088654, 33.816395>,  <36.545078, 35.376976, 33.743778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812653, 35.088654, 33.816395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146718, -0.367470, -0.918390,
		0.728695, 0.587709, -0.351570,
		0.668938, -0.720807, 0.181546,
		37.013332, 34.872410, 33.870857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906471, 35.232281, 33.083405>,  <36.545078, 35.376976, 33.743778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906471, 35.232281, 33.083405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.010719, 34.903202, 33.285492>,  <37.073269, 34.705753, 33.406746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.010719, 34.903202, 33.285492>,  <36.906471, 35.232281, 33.083405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010719, 34.903202, 33.285492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074837, -0.538946, -0.839009,
		0.962536, 0.180855, -0.202029,
		0.260622, -0.822696, 0.505220,
		37.088905, 34.656395, 33.437057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299751, 34.809296, 32.624016>,  <36.906471, 35.232281, 33.083405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299751, 34.809296, 32.624016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182652, 34.552654, 32.907604>,  <37.112392, 34.398670, 33.077759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182652, 34.552654, 32.907604>,  <37.299751, 34.809296, 32.624016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182652, 34.552654, 32.907604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115061, -0.712428, -0.692248,
		0.949241, -0.284230, 0.134739,
		-0.292749, -0.641607, 0.708970,
		37.094826, 34.360172, 33.120296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826824, 34.221363, 32.719570>,  <37.299751, 34.809296, 32.624016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826824, 34.221363, 32.719570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.484726, 34.063431, 32.853832>,  <37.279469, 33.968670, 32.934391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.484726, 34.063431, 32.853832>,  <37.826824, 34.221363, 32.719570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484726, 34.063431, 32.853832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008575, -0.658397, -0.752622,
		0.518154, -0.640798, 0.566476,
		-0.855244, -0.394831, 0.335656,
		37.228153, 33.944981, 32.954529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936481, 33.538994, 32.689629>,  <37.826824, 34.221363, 32.719570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936481, 33.538994, 32.689629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.541531, 33.601833, 32.697655>,  <37.304558, 33.639538, 32.702469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.541531, 33.601833, 32.697655>,  <37.936481, 33.538994, 32.689629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541531, 33.601833, 32.697655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119528, -0.656073, -0.745172,
		-0.103900, -0.738166, 0.666570,
		-0.987379, 0.157097, 0.020065,
		37.245316, 33.648964, 32.703674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599026, 32.865776, 32.675385>,  <37.936481, 33.538994, 32.689629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599026, 32.865776, 32.675385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.282150, 33.082607, 32.563251>,  <37.092026, 33.212708, 32.495972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.282150, 33.082607, 32.563251>,  <37.599026, 32.865776, 32.675385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282150, 33.082607, 32.563251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272830, -0.725473, -0.631864,
		-0.545890, -0.424076, 0.722609,
		-0.792192, 0.542078, -0.280328,
		37.044495, 33.245232, 32.479153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059696, 32.448830, 32.525661>,  <37.599026, 32.865776, 32.675385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059696, 32.448830, 32.525661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913807, 32.763550, 32.326492>,  <36.826271, 32.952381, 32.206989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913807, 32.763550, 32.326492>,  <37.059696, 32.448830, 32.525661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913807, 32.763550, 32.326492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296171, -0.605017, -0.739079,
		-0.882756, -0.122089, 0.453691,
		-0.364724, 0.786797, -0.497923,
		36.804390, 32.999588, 32.177116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376793, 32.319340, 32.397884>,  <37.059696, 32.448830, 32.525661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376793, 32.319340, 32.397884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.501167, 32.571907, 32.113739>,  <36.575794, 32.723450, 31.943251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.501167, 32.571907, 32.113739>,  <36.376793, 32.319340, 32.397884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501167, 32.571907, 32.113739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342742, -0.622632, -0.703460,
		-0.886478, 0.462208, 0.022814,
		0.310940, 0.631422, -0.710368,
		36.594448, 32.761333, 31.900629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886986, 32.343430, 31.885790>,  <36.376793, 32.319340, 32.397884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886986, 32.343430, 31.885790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196598, 32.506165, 31.691734>,  <36.382366, 32.603806, 31.575302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196598, 32.506165, 31.691734>,  <35.886986, 32.343430, 31.885790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196598, 32.506165, 31.691734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163656, -0.611632, -0.774031,
		-0.611632, 0.678519, -0.406840,
		0.774031, 0.406840, -0.485137,
		36.428806, 32.628216, 31.546194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672050, 32.535549, 31.187185>,  <35.886986, 32.343430, 31.885790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672050, 32.535549, 31.187185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.070267, 32.521938, 31.151987>,  <36.309196, 32.513771, 31.130867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.070267, 32.521938, 31.151987>,  <35.672050, 32.535549, 31.187185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070267, 32.521938, 31.151987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090719, -0.601409, -0.793774,
		-0.025912, 0.798216, -0.601814,
		0.995539, -0.034028, -0.087997,
		36.368927, 32.511730, 31.125587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256474, 32.790741, 30.709003>,  <35.672050, 32.535549, 31.187185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256474, 32.790741, 30.709003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.886021, 32.639874, 30.707285>,  <34.663750, 32.549355, 30.706253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.886021, 32.639874, 30.707285>,  <35.256474, 32.790741, 30.709003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886021, 32.639874, 30.707285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083055, 0.192807, 0.977715,
		-0.367933, 0.905854, -0.209891,
		-0.926135, -0.377167, -0.004296,
		34.608181, 32.526722, 30.705996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829285, 33.325500, 31.063265>,  <35.256474, 32.790741, 30.709003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829285, 33.325500, 31.063265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.628231, 32.981583, 31.099281>,  <34.507599, 32.775230, 31.120892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.628231, 32.981583, 31.099281>,  <34.829285, 33.325500, 31.063265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628231, 32.981583, 31.099281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177206, 0.204415, 0.962711,
		-0.846140, 0.467939, -0.255108,
		-0.502638, -0.859795, 0.090042,
		34.477440, 32.723644, 31.126293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322750, 33.489689, 31.458822>,  <34.829285, 33.325500, 31.063265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322750, 33.489689, 31.458822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307709, 33.090485, 31.479101>,  <34.298683, 32.850964, 31.491268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307709, 33.090485, 31.479101>,  <34.322750, 33.489689, 31.458822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307709, 33.090485, 31.479101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211470, 0.057531, 0.975690,
		-0.976661, 0.025967, -0.213211,
		-0.037602, -0.998006, 0.050697,
		34.296429, 32.791084, 31.494310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665131, 33.351406, 31.689636>,  <34.322750, 33.489689, 31.458822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665131, 33.351406, 31.689636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918316, 33.057209, 31.786306>,  <34.070229, 32.880692, 31.844309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918316, 33.057209, 31.786306>,  <33.665131, 33.351406, 31.689636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918316, 33.057209, 31.786306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379981, -0.023160, 0.924704,
		-0.674516, -0.677136, -0.294133,
		0.632963, -0.735493, 0.241677,
		34.108204, 32.836559, 31.858810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260406, 32.731323, 32.077328>,  <33.665131, 33.351406, 31.689636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260406, 32.731323, 32.077328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654884, 32.722267, 32.142937>,  <33.891571, 32.716831, 32.182304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654884, 32.722267, 32.142937>,  <33.260406, 32.731323, 32.077328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654884, 32.722267, 32.142937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163152, 0.036125, 0.985939,
		-0.028256, -0.999091, 0.031931,
		0.986196, -0.022650, 0.164025,
		33.950745, 32.715473, 32.192142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233418, 32.267456, 32.609821>,  <33.260406, 32.731323, 32.077328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233418, 32.267456, 32.609821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584663, 32.458797, 32.605930>,  <33.795410, 32.573605, 32.603596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584663, 32.458797, 32.605930>,  <33.233418, 32.267456, 32.609821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584663, 32.458797, 32.605930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055714, 0.122426, 0.990913,
		0.475200, -0.869590, 0.134155,
		0.878112, 0.478355, -0.009729,
		33.848099, 32.602303, 32.603012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684586, 31.942057, 33.172920>,  <33.233418, 32.267456, 32.609821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684586, 31.942057, 33.172920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872993, 32.290287, 33.116005>,  <33.986038, 32.499226, 33.081856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872993, 32.290287, 33.116005>,  <33.684586, 31.942057, 33.172920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872993, 32.290287, 33.116005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164667, 0.245235, 0.955377,
		0.866620, -0.426567, 0.258864,
		0.471015, 0.870575, -0.142284,
		34.014297, 32.551460, 33.073318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822437, 32.091644, 33.772621>,  <33.684586, 31.942057, 33.172920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822437, 32.091644, 33.772621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.913040, 32.443321, 33.604946>,  <33.967400, 32.654327, 33.504341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.913040, 32.443321, 33.604946>,  <33.822437, 32.091644, 33.772621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913040, 32.443321, 33.604946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023398, 0.425336, 0.904733,
		0.973729, -0.214735, 0.075769,
		0.226505, 0.879192, -0.419186,
		33.980991, 32.707077, 33.479191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363598, 32.470089, 34.184769>,  <33.822437, 32.091644, 33.772621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363598, 32.470089, 34.184769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.158192, 32.748444, 33.983952>,  <34.034946, 32.915455, 33.863461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.158192, 32.748444, 33.983952>,  <34.363598, 32.470089, 34.184769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158192, 32.748444, 33.983952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130949, 0.514666, 0.847332,
		0.848029, 0.500860, -0.173164,
		-0.513516, 0.695886, -0.502039,
		34.004135, 32.957211, 33.833340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534908, 33.117393, 34.549637>,  <34.363598, 32.470089, 34.184769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534908, 33.117393, 34.549637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208981, 33.220604, 34.341988>,  <34.013424, 33.282528, 34.217396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.208981, 33.220604, 34.341988>,  <34.534908, 33.117393, 34.549637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208981, 33.220604, 34.341988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302220, 0.575103, 0.760211,
		0.494702, 0.776325, -0.390626,
		-0.814821, 0.258023, -0.519126,
		33.964535, 33.298012, 34.186249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502304, 33.875496, 34.562183>,  <34.534908, 33.117393, 34.549637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502304, 33.875496, 34.562183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.145321, 33.705868, 34.500622>,  <33.931129, 33.604092, 34.463684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.145321, 33.705868, 34.500622>,  <34.502304, 33.875496, 34.562183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145321, 33.705868, 34.500622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386948, 0.544182, 0.744404,
		-0.231928, 0.723901, -0.649752,
		-0.892458, -0.424068, -0.153901,
		33.877583, 33.578648, 34.454453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971703, 34.340378, 34.599384>,  <34.502304, 33.875496, 34.562183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971703, 34.340378, 34.599384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766949, 34.005562, 34.676678>,  <33.644096, 33.804672, 34.723053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766949, 34.005562, 34.676678>,  <33.971703, 34.340378, 34.599384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766949, 34.005562, 34.676678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545761, 0.490575, 0.679324,
		-0.663417, 0.242275, -0.707941,
		-0.511881, -0.837042, 0.193232,
		33.613384, 33.754448, 34.734646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331375, 34.660629, 34.697590>,  <33.971703, 34.340378, 34.599384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331375, 34.660629, 34.697590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.264729, 34.298386, 34.853600>,  <33.224739, 34.081039, 34.947205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.264729, 34.298386, 34.853600>,  <33.331375, 34.660629, 34.697590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264729, 34.298386, 34.853600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600527, 0.406928, 0.688314,
		-0.782052, -0.119531, -0.611643,
		-0.166620, -0.905606, 0.390020,
		33.214741, 34.026703, 34.970604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624596, 34.581276, 34.711994>,  <33.331375, 34.660629, 34.697590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624596, 34.581276, 34.711994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792229, 34.354370, 34.995567>,  <32.892807, 34.218227, 35.165710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792229, 34.354370, 34.995567>,  <32.624596, 34.581276, 34.711994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792229, 34.354370, 34.995567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754477, 0.216807, 0.619483,
		-0.505111, -0.794487, -0.337125,
		0.419080, -0.567261, 0.708933,
		32.917953, 34.184193, 35.208248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933140, 35.053299, 34.106670>,  <32.624596, 34.581276, 34.711994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933140, 35.053299, 34.106670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907047, 35.410732, 34.284325>,  <32.891392, 35.625191, 34.390919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907047, 35.410732, 34.284325>,  <32.933140, 35.053299, 34.106670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907047, 35.410732, 34.284325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066352, 0.447987, -0.891575,
		-0.995662, -0.028689, -0.088513,
		-0.065231, 0.893580, 0.444140,
		32.887478, 35.678806, 34.417568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355209, 35.447399, 33.924168>,  <32.933140, 35.053299, 34.106670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355209, 35.447399, 33.924168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.690849, 35.642025, 34.021469>,  <32.892231, 35.758801, 34.079849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.690849, 35.642025, 34.021469>,  <32.355209, 35.447399, 33.924168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690849, 35.642025, 34.021469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017345, 0.423009, -0.905959,
		-0.543707, 0.764406, 0.346506,
		0.839096, 0.486566, 0.243252,
		32.942577, 35.787994, 34.094444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263615, 36.161526, 33.823311>,  <32.355209, 35.447399, 33.924168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263615, 36.161526, 33.823311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656307, 36.100105, 33.778362>,  <32.891922, 36.063255, 33.751392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656307, 36.100105, 33.778362>,  <32.263615, 36.161526, 33.823311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656307, 36.100105, 33.778362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033745, 0.440729, -0.897006,
		0.187259, 0.884410, 0.427495,
		0.981731, -0.153547, -0.112375,
		32.950825, 36.054043, 33.744648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492359, 36.898602, 33.656975>,  <32.263615, 36.161526, 33.823311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492359, 36.898602, 33.656975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773739, 36.642315, 33.533920>,  <32.942566, 36.488541, 33.460087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.773739, 36.642315, 33.533920>,  <32.492359, 36.898602, 33.656975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773739, 36.642315, 33.533920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137997, 0.301470, -0.943436,
		0.697221, 0.706111, 0.123651,
		0.703448, -0.640721, -0.307633,
		32.984772, 36.450100, 33.441631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841171, 37.300732, 33.132919>,  <32.492359, 36.898602, 33.656975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841171, 37.300732, 33.132919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934113, 36.915070, 33.081669>,  <32.989876, 36.683674, 33.050919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934113, 36.915070, 33.081669>,  <32.841171, 37.300732, 33.132919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934113, 36.915070, 33.081669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044628, 0.121022, -0.991646,
		0.971607, 0.236132, -0.014909,
		0.232355, -0.964155, -0.128124,
		33.003819, 36.625824, 33.043232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427776, 37.273319, 32.714520>,  <32.841171, 37.300732, 33.132919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427776, 37.273319, 32.714520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.235004, 36.931824, 32.635658>,  <33.119343, 36.726925, 32.588341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.235004, 36.931824, 32.635658>,  <33.427776, 37.273319, 32.714520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235004, 36.931824, 32.635658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070388, 0.262003, -0.962497,
		0.873379, -0.449977, -0.186360,
		-0.481929, -0.853742, -0.197155,
		33.090427, 36.675701, 32.576511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773521, 37.041466, 32.215282>,  <33.427776, 37.273319, 32.714520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773521, 37.041466, 32.215282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448853, 36.809082, 32.191029>,  <33.254051, 36.669651, 32.176476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448853, 36.809082, 32.191029>,  <33.773521, 37.041466, 32.215282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448853, 36.809082, 32.191029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041928, 0.161487, -0.985984,
		0.582605, -0.797755, -0.155433,
		-0.811674, -0.580956, -0.060635,
		33.205349, 36.634796, 32.172836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897072, 36.520458, 31.657839>,  <33.773521, 37.041466, 32.215282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897072, 36.520458, 31.657839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501659, 36.540993, 31.714651>,  <33.264412, 36.553314, 31.748739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501659, 36.540993, 31.714651>,  <33.897072, 36.520458, 31.657839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501659, 36.540993, 31.714651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145376, -0.068654, -0.986992,
		-0.040921, -0.996319, 0.075331,
		-0.988530, 0.051340, 0.142032,
		33.205101, 36.556393, 31.757261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521759, 35.848507, 31.365019>,  <33.897072, 36.520458, 31.657839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521759, 35.848507, 31.365019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269371, 36.158829, 31.364431>,  <33.117939, 36.345020, 31.364079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269371, 36.158829, 31.364431>,  <33.521759, 35.848507, 31.365019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269371, 36.158829, 31.364431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055107, -0.046706, -0.997388,
		-0.773848, -0.629240, 0.072222,
		-0.630969, 0.775806, -0.001468,
		33.080082, 36.391571, 31.363991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953873, 35.688183, 30.867632>,  <33.521759, 35.848507, 31.365019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953873, 35.688183, 30.867632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.930920, 36.081139, 30.938761>,  <32.917149, 36.316914, 30.981438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.930920, 36.081139, 30.938761>,  <32.953873, 35.688183, 30.867632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930920, 36.081139, 30.938761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090311, 0.172276, -0.980900,
		-0.994259, -0.072341, 0.078835,
		-0.057378, 0.982389, 0.177820,
		32.913708, 36.375854, 30.992107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292885, 35.743778, 30.589476>,  <32.953873, 35.688183, 30.867632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292885, 35.743778, 30.589476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452667, 36.110039, 30.607468>,  <32.548534, 36.329796, 30.618263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452667, 36.110039, 30.607468>,  <32.292885, 35.743778, 30.589476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452667, 36.110039, 30.607468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102857, 0.093516, -0.990291,
		-0.910966, 0.390947, 0.131536,
		0.399452, 0.915650, 0.044978,
		32.572502, 36.384735, 30.620962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859285, 36.149075, 30.160233>,  <32.292885, 35.743778, 30.589476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859285, 36.149075, 30.160233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.195698, 36.363350, 30.190462>,  <32.397545, 36.491913, 30.208601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.195698, 36.363350, 30.190462>,  <31.859285, 36.149075, 30.160233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195698, 36.363350, 30.190462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058657, 0.229169, -0.971618,
		-0.537801, 0.812726, 0.224160,
		0.841029, 0.535685, 0.075576,
		32.448006, 36.524055, 30.213135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641825, 36.740147, 29.831089>,  <31.859285, 36.149075, 30.160233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641825, 36.740147, 29.831089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.041641, 36.740150, 29.843212>,  <32.281532, 36.740150, 29.850485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.041641, 36.740150, 29.843212>,  <31.641825, 36.740147, 29.831089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041641, 36.740150, 29.843212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028253, 0.361555, -0.931922,
		-0.010962, 0.932351, 0.361389,
		0.999541, 0.000005, 0.030306,
		32.341503, 36.740150, 29.852304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748423, 37.319645, 29.477516>,  <31.641825, 36.740147, 29.831089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748423, 37.319645, 29.477516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113285, 37.155743, 29.480783>,  <32.332203, 37.057400, 29.482744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113285, 37.155743, 29.480783>,  <31.748423, 37.319645, 29.477516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113285, 37.155743, 29.480783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156942, 0.330821, -0.930552,
		0.378598, 0.850092, 0.366069,
		0.912158, -0.409757, 0.008167,
		32.386932, 37.032814, 29.483234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278610, 37.866474, 29.367441>,  <31.748423, 37.319645, 29.477516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278610, 37.866474, 29.367441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409294, 37.509487, 29.243017>,  <32.487705, 37.295296, 29.168362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409294, 37.509487, 29.243017>,  <32.278610, 37.866474, 29.367441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409294, 37.509487, 29.243017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004289, 0.330519, -0.943790,
		0.945114, 0.307015, 0.111813,
		0.326713, -0.892468, -0.311061,
		32.507309, 37.241745, 29.149698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742683, 38.009235, 28.869196>,  <32.278610, 37.866474, 29.367441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742683, 38.009235, 28.869196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653233, 37.627697, 28.789026>,  <32.599564, 37.398773, 28.740925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653233, 37.627697, 28.789026>,  <32.742683, 38.009235, 28.869196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653233, 37.627697, 28.789026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173218, 0.163467, -0.971223,
		0.959159, -0.251909, 0.128667,
		-0.223626, -0.953845, -0.200426,
		32.586143, 37.341545, 28.728899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286339, 37.746670, 28.514044>,  <32.742683, 38.009235, 28.869196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286339, 37.746670, 28.514044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.958717, 37.534817, 28.425823>,  <32.762142, 37.407707, 28.372890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.958717, 37.534817, 28.425823>,  <33.286339, 37.746670, 28.514044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958717, 37.534817, 28.425823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271450, -0.019081, -0.962263,
		0.505434, -0.848015, 0.159396,
		-0.819055, -0.529629, -0.220550,
		32.713001, 37.375927, 28.359659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547321, 37.470417, 27.966276>,  <33.286339, 37.746670, 28.514044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547321, 37.470417, 27.966276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165642, 37.354889, 27.935076>,  <32.936634, 37.285572, 27.916355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165642, 37.354889, 27.935076>,  <33.547321, 37.470417, 27.966276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165642, 37.354889, 27.935076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137178, -0.190700, -0.972016,
		0.265866, -0.938198, 0.221586,
		-0.954200, -0.288823, -0.077999,
		32.879383, 37.268242, 27.911676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552528, 36.866467, 27.640293>,  <33.547321, 37.470417, 27.966276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552528, 36.866467, 27.640293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.179008, 36.999374, 27.587208>,  <32.954895, 37.079117, 27.555357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.179008, 36.999374, 27.587208>,  <33.552528, 36.866467, 27.640293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179008, 36.999374, 27.587208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106406, -0.096241, -0.989654,
		-0.341602, -0.938262, 0.054515,
		-0.933802, 0.332267, -0.132713,
		32.898869, 37.099056, 27.547394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235455, 36.341499, 27.195629>,  <33.552528, 36.866467, 27.640293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235455, 36.341499, 27.195629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008476, 36.670185, 27.174526>,  <32.872288, 36.867397, 27.161865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008476, 36.670185, 27.174526>,  <33.235455, 36.341499, 27.195629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008476, 36.670185, 27.174526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004397, -0.067093, -0.997737,
		-0.823396, -0.565934, 0.041685,
		-0.567450, 0.821716, -0.052756,
		32.838242, 36.916698, 27.158699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795715, 36.239281, 26.678202>,  <33.235455, 36.341499, 27.195629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795715, 36.239281, 26.678202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785625, 36.639145, 26.680683>,  <32.779572, 36.879063, 26.682173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785625, 36.639145, 26.680683>,  <32.795715, 36.239281, 26.678202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785625, 36.639145, 26.680683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095879, 0.003759, -0.995386,
		-0.995073, -0.025700, 0.095752,
		-0.025222, 0.999663, 0.006204,
		32.778057, 36.939045, 26.682545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283497, 36.446384, 26.121515>,  <32.795715, 36.239281, 26.678202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283497, 36.446384, 26.121515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517159, 36.754025, 26.225246>,  <32.657356, 36.938610, 26.287485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517159, 36.754025, 26.225246>,  <32.283497, 36.446384, 26.121515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517159, 36.754025, 26.225246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076266, 0.266082, -0.960929,
		-0.808052, 0.581109, 0.096776,
		0.584154, 0.769099, 0.259327,
		32.692406, 36.984753, 26.303045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085995, 37.156193, 25.698092>,  <32.283497, 36.446384, 26.121515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085995, 37.156193, 25.698092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471470, 37.154072, 25.804876>,  <32.702755, 37.152798, 25.868948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471470, 37.154072, 25.804876>,  <32.085995, 37.156193, 25.698092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471470, 37.154072, 25.804876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246105, 0.405491, -0.880346,
		-0.103583, 0.914084, 0.392073,
		0.963692, -0.005302, 0.266962,
		32.760578, 37.152481, 25.884964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378880, 37.639812, 25.235855>,  <32.085995, 37.156193, 25.698092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378880, 37.639812, 25.235855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.716366, 37.473362, 25.371485>,  <32.918858, 37.373489, 25.452864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.716366, 37.473362, 25.371485>,  <32.378880, 37.639812, 25.235855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716366, 37.473362, 25.371485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476636, 0.290250, -0.829803,
		0.246889, 0.861737, 0.443232,
		0.843720, -0.416130, 0.339075,
		32.969482, 37.348522, 25.473207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931969, 38.208126, 25.193953>,  <32.378880, 37.639812, 25.235855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931969, 38.208126, 25.193953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118530, 37.854305, 25.196442>,  <33.230465, 37.642014, 25.197935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118530, 37.854305, 25.196442>,  <32.931969, 38.208126, 25.193953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118530, 37.854305, 25.196442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601209, 0.311827, -0.735739,
		0.648860, 0.346888, 0.677237,
		0.466400, -0.884552, 0.006221,
		33.258450, 37.588940, 25.198307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648457, 38.217514, 25.095932>,  <32.931969, 38.208126, 25.193953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648457, 38.217514, 25.095932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587273, 37.830673, 25.014616>,  <33.550564, 37.598568, 24.965826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587273, 37.830673, 25.014616>,  <33.648457, 38.217514, 25.095932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587273, 37.830673, 25.014616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600524, 0.072408, -0.796321,
		0.784840, -0.243885, 0.569690,
		-0.152960, -0.967097, -0.203288,
		33.541386, 37.540543, 24.953630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307503, 37.967667, 24.817837>,  <33.648457, 38.217514, 25.095932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307503, 37.967667, 24.817837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.023605, 37.714211, 24.694698>,  <33.853268, 37.562138, 24.620815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.023605, 37.714211, 24.694698>,  <34.307503, 37.967667, 24.817837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023605, 37.714211, 24.694698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377748, 0.026538, -0.925528,
		0.594621, -0.773173, 0.220521,
		-0.709741, -0.633640, -0.307845,
		33.810684, 37.524120, 24.602345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695404, 37.474915, 24.385988>,  <34.307503, 37.967667, 24.817837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695404, 37.474915, 24.385988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315006, 37.412533, 24.279188>,  <34.086769, 37.375103, 24.215107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315006, 37.412533, 24.279188>,  <34.695404, 37.474915, 24.385988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315006, 37.412533, 24.279188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303189, -0.300728, -0.904234,
		0.060723, -0.940873, 0.333274,
		-0.950994, -0.155953, -0.267001,
		34.029709, 37.365746, 24.199087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329037, 37.213974, 24.886629>,  <34.695404, 37.474915, 24.385988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329037, 37.213974, 24.886629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631145, 37.476021, 24.878809>,  <35.812412, 37.633251, 24.874117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631145, 37.476021, 24.878809>,  <35.329037, 37.213974, 24.886629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631145, 37.476021, 24.878809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362139, 0.441993, 0.820668,
		0.546281, -0.612745, 0.571070,
		0.755270, 0.655122, -0.019554,
		35.857727, 37.672558, 24.872944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740150, 37.190456, 25.511404>,  <35.329037, 37.213974, 24.886629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740150, 37.190456, 25.511404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779850, 37.552685, 25.346437>,  <35.803669, 37.770023, 25.247458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779850, 37.552685, 25.346437>,  <35.740150, 37.190456, 25.511404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779850, 37.552685, 25.346437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231452, 0.424105, 0.875537,
		0.967771, 0.008561, 0.251688,
		0.099247, 0.905572, -0.412418,
		35.809624, 37.824356, 25.222712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242203, 37.603443, 25.950153>,  <35.740150, 37.190456, 25.511404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242203, 37.603443, 25.950153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.016819, 37.861286, 25.743469>,  <35.881588, 38.015991, 25.619459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.016819, 37.861286, 25.743469>,  <36.242203, 37.603443, 25.950153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016819, 37.861286, 25.743469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284243, 0.436001, 0.853879,
		0.775704, 0.627999, -0.062445,
		-0.563462, 0.644608, -0.516712,
		35.847782, 38.054668, 25.588455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424095, 38.276882, 26.194056>,  <36.242203, 37.603443, 25.950153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424095, 38.276882, 26.194056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062019, 38.297207, 26.025272>,  <35.844772, 38.309402, 25.924002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062019, 38.297207, 26.025272>,  <36.424095, 38.276882, 26.194056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062019, 38.297207, 26.025272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381300, 0.341447, 0.859084,
		0.187728, 0.938527, -0.289700,
		-0.905190, 0.050812, -0.421959,
		35.790462, 38.312450, 25.898685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194012, 38.948032, 26.457483>,  <36.424095, 38.276882, 26.194056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194012, 38.948032, 26.457483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.872639, 38.754784, 26.318291>,  <35.679813, 38.638836, 26.234776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.872639, 38.754784, 26.318291>,  <36.194012, 38.948032, 26.457483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872639, 38.754784, 26.318291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489330, 0.202829, 0.848184,
		-0.339194, 0.851736, -0.399365,
		-0.803432, -0.483121, -0.347982,
		35.631611, 38.609848, 26.213896>
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
