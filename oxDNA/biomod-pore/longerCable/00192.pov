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
	<23.998501, 35.255371, 34.836323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319843, 35.017174, 34.835545>,  <24.512650, 34.874256, 34.835079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319843, 35.017174, 34.835545>,  <23.998501, 35.255371, 34.836323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.319843, 35.017174, 34.835545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334438, 0.453875, -0.825923,
		0.492715, 0.662861, 0.563779,
		0.803357, -0.595494, -0.001945,
		24.560850, 34.838524, 34.834961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664934, 35.592388, 34.888542>,  <23.998501, 35.255371, 34.836323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664934, 35.592388, 34.888542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704174, 35.247955, 34.688976>,  <24.727718, 35.041294, 34.569237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704174, 35.247955, 34.688976>,  <24.664934, 35.592388, 34.888542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.704174, 35.247955, 34.688976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364869, 0.497542, -0.786970,
		0.925876, -0.104834, 0.362992,
		0.098102, -0.861082, -0.498913,
		24.733604, 34.989632, 34.539303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476501, 35.402649, 34.630531>,  <24.664934, 35.592388, 34.888542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476501, 35.402649, 34.630531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171944, 35.259167, 34.414528>,  <24.989210, 35.173077, 34.284924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171944, 35.259167, 34.414528>,  <25.476501, 35.402649, 34.630531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171944, 35.259167, 34.414528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354360, 0.467252, -0.810003,
		0.542875, -0.808087, -0.228651,
		-0.761391, -0.358706, -0.540013,
		24.943525, 35.151554, 34.252525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105392, 35.503788, 34.185944>,  <25.476501, 35.402649, 34.630531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105392, 35.503788, 34.185944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173601, 35.884155, 34.289227>,  <26.214527, 36.112377, 34.351196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173601, 35.884155, 34.289227>,  <26.105392, 35.503788, 34.185944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173601, 35.884155, 34.289227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489910, 0.309184, -0.815103,
		-0.854933, 0.012492, 0.518588,
		0.170521, 0.950920, 0.258212,
		26.224758, 36.169430, 34.366692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450472, 35.936577, 34.045727>,  <26.105392, 35.503788, 34.185944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450472, 35.936577, 34.045727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777025, 36.167427, 34.037304>,  <25.972958, 36.305935, 34.032249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777025, 36.167427, 34.037304>,  <25.450472, 35.936577, 34.045727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777025, 36.167427, 34.037304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282591, 0.367418, -0.886084,
		-0.503644, 0.729337, 0.463045,
		0.816385, 0.577124, -0.021056,
		26.021940, 36.340565, 34.030987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270504, 36.661705, 33.838890>,  <25.450472, 35.936577, 34.045727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270504, 36.661705, 33.838890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650208, 36.600601, 33.728928>,  <25.878029, 36.563938, 33.662949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650208, 36.600601, 33.728928>,  <25.270504, 36.661705, 33.838890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650208, 36.600601, 33.728928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231787, 0.250998, -0.939827,
		0.212567, 0.955858, 0.202855,
		0.949257, -0.152757, -0.274910,
		25.934984, 36.554775, 33.646454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290535, 37.092968, 33.182560>,  <25.270504, 36.661705, 33.838890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290535, 37.092968, 33.182560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596916, 36.835857, 33.187523>,  <25.780746, 36.681591, 33.190502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596916, 36.835857, 33.187523>,  <25.290535, 37.092968, 33.182560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596916, 36.835857, 33.187523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054308, -0.083921, -0.994991,
		0.640596, 0.761445, -0.099188,
		0.765955, -0.642774, 0.012407,
		25.826702, 36.643024, 33.191246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786257, 37.214378, 32.659027>,  <25.290535, 37.092968, 33.182560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786257, 37.214378, 32.659027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790415, 36.819660, 32.723682>,  <25.792910, 36.582829, 32.762474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790415, 36.819660, 32.723682>,  <25.786257, 37.214378, 32.659027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790415, 36.819660, 32.723682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038877, -0.161924, -0.986037,
		0.999190, 0.003968, -0.040047,
		0.010397, -0.986795, 0.161638,
		25.793533, 36.523621, 32.772175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347269, 36.896858, 32.159061>,  <25.786257, 37.214378, 32.659027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347269, 36.896858, 32.159061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075451, 36.614128, 32.237659>,  <25.912359, 36.444489, 32.284821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075451, 36.614128, 32.237659>,  <26.347269, 36.896858, 32.159061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075451, 36.614128, 32.237659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067813, -0.206178, -0.976162,
		0.730493, -0.676670, 0.092175,
		-0.679544, -0.706829, 0.196499,
		25.871588, 36.402081, 32.296608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570320, 36.309822, 31.852814>,  <26.347269, 36.896858, 32.159061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570320, 36.309822, 31.852814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180553, 36.239979, 31.909418>,  <25.946693, 36.198074, 31.943380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180553, 36.239979, 31.909418>,  <26.570320, 36.309822, 31.852814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180553, 36.239979, 31.909418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105353, -0.201328, -0.973842,
		0.198529, -0.963836, 0.177782,
		-0.974416, -0.174606, 0.141512,
		25.888229, 36.187595, 31.951872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456568, 35.782654, 31.504725>,  <26.570320, 36.309822, 31.852814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456568, 35.782654, 31.504725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075270, 35.894035, 31.551683>,  <25.846491, 35.960865, 31.579859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075270, 35.894035, 31.551683>,  <26.456568, 35.782654, 31.504725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075270, 35.894035, 31.551683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153785, -0.112587, -0.981669,
		-0.260135, -0.953827, 0.150145,
		-0.953247, 0.278457, 0.117397,
		25.789295, 35.977573, 31.586903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939827, 35.251411, 31.149078>,  <26.456568, 35.782654, 31.504725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939827, 35.251411, 31.149078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794325, 35.621563, 31.191706>,  <25.707024, 35.843655, 31.217281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794325, 35.621563, 31.191706>,  <25.939827, 35.251411, 31.149078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794325, 35.621563, 31.191706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250319, 0.013088, -0.968075,
		-0.897231, -0.378819, 0.226879,
		-0.363755, 0.925379, 0.106568,
		25.685198, 35.899178, 31.223677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230488, 35.278015, 31.024050>,  <25.939827, 35.251411, 31.149078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230488, 35.278015, 31.024050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419168, 35.611393, 30.908909>,  <25.532377, 35.811420, 30.839825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419168, 35.611393, 30.908909>,  <25.230488, 35.278015, 31.024050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.419168, 35.611393, 30.908909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307186, -0.150676, -0.939646,
		-0.826519, 0.531658, 0.184949,
		0.471703, 0.833449, -0.287855,
		25.560678, 35.861427, 30.822552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793304, 35.640022, 30.447855>,  <25.230488, 35.278015, 31.024050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793304, 35.640022, 30.447855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182081, 35.725540, 30.408623>,  <25.415348, 35.776852, 30.385084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182081, 35.725540, 30.408623>,  <24.793304, 35.640022, 30.447855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182081, 35.725540, 30.408623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057024, -0.190368, -0.980055,
		-0.228206, 0.958149, -0.172835,
		0.971941, 0.213799, -0.098081,
		25.473663, 35.789680, 30.379198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872972, 36.285458, 30.854172>,  <24.793304, 35.640022, 30.447855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872972, 36.285458, 30.854172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091146, 36.592808, 30.988094>,  <25.222052, 36.777218, 31.068449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091146, 36.592808, 30.988094>,  <24.872972, 36.285458, 30.854172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.091146, 36.592808, 30.988094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790841, 0.604113, -0.098068,
		-0.277615, -0.211291, 0.937169,
		0.545436, 0.768377, 0.334808,
		25.254778, 36.823322, 31.088537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.651882, 36.775372, 31.301617>,  <24.872972, 36.285458, 30.854172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.651882, 36.775372, 31.301617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914839, 36.473953, 31.302567>,  <25.072613, 36.293102, 31.303137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914839, 36.473953, 31.302567>,  <24.651882, 36.775372, 31.301617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914839, 36.473953, 31.302567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127399, -0.108034, 0.985950,
		-0.742700, -0.648460, -0.167021,
		0.657394, -0.753544, 0.002376,
		25.112057, 36.247890, 31.303280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619459, 36.497307, 31.907326>,  <24.651882, 36.775372, 31.301617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619459, 36.497307, 31.907326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968166, 36.339149, 31.791613>,  <25.177391, 36.244255, 31.722185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968166, 36.339149, 31.791613>,  <24.619459, 36.497307, 31.907326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.968166, 36.339149, 31.791613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184553, -0.281940, 0.941515,
		-0.453827, -0.874171, -0.172816,
		0.871769, -0.395391, -0.289283,
		25.229696, 36.220531, 31.704828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.677719, 35.831600, 32.258404>,  <24.619459, 36.497307, 31.907326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.677719, 35.831600, 32.258404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035887, 35.981205, 32.161785>,  <25.250788, 36.070969, 32.103813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035887, 35.981205, 32.161785>,  <24.677719, 35.831600, 32.258404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.035887, 35.981205, 32.161785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288676, -0.074677, 0.954510,
		0.338959, -0.924413, -0.174835,
		0.895418, 0.374010, -0.241544,
		25.304512, 36.093407, 32.089321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130737, 35.389507, 32.603954>,  <24.677719, 35.831600, 32.258404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130737, 35.389507, 32.603954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340910, 35.718655, 32.517406>,  <25.467012, 35.916142, 32.465477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340910, 35.718655, 32.517406>,  <25.130737, 35.389507, 32.603954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340910, 35.718655, 32.517406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382391, -0.001206, 0.924000,
		0.760066, -0.568235, -0.315290,
		0.525429, 0.822865, -0.216372,
		25.498539, 35.965515, 32.452496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819857, 35.221928, 32.659679>,  <25.130737, 35.389507, 32.603954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819857, 35.221928, 32.659679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771030, 35.615730, 32.710022>,  <25.741735, 35.852013, 32.740227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771030, 35.615730, 32.710022>,  <25.819857, 35.221928, 32.659679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771030, 35.615730, 32.710022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508400, -0.046888, 0.859843,
		0.852426, 0.168944, -0.494802,
		-0.122065, 0.984510, 0.125860,
		25.734411, 35.911083, 32.747780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372484, 35.438717, 32.919556>,  <25.819857, 35.221928, 32.659679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372484, 35.438717, 32.919556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158302, 35.764553, 33.008751>,  <26.029793, 35.960056, 33.062267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158302, 35.764553, 33.008751>,  <26.372484, 35.438717, 32.919556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158302, 35.764553, 33.008751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621067, 0.200861, 0.757582,
		0.572332, 0.544142, -0.613470,
		-0.535455, 0.814594, 0.222990,
		25.997665, 36.008930, 33.075649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915758, 36.049107, 32.886486>,  <26.372484, 35.438717, 32.919556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915758, 36.049107, 32.886486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585136, 36.077015, 33.109894>,  <26.386765, 36.093761, 33.243938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585136, 36.077015, 33.109894>,  <26.915758, 36.049107, 32.886486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585136, 36.077015, 33.109894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558632, 0.223062, 0.798857,
		-0.068847, 0.972304, -0.223349,
		-0.826553, 0.069771, 0.558518,
		26.337170, 36.097946, 33.277451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458666, 36.447418, 32.731911>,  <26.915758, 36.049107, 32.886486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458666, 36.447418, 32.731911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702299, 36.168724, 32.883480>,  <27.848478, 36.001507, 32.974422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702299, 36.168724, 32.883480>,  <27.458666, 36.447418, 32.731911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702299, 36.168724, 32.883480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016305, -0.466670, -0.884281,
		0.792939, 0.544778, -0.272880,
		0.609082, -0.696732, 0.378923,
		27.885023, 35.959705, 32.997158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022005, 36.311054, 32.300468>,  <27.458666, 36.447418, 32.731911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022005, 36.311054, 32.300468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020163, 35.982407, 32.528473>,  <28.019058, 35.785217, 32.665276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020163, 35.982407, 32.528473>,  <28.022005, 36.311054, 32.300468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020163, 35.982407, 32.528473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112034, -0.566855, -0.816164,
		0.993694, 0.060103, 0.094660,
		-0.004604, -0.821622, 0.570013,
		28.018782, 35.735920, 32.699478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496332, 35.854843, 31.916359>,  <28.022005, 36.311054, 32.300468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496332, 35.854843, 31.916359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299028, 35.648884, 32.196808>,  <28.180645, 35.525307, 32.365078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299028, 35.648884, 32.196808>,  <28.496332, 35.854843, 31.916359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299028, 35.648884, 32.196808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116932, -0.759437, -0.639986,
		0.861987, -0.397664, 0.314392,
		-0.493261, -0.514897, 0.701124,
		28.151051, 35.494415, 32.407146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599487, 35.153694, 31.856070>,  <28.496332, 35.854843, 31.916359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599487, 35.153694, 31.856070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283360, 35.140137, 32.100773>,  <28.093683, 35.132004, 32.247597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283360, 35.140137, 32.100773>,  <28.599487, 35.153694, 31.856070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283360, 35.140137, 32.100773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330609, -0.817047, -0.472368,
		0.515844, -0.575574, 0.634523,
		-0.790318, -0.033889, 0.611759,
		28.046265, 35.129971, 32.284302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539667, 34.522823, 32.122303>,  <28.599487, 35.153694, 31.856070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539667, 34.522823, 32.122303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188690, 34.713871, 32.104557>,  <27.978104, 34.828499, 32.093910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188690, 34.713871, 32.104557>,  <28.539667, 34.522823, 32.122303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188690, 34.713871, 32.104557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362077, -0.720149, -0.591849,
		-0.314629, -0.503251, 0.804827,
		-0.877445, 0.477622, -0.044364,
		27.925457, 34.857159, 32.091248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159187, 34.480621, 32.440186>,  <28.539667, 34.522823, 32.122303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159187, 34.480621, 32.440186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507471, 34.435604, 32.631683>,  <29.716442, 34.408592, 32.746582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507471, 34.435604, 32.631683>,  <29.159187, 34.480621, 32.440186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507471, 34.435604, 32.631683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491334, -0.156833, 0.856735,
		-0.021334, -0.981192, -0.191850,
		0.870710, -0.112540, 0.478748,
		29.768684, 34.401840, 32.775307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127455, 33.756058, 32.774113>,  <29.159187, 34.480621, 32.440186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127455, 33.756058, 32.774113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374746, 34.013664, 32.954350>,  <29.523121, 34.168228, 33.062492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374746, 34.013664, 32.954350>,  <29.127455, 33.756058, 32.774113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374746, 34.013664, 32.954350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547308, -0.058736, 0.834868,
		0.564135, -0.762753, 0.316163,
		0.618228, 0.644017, 0.450596,
		29.560215, 34.206871, 33.089527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498671, 33.496471, 33.385620>,  <29.127455, 33.756058, 32.774113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498671, 33.496471, 33.385620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429966, 33.889725, 33.410744>,  <29.388744, 34.125675, 33.425819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429966, 33.889725, 33.410744>,  <29.498671, 33.496471, 33.385620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429966, 33.889725, 33.410744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544996, -0.147940, 0.825283,
		0.820657, 0.107520, 0.561215,
		-0.171761, 0.983134, 0.062810,
		29.378437, 34.184666, 33.429588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781406, 33.646469, 34.086613>,  <29.498671, 33.496471, 33.385620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781406, 33.646469, 34.086613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506227, 33.913723, 33.973251>,  <29.341120, 34.074078, 33.905235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506227, 33.913723, 33.973251>,  <29.781406, 33.646469, 34.086613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506227, 33.913723, 33.973251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530205, -0.196027, 0.824898,
		0.495590, 0.717750, 0.489106,
		-0.687948, 0.668138, -0.283406,
		29.299843, 34.114162, 33.888229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646872, 34.117329, 34.683514>,  <29.781406, 33.646469, 34.086613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646872, 34.117329, 34.683514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333641, 34.148254, 34.436672>,  <29.145702, 34.166809, 34.288567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333641, 34.148254, 34.436672>,  <29.646872, 34.117329, 34.683514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333641, 34.148254, 34.436672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621772, -0.075366, 0.779564,
		0.013761, 0.994154, 0.107088,
		-0.783077, 0.077312, -0.617100,
		29.098719, 34.171448, 34.251541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213755, 34.485012, 35.019482>,  <29.646872, 34.117329, 34.683514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213755, 34.485012, 35.019482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956326, 34.344036, 34.747719>,  <28.801868, 34.259449, 34.584660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956326, 34.344036, 34.747719>,  <29.213755, 34.485012, 35.019482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956326, 34.344036, 34.747719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686677, -0.126199, 0.715925,
		-0.338063, 0.927285, -0.160797,
		-0.643574, -0.352443, -0.679408,
		28.763254, 34.238304, 34.543896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569513, 34.535614, 35.325306>,  <29.213755, 34.485012, 35.019482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569513, 34.535614, 35.325306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842150, 34.788151, 35.177338>,  <29.005732, 34.939674, 35.088558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842150, 34.788151, 35.177338>,  <28.569513, 34.535614, 35.325306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842150, 34.788151, 35.177338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427514, -0.066698, -0.901545,
		-0.593856, 0.772631, 0.224447,
		0.681591, 0.631342, -0.369920,
		29.046627, 34.977554, 35.066360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453873, 33.847546, 35.407520>,  <28.569513, 34.535614, 35.325306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453873, 33.847546, 35.407520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097826, 33.779060, 35.238579>,  <27.884199, 33.737968, 35.137215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097826, 33.779060, 35.238579>,  <28.453873, 33.847546, 35.407520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097826, 33.779060, 35.238579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415504, 0.075822, -0.906426,
		0.187219, -0.982311, 0.003651,
		-0.890116, -0.171217, -0.422349,
		27.830791, 33.727695, 35.111874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536623, 33.229263, 35.016106>,  <28.453873, 33.847546, 35.407520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536623, 33.229263, 35.016106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299879, 33.532406, 34.906300>,  <28.157833, 33.714291, 34.840416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299879, 33.532406, 34.906300>,  <28.536623, 33.229263, 35.016106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299879, 33.532406, 34.906300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575864, 0.159270, -0.801882,
		-0.563990, -0.632682, -0.530687,
		-0.591858, 0.757857, -0.274512,
		28.122322, 33.759762, 34.823944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373360, 33.136909, 34.291492>,  <28.536623, 33.229263, 35.016106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373360, 33.136909, 34.291492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321180, 33.517197, 34.404003>,  <28.289873, 33.745369, 34.471508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321180, 33.517197, 34.404003>,  <28.373360, 33.136909, 34.291492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321180, 33.517197, 34.404003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475078, 0.308949, -0.823924,
		-0.870221, 0.026151, -0.491967,
		-0.130446, 0.950719, 0.281278,
		28.282047, 33.802414, 34.488388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930014, 33.588772, 33.795811>,  <28.373360, 33.136909, 34.291492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930014, 33.588772, 33.795811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195812, 33.793179, 34.013916>,  <28.355291, 33.915821, 34.144779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195812, 33.793179, 34.013916>,  <27.930014, 33.588772, 33.795811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195812, 33.793179, 34.013916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545501, 0.167005, -0.821302,
		-0.510758, 0.843193, -0.167784,
		0.664495, 0.511014, 0.545262,
		28.395161, 33.946484, 34.177494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213097, 33.932014, 33.333313>,  <27.930014, 33.588772, 33.795811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213097, 33.932014, 33.333313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475227, 33.998844, 33.627968>,  <28.632505, 34.038940, 33.804760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475227, 33.998844, 33.627968>,  <28.213097, 33.932014, 33.333313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475227, 33.998844, 33.627968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691510, 0.259674, -0.674080,
		-0.303906, 0.951134, 0.054639,
		0.655328, 0.167074, 0.736635,
		28.671825, 34.048965, 33.848957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140823, 34.686661, 33.641579>,  <28.213097, 33.932014, 33.333313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140823, 34.686661, 33.641579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450064, 34.629372, 33.888741>,  <28.635607, 34.594997, 34.037037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450064, 34.629372, 33.888741>,  <28.140823, 34.686661, 33.641579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450064, 34.629372, 33.888741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627684, 0.312936, -0.712801,
		-0.091272, 0.938913, 0.331831,
		0.773099, -0.143226, 0.617903,
		28.681993, 34.586403, 34.074112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590572, 35.314659, 33.570194>,  <28.140823, 34.686661, 33.641579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590572, 35.314659, 33.570194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797430, 34.996052, 33.695496>,  <28.921545, 34.804890, 33.770676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797430, 34.996052, 33.695496>,  <28.590572, 35.314659, 33.570194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797430, 34.996052, 33.695496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699834, 0.182810, -0.690516,
		0.492741, 0.576320, 0.651967,
		0.517144, -0.796515, 0.313250,
		28.952574, 34.757099, 33.789471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313822, 35.467369, 33.740551>,  <28.590572, 35.314659, 33.570194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313822, 35.467369, 33.740551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315836, 35.084206, 33.625744>,  <29.317043, 34.854305, 33.556858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315836, 35.084206, 33.625744>,  <29.313822, 35.467369, 33.740551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315836, 35.084206, 33.625744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658749, 0.219118, -0.719748,
		0.752346, -0.185449, 0.632127,
		0.005034, -0.957912, -0.287017,
		29.317347, 34.796833, 33.539639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044016, 35.369869, 33.450638>,  <29.313822, 35.467369, 33.740551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044016, 35.369869, 33.450638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779272, 35.094616, 33.331699>,  <29.620426, 34.929462, 33.260338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779272, 35.094616, 33.331699>,  <30.044016, 35.369869, 33.450638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779272, 35.094616, 33.331699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288985, 0.131776, -0.948221,
		0.691687, -0.713516, 0.111643,
		-0.661859, -0.688135, -0.297343,
		29.580715, 34.888176, 33.242496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015232, 35.996155, 32.965969>,  <30.044016, 35.369869, 33.450638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015232, 35.996155, 32.965969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397446, 36.063656, 33.062695>,  <30.626774, 36.104156, 33.120731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397446, 36.063656, 33.062695>,  <30.015232, 35.996155, 32.965969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397446, 36.063656, 33.062695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264076, -0.854624, -0.447081,
		0.131213, 0.491059, -0.861188,
		0.955535, 0.168756, 0.241815,
		30.684107, 36.114281, 33.135239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360441, 36.263916, 32.414455>,  <30.015232, 35.996155, 32.965969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360441, 36.263916, 32.414455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555101, 36.014465, 32.659161>,  <30.671898, 35.864796, 32.805984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555101, 36.014465, 32.659161>,  <30.360441, 36.263916, 32.414455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555101, 36.014465, 32.659161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033474, -0.713081, -0.700282,
		0.872955, 0.320314, -0.367896,
		0.486650, -0.623630, 0.611766,
		30.701096, 35.827377, 32.842690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918858, 36.022404, 32.030575>,  <30.360441, 36.263916, 32.414455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918858, 36.022404, 32.030575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778727, 35.780945, 32.317039>,  <30.694649, 35.636070, 32.488918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778727, 35.780945, 32.317039>,  <30.918858, 36.022404, 32.030575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778727, 35.780945, 32.317039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041283, -0.753922, -0.655666,
		0.935718, -0.259262, 0.239198,
		-0.350326, -0.603643, 0.716161,
		30.673630, 35.599854, 32.531887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302128, 35.470917, 32.157917>,  <30.918858, 36.022404, 32.030575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302128, 35.470917, 32.157917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935167, 35.331554, 32.234844>,  <30.714991, 35.247936, 32.280998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935167, 35.331554, 32.234844>,  <31.302128, 35.470917, 32.157917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935167, 35.331554, 32.234844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126417, -0.713359, -0.689302,
		0.377346, -0.608056, 0.698482,
		-0.917403, -0.348405, 0.192315,
		30.659946, 35.227032, 32.292538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283381, 34.818604, 32.512981>,  <31.302128, 35.470917, 32.157917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283381, 34.818604, 32.512981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980078, 34.885426, 32.260906>,  <30.798096, 34.925518, 32.109661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980078, 34.885426, 32.260906>,  <31.283381, 34.818604, 32.512981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980078, 34.885426, 32.260906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389166, -0.659539, -0.643085,
		-0.523061, -0.732873, 0.435091,
		-0.758259, 0.167050, -0.630189,
		30.752600, 34.935539, 32.071850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875772, 34.131008, 32.416737>,  <31.283381, 34.818604, 32.512981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875772, 34.131008, 32.416737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941956, 34.420986, 32.149281>,  <30.981665, 34.594975, 31.988808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941956, 34.420986, 32.149281>,  <30.875772, 34.131008, 32.416737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941956, 34.420986, 32.149281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486213, -0.649821, -0.584234,
		-0.858033, -0.228433, -0.459997,
		0.165457, 0.724948, -0.668636,
		30.991592, 34.638470, 31.948690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851427, 33.746284, 31.832998>,  <30.875772, 34.131008, 32.416737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851427, 33.746284, 31.832998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076319, 34.072975, 31.781059>,  <31.211254, 34.268990, 31.749897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076319, 34.072975, 31.781059>,  <30.851427, 33.746284, 31.832998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076319, 34.072975, 31.781059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662486, -0.538790, -0.520402,
		-0.494984, 0.206564, -0.843992,
		0.562230, 0.816723, -0.129847,
		31.244987, 34.317993, 31.742105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040018, 33.847134, 31.110397>,  <30.851427, 33.746284, 31.832998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040018, 33.847134, 31.110397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325949, 34.020664, 31.329786>,  <31.497507, 34.124783, 31.461420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325949, 34.020664, 31.329786>,  <31.040018, 33.847134, 31.110397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325949, 34.020664, 31.329786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699302, -0.445429, -0.559080,
		0.001765, 0.783193, -0.621776,
		0.714824, 0.433822, 0.548474,
		31.540396, 34.150810, 31.494329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469137, 34.387596, 30.780983>,  <31.040018, 33.847134, 31.110397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469137, 34.387596, 30.780983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653959, 34.137215, 31.032278>,  <31.764853, 33.986984, 31.183054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653959, 34.137215, 31.032278>,  <31.469137, 34.387596, 30.780983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653959, 34.137215, 31.032278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575813, -0.327017, -0.749333,
		0.674495, 0.707981, 0.209334,
		0.462057, -0.625958, 0.628236,
		31.792576, 33.949429, 31.220749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112511, 34.527126, 30.825489>,  <31.469137, 34.387596, 30.780983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112511, 34.527126, 30.825489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104073, 34.141552, 30.931608>,  <32.099010, 33.910206, 30.995279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104073, 34.141552, 30.931608>,  <32.112511, 34.527126, 30.825489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104073, 34.141552, 30.931608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503802, -0.239452, -0.829968,
		0.863562, 0.116146, 0.490685,
		-0.021098, -0.963936, 0.265296,
		32.097744, 33.852371, 31.011196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749756, 34.196827, 30.846241>,  <32.112511, 34.527126, 30.825489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749756, 34.196827, 30.846241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463745, 33.934746, 30.748709>,  <32.292141, 33.777496, 30.690189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463745, 33.934746, 30.748709>,  <32.749756, 34.196827, 30.846241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463745, 33.934746, 30.748709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585555, -0.370744, -0.720885,
		0.381928, -0.658224, 0.648747,
		-0.715022, -0.655203, -0.243828,
		32.249237, 33.738186, 30.675560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689987, 33.527214, 31.335737>,  <32.749756, 34.196827, 30.846241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689987, 33.527214, 31.335737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059166, 33.574585, 31.482244>,  <33.280674, 33.603008, 31.570148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059166, 33.574585, 31.482244>,  <32.689987, 33.527214, 31.335737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059166, 33.574585, 31.482244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372946, 0.039462, 0.927013,
		0.095332, -0.992178, 0.080589,
		0.922943, 0.118429, 0.366267,
		33.336048, 33.610115, 31.592125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699181, 33.024986, 31.881489>,  <32.689987, 33.527214, 31.335737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699181, 33.024986, 31.881489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014328, 33.253349, 31.973854>,  <33.203419, 33.390369, 32.029274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014328, 33.253349, 31.973854>,  <32.699181, 33.024986, 31.881489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014328, 33.253349, 31.973854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176852, -0.149414, 0.972830,
		0.589899, -0.807303, -0.016753,
		0.787872, 0.570909, 0.230912,
		33.250690, 33.424622, 32.043129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135876, 32.650352, 32.283901>,  <32.699181, 33.024986, 31.881489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135876, 32.650352, 32.283901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228088, 33.032742, 32.356529>,  <33.283417, 33.262177, 32.400105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228088, 33.032742, 32.356529>,  <33.135876, 32.650352, 32.283901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228088, 33.032742, 32.356529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345706, -0.093957, 0.933627,
		0.909583, -0.278003, 0.308826,
		0.230535, 0.955974, 0.181569,
		33.297249, 33.319534, 32.410999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574570, 32.716801, 32.864098>,  <33.135876, 32.650352, 32.283901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574570, 32.716801, 32.864098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360268, 33.053646, 32.839413>,  <33.231686, 33.255753, 32.824604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360268, 33.053646, 32.839413>,  <33.574570, 32.716801, 32.864098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360268, 33.053646, 32.839413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362932, -0.163676, 0.917328,
		0.762397, 0.513857, 0.393321,
		-0.535753, 0.842117, -0.061709,
		33.199543, 33.306282, 32.820900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635803, 32.986732, 33.454033>,  <33.574570, 32.716801, 32.864098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635803, 32.986732, 33.454033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308136, 33.171799, 33.318436>,  <33.111538, 33.282837, 33.237076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308136, 33.171799, 33.318436>,  <33.635803, 32.986732, 33.454033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308136, 33.171799, 33.318436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341884, 0.080685, 0.936272,
		0.460529, 0.882856, 0.092083,
		-0.819164, 0.462662, -0.338992,
		33.062386, 33.310596, 33.216740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550869, 33.751125, 33.657974>,  <33.635803, 32.986732, 33.454033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550869, 33.751125, 33.657974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217052, 33.537804, 33.602657>,  <33.016762, 33.409813, 33.569469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217052, 33.537804, 33.602657>,  <33.550869, 33.751125, 33.657974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217052, 33.537804, 33.602657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268668, 0.174805, 0.947238,
		-0.480990, 0.827667, -0.289164,
		-0.834545, -0.533301, -0.138288,
		32.966690, 33.377811, 33.561172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797176, 33.838669, 33.730164>,  <33.550869, 33.751125, 33.657974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797176, 33.838669, 33.730164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061325, 33.911343, 33.438713>,  <33.219814, 33.954945, 33.263844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061325, 33.911343, 33.438713>,  <32.797176, 33.838669, 33.730164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061325, 33.911343, 33.438713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117293, 0.983337, 0.138889,
		0.741719, -0.006256, 0.670681,
		0.660375, 0.181683, -0.728627,
		33.259438, 33.965847, 33.220123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432861, 34.235367, 33.179340>,  <32.797176, 33.838669, 33.730164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432861, 34.235367, 33.179340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743774, 33.988983, 33.230606>,  <32.930321, 33.841152, 33.261364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743774, 33.988983, 33.230606>,  <32.432861, 34.235367, 33.179340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743774, 33.988983, 33.230606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178853, 0.021022, -0.983651,
		0.603198, 0.787495, 0.126507,
		0.777280, -0.615962, 0.128165,
		32.976959, 33.804195, 33.269054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018784, 34.521523, 32.795044>,  <32.432861, 34.235367, 33.179340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018784, 34.521523, 32.795044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142155, 34.143833, 32.841190>,  <33.216179, 33.917217, 32.868877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142155, 34.143833, 32.841190>,  <33.018784, 34.521523, 32.795044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142155, 34.143833, 32.841190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423180, 0.027584, -0.905626,
		0.851933, 0.328142, 0.408085,
		0.308430, -0.944226, 0.115363,
		33.234684, 33.860565, 32.875801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783657, 34.528732, 32.659428>,  <33.018784, 34.521523, 32.795044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783657, 34.528732, 32.659428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618454, 34.169926, 32.596447>,  <33.519333, 33.954643, 32.558659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618454, 34.169926, 32.596447>,  <33.783657, 34.528732, 32.659428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618454, 34.169926, 32.596447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338190, 0.009468, -0.941030,
		0.845608, -0.441901, 0.299450,
		-0.413007, -0.897014, -0.157453,
		33.494553, 33.900822, 32.549210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341316, 34.206093, 32.351116>,  <33.783657, 34.528732, 32.659428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341316, 34.206093, 32.351116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018661, 33.984642, 32.268318>,  <33.825069, 33.851772, 32.218639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018661, 33.984642, 32.268318>,  <34.341316, 34.206093, 32.351116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018661, 33.984642, 32.268318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307128, -0.093387, -0.947075,
		0.504992, -0.827515, 0.245362,
		-0.806632, -0.553623, -0.206993,
		33.776672, 33.818554, 32.206219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540527, 33.580582, 32.034653>,  <34.341316, 34.206093, 32.351116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540527, 33.580582, 32.034653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162407, 33.612473, 31.908134>,  <33.935535, 33.631607, 31.832224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162407, 33.612473, 31.908134>,  <34.540527, 33.580582, 32.034653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162407, 33.612473, 31.908134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310102, -0.081119, -0.947236,
		-0.101188, -0.993510, 0.051955,
		-0.945303, 0.079737, -0.316298,
		33.878815, 33.636391, 31.813246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411312, 33.003414, 31.667696>,  <34.540527, 33.580582, 32.034653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411312, 33.003414, 31.667696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176800, 33.304131, 31.546972>,  <34.036095, 33.484562, 31.474539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176800, 33.304131, 31.546972>,  <34.411312, 33.003414, 31.667696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176800, 33.304131, 31.546972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398838, -0.056414, -0.915285,
		-0.705130, -0.656982, -0.266769,
		-0.586276, 0.751792, -0.301808,
		34.000916, 33.529667, 31.456430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982365, 32.798092, 31.109089>,  <34.411312, 33.003414, 31.667696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982365, 32.798092, 31.109089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043777, 33.191151, 31.067467>,  <34.080624, 33.426987, 31.042494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043777, 33.191151, 31.067467>,  <33.982365, 32.798092, 31.109089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043777, 33.191151, 31.067467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302929, -0.147040, -0.941601,
		-0.940564, 0.113046, -0.320248,
		0.153533, 0.982649, -0.104056,
		34.089836, 33.485947, 31.036249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612057, 33.084965, 30.487989>,  <33.982365, 32.798092, 31.109089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612057, 33.084965, 30.487989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908245, 33.344307, 30.558802>,  <34.085957, 33.499912, 30.601290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908245, 33.344307, 30.558802>,  <33.612057, 33.084965, 30.487989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908245, 33.344307, 30.558802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233540, -0.001227, -0.972346,
		-0.630207, 0.761339, -0.152325,
		0.740472, 0.648353, 0.177030,
		34.130386, 33.538815, 30.611910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546246, 33.487392, 29.859125>,  <33.612057, 33.084965, 30.487989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546246, 33.487392, 29.859125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894558, 33.598263, 30.021566>,  <34.103546, 33.664783, 30.119032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894558, 33.598263, 30.021566>,  <33.546246, 33.487392, 29.859125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894558, 33.598263, 30.021566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388365, 0.118790, -0.913817,
		-0.301528, 0.953448, -0.004205,
		0.870777, 0.277175, 0.406104,
		34.155792, 33.681416, 30.143398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714127, 34.092129, 29.483286>,  <33.546246, 33.487392, 29.859125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714127, 34.092129, 29.483286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048443, 33.956982, 29.656397>,  <34.249035, 33.875893, 29.760263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048443, 33.956982, 29.656397>,  <33.714127, 34.092129, 29.483286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048443, 33.956982, 29.656397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461483, 0.005250, -0.887133,
		0.297459, 0.941180, 0.160306,
		0.835794, -0.337864, 0.432777,
		34.299183, 33.855621, 29.786230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232895, 34.489071, 29.239109>,  <33.714127, 34.092129, 29.483286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232895, 34.489071, 29.239109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453415, 34.187691, 29.382435>,  <34.585728, 34.006863, 29.468430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453415, 34.187691, 29.382435>,  <34.232895, 34.489071, 29.239109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453415, 34.187691, 29.382435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664202, 0.136460, -0.734992,
		0.504883, 0.643191, 0.575672,
		0.551297, -0.753448, 0.358312,
		34.618805, 33.961655, 29.489929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923683, 34.764923, 29.279352>,  <34.232895, 34.489071, 29.239109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923683, 34.764923, 29.279352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947487, 34.366032, 29.261501>,  <34.961769, 34.126698, 29.250792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947487, 34.366032, 29.261501>,  <34.923683, 34.764923, 29.279352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947487, 34.366032, 29.261501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634970, 0.072314, -0.769145,
		0.770241, 0.017437, 0.637515,
		0.059513, -0.997230, -0.044628,
		34.965340, 34.066864, 29.248114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617203, 34.587898, 28.990232>,  <34.923683, 34.764923, 29.279352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617203, 34.587898, 28.990232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413593, 34.249084, 28.929012>,  <35.291428, 34.045795, 28.892281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413593, 34.249084, 28.929012>,  <35.617203, 34.587898, 28.990232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413593, 34.249084, 28.929012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456087, -0.114622, -0.882523,
		0.729988, -0.519026, 0.444668,
		-0.509021, -0.847039, -0.153048,
		35.260887, 33.994972, 28.883099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050873, 34.121254, 28.654720>,  <35.617203, 34.587898, 28.990232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050873, 34.121254, 28.654720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695965, 33.955196, 28.574314>,  <35.483021, 33.855560, 28.526072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695965, 33.955196, 28.574314>,  <36.050873, 34.121254, 28.654720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695965, 33.955196, 28.574314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277534, -0.132421, -0.951546,
		0.368409, -0.900068, 0.232709,
		-0.887271, -0.415143, -0.201014,
		35.429783, 33.830654, 28.514009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201401, 33.429260, 28.323462>,  <36.050873, 34.121254, 28.654720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201401, 33.429260, 28.323462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822845, 33.520702, 28.232172>,  <35.595711, 33.575565, 28.177399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822845, 33.520702, 28.232172>,  <36.201401, 33.429260, 28.323462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822845, 33.520702, 28.232172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203673, -0.126098, -0.970884,
		-0.250725, -0.965319, 0.072778,
		-0.946390, 0.228602, -0.228226,
		35.538929, 33.589283, 28.163704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090721, 33.027824, 27.703629>,  <36.201401, 33.429260, 28.323462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090721, 33.027824, 27.703629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804245, 33.306751, 27.692171>,  <35.632359, 33.474106, 27.685297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804245, 33.306751, 27.692171>,  <36.090721, 33.027824, 27.703629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804245, 33.306751, 27.692171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189775, 0.155091, -0.969501,
		-0.671606, -0.699784, -0.243408,
		-0.716192, 0.697316, -0.028642,
		35.589386, 33.515945, 27.683578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711533, 32.771454, 27.193794>,  <36.090721, 33.027824, 27.703629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711533, 32.771454, 27.193794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634113, 33.163055, 27.219374>,  <35.587662, 33.398018, 27.234722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634113, 33.163055, 27.219374>,  <35.711533, 32.771454, 27.193794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634113, 33.163055, 27.219374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248161, 0.111917, -0.962232,
		-0.949186, -0.170368, -0.264612,
		-0.193548, 0.979004, 0.063951,
		35.576050, 33.456757, 27.238560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096546, 32.979755, 26.657961>,  <35.711533, 32.771454, 27.193794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096546, 32.979755, 26.657961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280125, 33.321632, 26.755020>,  <35.390270, 33.526756, 26.813255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280125, 33.321632, 26.755020>,  <35.096546, 32.979755, 26.657961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280125, 33.321632, 26.755020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020416, 0.283185, -0.958848,
		-0.888231, 0.435104, 0.147416,
		0.458944, 0.854688, 0.242650,
		35.417809, 33.578037, 26.827816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904819, 33.469284, 26.152567>,  <35.096546, 32.979755, 26.657961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904819, 33.469284, 26.152567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228024, 33.620201, 26.333572>,  <35.421947, 33.710751, 26.442175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228024, 33.620201, 26.333572>,  <34.904819, 33.469284, 26.152567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228024, 33.620201, 26.333572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315228, 0.372027, -0.873056,
		-0.497744, 0.848084, 0.181669,
		0.808011, 0.377292, 0.452514,
		35.470428, 33.733387, 26.469326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970478, 34.017776, 25.695822>,  <34.904819, 33.469284, 26.152567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970478, 34.017776, 25.695822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312828, 33.941242, 25.888018>,  <35.518238, 33.895321, 26.003334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312828, 33.941242, 25.888018>,  <34.970478, 34.017776, 25.695822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312828, 33.941242, 25.888018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508355, 0.482152, -0.713516,
		-0.095148, 0.854939, 0.509928,
		0.855875, -0.191335, 0.480488,
		35.569592, 33.883842, 26.032164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237473, 34.668739, 25.830795>,  <34.970478, 34.017776, 25.695822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237473, 34.668739, 25.830795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555298, 34.425869, 25.830875>,  <35.745995, 34.280148, 25.830923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555298, 34.425869, 25.830875>,  <35.237473, 34.668739, 25.830795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555298, 34.425869, 25.830875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398253, 0.520918, -0.755009,
		0.458320, 0.599985, 0.655714,
		0.794568, -0.607176, 0.000199,
		35.793667, 34.243717, 25.830935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829193, 35.142639, 25.790133>,  <35.237473, 34.668739, 25.830795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829193, 35.142639, 25.790133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941570, 34.781963, 25.658663>,  <36.008995, 34.565559, 25.579781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941570, 34.781963, 25.658663>,  <35.829193, 35.142639, 25.790133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941570, 34.781963, 25.658663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448456, 0.426120, -0.785691,
		0.848504, 0.073337, 0.524083,
		0.280942, -0.901689, -0.328676,
		36.025852, 34.511456, 25.560061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457703, 35.177505, 25.589037>,  <35.829193, 35.142639, 25.790133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457703, 35.177505, 25.589037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361012, 34.837677, 25.401505>,  <36.302998, 34.633781, 25.288984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361012, 34.837677, 25.401505>,  <36.457703, 35.177505, 25.589037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361012, 34.837677, 25.401505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367363, 0.367071, -0.854578,
		0.898117, -0.378805, 0.223369,
		-0.241726, -0.849568, -0.468831,
		36.288494, 34.582806, 25.260855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039642, 34.844986, 25.218042>,  <36.457703, 35.177505, 25.589037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039642, 34.844986, 25.218042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705845, 34.709122, 25.044487>,  <36.505566, 34.627602, 24.940353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705845, 34.709122, 25.044487>,  <37.039642, 34.844986, 25.218042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705845, 34.709122, 25.044487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377057, 0.222209, -0.899139,
		0.401816, -0.913922, -0.057359,
		-0.834489, -0.339661, -0.433888,
		36.455498, 34.607224, 24.914320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287281, 34.549007, 24.613333>,  <37.039642, 34.844986, 25.218042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287281, 34.549007, 24.613333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898563, 34.555061, 24.519196>,  <36.665333, 34.558693, 24.462713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898563, 34.555061, 24.519196>,  <37.287281, 34.549007, 24.613333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898563, 34.555061, 24.519196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226910, 0.331878, -0.915625,
		0.064248, -0.943201, -0.325952,
		-0.971794, 0.015134, -0.235344,
		36.607025, 34.559601, 24.448593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190571, 34.192158, 23.926889>,  <37.287281, 34.549007, 24.613333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190571, 34.192158, 23.926889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880829, 34.442017, 23.967278>,  <36.694984, 34.591930, 23.991510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880829, 34.442017, 23.967278>,  <37.190571, 34.192158, 23.926889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880829, 34.442017, 23.967278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086958, 0.263116, -0.960837,
		-0.626749, -0.735248, -0.258062,
		-0.774354, 0.624644, 0.100972,
		36.648521, 34.629410, 23.997570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915249, 34.103382, 23.265068>,  <37.190571, 34.192158, 23.926889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915249, 34.103382, 23.265068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752377, 34.430092, 23.428570>,  <36.654652, 34.626118, 23.526670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752377, 34.430092, 23.428570>,  <36.915249, 34.103382, 23.265068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752377, 34.430092, 23.428570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082777, 0.478697, -0.874069,
		-0.909588, -0.322071, -0.262528,
		-0.407183, 0.816774, 0.408757,
		36.630222, 34.675125, 23.551197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318169, 34.316467, 22.852602>,  <36.915249, 34.103382, 23.265068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318169, 34.316467, 22.852602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460625, 34.628826, 23.057878>,  <36.546101, 34.816242, 23.181044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460625, 34.628826, 23.057878>,  <36.318169, 34.316467, 22.852602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460625, 34.628826, 23.057878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057011, 0.530020, -0.846067,
		-0.932691, 0.330577, 0.144243,
		0.356142, 0.780895, 0.513191,
		36.567467, 34.863094, 23.211836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041332, 34.878517, 22.550890>,  <36.318169, 34.316467, 22.852602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041332, 34.878517, 22.550890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351425, 35.023933, 22.757521>,  <36.537479, 35.111183, 22.881500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351425, 35.023933, 22.757521>,  <36.041332, 34.878517, 22.550890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351425, 35.023933, 22.757521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197357, 0.637454, -0.744784,
		-0.600057, 0.679329, 0.422425,
		0.775230, 0.363545, 0.516579,
		36.583996, 35.132996, 22.912495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942139, 35.584457, 22.508163>,  <36.041332, 34.878517, 22.550890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942139, 35.584457, 22.508163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326183, 35.512722, 22.593983>,  <36.556610, 35.469681, 22.645473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326183, 35.512722, 22.593983>,  <35.942139, 35.584457, 22.508163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326183, 35.512722, 22.593983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279513, 0.637892, -0.717612,
		-0.008160, 0.748953, 0.662573,
		0.960107, -0.179342, 0.214547,
		36.614216, 35.458920, 22.658346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299763, 36.184093, 22.459944>,  <35.942139, 35.584457, 22.508163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299763, 36.184093, 22.459944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593613, 35.920666, 22.394690>,  <36.769924, 35.762611, 22.355537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593613, 35.920666, 22.394690>,  <36.299763, 36.184093, 22.459944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593613, 35.920666, 22.394690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326005, 0.553501, -0.766393,
		0.595016, 0.509830, 0.621313,
		0.734627, -0.658566, -0.163134,
		36.813999, 35.723095, 22.345749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889542, 36.585026, 22.236513>,  <36.299763, 36.184093, 22.459944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889542, 36.585026, 22.236513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982628, 36.209267, 22.135818>,  <37.038479, 35.983810, 22.075401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982628, 36.209267, 22.135818>,  <36.889542, 36.585026, 22.236513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982628, 36.209267, 22.135818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379778, 0.326069, -0.865707,
		0.895329, 0.105857, 0.432644,
		0.232713, -0.939401, -0.251737,
		37.052441, 35.927448, 22.060297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602936, 36.569050, 21.971901>,  <36.889542, 36.585026, 22.236513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602936, 36.569050, 21.971901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424862, 36.250282, 21.808571>,  <37.318016, 36.059021, 21.710573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424862, 36.250282, 21.808571>,  <37.602936, 36.569050, 21.971901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424862, 36.250282, 21.808571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433570, 0.207144, -0.876988,
		0.783471, -0.567461, 0.253303,
		-0.445186, -0.796919, -0.408325,
		37.291306, 36.011208, 21.686073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120018, 36.161686, 21.674173>,  <37.602936, 36.569050, 21.971901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120018, 36.161686, 21.674173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785770, 36.070004, 21.474491>,  <37.585224, 36.014992, 21.354681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785770, 36.070004, 21.474491>,  <38.120018, 36.161686, 21.674173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785770, 36.070004, 21.474491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510487, 0.011563, -0.859808,
		0.202849, -0.973308, 0.107347,
		-0.835617, -0.229210, -0.499207,
		37.535084, 36.001240, 21.324730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365345, 36.120453, 21.040264>,  <38.120018, 36.161686, 21.674173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365345, 36.120453, 21.040264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975147, 36.096542, 20.955570>,  <37.741028, 36.082195, 20.904755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975147, 36.096542, 20.955570>,  <38.365345, 36.120453, 21.040264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975147, 36.096542, 20.955570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206653, 0.081263, -0.975034,
		0.075470, -0.994900, -0.066923,
		-0.975500, -0.059756, -0.211732,
		37.682499, 36.078609, 20.892050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342087, 35.648453, 20.576807>,  <38.365345, 36.120453, 21.040264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342087, 35.648453, 20.576807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028084, 35.894039, 20.543779>,  <37.839684, 36.041389, 20.523964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028084, 35.894039, 20.543779>,  <38.342087, 35.648453, 20.576807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028084, 35.894039, 20.543779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154841, 0.065409, -0.985772,
		-0.599827, -0.786620, -0.146413,
		-0.785005, 0.613963, -0.082567,
		37.792583, 36.078228, 20.519009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962982, 35.468887, 19.878738>,  <38.342087, 35.648453, 20.576807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962982, 35.468887, 19.878738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830433, 35.824936, 20.003878>,  <37.750904, 36.038567, 20.078960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830433, 35.824936, 20.003878>,  <37.962982, 35.468887, 19.878738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830433, 35.824936, 20.003878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070516, 0.354020, -0.932576,
		-0.940860, -0.286971, -0.180081,
		-0.331374, 0.890122, 0.312847,
		37.731022, 36.091972, 20.097733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474464, 35.671627, 19.285721>,  <37.962982, 35.468887, 19.878738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474464, 35.671627, 19.285721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547592, 36.011837, 19.482973>,  <37.591469, 36.215965, 19.601324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547592, 36.011837, 19.482973>,  <37.474464, 35.671627, 19.285721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547592, 36.011837, 19.482973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041236, 0.494509, -0.868194,
		-0.982280, 0.179062, 0.055335,
		0.182824, 0.850528, 0.493130,
		37.602440, 36.266994, 19.630913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037106, 36.127300, 19.050598>,  <37.474464, 35.671627, 19.285721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037106, 36.127300, 19.050598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334339, 36.343700, 19.208153>,  <37.512680, 36.473541, 19.302685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334339, 36.343700, 19.208153>,  <37.037106, 36.127300, 19.050598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334339, 36.343700, 19.208153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127217, 0.463659, -0.876833,
		-0.656995, 0.701669, 0.275713,
		0.743083, 0.541000, 0.393886,
		37.557262, 36.506001, 19.326319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074951, 36.755127, 18.608967>,  <37.037106, 36.127300, 19.050598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074951, 36.755127, 18.608967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410263, 36.806110, 18.821022>,  <37.611450, 36.836700, 18.948256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410263, 36.806110, 18.821022>,  <37.074951, 36.755127, 18.608967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410263, 36.806110, 18.821022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329050, 0.657020, -0.678270,
		-0.434762, 0.743020, 0.508825,
		0.838277, 0.127457, 0.530138,
		37.661747, 36.844349, 18.980064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147259, 37.399483, 18.543032>,  <37.074951, 36.755127, 18.608967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147259, 37.399483, 18.543032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498798, 37.217907, 18.601774>,  <37.709721, 37.108963, 18.637020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498798, 37.217907, 18.601774>,  <37.147259, 37.399483, 18.543032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498798, 37.217907, 18.601774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386751, 0.497591, -0.776419,
		0.279370, 0.739153, 0.612867,
		0.878849, -0.453935, 0.146856,
		37.762455, 37.081726, 18.645830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629993, 37.903049, 18.488247>,  <37.147259, 37.399483, 18.543032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629993, 37.903049, 18.488247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842182, 37.570843, 18.420328>,  <37.969498, 37.371517, 18.379578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842182, 37.570843, 18.420328>,  <37.629993, 37.903049, 18.488247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842182, 37.570843, 18.420328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593101, 0.506742, -0.625655,
		0.605663, 0.231187, 0.761397,
		0.530475, -0.830521, -0.169797,
		38.001324, 37.321686, 18.369389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378433, 38.070316, 18.609335>,  <37.629993, 37.903049, 18.488247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378433, 38.070316, 18.609335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349415, 37.773232, 18.343069>,  <38.332005, 37.594978, 18.183310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349415, 37.773232, 18.343069>,  <38.378433, 38.070316, 18.609335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349415, 37.773232, 18.343069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582763, 0.510070, -0.632625,
		0.809397, -0.433822, 0.395822,
		-0.072550, -0.742715, -0.665665,
		38.327648, 37.550415, 18.143370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984238, 38.018341, 18.186604>,  <38.378433, 38.070316, 18.609335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984238, 38.018341, 18.186604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777409, 37.775238, 17.945518>,  <38.653313, 37.629375, 17.800867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777409, 37.775238, 17.945518>,  <38.984238, 38.018341, 18.186604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777409, 37.775238, 17.945518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536281, 0.318779, -0.781526,
		0.667114, -0.727328, 0.161099,
		-0.517070, -0.607761, -0.602714,
		38.622288, 37.592911, 17.764704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372101, 37.514416, 17.738646>,  <38.984238, 38.018341, 18.186604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372101, 37.514416, 17.738646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035278, 37.548405, 17.525581>,  <38.833187, 37.568798, 17.397743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035278, 37.548405, 17.525581>,  <39.372101, 37.514416, 17.738646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035278, 37.548405, 17.525581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512587, 0.433505, -0.741167,
		0.167931, -0.897136, -0.408590,
		-0.842053, 0.084973, -0.532660,
		38.782661, 37.573895, 17.365784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648781, 37.267040, 17.141155>,  <39.372101, 37.514416, 17.738646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648781, 37.267040, 17.141155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322224, 37.486797, 17.069977>,  <39.126289, 37.618652, 17.027269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322224, 37.486797, 17.069977>,  <39.648781, 37.267040, 17.141155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322224, 37.486797, 17.069977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370535, 0.261993, -0.891102,
		-0.442943, -0.793429, -0.417459,
		-0.816397, 0.549391, -0.177946,
		39.077305, 37.651615, 17.016594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611370, 37.201675, 16.435482>,  <39.648781, 37.267040, 17.141155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611370, 37.201675, 16.435482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373955, 37.511890, 16.521500>,  <39.231506, 37.698021, 16.573111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373955, 37.511890, 16.521500>,  <39.611370, 37.201675, 16.435482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373955, 37.511890, 16.521500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224281, 0.416007, -0.881269,
		-0.772921, -0.474839, -0.420857,
		-0.593541, 0.775542, 0.215043,
		39.195892, 37.744553, 16.586012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061665, 37.276081, 15.903380>,  <39.611370, 37.201675, 16.435482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061665, 37.276081, 15.903380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125633, 37.638077, 16.061073>,  <39.164013, 37.855274, 16.155689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125633, 37.638077, 16.061073>,  <39.061665, 37.276081, 15.903380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125633, 37.638077, 16.061073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134628, 0.375646, -0.916932,
		-0.977907, 0.199708, -0.061765,
		0.159917, 0.904990, 0.394233,
		39.173607, 37.909573, 16.179344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653759, 37.582764, 15.434854>,  <39.061665, 37.276081, 15.903380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653759, 37.582764, 15.434854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879143, 37.848190, 15.631703>,  <39.014374, 38.007446, 15.749813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879143, 37.848190, 15.631703>,  <38.653759, 37.582764, 15.434854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879143, 37.848190, 15.631703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030418, 0.578622, -0.815028,
		-0.825583, 0.474205, 0.305847,
		0.563460, 0.663570, 0.492125,
		39.048180, 38.047260, 15.779341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328465, 38.217991, 15.476006>,  <38.653759, 37.582764, 15.434854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328465, 38.217991, 15.476006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723610, 38.280090, 15.478063>,  <38.960697, 38.317348, 15.479297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723610, 38.280090, 15.478063>,  <38.328465, 38.217991, 15.476006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723610, 38.280090, 15.478063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078381, 0.526791, -0.846373,
		-0.134106, 0.835697, 0.532565,
		0.987862, 0.155246, 0.005143,
		39.019970, 38.326664, 15.479606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620079, 39.027634, 15.387427>,  <38.328465, 38.217991, 15.476006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620079, 39.027634, 15.387427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912296, 38.784733, 15.262495>,  <39.087627, 38.638992, 15.187535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912296, 38.784733, 15.262495>,  <38.620079, 39.027634, 15.387427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912296, 38.784733, 15.262495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177173, 0.610279, -0.772120,
		0.659477, 0.508733, 0.553426,
		0.730547, -0.607248, -0.312331,
		39.131462, 38.602558, 15.168796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151558, 39.453453, 15.317018>,  <38.620079, 39.027634, 15.387427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151558, 39.453453, 15.317018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155579, 39.162605, 15.042444>,  <39.157990, 38.988094, 14.877700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155579, 39.162605, 15.042444>,  <39.151558, 39.453453, 15.317018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155579, 39.162605, 15.042444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119828, 0.682398, -0.721092,
		0.992744, -0.075005, 0.093990,
		0.010053, -0.727123, -0.686434,
		39.158596, 38.944469, 14.836514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449844, 39.494854, 14.530666>,  <39.151558, 39.453453, 15.317018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449844, 39.494854, 14.530666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748722, 39.734066, 14.414689>,  <39.928047, 39.877594, 14.345103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748722, 39.734066, 14.414689>,  <39.449844, 39.494854, 14.530666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748722, 39.734066, 14.414689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204540, 0.208166, 0.956467,
		0.632349, -0.773971, 0.033220,
		0.747193, 0.598026, -0.289942,
		39.972881, 39.913475, 14.327706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099895, 39.296177, 14.808779>,  <39.449844, 39.494854, 14.530666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099895, 39.296177, 14.808779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132446, 39.689228, 14.742064>,  <40.151978, 39.925060, 14.702035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132446, 39.689228, 14.742064>,  <40.099895, 39.296177, 14.808779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132446, 39.689228, 14.742064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125220, 0.155936, 0.979798,
		0.988786, -0.100622, -0.110355,
		0.081381, 0.982629, -0.166788,
		40.156860, 39.984016, 14.692027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704891, 39.580193, 15.119062>,  <40.099895, 39.296177, 14.808779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704891, 39.580193, 15.119062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404381, 39.843239, 15.141425>,  <40.224075, 40.001068, 15.154842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404381, 39.843239, 15.141425>,  <40.704891, 39.580193, 15.119062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404381, 39.843239, 15.141425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130085, 0.064500, 0.989403,
		0.647042, 0.750586, -0.134003,
		-0.751275, 0.657617, 0.055906,
		40.178997, 40.040524, 15.158196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107204, 39.641666, 15.661972>,  <40.704891, 39.580193, 15.119062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107204, 39.641666, 15.661972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496693, 39.732578, 15.656245>,  <41.730385, 39.787125, 15.652809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496693, 39.732578, 15.656245>,  <41.107204, 39.641666, 15.661972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496693, 39.732578, 15.656245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124994, 0.585949, 0.800650,
		0.190359, -0.777823, 0.598962,
		0.973725, 0.227278, -0.014318,
		41.788811, 39.800762, 15.651950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196728, 39.059639, 16.159046>,  <41.107204, 39.641666, 15.661972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196728, 39.059639, 16.159046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179020, 39.449959, 16.244694>,  <41.168396, 39.684151, 16.296083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179020, 39.449959, 16.244694>,  <41.196728, 39.059639, 16.159046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179020, 39.449959, 16.244694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242390, -0.218417, 0.945273,
		0.969168, -0.010056, 0.246194,
		-0.044267, 0.975804, 0.214121,
		41.165741, 39.742699, 16.308929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439175, 39.109386, 16.862713>,  <41.196728, 39.059639, 16.159046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439175, 39.109386, 16.862713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221771, 39.437229, 16.790220>,  <41.091328, 39.633934, 16.746725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221771, 39.437229, 16.790220>,  <41.439175, 39.109386, 16.862713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221771, 39.437229, 16.790220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241133, 0.054355, 0.968969,
		0.804024, 0.570343, 0.168092,
		-0.543508, 0.819606, -0.181231,
		41.058720, 39.683109, 16.735851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690559, 39.646137, 17.348593>,  <41.439175, 39.109386, 16.862713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690559, 39.646137, 17.348593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303013, 39.681133, 17.255951>,  <41.070484, 39.702129, 17.200367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303013, 39.681133, 17.255951>,  <41.690559, 39.646137, 17.348593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303013, 39.681133, 17.255951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229711, 0.031246, 0.972757,
		0.092340, 0.995676, -0.010177,
		-0.968868, 0.087487, -0.231603,
		41.012352, 39.707378, 17.186470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387012, 40.144569, 17.792332>,  <41.690559, 39.646137, 17.348593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387012, 40.144569, 17.792332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074635, 39.931854, 17.661285>,  <40.887207, 39.804226, 17.582657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074635, 39.931854, 17.661285>,  <41.387012, 40.144569, 17.792332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074635, 39.931854, 17.661285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338923, -0.079802, 0.937424,
		-0.524656, 0.843109, -0.117915,
		-0.780940, -0.531789, -0.327617,
		40.840351, 39.772316, 17.563000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913143, 40.383446, 18.088568>,  <41.387012, 40.144569, 17.792332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913143, 40.383446, 18.088568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759052, 40.033909, 17.969908>,  <40.666595, 39.824188, 17.898712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759052, 40.033909, 17.969908>,  <40.913143, 40.383446, 18.088568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759052, 40.033909, 17.969908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501867, -0.071383, 0.861995,
		-0.774421, 0.480944, -0.411053,
		-0.385229, -0.873841, -0.296650,
		40.643482, 39.771755, 17.880913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262947, 40.506363, 18.181149>,  <40.913143, 40.383446, 18.088568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262947, 40.506363, 18.181149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311775, 40.109585, 18.194687>,  <40.341072, 39.871517, 18.202810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311775, 40.109585, 18.194687>,  <40.262947, 40.506363, 18.181149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311775, 40.109585, 18.194687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575387, -0.042938, 0.816754,
		-0.808721, -0.119175, -0.575993,
		0.122069, -0.991944, 0.033847,
		40.348396, 39.812000, 18.204842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637653, 40.201679, 18.206356>,  <40.262947, 40.506363, 18.181149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637653, 40.201679, 18.206356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875587, 39.930019, 18.378366>,  <40.018349, 39.767025, 18.481573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875587, 39.930019, 18.378366>,  <39.637653, 40.201679, 18.206356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875587, 39.930019, 18.378366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633023, -0.066059, 0.771309,
		-0.495426, -0.731022, -0.469211,
		0.594840, -0.679148, 0.430027,
		40.054039, 39.726276, 18.507374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176540, 39.607510, 18.493464>,  <39.637653, 40.201679, 18.206356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176540, 39.607510, 18.493464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531895, 39.594482, 18.676641>,  <39.745106, 39.586666, 18.786549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531895, 39.594482, 18.676641>,  <39.176540, 39.607510, 18.493464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531895, 39.594482, 18.676641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459057, -0.076706, 0.885089,
		0.006302, -0.996522, -0.083094,
		0.888384, -0.032568, 0.457944,
		39.798409, 39.584713, 18.814024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121986, 39.018944, 18.967106>,  <39.176540, 39.607510, 18.493464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121986, 39.018944, 18.967106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444191, 39.201279, 19.118565>,  <39.637512, 39.310680, 19.209440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444191, 39.201279, 19.118565>,  <39.121986, 39.018944, 18.967106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444191, 39.201279, 19.118565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362704, -0.126048, 0.923340,
		0.468617, -0.881094, 0.063800,
		0.805508, 0.455834, 0.378645,
		39.685844, 39.338028, 19.232159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620468, 38.549854, 19.483227>,  <39.121986, 39.018944, 18.967106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620468, 38.549854, 19.483227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709984, 38.927361, 19.580570>,  <39.763695, 39.153866, 19.638975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709984, 38.927361, 19.580570>,  <39.620468, 38.549854, 19.483227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709984, 38.927361, 19.580570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184080, -0.204267, 0.961452,
		0.957096, -0.259960, 0.128016,
		0.223790, 0.943767, 0.243357,
		39.777122, 39.210491, 19.653578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950428, 38.425224, 20.175592>,  <39.620468, 38.549854, 19.483227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950428, 38.425224, 20.175592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846348, 38.807190, 20.118402>,  <39.783901, 39.036369, 20.084087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846348, 38.807190, 20.118402>,  <39.950428, 38.425224, 20.175592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846348, 38.807190, 20.118402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376411, 0.036043, 0.925751,
		0.889162, 0.294700, 0.350061,
		-0.260202, 0.954910, -0.142976,
		39.768288, 39.093662, 20.075510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306145, 38.814865, 20.635752>,  <39.950428, 38.425224, 20.175592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306145, 38.814865, 20.635752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995228, 39.049660, 20.545179>,  <39.808678, 39.190536, 20.490835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995228, 39.049660, 20.545179>,  <40.306145, 38.814865, 20.635752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995228, 39.049660, 20.545179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392363, -0.170934, 0.903788,
		0.491802, 0.791349, 0.363176,
		-0.777291, 0.586982, -0.226431,
		39.762039, 39.225754, 20.477251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127911, 38.977509, 21.338860>,  <40.306145, 38.814865, 20.635752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127911, 38.977509, 21.338860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817471, 39.079052, 21.107956>,  <39.631207, 39.139977, 20.969414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817471, 39.079052, 21.107956>,  <40.127911, 38.977509, 21.338860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817471, 39.079052, 21.107956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630534, -0.297776, 0.716769,
		0.010065, 0.920264, 0.391170,
		-0.776097, 0.253860, -0.577260,
		39.584641, 39.155209, 20.934778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740257, 39.296242, 21.771399>,  <40.127911, 38.977509, 21.338860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740257, 39.296242, 21.771399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487896, 39.176754, 21.484978>,  <39.336479, 39.105061, 21.313126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487896, 39.176754, 21.484978>,  <39.740257, 39.296242, 21.771399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487896, 39.176754, 21.484978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670805, -0.253721, 0.696883,
		-0.389847, 0.919997, -0.040306,
		-0.630904, -0.298715, -0.716051,
		39.298626, 39.087139, 21.270163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211502, 39.556198, 22.010542>,  <39.740257, 39.296242, 21.771399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211502, 39.556198, 22.010542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079540, 39.288189, 21.744541>,  <39.000362, 39.127384, 21.584940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079540, 39.288189, 21.744541>,  <39.211502, 39.556198, 22.010542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079540, 39.288189, 21.744541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692674, -0.306797, 0.652747,
		-0.641377, 0.675977, -0.362893,
		-0.329907, -0.670024, -0.665003,
		38.980568, 39.087181, 21.545040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504566, 39.600475, 22.039339>,  <39.211502, 39.556198, 22.010542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504566, 39.600475, 22.039339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611031, 39.240273, 21.901793>,  <38.674911, 39.024151, 21.819263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611031, 39.240273, 21.901793>,  <38.504566, 39.600475, 22.039339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611031, 39.240273, 21.901793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742527, -0.419019, 0.522567,
		-0.614662, 0.116242, -0.780178,
		0.266165, -0.900506, -0.343868,
		38.690880, 38.970119, 21.798632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927036, 39.277191, 21.767956>,  <38.504566, 39.600475, 22.039339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927036, 39.277191, 21.767956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166477, 38.959213, 21.807426>,  <38.310143, 38.768425, 21.831108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166477, 38.959213, 21.807426>,  <37.927036, 39.277191, 21.767956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166477, 38.959213, 21.807426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645709, -0.405949, 0.646734,
		-0.474062, -0.450851, -0.756306,
		0.598602, -0.794946, 0.098674,
		38.346058, 38.720730, 21.837030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497711, 38.663475, 21.753456>,  <37.927036, 39.277191, 21.767956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497711, 38.663475, 21.753456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825775, 38.558899, 21.957022>,  <38.022614, 38.496151, 22.079161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825775, 38.558899, 21.957022>,  <37.497711, 38.663475, 21.753456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825775, 38.558899, 21.957022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571274, -0.325251, 0.753564,
		-0.031490, -0.908768, -0.416113,
		0.820155, -0.261444, 0.508913,
		38.071823, 38.480465, 22.109695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240868, 38.182480, 22.128847>,  <37.497711, 38.663475, 21.753456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240868, 38.182480, 22.128847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588905, 38.244675, 22.315933>,  <37.797729, 38.281990, 22.428185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588905, 38.244675, 22.315933>,  <37.240868, 38.182480, 22.128847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588905, 38.244675, 22.315933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395476, -0.346116, 0.850766,
		0.294163, -0.925218, -0.239665,
		0.870096, 0.155482, 0.467716,
		37.849934, 38.291321, 22.456247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464161, 37.547916, 22.548897>,  <37.240868, 38.182480, 22.128847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464161, 37.547916, 22.548897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680664, 37.840565, 22.714676>,  <37.810566, 38.016155, 22.814144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680664, 37.840565, 22.714676>,  <37.464161, 37.547916, 22.548897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680664, 37.840565, 22.714676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132933, -0.412238, 0.901326,
		0.830281, -0.542946, -0.125872,
		0.541260, 0.731621, 0.414449,
		37.843040, 38.060051, 22.839010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885937, 37.293518, 23.079815>,  <37.464161, 37.547916, 22.548897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885937, 37.293518, 23.079815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910770, 37.675198, 23.196877>,  <37.925671, 37.904205, 23.267113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910770, 37.675198, 23.196877>,  <37.885937, 37.293518, 23.079815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910770, 37.675198, 23.196877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260736, -0.267530, 0.927601,
		0.963412, -0.133891, 0.232186,
		0.062081, 0.954202, 0.292652,
		37.929394, 37.961456, 23.284672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179420, 37.304241, 23.734938>,  <37.885937, 37.293518, 23.079815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179420, 37.304241, 23.734938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980461, 37.649769, 23.702896>,  <37.861084, 37.857086, 23.683672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980461, 37.649769, 23.702896>,  <38.179420, 37.304241, 23.734938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980461, 37.649769, 23.702896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386811, -0.138185, 0.911747,
		0.776512, 0.484488, 0.402866,
		-0.497400, 0.863815, -0.080103,
		37.831242, 37.908913, 23.678865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415440, 37.759205, 24.287626>,  <38.179420, 37.304241, 23.734938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415440, 37.759205, 24.287626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044796, 37.882915, 24.202082>,  <37.822411, 37.957142, 24.150755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044796, 37.882915, 24.202082>,  <38.415440, 37.759205, 24.287626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044796, 37.882915, 24.202082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146094, 0.227955, 0.962649,
		0.346475, 0.923247, -0.166042,
		-0.926613, 0.309276, -0.213861,
		37.766811, 37.975697, 24.137924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331451, 38.405594, 24.714470>,  <38.415440, 37.759205, 24.287626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331451, 38.405594, 24.714470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973259, 38.264595, 24.605757>,  <37.758343, 38.179996, 24.540529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973259, 38.264595, 24.605757>,  <38.331451, 38.405594, 24.714470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973259, 38.264595, 24.605757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317680, 0.078460, 0.944946,
		-0.311763, 0.932519, -0.182239,
		-0.895479, -0.352493, -0.271782,
		37.704617, 38.158848, 24.524221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863422, 38.949909, 24.946012>,  <38.331451, 38.405594, 24.714470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863422, 38.949909, 24.946012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671074, 38.606285, 24.875839>,  <37.555664, 38.400112, 24.833735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671074, 38.606285, 24.875839>,  <37.863422, 38.949909, 24.946012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671074, 38.606285, 24.875839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331663, -0.007000, 0.943372,
		-0.811642, 0.511826, -0.281552,
		-0.480871, -0.859061, -0.175435,
		37.526814, 38.348568, 24.823208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406116, 39.001511, 25.453806>,  <37.863422, 38.949909, 24.946012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406116, 39.001511, 25.453806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368587, 38.619217, 25.342253>,  <37.346069, 38.389843, 25.275320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368587, 38.619217, 25.342253>,  <37.406116, 39.001511, 25.453806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368587, 38.619217, 25.342253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368846, -0.226819, 0.901391,
		-0.924743, 0.187435, -0.331237,
		-0.093822, -0.955731, -0.278884,
		37.340443, 38.332497, 25.258587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707771, 38.791809, 25.582090>,  <37.406116, 39.001511, 25.453806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707771, 38.791809, 25.582090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920948, 38.453392, 25.587469>,  <37.048855, 38.250343, 25.590696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920948, 38.453392, 25.587469>,  <36.707771, 38.791809, 25.582090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920948, 38.453392, 25.587469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357796, -0.210929, 0.909665,
		-0.766781, -0.489611, -0.415124,
		0.532944, -0.846043, 0.013445,
		37.080830, 38.199577, 25.591503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268238, 38.353233, 25.870024>,  <36.707771, 38.791809, 25.582090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268238, 38.353233, 25.870024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614605, 38.158787, 25.917133>,  <36.822426, 38.042118, 25.945398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614605, 38.158787, 25.917133>,  <36.268238, 38.353233, 25.870024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614605, 38.158787, 25.917133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206303, -0.132611, 0.969460,
		-0.455653, -0.863773, -0.215119,
		0.865921, -0.486117, 0.117774,
		36.874382, 38.012951, 25.952465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226112, 37.541054, 26.040010>,  <36.268238, 38.353233, 25.870024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226112, 37.541054, 26.040010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579689, 37.685135, 26.159269>,  <36.791836, 37.771584, 26.230825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579689, 37.685135, 26.159269>,  <36.226112, 37.541054, 26.040010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579689, 37.685135, 26.159269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196276, -0.292900, 0.935781,
		0.424401, -0.885699, -0.188208,
		0.883946, 0.360205, 0.298148,
		36.844872, 37.793198, 26.248714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700871, 36.878296, 26.393148>,  <36.226112, 37.541054, 26.040010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700871, 36.878296, 26.393148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867527, 37.220322, 26.516617>,  <36.967522, 37.425537, 26.590698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867527, 37.220322, 26.516617>,  <36.700871, 36.878296, 26.393148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867527, 37.220322, 26.516617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037464, -0.323109, 0.945620,
		0.908300, -0.405546, -0.102586,
		0.416639, 0.855063, 0.308673,
		36.992519, 37.476841, 26.609219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236034, 36.762074, 26.924171>,  <36.700871, 36.878296, 26.393148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236034, 36.762074, 26.924171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186184, 37.150597, 27.005192>,  <37.156273, 37.383709, 27.053804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186184, 37.150597, 27.005192>,  <37.236034, 36.762074, 26.924171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186184, 37.150597, 27.005192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143979, -0.219687, 0.964887,
		0.981702, 0.091089, 0.167227,
		-0.124628, 0.971308, 0.202553,
		37.148796, 37.441990, 27.065958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729130, 37.009312, 27.506054>,  <37.236034, 36.762074, 26.924171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729130, 37.009312, 27.506054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426689, 37.270927, 27.496687>,  <37.245224, 37.427895, 27.491068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426689, 37.270927, 27.496687>,  <37.729130, 37.009312, 27.506054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426689, 37.270927, 27.496687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136397, -0.122488, 0.983053,
		0.640084, 0.746481, 0.181822,
		-0.756101, 0.654036, -0.023415,
		37.199860, 37.467136, 27.489662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793945, 37.363831, 28.107395>,  <37.729130, 37.009312, 27.506054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793945, 37.363831, 28.107395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417625, 37.473598, 28.027803>,  <37.191833, 37.539459, 27.980049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417625, 37.473598, 28.027803>,  <37.793945, 37.363831, 28.107395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417625, 37.473598, 28.027803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261510, -0.214114, 0.941152,
		0.215668, 0.937469, 0.273202,
		-0.940798, 0.274421, -0.198980,
		37.135387, 37.555923, 27.968109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560959, 37.749035, 28.681351>,  <37.793945, 37.363831, 28.107395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560959, 37.749035, 28.681351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227478, 37.633049, 28.493366>,  <37.027390, 37.563457, 28.380575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227478, 37.633049, 28.493366>,  <37.560959, 37.749035, 28.681351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227478, 37.633049, 28.493366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321232, -0.437575, 0.839844,
		-0.449165, 0.851146, 0.271663,
		-0.833703, -0.289961, -0.469959,
		36.977367, 37.546062, 28.352379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041458, 37.795048, 29.166086>,  <37.560959, 37.749035, 28.681351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041458, 37.795048, 29.166086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893452, 37.539776, 28.896030>,  <36.804649, 37.386612, 28.733997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893452, 37.539776, 28.896030>,  <37.041458, 37.795048, 29.166086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893452, 37.539776, 28.896030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431945, -0.525214, 0.733194,
		-0.822503, 0.562918, -0.081320,
		-0.370017, -0.638180, -0.675140,
		36.782448, 37.348320, 28.693489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251640, 37.770977, 29.290447>,  <37.041458, 37.795048, 29.166086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251640, 37.770977, 29.290447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351543, 37.425194, 29.115938>,  <36.411488, 37.217724, 29.011232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351543, 37.425194, 29.115938>,  <36.251640, 37.770977, 29.290447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351543, 37.425194, 29.115938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492805, -0.501318, 0.711213,
		-0.833525, 0.037366, -0.551217,
		0.249760, -0.864456, -0.436275,
		36.426472, 37.165855, 28.985056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787365, 37.394386, 29.597132>,  <36.251640, 37.770977, 29.290447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787365, 37.394386, 29.597132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996098, 37.112228, 29.405256>,  <36.121338, 36.942932, 29.290131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996098, 37.112228, 29.405256>,  <35.787365, 37.394386, 29.597132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996098, 37.112228, 29.405256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449864, -0.705338, 0.547833,
		-0.724784, -0.070083, -0.685403,
		0.521834, -0.705399, -0.479690,
		36.152649, 36.900608, 29.261349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311420, 36.757622, 29.510845>,  <35.787365, 37.394386, 29.597132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311420, 36.757622, 29.510845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694798, 36.643864, 29.519869>,  <35.924824, 36.575611, 29.525282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694798, 36.643864, 29.519869>,  <35.311420, 36.757622, 29.510845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694798, 36.643864, 29.519869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243808, -0.775471, 0.582411,
		-0.148141, -0.563707, -0.812582,
		0.958442, -0.284392, 0.022557,
		35.982330, 36.558544, 29.526636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239697, 36.013481, 29.475471>,  <35.311420, 36.757622, 29.510845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239697, 36.013481, 29.475471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603909, 36.108776, 29.610636>,  <35.822433, 36.165951, 29.691734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603909, 36.108776, 29.610636>,  <35.239697, 36.013481, 29.475471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603909, 36.108776, 29.610636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032017, -0.774218, 0.632109,
		0.412208, -0.586371, -0.697318,
		0.910527, 0.238235, 0.337913,
		35.877068, 36.180248, 29.712009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683907, 35.402264, 29.547455>,  <35.239697, 36.013481, 29.475471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683907, 35.402264, 29.547455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806396, 35.674202, 29.813997>,  <35.879890, 35.837364, 29.973923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806396, 35.674202, 29.813997>,  <35.683907, 35.402264, 29.547455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806396, 35.674202, 29.813997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086855, -0.677112, 0.730736,
		0.947990, -0.281644, -0.148298,
		0.306222, 0.679850, 0.666357,
		35.898262, 35.878159, 30.013905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140808, 35.067921, 29.927723>,  <35.683907, 35.402264, 29.547455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140808, 35.067921, 29.927723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069344, 35.382309, 30.164478>,  <36.026466, 35.570942, 30.306532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069344, 35.382309, 30.164478>,  <36.140808, 35.067921, 29.927723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069344, 35.382309, 30.164478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062689, -0.609437, 0.790352,
		0.981912, 0.104098, 0.158153,
		-0.178659, 0.785971, 0.591887,
		36.015747, 35.618099, 30.342045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359249, 34.873680, 30.540112>,  <36.140808, 35.067921, 29.927723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359249, 34.873680, 30.540112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158779, 35.200665, 30.653652>,  <36.038498, 35.396858, 30.721777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158779, 35.200665, 30.653652>,  <36.359249, 34.873680, 30.540112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158779, 35.200665, 30.653652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258749, -0.454581, 0.852294,
		0.825755, 0.353703, 0.439344,
		-0.501176, 0.817466, 0.283852,
		36.008427, 35.445904, 30.738808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880753, 34.936695, 31.043036>,  <36.359249, 34.873680, 30.540112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880753, 34.936695, 31.043036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235928, 34.781219, 31.141415>,  <37.449032, 34.687935, 31.200441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235928, 34.781219, 31.141415>,  <36.880753, 34.936695, 31.043036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235928, 34.781219, 31.141415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444985, 0.590535, -0.673243,
		0.116443, 0.707240, 0.697318,
		0.887935, -0.388691, 0.245948,
		37.502308, 34.664612, 31.215199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363529, 35.508820, 31.160685>,  <36.880753, 34.936695, 31.043036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363529, 35.508820, 31.160685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563374, 35.176208, 31.063568>,  <37.683281, 34.976643, 31.005299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563374, 35.176208, 31.063568>,  <37.363529, 35.508820, 31.160685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563374, 35.176208, 31.063568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507233, 0.508024, -0.696151,
		0.702214, 0.224653, 0.675593,
		0.499610, -0.831530, -0.242790,
		37.713257, 34.926750, 30.990730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121902, 35.538097, 31.273344>,  <37.363529, 35.508820, 31.160685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121902, 35.538097, 31.273344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047283, 35.263447, 30.992277>,  <38.002514, 35.098656, 30.823637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047283, 35.263447, 30.992277>,  <38.121902, 35.538097, 31.273344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047283, 35.263447, 30.992277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668097, 0.435726, -0.603150,
		0.720311, -0.581964, 0.377453,
		-0.186545, -0.686630, -0.702666,
		37.991318, 35.057457, 30.781477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743488, 35.501892, 30.926971>,  <38.121902, 35.538097, 31.273344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743488, 35.501892, 30.926971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502544, 35.336464, 30.653879>,  <38.357979, 35.237209, 30.490023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502544, 35.336464, 30.653879>,  <38.743488, 35.501892, 30.926971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502544, 35.336464, 30.653879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674620, 0.193427, -0.712372,
		0.426672, -0.889690, 0.162487,
		-0.602361, -0.413566, -0.682733,
		38.321835, 35.212395, 30.449059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191723, 35.266636, 30.473789>,  <38.743488, 35.501892, 30.926971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191723, 35.266636, 30.473789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849236, 35.259449, 30.267269>,  <38.643742, 35.255135, 30.143356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849236, 35.259449, 30.267269>,  <39.191723, 35.266636, 30.473789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849236, 35.259449, 30.267269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513937, 0.071979, -0.854803,
		0.052515, -0.997244, -0.052399,
		-0.856219, -0.017960, -0.516301,
		38.592369, 35.254059, 30.112379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323887, 34.858807, 29.950800>,  <39.191723, 35.266636, 30.473789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323887, 34.858807, 29.950800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000599, 35.050446, 29.813839>,  <38.806625, 35.165428, 29.731663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000599, 35.050446, 29.813839>,  <39.323887, 34.858807, 29.950800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000599, 35.050446, 29.813839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424876, 0.071826, -0.902397,
		-0.407747, -0.874816, -0.261610,
		-0.808222, 0.479102, -0.342402,
		38.758133, 35.194176, 29.711119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152397, 34.549828, 29.304485>,  <39.323887, 34.858807, 29.950800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152397, 34.549828, 29.304485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964001, 34.901978, 29.282219>,  <38.850964, 35.113270, 29.268860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964001, 34.901978, 29.282219>,  <39.152397, 34.549828, 29.304485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964001, 34.901978, 29.282219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328127, 0.116272, -0.937451,
		-0.818840, -0.459796, -0.343640,
		-0.470992, 0.880379, -0.055664,
		38.822704, 35.166092, 29.265520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875992, 34.643288, 28.622810>,  <39.152397, 34.549828, 29.304485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875992, 34.643288, 28.622810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928047, 35.001965, 28.792046>,  <38.959278, 35.217171, 28.893587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928047, 35.001965, 28.792046>,  <38.875992, 34.643288, 28.622810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928047, 35.001965, 28.792046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497336, 0.310116, -0.810238,
		-0.857742, 0.315857, -0.405602,
		0.130136, 0.896695, 0.423087,
		38.967087, 35.270973, 28.918972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760456, 35.041096, 28.039984>,  <38.875992, 34.643288, 28.622810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760456, 35.041096, 28.039984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919598, 35.283657, 28.315371>,  <39.015083, 35.429195, 28.480602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919598, 35.283657, 28.315371>,  <38.760456, 35.041096, 28.039984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919598, 35.283657, 28.315371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514182, 0.474107, -0.714730,
		-0.759822, 0.638356, -0.123176,
		0.397854, 0.606402, 0.688468,
		39.038952, 35.465576, 28.521912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714539, 35.636646, 27.788881>,  <38.760456, 35.041096, 28.039984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714539, 35.636646, 27.788881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015350, 35.689770, 28.047127>,  <39.195835, 35.721645, 28.202074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015350, 35.689770, 28.047127>,  <38.714539, 35.636646, 27.788881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015350, 35.689770, 28.047127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490144, 0.542215, -0.682468,
		-0.440701, 0.829678, 0.342663,
		0.752025, 0.132810, 0.645616,
		39.240959, 35.729614, 28.240812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830753, 36.399055, 27.849272>,  <38.714539, 35.636646, 27.788881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830753, 36.399055, 27.849272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167412, 36.217812, 27.966801>,  <39.369408, 36.109066, 28.037317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167412, 36.217812, 27.966801>,  <38.830753, 36.399055, 27.849272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167412, 36.217812, 27.966801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509280, 0.484963, -0.710946,
		0.179643, 0.748000, 0.638925,
		0.841643, -0.453108, 0.293821,
		39.419903, 36.081879, 28.054947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180458, 36.929970, 27.924860>,  <38.830753, 36.399055, 27.849272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180458, 36.929970, 27.924860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440346, 36.627296, 27.895754>,  <39.596279, 36.445694, 27.878290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440346, 36.627296, 27.895754>,  <39.180458, 36.929970, 27.924860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440346, 36.627296, 27.895754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463779, 0.470418, -0.750744,
		0.602302, 0.454030, 0.656574,
		0.649724, -0.756680, -0.072764,
		39.635262, 36.400291, 27.873924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809868, 37.243687, 27.955626>,  <39.180458, 36.929970, 27.924860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809868, 37.243687, 27.955626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878010, 36.893898, 27.773954>,  <39.918896, 36.684025, 27.664951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878010, 36.893898, 27.773954>,  <39.809868, 37.243687, 27.955626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878010, 36.893898, 27.773954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228764, 0.483421, -0.844968,
		0.958460, 0.040047, 0.282402,
		0.170357, -0.874472, -0.454178,
		39.929115, 36.631557, 27.637701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413242, 37.308754, 27.394445>,  <39.809868, 37.243687, 27.955626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413242, 37.308754, 27.394445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206455, 36.992889, 27.262276>,  <40.082382, 36.803371, 27.182974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206455, 36.992889, 27.262276>,  <40.413242, 37.308754, 27.394445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206455, 36.992889, 27.262276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182408, 0.275520, -0.943831,
		0.836344, -0.548202, 0.001606,
		-0.516968, -0.789660, -0.330426,
		40.051365, 36.755993, 27.163147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774624, 37.073338, 26.898104>,  <40.413242, 37.308754, 27.394445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774624, 37.073338, 26.898104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448399, 36.857399, 26.814758>,  <40.252663, 36.727837, 26.764751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448399, 36.857399, 26.814758>,  <40.774624, 37.073338, 26.898104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448399, 36.857399, 26.814758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148483, 0.152782, -0.977042,
		0.559291, -0.827779, -0.044445,
		-0.815565, -0.539851, -0.208361,
		40.203728, 36.695442, 26.752251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879330, 36.559410, 26.440966>,  <40.774624, 37.073338, 26.898104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879330, 36.559410, 26.440966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486763, 36.604889, 26.379128>,  <40.251225, 36.632175, 26.342026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486763, 36.604889, 26.379128>,  <40.879330, 36.559410, 26.440966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486763, 36.604889, 26.379128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162899, 0.067754, -0.984314,
		-0.101436, -0.991203, -0.085015,
		-0.981414, 0.113694, -0.154593,
		40.192337, 36.638996, 26.332750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686394, 36.044716, 25.928566>,  <40.879330, 36.559410, 26.440966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686394, 36.044716, 25.928566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397392, 36.321068, 25.938959>,  <40.223991, 36.486877, 25.945196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397392, 36.321068, 25.938959>,  <40.686394, 36.044716, 25.928566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397392, 36.321068, 25.938959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160413, -0.130961, -0.978323,
		-0.672502, -0.711009, 0.205446,
		-0.722502, 0.690880, 0.025984,
		40.180641, 36.528332, 25.946754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147217, 35.693287, 25.555956>,  <40.686394, 36.044716, 25.928566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147217, 35.693287, 25.555956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038746, 36.078148, 25.545191>,  <39.973663, 36.309063, 25.538733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038746, 36.078148, 25.545191>,  <40.147217, 35.693287, 25.555956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038746, 36.078148, 25.545191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172014, -0.075954, -0.982162,
		-0.947033, -0.261715, 0.186101,
		-0.271181, 0.962152, -0.026912,
		39.957390, 36.366795, 25.537117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612457, 35.748962, 25.095772>,  <40.147217, 35.693287, 25.555956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612457, 35.748962, 25.095772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741154, 36.127678, 25.092192>,  <39.818371, 36.354908, 25.090044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741154, 36.127678, 25.092192>,  <39.612457, 35.748962, 25.095772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741154, 36.127678, 25.092192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211057, 0.062501, -0.975473,
		-0.923005, 0.315737, 0.219934,
		0.321739, 0.946786, -0.008950,
		39.837677, 36.411713, 25.089506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062031, 36.266521, 24.766714>,  <39.612457, 35.748962, 25.095772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062031, 36.266521, 24.766714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418037, 36.445557, 24.731976>,  <39.631641, 36.552979, 24.711132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418037, 36.445557, 24.731976>,  <39.062031, 36.266521, 24.766714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418037, 36.445557, 24.731976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214731, 0.243456, -0.945843,
		-0.402205, 0.860461, 0.312790,
		0.890012, 0.447588, -0.086849,
		39.685040, 36.579834, 24.705921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900070, 36.835949, 24.307278>,  <39.062031, 36.266521, 24.766714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900070, 36.835949, 24.307278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299042, 36.808578, 24.298740>,  <39.538425, 36.792156, 24.293617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299042, 36.808578, 24.298740>,  <38.900070, 36.835949, 24.307278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299042, 36.808578, 24.298740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009538, 0.168417, -0.985670,
		0.071039, 0.983338, 0.167331,
		0.997428, -0.068425, -0.021343,
		39.598270, 36.788052, 24.292337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140995, 37.409859, 23.901176>,  <38.900070, 36.835949, 24.307278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140995, 37.409859, 23.901176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428272, 37.131577, 23.895720>,  <39.600639, 36.964607, 23.892445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428272, 37.131577, 23.895720>,  <39.140995, 37.409859, 23.901176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428272, 37.131577, 23.895720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219459, 0.245071, -0.944340,
		0.660327, 0.675228, 0.328688,
		0.718196, -0.695707, -0.013642,
		39.643730, 36.922863, 23.891626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710899, 37.722961, 23.519829>,  <39.140995, 37.409859, 23.901176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710899, 37.722961, 23.519829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786499, 37.330193, 23.523966>,  <39.831860, 37.094532, 23.526449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786499, 37.330193, 23.523966>,  <39.710899, 37.722961, 23.519829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786499, 37.330193, 23.523966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365528, 0.060573, -0.928827,
		0.911409, 0.179332, 0.370369,
		0.189003, -0.981922, 0.010344,
		39.843201, 37.035618, 23.527069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338238, 37.687679, 23.218721>,  <39.710899, 37.722961, 23.519829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338238, 37.687679, 23.218721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179733, 37.322330, 23.181335>,  <40.084629, 37.103123, 23.158903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179733, 37.322330, 23.181335>,  <40.338238, 37.687679, 23.218721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179733, 37.322330, 23.181335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315838, -0.040017, -0.947969,
		0.862105, -0.405163, 0.304333,
		-0.396260, -0.913369, -0.093467,
		40.060856, 37.048321, 23.153296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871716, 37.189133, 22.946697>,  <40.338238, 37.687679, 23.218721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871716, 37.189133, 22.946697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510002, 37.052387, 22.844402>,  <40.292973, 36.970341, 22.783026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510002, 37.052387, 22.844402>,  <40.871716, 37.189133, 22.946697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510002, 37.052387, 22.844402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309358, -0.111874, -0.944342,
		0.294223, -0.933068, 0.206923,
		-0.904285, -0.341861, -0.255736,
		40.238716, 36.949829, 22.767681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045868, 36.625641, 22.512779>,  <40.871716, 37.189133, 22.946697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045868, 36.625641, 22.512779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663158, 36.689156, 22.415319>,  <40.433533, 36.727264, 22.356844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663158, 36.689156, 22.415319>,  <41.045868, 36.625641, 22.512779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663158, 36.689156, 22.415319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202915, -0.235687, -0.950409,
		-0.208329, -0.958771, 0.193282,
		-0.956778, 0.158778, -0.243649,
		40.376125, 36.736790, 22.342224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877724, 36.037262, 22.198072>,  <41.045868, 36.625641, 22.512779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877724, 36.037262, 22.198072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644749, 36.341137, 22.082390>,  <40.504963, 36.523464, 22.012981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644749, 36.341137, 22.082390>,  <40.877724, 36.037262, 22.198072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644749, 36.341137, 22.082390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280767, -0.145873, -0.948626,
		-0.762849, -0.633713, -0.128334,
		-0.582436, 0.759690, -0.289205,
		40.470016, 36.569042, 21.995628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403885, 35.685993, 21.735807>,  <40.877724, 36.037262, 22.198072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403885, 35.685993, 21.735807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398727, 36.076305, 21.648462>,  <40.395634, 36.310493, 21.596056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398727, 36.076305, 21.648462>,  <40.403885, 35.685993, 21.735807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398727, 36.076305, 21.648462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409475, -0.194075, -0.891440,
		-0.912230, -0.100910, -0.397055,
		-0.012897, 0.975783, -0.218361,
		40.394859, 36.369041, 21.582954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015892, 35.728504, 21.158945>,  <40.403885, 35.685993, 21.735807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015892, 35.728504, 21.158945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228561, 36.067245, 21.164085>,  <40.356163, 36.270489, 21.167170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228561, 36.067245, 21.164085>,  <40.015892, 35.728504, 21.158945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228561, 36.067245, 21.164085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282581, -0.163069, -0.945281,
		-0.798416, 0.506215, -0.326004,
		0.531677, 0.846850, 0.012850,
		40.388065, 36.321301, 21.167940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928501, 36.088554, 20.501863>,  <40.015892, 35.728504, 21.158945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928501, 36.088554, 20.501863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259945, 36.261215, 20.644453>,  <40.458813, 36.364811, 20.730007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259945, 36.261215, 20.644453>,  <39.928501, 36.088554, 20.501863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259945, 36.261215, 20.644453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428100, -0.078261, -0.900337,
		-0.360735, 0.898638, -0.249639,
		0.828614, 0.431653, 0.356475,
		40.508530, 36.390713, 20.751396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138588, 36.570324, 19.901340>,  <39.928501, 36.088554, 20.501863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138588, 36.570324, 19.901340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456703, 36.567032, 20.143810>,  <40.647572, 36.565056, 20.289291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456703, 36.567032, 20.143810>,  <40.138588, 36.570324, 19.901340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456703, 36.567032, 20.143810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605826, -0.025752, -0.795180,
		0.022154, 0.999635, -0.015495,
		0.795289, -0.008229, 0.606175,
		40.695290, 36.564564, 20.325663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481491, 37.213730, 19.880011>,  <40.138588, 36.570324, 19.901340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481491, 37.213730, 19.880011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734428, 36.917152, 19.969820>,  <40.886192, 36.739208, 20.023706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734428, 36.917152, 19.969820>,  <40.481491, 37.213730, 19.880011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734428, 36.917152, 19.969820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531634, 0.204517, -0.821911,
		0.563478, 0.639094, 0.523499,
		0.632343, -0.741439, 0.224523,
		40.924129, 36.694721, 20.037176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179905, 37.418381, 19.772175>,  <40.481491, 37.213730, 19.880011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179905, 37.418381, 19.772175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219044, 37.020580, 19.757195>,  <41.242527, 36.781902, 19.748205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219044, 37.020580, 19.757195>,  <41.179905, 37.418381, 19.772175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219044, 37.020580, 19.757195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583245, 0.087794, -0.807539,
		0.806383, 0.057169, 0.588625,
		0.097844, -0.994497, -0.037452,
		41.248398, 36.722233, 19.745958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945450, 37.191071, 19.721958>,  <41.179905, 37.418381, 19.772175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945450, 37.191071, 19.721958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746387, 36.861809, 19.612587>,  <41.626949, 36.664253, 19.546965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746387, 36.861809, 19.612587>,  <41.945450, 37.191071, 19.721958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746387, 36.861809, 19.612587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620827, -0.117887, -0.775033,
		0.605736, -0.555450, 0.569701,
		-0.497653, -0.823151, -0.273430,
		41.597092, 36.614864, 19.530558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485931, 36.779945, 19.460802>,  <41.945450, 37.191071, 19.721958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485931, 36.779945, 19.460802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157223, 36.609524, 19.309452>,  <41.959995, 36.507271, 19.218641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157223, 36.609524, 19.309452>,  <42.485931, 36.779945, 19.460802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157223, 36.609524, 19.309452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413637, 0.010674, -0.910379,
		0.391906, -0.904636, 0.167459,
		-0.821774, -0.426051, -0.378375,
		41.910690, 36.481709, 19.195940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714962, 36.200359, 19.124819>,  <42.485931, 36.779945, 19.460802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714962, 36.200359, 19.124819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374138, 36.314499, 18.949286>,  <42.169643, 36.382984, 18.843966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374138, 36.314499, 18.949286>,  <42.714962, 36.200359, 19.124819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374138, 36.314499, 18.949286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429550, -0.097932, -0.897717,
		-0.299144, -0.953405, -0.039131,
		-0.852056, 0.285355, -0.438831,
		42.118523, 36.400105, 18.817636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654198, 35.780426, 18.550533>,  <42.714962, 36.200359, 19.124819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654198, 35.780426, 18.550533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415749, 36.087852, 18.457636>,  <42.272678, 36.272308, 18.401897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415749, 36.087852, 18.457636>,  <42.654198, 35.780426, 18.550533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415749, 36.087852, 18.457636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214342, -0.126419, -0.968543,
		-0.773750, -0.627154, -0.089374,
		-0.596127, 0.768567, -0.232242,
		42.236912, 36.318424, 18.387962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102409, 35.638298, 17.972019>,  <42.654198, 35.780426, 18.550533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102409, 35.638298, 17.972019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236027, 36.015057, 17.986155>,  <42.316196, 36.241112, 17.994635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236027, 36.015057, 17.986155>,  <42.102409, 35.638298, 17.972019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236027, 36.015057, 17.986155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186637, -0.029349, -0.981990,
		-0.923896, 0.334619, -0.185597,
		0.334040, 0.941896, 0.035337,
		42.336239, 36.297626, 17.996756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394501, 35.062897, 17.646515>,  <42.102409, 35.638298, 17.972019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394501, 35.062897, 17.646515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744419, 34.909988, 17.527454>,  <42.954372, 34.818245, 17.456018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.744419, 34.909988, 17.527454>,  <42.394501, 35.062897, 17.646515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744419, 34.909988, 17.527454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145970, -0.377863, 0.914283,
		-0.461974, -0.843262, -0.274754,
		0.874799, -0.382269, -0.297654,
		43.006859, 34.795307, 17.438158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342773, 34.400391, 17.808105>,  <42.394501, 35.062897, 17.646515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342773, 34.400391, 17.808105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723289, 34.523602, 17.802864>,  <42.951599, 34.597530, 17.799719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723289, 34.523602, 17.802864>,  <42.342773, 34.400391, 17.808105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723289, 34.523602, 17.802864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092626, -0.245010, 0.965086,
		0.294066, -0.919286, -0.261606,
		0.951286, 0.308030, -0.013101,
		43.008675, 34.616009, 17.798933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720009, 33.899933, 18.184895>,  <42.342773, 34.400391, 17.808105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720009, 33.899933, 18.184895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981209, 34.202679, 18.195856>,  <43.137928, 34.384327, 18.202433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981209, 34.202679, 18.195856>,  <42.720009, 33.899933, 18.184895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981209, 34.202679, 18.195856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278570, -0.273674, 0.920599,
		0.704268, -0.593515, -0.389548,
		0.652997, 0.756864, 0.027404,
		43.177109, 34.429737, 18.204077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299892, 33.634323, 18.293961>,  <42.720009, 33.899933, 18.184895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299892, 33.634323, 18.293961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327393, 34.007420, 18.435534>,  <43.343891, 34.231277, 18.520477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327393, 34.007420, 18.435534>,  <43.299892, 33.634323, 18.293961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327393, 34.007420, 18.435534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165266, -0.360520, 0.917994,
		0.983850, -0.004619, -0.178936,
		0.068750, 0.932740, 0.353934,
		43.348019, 34.287243, 18.541714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734264, 33.558296, 18.832771>,  <43.299892, 33.634323, 18.293961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734264, 33.558296, 18.832771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594872, 33.925285, 18.909515>,  <43.511234, 34.145477, 18.955563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594872, 33.925285, 18.909515>,  <43.734264, 33.558296, 18.832771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594872, 33.925285, 18.909515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182084, -0.134528, 0.974037,
		0.919459, 0.374370, -0.120175,
		-0.348483, 0.917469, 0.191860,
		43.490326, 34.200527, 18.967073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141884, 33.834003, 19.433992>,  <43.734264, 33.558296, 18.832771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141884, 33.834003, 19.433992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822529, 34.074806, 19.439116>,  <43.630917, 34.219288, 19.442190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822529, 34.074806, 19.439116>,  <44.141884, 33.834003, 19.433992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822529, 34.074806, 19.439116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006256, -0.012977, 0.999896,
		0.602106, 0.798389, 0.006594,
		-0.798392, 0.602002, 0.012808,
		43.583012, 34.255405, 19.442959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266304, 34.320351, 19.987703>,  <44.141884, 33.834003, 19.433992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266304, 34.320351, 19.987703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873447, 34.340588, 19.915220>,  <43.637733, 34.352730, 19.871731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873447, 34.340588, 19.915220>,  <44.266304, 34.320351, 19.987703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873447, 34.340588, 19.915220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181425, 0.000272, 0.983405,
		0.049805, 0.998720, 0.008912,
		-0.982143, 0.050595, -0.181206,
		43.578804, 34.355766, 19.860859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998020, 34.831928, 20.379986>,  <44.266304, 34.320351, 19.987703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998020, 34.831928, 20.379986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662720, 34.625504, 20.309540>,  <43.461540, 34.501648, 20.267273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662720, 34.625504, 20.309540>,  <43.998020, 34.831928, 20.379986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662720, 34.625504, 20.309540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179410, -0.043973, 0.982791,
		-0.514921, 0.855424, -0.055725,
		-0.838253, -0.516058, -0.176115,
		43.411243, 34.470688, 20.256706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445225, 35.204102, 20.723114>,  <43.998020, 34.831928, 20.379986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445225, 35.204102, 20.723114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338387, 34.822777, 20.666759>,  <43.274284, 34.593983, 20.632946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338387, 34.822777, 20.666759>,  <43.445225, 35.204102, 20.723114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338387, 34.822777, 20.666759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246491, -0.073749, 0.966335,
		-0.931612, 0.292833, -0.215285,
		-0.267098, -0.953315, -0.140886,
		43.258259, 34.536781, 20.624495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795242, 35.209999, 21.011362>,  <43.445225, 35.204102, 20.723114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795242, 35.209999, 21.011362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941319, 34.837704, 21.003685>,  <43.028965, 34.614326, 20.999079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941319, 34.837704, 21.003685>,  <42.795242, 35.209999, 21.011362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941319, 34.837704, 21.003685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274570, -0.127388, 0.953092,
		-0.889521, -0.342789, -0.302073,
		0.365190, -0.930735, -0.019195,
		43.050877, 34.558483, 20.997927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283154, 34.856609, 21.373337>,  <42.795242, 35.209999, 21.011362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283154, 34.856609, 21.373337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595646, 34.607029, 21.365799>,  <42.783142, 34.457279, 21.361277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595646, 34.607029, 21.365799>,  <42.283154, 34.856609, 21.373337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595646, 34.607029, 21.365799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196920, -0.274980, 0.941067,
		-0.592366, -0.731482, -0.337693,
		0.781233, -0.623955, -0.018845,
		42.830017, 34.419842, 21.360146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005634, 34.322109, 21.734831>,  <42.283154, 34.856609, 21.373337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005634, 34.322109, 21.734831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405045, 34.303024, 21.745157>,  <42.644691, 34.291573, 21.751354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405045, 34.303024, 21.745157>,  <42.005634, 34.322109, 21.734831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405045, 34.303024, 21.745157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043314, -0.414628, 0.908959,
		-0.032663, -0.908739, -0.416084,
		0.998528, -0.047711, 0.025818,
		42.704601, 34.288712, 21.752903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173485, 33.622826, 22.005964>,  <42.005634, 34.322109, 21.734831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173485, 33.622826, 22.005964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469242, 33.886105, 22.062639>,  <42.646698, 34.044071, 22.096645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469242, 33.886105, 22.062639>,  <42.173485, 33.622826, 22.005964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469242, 33.886105, 22.062639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013469, -0.195946, 0.980522,
		0.673137, -0.726902, -0.136017,
		0.739395, 0.658193, 0.141689,
		42.691059, 34.083561, 22.105146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565884, 33.303894, 22.586988>,  <42.173485, 33.622826, 22.005964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565884, 33.303894, 22.586988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701004, 33.679569, 22.562292>,  <42.782074, 33.904976, 22.547474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701004, 33.679569, 22.562292>,  <42.565884, 33.303894, 22.586988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701004, 33.679569, 22.562292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095830, 0.030935, 0.994917,
		0.936328, -0.341997, -0.079553,
		0.337797, 0.939192, -0.061739,
		42.802341, 33.961327, 22.543770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001259, 33.280476, 23.135290>,  <42.565884, 33.303894, 22.586988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001259, 33.280476, 23.135290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927471, 33.661983, 23.040379>,  <42.883198, 33.890888, 22.983433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927471, 33.661983, 23.040379>,  <43.001259, 33.280476, 23.135290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927471, 33.661983, 23.040379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016308, 0.244357, 0.969548,
		0.982703, 0.174980, -0.060630,
		-0.184467, 0.953767, -0.237277,
		42.872131, 33.948112, 22.969196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471111, 33.688999, 23.506271>,  <43.001259, 33.280476, 23.135290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471111, 33.688999, 23.506271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162624, 33.933502, 23.435171>,  <42.977531, 34.080204, 23.392511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.162624, 33.933502, 23.435171>,  <43.471111, 33.688999, 23.506271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162624, 33.933502, 23.435171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012289, 0.264886, 0.964202,
		0.636455, 0.745792, -0.196773,
		-0.771216, 0.611253, -0.177753,
		42.931259, 34.116879, 23.381845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462631, 34.227253, 23.986469>,  <43.471111, 33.688999, 23.506271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462631, 34.227253, 23.986469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098324, 34.302120, 23.839249>,  <42.879738, 34.347042, 23.750916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098324, 34.302120, 23.839249>,  <43.462631, 34.227253, 23.986469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098324, 34.302120, 23.839249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339221, 0.169047, 0.925393,
		0.235424, 0.967673, -0.090472,
		-0.910772, 0.187169, -0.368053,
		42.825092, 34.358273, 23.728832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191570, 34.875965, 24.284599>,  <43.462631, 34.227253, 23.986469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191570, 34.875965, 24.284599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882683, 34.654686, 24.159605>,  <42.697350, 34.521919, 24.084608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882683, 34.654686, 24.159605>,  <43.191570, 34.875965, 24.284599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882683, 34.654686, 24.159605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458381, 0.144516, 0.876928,
		-0.439956, 0.820419, -0.365174,
		-0.772221, -0.553199, -0.312484,
		42.651016, 34.488728, 24.065861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574150, 35.306000, 24.435854>,  <43.191570, 34.875965, 24.284599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574150, 35.306000, 24.435854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412930, 34.941982, 24.397118>,  <42.316196, 34.723572, 24.373875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412930, 34.941982, 24.397118>,  <42.574150, 35.306000, 24.435854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412930, 34.941982, 24.397118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456453, 0.108180, 0.883146,
		-0.793221, 0.400157, -0.458993,
		-0.403051, -0.910039, -0.096842,
		42.292015, 34.668972, 24.368065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928967, 35.428619, 24.639416>,  <42.574150, 35.306000, 24.435854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928967, 35.428619, 24.639416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982430, 35.034172, 24.678820>,  <42.014507, 34.797504, 24.702461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982430, 35.034172, 24.678820>,  <41.928967, 35.428619, 24.639416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982430, 35.034172, 24.678820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333346, 0.048874, 0.941537,
		-0.933282, -0.158682, -0.322186,
		0.133659, -0.986119, 0.098510,
		42.022526, 34.738335, 24.708372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292595, 35.209801, 24.891817>,  <41.928967, 35.428619, 24.639416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292595, 35.209801, 24.891817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552738, 34.920982, 24.986202>,  <41.708824, 34.747692, 25.042833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552738, 34.920982, 24.986202>,  <41.292595, 35.209801, 24.891817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552738, 34.920982, 24.986202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316704, 0.024608, 0.948205,
		-0.690458, -0.691403, -0.212672,
		0.650359, -0.722050, 0.235961,
		41.747845, 34.704369, 25.056990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873306, 34.922112, 25.261314>,  <41.292595, 35.209801, 24.891817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873306, 34.922112, 25.261314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239368, 34.781593, 25.340391>,  <41.459007, 34.697285, 25.387836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239368, 34.781593, 25.340391>,  <40.873306, 34.922112, 25.261314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239368, 34.781593, 25.340391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280400, -0.202451, 0.938291,
		-0.289595, -0.914115, -0.283777,
		0.915156, -0.351295, 0.197689,
		41.513916, 34.676205, 25.399698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763901, 34.252171, 25.704857>,  <40.873306, 34.922112, 25.261314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763901, 34.252171, 25.704857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148575, 34.339333, 25.771412>,  <41.379379, 34.391632, 25.811344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148575, 34.339333, 25.771412>,  <40.763901, 34.252171, 25.704857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148575, 34.339333, 25.771412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116097, -0.226116, 0.967157,
		0.248375, -0.949414, -0.192153,
		0.961681, 0.217909, 0.166385,
		41.437080, 34.404705, 25.821327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935478, 33.772881, 26.115864>,  <40.763901, 34.252171, 25.704857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935478, 33.772881, 26.115864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195244, 34.067467, 26.191629>,  <41.351101, 34.244221, 26.237089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195244, 34.067467, 26.191629>,  <40.935478, 33.772881, 26.115864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195244, 34.067467, 26.191629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011447, -0.239591, 0.970806,
		0.760352, -0.632620, -0.147163,
		0.649410, 0.736470, 0.189416,
		41.390068, 34.288406, 26.248453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506290, 33.466244, 26.465668>,  <40.935478, 33.772881, 26.115864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506290, 33.466244, 26.465668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493553, 33.858925, 26.540758>,  <41.485912, 34.094536, 26.585812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493553, 33.858925, 26.540758>,  <41.506290, 33.466244, 26.465668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493553, 33.858925, 26.540758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031154, -0.186754, 0.981912,
		0.999007, 0.037113, -0.024638,
		-0.031840, 0.981705, 0.187725,
		41.484001, 34.153435, 26.597076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892792, 33.529156, 27.117947>,  <41.506290, 33.466244, 26.465668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892792, 33.529156, 27.117947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711922, 33.884174, 27.082623>,  <41.603397, 34.097187, 27.061428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711922, 33.884174, 27.082623>,  <41.892792, 33.529156, 27.117947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711922, 33.884174, 27.082623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071421, 0.062660, 0.995476,
		0.889063, 0.456440, 0.035056,
		-0.452179, 0.887545, -0.088308,
		41.576267, 34.150436, 27.056129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288635, 34.092545, 27.524427>,  <41.892792, 33.529156, 27.117947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288635, 34.092545, 27.524427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911518, 34.214241, 27.469896>,  <41.685249, 34.287258, 27.437178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911518, 34.214241, 27.469896>,  <42.288635, 34.092545, 27.524427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911518, 34.214241, 27.469896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072460, 0.212141, 0.974549,
		0.325419, 0.928673, -0.177959,
		-0.942790, 0.304242, -0.136326,
		41.628681, 34.305515, 27.428999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160294, 34.750328, 27.959507>,  <42.288635, 34.092545, 27.524427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160294, 34.750328, 27.959507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808826, 34.563271, 27.921028>,  <41.597946, 34.451038, 27.897942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808826, 34.563271, 27.921028>,  <42.160294, 34.750328, 27.959507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808826, 34.563271, 27.921028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127180, 0.035056, 0.991260,
		-0.460180, 0.883224, -0.090277,
		-0.878669, -0.467639, -0.096196,
		41.545227, 34.422977, 27.892170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774647, 34.879753, 28.635550>,  <42.160294, 34.750328, 27.959507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774647, 34.879753, 28.635550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557022, 34.580147, 28.484306>,  <41.426449, 34.400383, 28.393560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557022, 34.580147, 28.484306>,  <41.774647, 34.879753, 28.635550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557022, 34.580147, 28.484306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213254, -0.312402, 0.925704,
		-0.811492, 0.584273, 0.010234,
		-0.544061, -0.749019, -0.378110,
		41.393803, 34.355442, 28.370872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024212, 34.910679, 28.974524>,  <41.774647, 34.879753, 28.635550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024212, 34.910679, 28.974524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107204, 34.534447, 28.866993>,  <41.157001, 34.308708, 28.802475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107204, 34.534447, 28.866993>,  <41.024212, 34.910679, 28.974524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107204, 34.534447, 28.866993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194166, -0.308936, 0.931052,
		-0.958776, -0.140978, -0.246727,
		0.207481, -0.940576, -0.268827,
		41.169449, 34.252274, 28.786345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490070, 34.541527, 29.239199>,  <41.024212, 34.910679, 28.974524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490070, 34.541527, 29.239199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774815, 34.270279, 29.166100>,  <40.945663, 34.107529, 29.122240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774815, 34.270279, 29.166100>,  <40.490070, 34.541527, 29.239199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774815, 34.270279, 29.166100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245180, -0.483791, 0.840138,
		-0.658131, -0.553258, -0.510656,
		0.711864, -0.678124, -0.182750,
		40.988373, 34.066841, 29.111275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185997, 33.956554, 29.158941>,  <40.490070, 34.541527, 29.239199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185997, 33.956554, 29.158941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561668, 33.851593, 29.247572>,  <40.787071, 33.788616, 29.300751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561668, 33.851593, 29.247572>,  <40.185997, 33.956554, 29.158941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561668, 33.851593, 29.247572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326366, -0.480998, 0.813711,
		-0.106939, -0.836533, -0.537379,
		0.939174, -0.262400, 0.221579,
		40.843422, 33.772873, 29.314045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120331, 33.283638, 29.470169>,  <40.185997, 33.956554, 29.158941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120331, 33.283638, 29.470169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495663, 33.388313, 29.560549>,  <40.720863, 33.451118, 29.614777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495663, 33.388313, 29.560549>,  <40.120331, 33.283638, 29.470169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495663, 33.388313, 29.560549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099713, -0.420930, 0.901596,
		0.331042, -0.868527, -0.368879,
		0.938333, 0.261684, 0.225949,
		40.777164, 33.466820, 29.628334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494171, 32.684502, 29.690022>,  <40.120331, 33.283638, 29.470169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494171, 32.684502, 29.690022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684143, 33.004223, 29.837294>,  <40.798126, 33.196056, 29.925657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684143, 33.004223, 29.837294>,  <40.494171, 32.684502, 29.690022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684143, 33.004223, 29.837294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051383, -0.392476, 0.918326,
		0.878523, -0.455057, -0.145327,
		0.474928, 0.799304, 0.368181,
		40.826622, 33.244015, 29.947748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992527, 32.458603, 30.074070>,  <40.494171, 32.684502, 29.690022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992527, 32.458603, 30.074070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917408, 32.818752, 30.231071>,  <40.872337, 33.034843, 30.325274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917408, 32.818752, 30.231071>,  <40.992527, 32.458603, 30.074070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917408, 32.818752, 30.231071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117056, -0.376251, 0.919094,
		0.975207, 0.218550, -0.034734,
		-0.187799, 0.900373, 0.392505,
		40.861069, 33.088863, 30.348824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393414, 32.479397, 30.591972>,  <40.992527, 32.458603, 30.074070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393414, 32.479397, 30.591972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155670, 32.789955, 30.675825>,  <41.013023, 32.976292, 30.726137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155670, 32.789955, 30.675825>,  <41.393414, 32.479397, 30.591972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155670, 32.789955, 30.675825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000937, -0.261339, 0.965247,
		0.804199, 0.573507, 0.156056,
		-0.594359, 0.776397, 0.209631,
		40.977364, 33.022873, 30.738714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715225, 32.749035, 31.188368>,  <41.393414, 32.479397, 30.591972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715225, 32.749035, 31.188368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353371, 32.919003, 31.201525>,  <41.136257, 33.020985, 31.209419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353371, 32.919003, 31.201525>,  <41.715225, 32.749035, 31.188368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353371, 32.919003, 31.201525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093815, -0.273819, 0.957195,
		0.415740, 0.862824, 0.287569,
		-0.904632, 0.424922, 0.032892,
		41.081982, 33.046478, 31.211391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645046, 33.133198, 31.790480>,  <41.715225, 32.749035, 31.188368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645046, 33.133198, 31.790480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274643, 33.038303, 31.673023>,  <41.052402, 32.981365, 31.602549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274643, 33.038303, 31.673023>,  <41.645046, 33.133198, 31.790480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274643, 33.038303, 31.673023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241319, -0.226155, 0.943726,
		-0.290297, 0.944760, 0.152171,
		-0.926009, -0.237239, -0.293641,
		40.996841, 32.967133, 31.584930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283314, 33.341358, 32.382515>,  <41.645046, 33.133198, 31.790480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283314, 33.341358, 32.382515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008640, 33.132252, 32.180454>,  <40.843834, 33.006790, 32.059216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008640, 33.132252, 32.180454>,  <41.283314, 33.341358, 32.382515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008640, 33.132252, 32.180454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428703, -0.269989, 0.862160,
		-0.587092, 0.808594, -0.038713,
		-0.686685, -0.522764, -0.505155,
		40.802635, 32.975422, 32.028908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596821, 33.648380, 32.596172>,  <41.283314, 33.341358, 32.382515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596821, 33.648380, 32.596172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582836, 33.263489, 32.488178>,  <40.574448, 33.032555, 32.423382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582836, 33.263489, 32.488178>,  <40.596821, 33.648380, 32.596172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582836, 33.263489, 32.488178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450288, -0.226013, 0.863805,
		-0.892199, 0.151769, -0.425379,
		-0.034958, -0.962229, -0.269988,
		40.572350, 32.974819, 32.407181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922688, 33.476364, 32.902004>,  <40.596821, 33.648380, 32.596172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922688, 33.476364, 32.902004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120014, 33.134048, 32.839703>,  <40.238411, 32.928658, 32.802322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120014, 33.134048, 32.839703>,  <39.922688, 33.476364, 32.902004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120014, 33.134048, 32.839703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454140, -0.406111, 0.792989,
		-0.741885, -0.320463, -0.588991,
		0.493319, -0.855791, -0.155753,
		40.268009, 32.877312, 32.792976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428970, 32.994255, 33.041782>,  <39.922688, 33.476364, 32.902004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428970, 32.994255, 33.041782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770580, 32.787357, 33.064041>,  <39.975548, 32.663219, 33.077396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770580, 32.787357, 33.064041>,  <39.428970, 32.994255, 33.041782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770580, 32.787357, 33.064041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379473, -0.546208, 0.746765,
		-0.355868, -0.658872, -0.662757,
		0.854025, -0.517248, 0.055646,
		40.026787, 32.632183, 33.080734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241474, 32.219048, 33.000721>,  <39.428970, 32.994255, 33.041782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241474, 32.219048, 33.000721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596039, 32.265442, 33.179974>,  <39.808777, 32.293278, 33.287525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596039, 32.265442, 33.179974>,  <39.241474, 32.219048, 33.000721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596039, 32.265442, 33.179974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304694, -0.582615, 0.753473,
		0.348480, -0.804430, -0.481097,
		0.886410, 0.115983, 0.448135,
		39.861961, 32.300236, 33.314415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287521, 31.556887, 33.151211>,  <39.241474, 32.219048, 33.000721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287521, 31.556887, 33.151211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545937, 31.765259, 33.374374>,  <39.700985, 31.890282, 33.508274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545937, 31.765259, 33.374374>,  <39.287521, 31.556887, 33.151211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545937, 31.765259, 33.374374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177820, -0.608092, 0.773695,
		0.742301, -0.599046, -0.300221,
		0.646041, 0.520930, 0.557910,
		39.739750, 31.921537, 33.541748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529358, 31.037727, 33.548668>,  <39.287521, 31.556887, 33.151211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529358, 31.037727, 33.548668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617161, 31.373058, 33.748280>,  <39.669842, 31.574257, 33.868046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617161, 31.373058, 33.748280>,  <39.529358, 31.037727, 33.548668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617161, 31.373058, 33.748280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148369, -0.476865, 0.866364,
		0.964262, -0.264216, 0.019705,
		0.219510, 0.838325, 0.499025,
		39.683014, 31.624556, 33.897987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045166, 30.862759, 34.138760>,  <39.529358, 31.037727, 33.548668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045166, 30.862759, 34.138760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868240, 31.200216, 34.260494>,  <39.762085, 31.402691, 34.333534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868240, 31.200216, 34.260494>,  <40.045166, 30.862759, 34.138760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868240, 31.200216, 34.260494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254609, -0.443491, 0.859354,
		0.859961, 0.302617, 0.410962,
		-0.442313, 0.843646, 0.304336,
		39.735546, 31.453310, 34.351795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272827, 31.052162, 34.884552>,  <40.045166, 30.862759, 34.138760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272827, 31.052162, 34.884552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919273, 31.232105, 34.833359>,  <39.707142, 31.340071, 34.802643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919273, 31.232105, 34.833359>,  <40.272827, 31.052162, 34.884552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919273, 31.232105, 34.833359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330632, -0.407441, 0.851278,
		0.330806, 0.794746, 0.508867,
		-0.883883, 0.449856, -0.127984,
		39.654110, 31.367062, 34.794964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974045, 31.055559, 35.546364>,  <40.272827, 31.052162, 34.884552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974045, 31.055559, 35.546364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651340, 31.134676, 35.323647>,  <39.457718, 31.182146, 35.190018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651340, 31.134676, 35.323647>,  <39.974045, 31.055559, 35.546364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651340, 31.134676, 35.323647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588631, -0.351112, 0.728171,
		-0.051469, 0.915204, 0.399690,
		-0.806761, 0.197792, -0.556789,
		39.409313, 31.194014, 35.156609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420002, 31.294607, 36.069553>,  <39.974045, 31.055559, 35.546364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420002, 31.294607, 36.069553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258980, 31.177835, 35.722515>,  <39.162365, 31.107773, 35.514290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258980, 31.177835, 35.722515>,  <39.420002, 31.294607, 36.069553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258980, 31.177835, 35.722515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782175, -0.382685, 0.491686,
		-0.475554, 0.876544, -0.074287,
		-0.402556, -0.291929, -0.867598,
		39.138214, 31.090258, 35.462234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810329, 31.567183, 35.910683>,  <39.420002, 31.294607, 36.069553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810329, 31.567183, 35.910683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784748, 31.234146, 35.690609>,  <38.769402, 31.034325, 35.558567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784748, 31.234146, 35.690609>,  <38.810329, 31.567183, 35.910683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784748, 31.234146, 35.690609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874600, -0.218748, 0.432694,
		-0.480609, 0.508860, -0.714197,
		-0.063952, -0.832593, -0.550181,
		38.765564, 30.984367, 35.525555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103546, 31.527243, 35.621201>,  <38.810329, 31.567183, 35.910683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103546, 31.527243, 35.621201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260445, 31.160425, 35.592422>,  <38.354584, 30.940334, 35.575157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260445, 31.160425, 35.592422>,  <38.103546, 31.527243, 35.621201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260445, 31.160425, 35.592422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870663, -0.395365, 0.292630,
		-0.296797, -0.052148, -0.953516,
		0.392247, -0.917042, -0.071940,
		38.378120, 30.885313, 35.570839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567059, 31.085745, 35.545609>,  <38.103546, 31.527243, 35.621201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567059, 31.085745, 35.545609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826775, 30.788263, 35.609272>,  <37.982605, 30.609776, 35.647469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826775, 30.788263, 35.609272>,  <37.567059, 31.085745, 35.545609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826775, 30.788263, 35.609272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757344, -0.613076, 0.224873,
		-0.069663, -0.266544, -0.961302,
		0.649290, -0.743702, 0.159156,
		38.021561, 30.565153, 35.657021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400120, 30.488235, 35.089565>,  <37.567059, 31.085745, 35.545609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400120, 30.488235, 35.089565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600403, 30.349564, 35.406830>,  <37.720573, 30.266361, 35.597187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600403, 30.349564, 35.406830>,  <37.400120, 30.488235, 35.089565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600403, 30.349564, 35.406830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757223, -0.619388, 0.207294,
		0.419410, -0.704395, -0.572646,
		0.500707, -0.346679, 0.793162,
		37.750614, 30.245560, 35.644779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341675, 29.748585, 35.103706>,  <37.400120, 30.488235, 35.089565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341675, 29.748585, 35.103706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420849, 29.857258, 35.480431>,  <37.468353, 29.922462, 35.706467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420849, 29.857258, 35.480431>,  <37.341675, 29.748585, 35.103706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420849, 29.857258, 35.480431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701268, -0.632069, 0.329715,
		0.684868, -0.725725, 0.065412,
		0.197937, 0.271683, 0.941812,
		37.480228, 29.938763, 35.762974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138847, 29.143051, 35.463032>,  <37.341675, 29.748585, 35.103706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138847, 29.143051, 35.463032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180706, 29.396547, 35.769604>,  <37.205822, 29.548645, 35.953548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180706, 29.396547, 35.769604>,  <37.138847, 29.143051, 35.463032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180706, 29.396547, 35.769604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645326, -0.543116, 0.537196,
		0.756706, -0.550814, 0.352137,
		0.104644, 0.633742, 0.766434,
		37.212101, 29.586670, 35.999535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063267, 28.674164, 36.027191>,  <37.138847, 29.143051, 35.463032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063267, 28.674164, 36.027191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974201, 29.047476, 36.139908>,  <36.920761, 29.271463, 36.207539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974201, 29.047476, 36.139908>,  <37.063267, 28.674164, 36.027191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974201, 29.047476, 36.139908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809050, -0.338172, 0.480706,
		0.543928, -0.120949, 0.830369,
		-0.222667, 0.933280, 0.281795,
		36.907402, 29.327459, 36.224445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836628, 28.430122, 36.729092>,  <37.063267, 28.674164, 36.027191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836628, 28.430122, 36.729092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733131, 28.811293, 36.665871>,  <36.671032, 29.039995, 36.627937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733131, 28.811293, 36.665871>,  <36.836628, 28.430122, 36.729092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733131, 28.811293, 36.665871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934977, -0.205972, 0.288779,
		0.242632, 0.222495, 0.944259,
		-0.258743, 0.952928, -0.158052,
		36.655510, 29.097172, 36.618454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386364, 28.507179, 37.310158>,  <36.836628, 28.430122, 36.729092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386364, 28.507179, 37.310158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321083, 28.822077, 37.072296>,  <36.281914, 29.011015, 36.929581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321083, 28.822077, 37.072296>,  <36.386364, 28.507179, 37.310158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321083, 28.822077, 37.072296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965277, -0.002796, 0.261214,
		0.203977, 0.616635, 0.760365,
		-0.163200, 0.787244, -0.594653,
		36.272121, 29.058250, 36.893902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078072, 29.129513, 37.716499>,  <36.386364, 28.507179, 37.310158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078072, 29.129513, 37.716499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982586, 29.140718, 37.328224>,  <35.925297, 29.147442, 37.095261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982586, 29.140718, 37.328224>,  <36.078072, 29.129513, 37.716499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982586, 29.140718, 37.328224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961222, -0.148962, 0.232083,
		-0.138093, 0.988446, 0.062487,
		-0.238710, 0.028015, -0.970687,
		35.910973, 29.149122, 37.037018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420300, 29.596539, 37.692238>,  <36.078072, 29.129513, 37.716499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420300, 29.596539, 37.692238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455875, 29.290745, 37.436844>,  <35.477219, 29.107269, 37.283607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455875, 29.290745, 37.436844>,  <35.420300, 29.596539, 37.692238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455875, 29.290745, 37.436844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973729, -0.201639, 0.105798,
		-0.209623, 0.612300, -0.762330,
		0.088935, -0.764480, -0.638482,
		35.482555, 29.061399, 37.245300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634418, 29.534544, 37.439240>,  <35.420300, 29.596539, 37.692238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634418, 29.534544, 37.439240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813694, 29.182976, 37.373974>,  <34.921261, 28.972034, 37.334812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813694, 29.182976, 37.373974>,  <34.634418, 29.534544, 37.439240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813694, 29.182976, 37.373974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893162, -0.447879, -0.040811,
		-0.037209, 0.164026, -0.985754,
		0.448193, -0.878919, -0.163168,
		34.948151, 28.919300, 37.325024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320427, 29.124990, 36.914158>,  <34.634418, 29.534544, 37.439240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320427, 29.124990, 36.914158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486187, 28.901884, 37.201817>,  <34.585644, 28.768021, 37.374413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486187, 28.901884, 37.201817>,  <34.320427, 29.124990, 36.914158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486187, 28.901884, 37.201817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893686, -0.398760, 0.205707,
		0.172030, -0.727934, -0.663715,
		0.414404, -0.557765, 0.719144,
		34.610508, 28.734554, 37.417561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122814, 28.416780, 36.785851>,  <34.320427, 29.124990, 36.914158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122814, 28.416780, 36.785851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195709, 28.504875, 37.169159>,  <34.239445, 28.557732, 37.399143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195709, 28.504875, 37.169159>,  <34.122814, 28.416780, 36.785851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195709, 28.504875, 37.169159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976324, -0.074980, 0.202901,
		0.116538, -0.972560, 0.201360,
		0.182235, 0.220239, 0.958272,
		34.250381, 28.570946, 37.456642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699764, 28.025043, 37.035110>,  <34.122814, 28.416780, 36.785851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699764, 28.025043, 37.035110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690193, 27.637457, 37.133526>,  <34.684448, 27.404905, 37.192574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690193, 27.637457, 37.133526>,  <34.699764, 28.025043, 37.035110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690193, 27.637457, 37.133526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080004, 0.243464, 0.966605,
		-0.996507, 0.042816, 0.071695,
		-0.023931, -0.968965, 0.246039,
		34.683014, 27.346767, 37.207336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341648, 27.995861, 36.722095>,  <34.699764, 28.025043, 37.035110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341648, 27.995861, 36.722095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208904, 28.373125, 36.729263>,  <35.129257, 28.599483, 36.733562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208904, 28.373125, 36.729263>,  <35.341648, 27.995861, 36.722095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208904, 28.373125, 36.729263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923805, 0.328777, -0.196190,
		-0.190930, -0.048552, -0.980402,
		-0.331859, 0.943159, 0.017921,
		35.109348, 28.656073, 36.734638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678486, 28.324829, 36.175179>,  <35.341648, 27.995861, 36.722095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678486, 28.324829, 36.175179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566074, 28.629683, 36.408478>,  <35.498627, 28.812593, 36.548458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566074, 28.629683, 36.408478>,  <35.678486, 28.324829, 36.175179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566074, 28.629683, 36.408478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917270, 0.392017, -0.070279,
		-0.282205, 0.515246, -0.809248,
		-0.281028, 0.762131, 0.583249,
		35.481766, 28.858322, 36.583454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694366, 28.961039, 35.826031>,  <35.678486, 28.324829, 36.175179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694366, 28.961039, 35.826031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761650, 29.048908, 36.210415>,  <35.802021, 29.101631, 36.441048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761650, 29.048908, 36.210415>,  <35.694366, 28.961039, 35.826031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761650, 29.048908, 36.210415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901425, 0.360234, -0.240136,
		-0.398923, 0.906628, -0.137426,
		0.168208, 0.219675, 0.960962,
		35.812111, 29.114811, 36.498703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835720, 29.661543, 35.858223>,  <35.694366, 28.961039, 35.826031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835720, 29.661543, 35.858223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992783, 29.484272, 36.180569>,  <36.087021, 29.377911, 36.373978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992783, 29.484272, 36.180569>,  <35.835720, 29.661543, 35.858223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992783, 29.484272, 36.180569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879976, 0.435742, -0.189132,
		-0.267331, 0.783405, 0.561079,
		0.392653, -0.443175, 0.805866,
		36.110577, 29.351320, 36.422329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114079, 30.193279, 36.341457>,  <35.835720, 29.661543, 35.858223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114079, 30.193279, 36.341457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311153, 29.850454, 36.401726>,  <36.429398, 29.644760, 36.437889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311153, 29.850454, 36.401726>,  <36.114079, 30.193279, 36.341457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311153, 29.850454, 36.401726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870033, 0.481703, -0.104905,
		0.017329, 0.182778, 0.983001,
		0.492689, -0.857062, 0.150676,
		36.458961, 29.593336, 36.446930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528969, 30.350653, 36.974003>,  <36.114079, 30.193279, 36.341457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528969, 30.350653, 36.974003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671772, 30.050335, 36.751705>,  <36.757454, 29.870144, 36.618328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671772, 30.050335, 36.751705>,  <36.528969, 30.350653, 36.974003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671772, 30.050335, 36.751705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890055, 0.453958, -0.041512,
		0.283451, -0.479821, 0.830317,
		0.357012, -0.750795, -0.555742,
		36.778877, 29.825096, 36.584984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254150, 30.410469, 37.040211>,  <36.528969, 30.350653, 36.974003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254150, 30.410469, 37.040211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269245, 30.147812, 36.738907>,  <37.278301, 29.990217, 36.558125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269245, 30.147812, 36.738907>,  <37.254150, 30.410469, 37.040211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269245, 30.147812, 36.738907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907300, 0.338417, -0.249560,
		0.418787, -0.674011, 0.608544,
		0.037736, -0.656645, -0.753255,
		37.280567, 29.950819, 36.512932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810722, 30.118187, 36.991760>,  <37.254150, 30.410469, 37.040211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810722, 30.118187, 36.991760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684204, 30.081354, 36.614086>,  <37.608292, 30.059256, 36.387482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684204, 30.081354, 36.614086>,  <37.810722, 30.118187, 36.991760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684204, 30.081354, 36.614086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870016, 0.368622, -0.327399,
		0.378194, -0.925007, -0.036480,
		-0.316294, -0.092082, -0.944182,
		37.589317, 30.053730, 36.330833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242077, 29.705662, 36.615520>,  <37.810722, 30.118187, 36.991760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242077, 29.705662, 36.615520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076187, 29.950508, 36.346207>,  <37.976654, 30.097416, 36.184616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076187, 29.950508, 36.346207>,  <38.242077, 29.705662, 36.615520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076187, 29.950508, 36.346207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900057, 0.167157, -0.402437,
		-0.133794, -0.772898, -0.620264,
		-0.414724, 0.612117, -0.673288,
		37.951771, 30.134144, 36.144218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705505, 29.572126, 36.064392>,  <38.242077, 29.705662, 36.615520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705505, 29.572126, 36.064392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522621, 29.922421, 36.002361>,  <38.412891, 30.132597, 35.965145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522621, 29.922421, 36.002361>,  <38.705505, 29.572126, 36.064392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522621, 29.922421, 36.002361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750028, 0.285975, -0.596386,
		-0.477927, -0.388986, -0.787576,
		-0.457213, 0.875733, -0.155075,
		38.385456, 30.185141, 35.955837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840935, 29.719807, 35.394527>,  <38.705505, 29.572126, 36.064392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840935, 29.719807, 35.394527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689808, 30.079132, 35.484230>,  <38.599133, 30.294727, 35.538052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689808, 30.079132, 35.484230>,  <38.840935, 29.719807, 35.394527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689808, 30.079132, 35.484230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516517, 0.405511, -0.754169,
		-0.768417, -0.169107, -0.617202,
		-0.377817, 0.898312, 0.224255,
		38.576462, 30.348625, 35.551506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784946, 29.930836, 34.779549>,  <38.840935, 29.719807, 35.394527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784946, 29.930836, 34.779549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770344, 30.255373, 35.012920>,  <38.761581, 30.450096, 35.152943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770344, 30.255373, 35.012920>,  <38.784946, 29.930836, 34.779549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770344, 30.255373, 35.012920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654371, 0.460653, -0.599664,
		-0.755292, 0.359885, -0.547738,
		-0.036507, 0.811345, 0.583426,
		38.759392, 30.498777, 35.187946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625584, 30.532732, 34.383007>,  <38.784946, 29.930836, 34.779549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625584, 30.532732, 34.383007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782703, 30.723028, 34.697811>,  <38.876976, 30.837206, 34.886692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782703, 30.723028, 34.697811>,  <38.625584, 30.532732, 34.383007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782703, 30.723028, 34.697811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361572, 0.706976, -0.607824,
		-0.845564, 0.523310, 0.105682,
		0.392795, 0.475742, 0.787008,
		38.900543, 30.865751, 34.933914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899803, 30.708647, 34.606941>,  <38.625584, 30.532732, 34.383007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899803, 30.708647, 34.606941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960560, 30.959545, 34.301395>,  <37.997013, 31.110085, 34.118069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960560, 30.959545, 34.301395>,  <37.899803, 30.708647, 34.606941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960560, 30.959545, 34.301395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834399, -0.495642, -0.241077,
		-0.529819, -0.600751, -0.598658,
		0.151893, 0.627246, -0.763866,
		38.006126, 31.147718, 34.072235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355682, 31.338205, 34.407192>,  <37.899803, 30.708647, 34.606941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355682, 31.338205, 34.407192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680908, 31.320795, 34.639408>,  <38.876045, 31.310349, 34.778736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680908, 31.320795, 34.639408>,  <38.355682, 31.338205, 34.407192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680908, 31.320795, 34.639408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393815, 0.775538, -0.493407,
		-0.428755, 0.629799, 0.647706,
		0.813068, -0.043526, 0.580540,
		38.924828, 31.307737, 34.813572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604465, 32.083191, 34.565205>,  <38.355682, 31.338205, 34.407192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604465, 32.083191, 34.565205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921967, 31.849243, 34.631996>,  <39.112465, 31.708874, 34.672073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921967, 31.849243, 34.631996>,  <38.604465, 32.083191, 34.565205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921967, 31.849243, 34.631996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522056, 0.514225, -0.680463,
		0.312118, 0.627292, 0.713503,
		0.793750, -0.584874, 0.166982,
		39.160091, 31.673780, 34.682091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139076, 32.524258, 34.623695>,  <38.604465, 32.083191, 34.565205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139076, 32.524258, 34.623695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301689, 32.173641, 34.520622>,  <39.399258, 31.963270, 34.458778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301689, 32.173641, 34.520622>,  <39.139076, 32.524258, 34.623695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301689, 32.173641, 34.520622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711941, 0.480692, -0.511932,
		0.572597, 0.024663, 0.819466,
		0.406537, -0.876542, -0.257684,
		39.423649, 31.910679, 34.443317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872265, 32.677879, 34.570946>,  <39.139076, 32.524258, 34.623695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872265, 32.677879, 34.570946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821442, 32.351765, 34.344963>,  <39.790947, 32.156097, 34.209373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821442, 32.351765, 34.344963>,  <39.872265, 32.677879, 34.570946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821442, 32.351765, 34.344963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663920, 0.353263, -0.659102,
		0.736932, -0.458825, 0.496398,
		-0.127054, -0.815282, -0.564954,
		39.783325, 32.107182, 34.175476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534145, 32.604565, 34.394207>,  <39.872265, 32.677879, 34.570946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534145, 32.604565, 34.394207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336861, 32.371925, 34.135448>,  <40.218491, 32.232342, 33.980194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336861, 32.371925, 34.135448>,  <40.534145, 32.604565, 34.394207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336861, 32.371925, 34.135448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656978, 0.238389, -0.715227,
		0.570192, -0.777759, 0.264523,
		-0.493215, -0.581603, -0.646898,
		40.188896, 32.197445, 33.941380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014767, 32.573879, 33.804787>,  <40.534145, 32.604565, 34.394207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014767, 32.573879, 33.804787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663193, 32.446365, 33.662888>,  <40.452248, 32.369858, 33.577747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663193, 32.446365, 33.662888>,  <41.014767, 32.573879, 33.804787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663193, 32.446365, 33.662888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255940, 0.312369, -0.914833,
		0.402453, -0.894873, -0.192961,
		-0.878935, -0.318791, -0.354748,
		40.399513, 32.350727, 33.556465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069469, 31.929008, 33.306076>,  <41.014767, 32.573879, 33.804787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069469, 31.929008, 33.306076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758495, 32.166676, 33.223560>,  <40.571911, 32.309277, 33.174049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758495, 32.166676, 33.223560>,  <41.069469, 31.929008, 33.306076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758495, 32.166676, 33.223560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433196, 0.268052, -0.860517,
		-0.455996, -0.758361, -0.465785,
		-0.777437, 0.594169, -0.206288,
		40.525265, 32.344925, 33.161674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052723, 31.896578, 32.603168>,  <41.069469, 31.929008, 33.306076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052723, 31.896578, 32.603168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794830, 32.192936, 32.678425>,  <40.640095, 32.370750, 32.723579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794830, 32.192936, 32.678425>,  <41.052723, 31.896578, 32.603168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794830, 32.192936, 32.678425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151049, 0.364749, -0.918772,
		-0.749336, -0.563945, -0.347077,
		-0.644733, 0.740894, 0.188137,
		40.601410, 32.415203, 32.734867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737301, 31.621302, 32.391209>,  <41.052723, 31.896578, 32.603168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737301, 31.621302, 32.391209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805733, 31.966759, 32.201534>,  <41.846794, 32.174034, 32.087730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805733, 31.966759, 32.201534>,  <41.737301, 31.621302, 32.391209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805733, 31.966759, 32.201534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278936, 0.419136, 0.864013,
		0.944948, -0.280084, -0.169195,
		0.171081, 0.863642, -0.474187,
		41.857056, 32.225853, 32.059277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163052, 31.857243, 32.857437>,  <41.737301, 31.621302, 32.391209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163052, 31.857243, 32.857437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102211, 32.216763, 32.692989>,  <42.065704, 32.432476, 32.594318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102211, 32.216763, 32.692989>,  <42.163052, 31.857243, 32.857437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102211, 32.216763, 32.692989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507506, 0.427965, 0.747853,
		0.848116, -0.094895, -0.521242,
		-0.152106, 0.898800, -0.411124,
		42.056580, 32.486401, 32.569653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805573, 32.185883, 32.794434>,  <42.163052, 31.857243, 32.857437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805573, 32.185883, 32.794434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517189, 32.460491, 32.832207>,  <42.344158, 32.625256, 32.854870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517189, 32.460491, 32.832207>,  <42.805573, 32.185883, 32.794434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517189, 32.460491, 32.832207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440623, 0.348956, 0.827092,
		0.534859, 0.637907, -0.554077,
		-0.720956, 0.686517, 0.094434,
		42.300903, 32.666447, 32.860538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070667, 32.669224, 33.256050>,  <42.805573, 32.185883, 32.794434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070667, 32.669224, 33.256050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711609, 32.843811, 33.231640>,  <42.496174, 32.948563, 33.216991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711609, 32.843811, 33.231640>,  <43.070667, 32.669224, 33.256050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711609, 32.843811, 33.231640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244979, 0.609281, 0.754163,
		0.366349, 0.662023, -0.653845,
		-0.897649, 0.436465, -0.061028,
		42.442314, 32.974751, 33.213333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109772, 33.377876, 32.978264>,  <43.070667, 32.669224, 33.256050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109772, 33.377876, 32.978264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802334, 33.311630, 33.225433>,  <42.617870, 33.271881, 33.373737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.802334, 33.311630, 33.225433>,  <43.109772, 33.377876, 32.978264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802334, 33.311630, 33.225433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271705, 0.789954, 0.549681,
		-0.579172, 0.590375, -0.562154,
		-0.768594, -0.165620, 0.617927,
		42.571754, 33.261944, 33.410812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689743, 33.991257, 33.107689>,  <43.109772, 33.377876, 32.978264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689743, 33.991257, 33.107689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615093, 33.738041, 33.408203>,  <42.570305, 33.586113, 33.588512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615093, 33.738041, 33.408203>,  <42.689743, 33.991257, 33.107689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615093, 33.738041, 33.408203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020336, 0.762069, 0.647177,
		-0.982221, 0.136058, -0.129349,
		-0.186626, -0.633040, 0.751286,
		42.559105, 33.548130, 33.633591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268604, 34.032204, 33.811668>,  <42.689743, 33.991257, 33.107689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268604, 34.032204, 33.811668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024178, 34.057205, 34.127312>,  <41.877522, 34.072208, 34.316696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024178, 34.057205, 34.127312>,  <42.268604, 34.032204, 33.811668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024178, 34.057205, 34.127312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759011, -0.236746, 0.606510,
		0.224730, 0.969559, 0.097224,
		-0.611064, 0.062507, 0.789109,
		41.840858, 34.075958, 34.364044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471756, 34.554043, 34.333015>,  <42.268604, 34.032204, 33.811668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471756, 34.554043, 34.333015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273998, 34.265217, 34.526588>,  <42.155342, 34.091919, 34.642731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273998, 34.265217, 34.526588>,  <42.471756, 34.554043, 34.333015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273998, 34.265217, 34.526588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808811, -0.178198, 0.560420,
		-0.318427, 0.668477, 0.672118,
		-0.494398, -0.722069, 0.483929,
		42.125679, 34.048595, 34.671768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390495, 34.642258, 35.041817>,  <42.471756, 34.554043, 34.333015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390495, 34.642258, 35.041817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446236, 34.259430, 34.940155>,  <42.479679, 34.029732, 34.879158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446236, 34.259430, 34.940155>,  <42.390495, 34.642258, 35.041817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446236, 34.259430, 34.940155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866165, -0.006586, 0.499715,
		-0.479936, -0.289781, 0.828063,
		0.139354, -0.957070, -0.254159,
		42.488041, 33.972309, 34.863907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598686, 34.186630, 35.665409>,  <42.390495, 34.642258, 35.041817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598686, 34.186630, 35.665409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705532, 34.031296, 35.312626>,  <42.769638, 33.938095, 35.100956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705532, 34.031296, 35.312626>,  <42.598686, 34.186630, 35.665409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705532, 34.031296, 35.312626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788737, -0.437725, 0.431614,
		-0.553666, -0.810921, 0.189373,
		0.267111, -0.388336, -0.881956,
		42.785667, 33.914795, 35.048038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632011, 33.343681, 35.538090>,  <42.598686, 34.186630, 35.665409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632011, 33.343681, 35.538090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902908, 33.542557, 35.321152>,  <43.065449, 33.661884, 35.190990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902908, 33.542557, 35.321152>,  <42.632011, 33.343681, 35.538090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902908, 33.542557, 35.321152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731609, -0.533245, 0.424733,
		-0.078028, -0.684433, -0.724889,
		0.677245, 0.497193, -0.542345,
		43.106083, 33.691715, 35.158447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058006, 32.806404, 35.226543>,  <42.632011, 33.343681, 35.538090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058006, 32.806404, 35.226543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285431, 33.133900, 35.258560>,  <43.421886, 33.330399, 35.277771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285431, 33.133900, 35.258560>,  <43.058006, 32.806404, 35.226543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285431, 33.133900, 35.258560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748849, -0.555381, 0.361631,
		0.340532, -0.145674, -0.928879,
		0.568562, 0.818738, 0.080038,
		43.456001, 33.379520, 35.282570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828934, 32.714912, 35.018764>,  <43.058006, 32.806404, 35.226543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828934, 32.714912, 35.018764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756283, 32.993618, 35.296333>,  <43.712692, 33.160839, 35.462875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756283, 32.993618, 35.296333>,  <43.828934, 32.714912, 35.018764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756283, 32.993618, 35.296333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654038, -0.441364, 0.614354,
		0.734333, 0.565438, -0.375546,
		-0.181626, 0.696762, 0.693927,
		43.701794, 33.202648, 35.504513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295742, 33.160065, 34.774223>,  <43.828934, 32.714912, 35.018764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295742, 33.160065, 34.774223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352596, 32.847454, 34.531239>,  <44.386711, 32.659885, 34.385448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352596, 32.847454, 34.531239>,  <44.295742, 33.160065, 34.774223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352596, 32.847454, 34.531239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393023, -0.607804, 0.690006,
		-0.908476, 0.140669, -0.393552,
		0.142140, -0.781529, -0.607461,
		44.395237, 32.612995, 34.348999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122982, 33.204792, 34.838577>,  <44.295742, 33.160065, 34.774223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122982, 33.204792, 34.838577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.215919, 32.922161, 35.105938>,  <45.271683, 32.752583, 35.266354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.215919, 32.922161, 35.105938>,  <45.122982, 33.204792, 34.838577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.215919, 32.922161, 35.105938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972634, -0.169382, 0.159039,
		0.000842, -0.687063, -0.726598,
		0.232343, -0.706579, 0.668403,
		45.285622, 32.710186, 35.306458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457863, 33.442131, 34.191063>,  <45.122982, 33.204792, 34.838577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457863, 33.442131, 34.191063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541935, 33.802837, 34.342133>,  <45.592381, 34.019260, 34.432774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541935, 33.802837, 34.342133>,  <45.457863, 33.442131, 34.191063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541935, 33.802837, 34.342133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976698, -0.210823, -0.040174,
		0.043395, 0.377320, -0.925066,
		0.210183, 0.901767, 0.377677,
		45.604988, 34.073368, 34.455437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903027, 33.858082, 33.692780>,  <45.457863, 33.442131, 34.191063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903027, 33.858082, 33.692780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.957878, 33.970604, 34.072689>,  <45.990788, 34.038116, 34.300632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.957878, 33.970604, 34.072689>,  <45.903027, 33.858082, 33.692780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.957878, 33.970604, 34.072689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974701, -0.209173, -0.078770,
		0.176507, 0.936543, -0.302874,
		0.137124, 0.281308, 0.949770,
		45.999016, 34.054996, 34.357620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.417030, 34.392387, 33.768620>,  <45.903027, 33.858082, 33.692780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.417030, 34.392387, 33.768620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419044, 34.193100, 34.115437>,  <46.420254, 34.073528, 34.323524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419044, 34.193100, 34.115437>,  <46.417030, 34.392387, 33.768620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.419044, 34.193100, 34.115437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938562, -0.296847, -0.176019,
		0.345073, 0.814656, 0.466111,
		0.005032, -0.498214, 0.867040,
		46.420555, 34.043636, 34.375549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.031113, 34.634254, 34.263027>,  <46.417030, 34.392387, 33.768620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.031113, 34.634254, 34.263027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928848, 34.255699, 34.342014>,  <46.867489, 34.028568, 34.389408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928848, 34.255699, 34.342014>,  <47.031113, 34.634254, 34.263027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.928848, 34.255699, 34.342014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966742, -0.251711, 0.045283,
		0.006850, 0.202478, 0.979263,
		-0.255660, -0.946385, 0.197469,
		46.852150, 33.971783, 34.401257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.422489, 34.348770, 34.731655>,  <47.031113, 34.634254, 34.263027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.422489, 34.348770, 34.731655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325207, 33.997150, 34.567646>,  <47.266838, 33.786179, 34.469238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325207, 33.997150, 34.567646>,  <47.422489, 34.348770, 34.731655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.325207, 33.997150, 34.567646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919281, -0.343759, 0.191709,
		-0.309472, -0.330305, 0.891698,
		-0.243206, -0.879050, -0.410027,
		47.252243, 33.733437, 34.444637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.061596, 34.849346, 34.714714>,  <47.422489, 34.348770, 34.731655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.061596, 34.849346, 34.714714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801968, 34.960453, 34.997993>,  <47.646191, 35.027115, 35.167961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801968, 34.960453, 34.997993>,  <48.061596, 34.849346, 34.714714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.801968, 34.960453, 34.997993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195262, -0.960598, 0.197799,
		0.735238, -0.009899, 0.677736,
		-0.649074, 0.277765, 0.708201,
		47.607246, 35.043781, 35.210453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.649860, 32.075787, 22.218836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299179, 32.266510, 22.193390>,  <38.088772, 32.380943, 22.178122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299179, 32.266510, 22.193390>,  <38.649860, 32.075787, 22.218836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299179, 32.266510, 22.193390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187849, -0.217607, 0.957789,
		0.442843, 0.851644, 0.280345,
		-0.876700, 0.476813, -0.063614,
		38.036171, 32.409554, 22.174305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685917, 32.651501, 22.658785>,  <38.649860, 32.075787, 22.218836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685917, 32.651501, 22.658785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304787, 32.541058, 22.608366>,  <38.076107, 32.474792, 22.578115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304787, 32.541058, 22.608366>,  <38.685917, 32.651501, 22.658785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304787, 32.541058, 22.608366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117324, -0.047956, 0.991935,
		-0.279923, 0.959930, 0.013300,
		-0.952826, -0.276105, -0.126047,
		38.018940, 32.458225, 22.570551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448715, 32.892483, 23.315683>,  <38.685917, 32.651501, 22.658785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448715, 32.892483, 23.315683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.149574, 32.687649, 23.146688>,  <37.970089, 32.564751, 23.045292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.149574, 32.687649, 23.146688>,  <38.448715, 32.892483, 23.315683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149574, 32.687649, 23.146688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409033, -0.145829, 0.900792,
		-0.522891, 0.846466, -0.100401,
		-0.747848, -0.512083, -0.422486,
		37.925220, 32.534023, 23.019943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991566, 33.064678, 23.694572>,  <38.448715, 32.892483, 23.315683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991566, 33.064678, 23.694572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828075, 32.741951, 23.523933>,  <37.729980, 32.548313, 23.421549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828075, 32.741951, 23.523933>,  <37.991566, 33.064678, 23.694572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828075, 32.741951, 23.523933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403171, -0.259725, 0.877494,
		-0.818776, 0.530650, -0.219127,
		-0.408730, -0.806817, -0.426599,
		37.705456, 32.499905, 23.395954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336090, 33.141190, 23.753941>,  <37.991566, 33.064678, 23.694572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336090, 33.141190, 23.753941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.384304, 32.745659, 23.718855>,  <37.413231, 32.508339, 23.697803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.384304, 32.745659, 23.718855>,  <37.336090, 33.141190, 23.753941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384304, 32.745659, 23.718855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376760, -0.127313, 0.917521,
		-0.918436, -0.077544, -0.387895,
		0.120532, -0.988827, -0.087713,
		37.420464, 32.449009, 23.692541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790897, 32.883121, 24.073664>,  <37.336090, 33.141190, 23.753941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790897, 32.883121, 24.073664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.050472, 32.578861, 24.080475>,  <37.206219, 32.396305, 24.084562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.050472, 32.578861, 24.080475>,  <36.790897, 32.883121, 24.073664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050472, 32.578861, 24.080475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201330, -0.150092, 0.967956,
		-0.733722, -0.631570, -0.250542,
		0.648936, -0.760652, 0.017028,
		37.245152, 32.350666, 24.085583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340614, 32.300041, 24.292488>,  <36.790897, 32.883121, 24.073664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340614, 32.300041, 24.292488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728371, 32.244514, 24.373489>,  <36.961025, 32.211197, 24.422091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728371, 32.244514, 24.373489>,  <36.340614, 32.300041, 24.292488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728371, 32.244514, 24.373489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221014, -0.134239, 0.965988,
		-0.106899, -0.981179, -0.160809,
		0.969394, -0.138804, 0.202504,
		37.019188, 32.202869, 24.434240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282410, 32.012806, 24.832254>,  <36.340614, 32.300041, 24.292488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282410, 32.012806, 24.832254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677422, 32.068920, 24.860815>,  <36.914429, 32.102589, 24.877953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677422, 32.068920, 24.860815>,  <36.282410, 32.012806, 24.832254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677422, 32.068920, 24.860815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030210, -0.276266, 0.960606,
		0.154488, -0.950787, -0.268584,
		0.987533, 0.140288, 0.071404,
		36.973682, 32.111008, 24.882236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519257, 31.431343, 25.124678>,  <36.282410, 32.012806, 24.832254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519257, 31.431343, 25.124678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779236, 31.716345, 25.230438>,  <36.935223, 31.887346, 25.293896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779236, 31.716345, 25.230438>,  <36.519257, 31.431343, 25.124678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779236, 31.716345, 25.230438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043934, -0.382552, 0.922889,
		0.758711, -0.588210, -0.279941,
		0.649944, 0.712504, 0.264404,
		36.974220, 31.930096, 25.309759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953163, 31.155058, 25.584797>,  <36.519257, 31.431343, 25.124678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953163, 31.155058, 25.584797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.021038, 31.542700, 25.656393>,  <37.061764, 31.775286, 25.699350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.021038, 31.542700, 25.656393>,  <36.953163, 31.155058, 25.584797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021038, 31.542700, 25.656393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080314, -0.194621, 0.977585,
		0.982220, -0.151508, -0.110858,
		0.169687, 0.969107, 0.178993,
		37.071945, 31.833431, 25.710091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513180, 31.136662, 26.094421>,  <36.953163, 31.155058, 25.584797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513180, 31.136662, 26.094421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.372635, 31.511139, 26.098146>,  <37.288307, 31.735825, 26.100382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.372635, 31.511139, 26.098146>,  <37.513180, 31.136662, 26.094421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372635, 31.511139, 26.098146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061941, 0.013321, 0.997991,
		0.934187, 0.351238, -0.062669,
		-0.351367, 0.936191, 0.009312,
		37.267223, 31.791996, 26.100941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035355, 31.366240, 26.521275>,  <37.513180, 31.136662, 26.094421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035355, 31.366240, 26.521275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710449, 31.599552, 26.520214>,  <37.515507, 31.739540, 26.519579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710449, 31.599552, 26.520214>,  <38.035355, 31.366240, 26.521275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710449, 31.599552, 26.520214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144435, 0.205532, 0.967934,
		0.565123, 0.785836, -0.251192,
		-0.812265, 0.583283, -0.002649,
		37.466770, 31.774536, 26.519419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182999, 32.009003, 26.777199>,  <38.035355, 31.366240, 26.521275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182999, 32.009003, 26.777199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796471, 31.931044, 26.844421>,  <37.564552, 31.884270, 26.884754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796471, 31.931044, 26.844421>,  <38.182999, 32.009003, 26.777199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796471, 31.931044, 26.844421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145591, 0.124458, 0.981485,
		-0.212200, 0.972896, -0.091892,
		-0.966320, -0.194893, 0.168055,
		37.506577, 31.872576, 26.894838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993980, 32.571953, 27.090855>,  <38.182999, 32.009003, 26.777199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993980, 32.571953, 27.090855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729355, 32.293533, 27.202461>,  <37.570580, 32.126484, 27.269424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729355, 32.293533, 27.202461>,  <37.993980, 32.571953, 27.090855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729355, 32.293533, 27.202461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169564, 0.223586, 0.959822,
		-0.730464, 0.682297, -0.029892,
		-0.661567, -0.696046, 0.279014,
		37.530884, 32.084721, 27.286165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496441, 32.971355, 27.535112>,  <37.993980, 32.571953, 27.090855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496441, 32.971355, 27.535112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.424324, 32.588543, 27.625956>,  <37.381054, 32.358856, 27.680462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.424324, 32.588543, 27.625956>,  <37.496441, 32.971355, 27.535112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424324, 32.588543, 27.625956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247884, 0.179229, 0.952066,
		-0.951865, 0.227951, 0.204919,
		-0.180297, -0.957035, 0.227107,
		37.370235, 32.301434, 27.694088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029263, 32.901367, 28.065445>,  <37.496441, 32.971355, 27.535112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029263, 32.901367, 28.065445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234642, 32.558361, 28.078363>,  <37.357868, 32.352558, 28.086115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234642, 32.558361, 28.078363>,  <37.029263, 32.901367, 28.065445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234642, 32.558361, 28.078363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156783, 0.130747, 0.978940,
		-0.843678, -0.497570, 0.201575,
		0.513446, -0.857514, 0.032297,
		37.388676, 32.301105, 28.088053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927971, 32.717968, 28.677528>,  <37.029263, 32.901367, 28.065445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927971, 32.717968, 28.677528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203518, 32.435131, 28.613672>,  <37.368847, 32.265430, 28.575359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203518, 32.435131, 28.613672>,  <36.927971, 32.717968, 28.677528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203518, 32.435131, 28.613672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087694, -0.137317, 0.986638,
		-0.719565, -0.693660, -0.032585,
		0.688866, -0.707092, -0.159639,
		37.410179, 32.223003, 28.565781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675766, 32.231247, 29.104286>,  <36.927971, 32.717968, 28.677528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675766, 32.231247, 29.104286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062656, 32.174889, 29.019798>,  <37.294792, 32.141075, 28.969105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.062656, 32.174889, 29.019798>,  <36.675766, 32.231247, 29.104286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062656, 32.174889, 29.019798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179145, -0.210805, 0.960973,
		-0.179915, -0.967322, -0.178658,
		0.967232, -0.140888, -0.211218,
		37.352825, 32.132618, 28.956432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821636, 31.565794, 29.463087>,  <36.675766, 32.231247, 29.104286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821636, 31.565794, 29.463087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.171589, 31.747284, 29.395313>,  <37.381561, 31.856178, 29.354649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.171589, 31.747284, 29.395313>,  <36.821636, 31.565794, 29.463087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171589, 31.747284, 29.395313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292853, -0.216947, 0.931220,
		0.385761, -0.864331, -0.322679,
		0.874886, 0.453725, -0.169432,
		37.434055, 31.883402, 29.344484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436214, 31.112947, 29.701935>,  <36.821636, 31.565794, 29.463087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436214, 31.112947, 29.701935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.599682, 31.478022, 29.701738>,  <37.697762, 31.697065, 29.701620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.599682, 31.478022, 29.701738>,  <37.436214, 31.112947, 29.701935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599682, 31.478022, 29.701738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411483, -0.183764, 0.892700,
		0.814663, -0.365017, -0.450652,
		0.408664, 0.912685, -0.000493,
		37.722282, 31.751827, 29.701590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130939, 31.164427, 30.028229>,  <37.436214, 31.112947, 29.701935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130939, 31.164427, 30.028229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031864, 31.551939, 30.032524>,  <37.972420, 31.784447, 30.035101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031864, 31.551939, 30.032524>,  <38.130939, 31.164427, 30.028229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031864, 31.551939, 30.032524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439339, 0.102433, 0.892462,
		0.863501, 0.225767, -0.450994,
		-0.247685, 0.968781, 0.010737,
		37.957558, 31.842573, 30.035746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579235, 31.146332, 30.648937>,  <38.130939, 31.164427, 30.028229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579235, 31.146332, 30.648937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936977, 31.028261, 30.783401>,  <39.151623, 30.957418, 30.864080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936977, 31.028261, 30.783401>,  <38.579235, 31.146332, 30.648937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936977, 31.028261, 30.783401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376374, 0.090286, -0.922058,
		0.241821, 0.951167, 0.191845,
		0.894352, -0.295179, 0.336161,
		39.205284, 30.939707, 30.884251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029560, 31.452610, 30.249008>,  <38.579235, 31.146332, 30.648937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029560, 31.452610, 30.249008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.259995, 31.158752, 30.392349>,  <39.398254, 30.982437, 30.478354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.259995, 31.158752, 30.392349>,  <39.029560, 31.452610, 30.249008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259995, 31.158752, 30.392349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386929, -0.141081, -0.911253,
		0.720004, 0.663621, 0.202980,
		0.576090, -0.734645, 0.358353,
		39.432823, 30.938358, 30.499855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703186, 31.597078, 30.001865>,  <39.029560, 31.452610, 30.249008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703186, 31.597078, 30.001865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.718781, 31.208643, 30.096073>,  <39.728138, 30.975582, 30.152597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.718781, 31.208643, 30.096073>,  <39.703186, 31.597078, 30.001865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718781, 31.208643, 30.096073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418379, -0.198180, -0.886388,
		0.907435, 0.133097, 0.398555,
		0.038990, -0.971087, 0.235520,
		39.730476, 30.917316, 30.166729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330029, 31.356787, 29.737267>,  <39.703186, 31.597078, 30.001865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330029, 31.356787, 29.737267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.114956, 31.023794, 29.790751>,  <39.985912, 30.823999, 29.822840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.114956, 31.023794, 29.790751>,  <40.330029, 31.356787, 29.737267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114956, 31.023794, 29.790751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297060, -0.335453, -0.893995,
		0.789086, -0.440964, 0.427662,
		-0.537680, -0.832480, 0.133708,
		39.953651, 30.774050, 29.830862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725739, 30.793983, 29.514757>,  <40.330029, 31.356787, 29.737267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725739, 30.793983, 29.514757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360615, 30.630758, 29.508251>,  <40.141541, 30.532824, 29.504349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360615, 30.630758, 29.508251>,  <40.725739, 30.793983, 29.514757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360615, 30.630758, 29.508251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101465, -0.188034, -0.976907,
		0.395582, -0.893380, 0.213043,
		-0.912809, -0.408063, -0.016264,
		40.086773, 30.508339, 29.503372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744141, 30.145802, 29.155890>,  <40.725739, 30.793983, 29.514757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744141, 30.145802, 29.155890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360294, 30.252234, 29.119371>,  <40.129986, 30.316093, 29.097460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.360294, 30.252234, 29.119371>,  <40.744141, 30.145802, 29.155890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360294, 30.252234, 29.119371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029098, -0.228913, -0.973012,
		-0.279800, -0.936375, 0.211926,
		-0.959617, 0.266082, -0.091296,
		40.072411, 30.332058, 29.091982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566143, 29.629131, 28.791275>,  <40.744141, 30.145802, 29.155890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566143, 29.629131, 28.791275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271725, 29.896509, 28.748537>,  <40.095074, 30.056936, 28.722895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271725, 29.896509, 28.748537>,  <40.566143, 29.629131, 28.791275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271725, 29.896509, 28.748537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052060, -0.213267, -0.975606,
		-0.674927, -0.712528, 0.191773,
		-0.736045, 0.668447, -0.106846,
		40.050911, 30.097044, 28.716484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067574, 29.279074, 28.382196>,  <40.566143, 29.629131, 28.791275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067574, 29.279074, 28.382196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992935, 29.669392, 28.336575>,  <39.948154, 29.903582, 28.309200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992935, 29.669392, 28.336575>,  <40.067574, 29.279074, 28.382196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992935, 29.669392, 28.336575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048069, -0.125023, -0.990989,
		-0.981261, -0.179429, 0.070234,
		-0.186593, 0.975794, -0.114056,
		39.936958, 29.962130, 28.302359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572384, 29.253757, 27.821619>,  <40.067574, 29.279074, 28.382196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572384, 29.253757, 27.821619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682323, 29.638248, 27.812624>,  <39.748287, 29.868942, 27.807228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682323, 29.638248, 27.812624>,  <39.572384, 29.253757, 27.821619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682323, 29.638248, 27.812624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009983, -0.020532, -0.999739,
		-0.961437, 0.274999, 0.003953,
		0.274846, 0.961225, -0.022486,
		39.764778, 29.926617, 27.805878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070091, 29.624378, 27.327383>,  <39.572384, 29.253757, 27.821619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070091, 29.624378, 27.327383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.403980, 29.843031, 27.354015>,  <39.604313, 29.974222, 27.369995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.403980, 29.843031, 27.354015>,  <39.070091, 29.624378, 27.327383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403980, 29.843031, 27.354015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028272, 0.163287, -0.986173,
		-0.549946, 0.821297, 0.151753,
		0.834721, 0.546633, 0.066579,
		39.654396, 30.007021, 27.373989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923500, 30.105312, 26.866070>,  <39.070091, 29.624378, 27.327383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923500, 30.105312, 26.866070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.317459, 30.122667, 26.933111>,  <39.553833, 30.133080, 26.973337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.317459, 30.122667, 26.933111>,  <38.923500, 30.105312, 26.866070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317459, 30.122667, 26.933111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152429, 0.241741, -0.958294,
		-0.082094, 0.969370, 0.231478,
		0.984899, 0.043387, 0.167605,
		39.612930, 30.135683, 26.983393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147385, 30.670094, 26.468683>,  <38.923500, 30.105312, 26.866070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147385, 30.670094, 26.468683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.472866, 30.446062, 26.530905>,  <39.668156, 30.311644, 26.568237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.472866, 30.446062, 26.530905>,  <39.147385, 30.670094, 26.468683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472866, 30.446062, 26.530905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341063, 0.243323, -0.908003,
		0.470702, 0.791900, 0.389015,
		0.813705, -0.560078, 0.155555,
		39.716976, 30.278038, 26.577572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734554, 31.092680, 26.475660>,  <39.147385, 30.670094, 26.468683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734554, 31.092680, 26.475660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850666, 30.729830, 26.353765>,  <39.920334, 30.512119, 26.280628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.850666, 30.729830, 26.353765>,  <39.734554, 31.092680, 26.475660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850666, 30.729830, 26.353765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338231, 0.395151, -0.854081,
		0.895173, 0.144854, 0.421523,
		0.290283, -0.907123, -0.304735,
		39.937752, 30.457693, 26.262344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288021, 31.222710, 25.987938>,  <39.734554, 31.092680, 26.475660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288021, 31.222710, 25.987938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.141571, 30.861616, 25.897585>,  <40.053703, 30.644960, 25.843372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.141571, 30.861616, 25.897585>,  <40.288021, 31.222710, 25.987938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141571, 30.861616, 25.897585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278705, 0.125220, -0.952178,
		0.887850, -0.411568, 0.205751,
		-0.366122, -0.902735, -0.225883,
		40.031734, 30.590796, 25.829821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702660, 31.000214, 25.506546>,  <40.288021, 31.222710, 25.987938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702660, 31.000214, 25.506546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.405300, 30.740479, 25.442404>,  <40.226883, 30.584637, 25.403919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.405300, 30.740479, 25.442404>,  <40.702660, 31.000214, 25.506546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405300, 30.740479, 25.442404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218774, -0.009506, -0.975729,
		0.632055, -0.760440, 0.149125,
		-0.743401, -0.649339, -0.160356,
		40.182281, 30.545677, 25.394297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955669, 30.490452, 24.937828>,  <40.702660, 31.000214, 25.506546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955669, 30.490452, 24.937828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.555809, 30.495476, 24.928520>,  <40.315891, 30.498491, 24.922935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.555809, 30.495476, 24.928520>,  <40.955669, 30.490452, 24.937828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555809, 30.495476, 24.928520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024763, 0.135913, -0.990411,
		-0.009279, -0.990641, -0.136176,
		-0.999650, 0.012563, -0.023270,
		40.255913, 30.499245, 24.921539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807709, 30.089567, 24.383099>,  <40.955669, 30.490452, 24.937828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807709, 30.089567, 24.383099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.464195, 30.288198, 24.433542>,  <40.258087, 30.407377, 24.463808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.464195, 30.288198, 24.433542>,  <40.807709, 30.089567, 24.383099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464195, 30.288198, 24.433542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152202, -0.012238, -0.988274,
		-0.489211, -0.867906, 0.086090,
		-0.858783, 0.496578, 0.126110,
		40.206562, 30.437172, 24.471375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372372, 29.819845, 23.913200>,  <40.807709, 30.089567, 24.383099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372372, 29.819845, 23.913200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214066, 30.176373, 24.001669>,  <40.119080, 30.390289, 24.054750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.214066, 30.176373, 24.001669>,  <40.372372, 29.819845, 23.913200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214066, 30.176373, 24.001669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206227, 0.148426, -0.967182,
		-0.894896, -0.428390, 0.125072,
		-0.395767, 0.891320, 0.221171,
		40.095337, 30.443769, 24.068020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785530, 29.904001, 23.548805>,  <40.372372, 29.819845, 23.913200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785530, 29.904001, 23.548805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877293, 30.281998, 23.642073>,  <39.932350, 30.508795, 23.698034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877293, 30.281998, 23.642073>,  <39.785530, 29.904001, 23.548805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877293, 30.281998, 23.642073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162012, 0.273291, -0.948190,
		-0.959753, 0.179742, 0.215794,
		0.229404, 0.944989, 0.233171,
		39.946114, 30.565495, 23.712025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.382896, 30.277229, 23.081156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.602444, 30.578968, 23.225216>,  <39.734173, 30.760012, 23.311651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.602444, 30.578968, 23.225216>,  <39.382896, 30.277229, 23.081156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602444, 30.578968, 23.225216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190080, 0.532190, -0.825011,
		-0.814013, 0.384362, 0.435487,
		0.548865, 0.754347, 0.360150,
		39.767105, 30.805273, 23.333261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019398, 30.998549, 22.926849>,  <39.382896, 30.277229, 23.081156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019398, 30.998549, 22.926849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.413254, 31.043798, 22.980043>,  <39.649567, 31.070950, 23.011959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.413254, 31.043798, 22.980043>,  <39.019398, 30.998549, 22.926849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413254, 31.043798, 22.980043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006715, 0.736587, -0.676310,
		-0.174463, 0.666816, 0.724514,
		0.984641, 0.113126, 0.132985,
		39.708645, 31.077736, 23.019939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045071, 31.663895, 22.821320>,  <39.019398, 30.998549, 22.926849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045071, 31.663895, 22.821320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.411407, 31.511715, 22.769939>,  <39.631210, 31.420406, 22.739111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.411407, 31.511715, 22.769939>,  <39.045071, 31.663895, 22.821320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411407, 31.511715, 22.769939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119057, 0.562777, -0.817990,
		0.383493, 0.733853, 0.560708,
		0.915838, -0.380450, -0.128451,
		39.686157, 31.397579, 22.731403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448715, 32.260632, 22.583740>,  <39.045071, 31.663895, 22.821320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448715, 32.260632, 22.583740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.701363, 31.955736, 22.527084>,  <39.852951, 31.772800, 22.493092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.701363, 31.955736, 22.527084>,  <39.448715, 32.260632, 22.583740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701363, 31.955736, 22.527084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285540, 0.398561, -0.871560,
		0.720785, 0.510047, 0.469385,
		0.631614, -0.762235, -0.141638,
		39.890846, 31.727066, 22.484592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199032, 32.514954, 22.477383>,  <39.448715, 32.260632, 22.583740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199032, 32.514954, 22.477383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.144726, 32.157825, 22.305595>,  <40.112144, 31.943548, 22.202522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.144726, 32.157825, 22.305595>,  <40.199032, 32.514954, 22.477383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144726, 32.157825, 22.305595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151631, 0.409650, -0.899552,
		0.979069, -0.187246, 0.079764,
		-0.135762, -0.892819, -0.429468,
		40.103996, 31.889980, 22.176754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623775, 32.572681, 21.949671>,  <40.199032, 32.514954, 22.477383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623775, 32.572681, 21.949671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.411694, 32.250500, 21.843744>,  <40.284447, 32.057190, 21.780188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.411694, 32.250500, 21.843744>,  <40.623775, 32.572681, 21.949671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411694, 32.250500, 21.843744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249341, 0.150399, -0.956666,
		0.810380, -0.573255, 0.121092,
		-0.530201, -0.805456, -0.264816,
		40.252632, 32.008862, 21.764299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082886, 32.039890, 21.581091>,  <40.623775, 32.572681, 21.949671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082886, 32.039890, 21.581091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.701126, 32.005783, 21.466648>,  <40.472073, 31.985317, 21.397982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.701126, 32.005783, 21.466648>,  <41.082886, 32.039890, 21.581091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701126, 32.005783, 21.466648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268531, 0.173600, -0.947499,
		0.130459, -0.981118, -0.142786,
		-0.954396, -0.085268, -0.286108,
		40.414806, 31.980202, 21.380816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034130, 31.587069, 21.059265>,  <41.082886, 32.039890, 21.581091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034130, 31.587069, 21.059265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.704685, 31.809038, 21.012405>,  <40.507019, 31.942221, 20.984289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.704685, 31.809038, 21.012405>,  <41.034130, 31.587069, 21.059265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704685, 31.809038, 21.012405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228877, 0.136211, -0.963879,
		-0.518924, -0.820673, -0.239194,
		-0.823610, 0.554926, -0.117150,
		40.457603, 31.975515, 20.977261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591236, 31.190153, 20.519880>,  <41.034130, 31.587069, 21.059265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591236, 31.190153, 20.519880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.491856, 31.577446, 20.508612>,  <40.432228, 31.809822, 20.501850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.491856, 31.577446, 20.508612>,  <40.591236, 31.190153, 20.519880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491856, 31.577446, 20.508612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136357, 0.006167, -0.990640,
		-0.958998, -0.249970, -0.133558,
		-0.248454, 0.968234, -0.028171,
		40.417320, 31.867916, 20.500160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067593, 31.262201, 19.975374>,  <40.591236, 31.190153, 20.519880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067593, 31.262201, 19.975374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.212963, 31.631273, 20.026888>,  <40.300186, 31.852716, 20.057796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.212963, 31.631273, 20.026888>,  <40.067593, 31.262201, 19.975374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212963, 31.631273, 20.026888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166335, 0.071750, -0.983455,
		-0.916653, 0.378837, -0.127398,
		0.363428, 0.922678, 0.128784,
		40.321991, 31.908077, 20.065523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832047, 31.618366, 19.316788>,  <40.067593, 31.262201, 19.975374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832047, 31.618366, 19.316788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.101608, 31.862057, 19.483973>,  <40.263348, 32.008270, 19.584284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.101608, 31.862057, 19.483973>,  <39.832047, 31.618366, 19.316788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101608, 31.862057, 19.483973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277815, 0.315240, -0.907437,
		-0.684594, 0.727644, 0.043189,
		0.673906, 0.609228, 0.417962,
		40.303780, 32.044827, 19.609362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808784, 32.292763, 18.895227>,  <39.832047, 31.618366, 19.316788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808784, 32.292763, 18.895227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.169163, 32.263672, 19.066343>,  <40.385391, 32.246220, 19.169012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.169163, 32.263672, 19.066343>,  <39.808784, 32.292763, 18.895227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169163, 32.263672, 19.066343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428734, 0.301232, -0.851731,
		-0.066921, 0.950773, 0.302575,
		0.900949, -0.072726, 0.427788,
		40.439445, 32.241856, 19.194679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145313, 32.823288, 18.553541>,  <39.808784, 32.292763, 18.895227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145313, 32.823288, 18.553541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.433208, 32.594093, 18.710342>,  <40.605946, 32.456577, 18.804422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.433208, 32.594093, 18.710342>,  <40.145313, 32.823288, 18.553541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433208, 32.594093, 18.710342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615653, 0.265810, -0.741833,
		0.320864, 0.775260, 0.544075,
		0.719734, -0.572990, 0.392002,
		40.649128, 32.422195, 18.827944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708691, 33.280643, 18.577690>,  <40.145313, 32.823288, 18.553541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708691, 33.280643, 18.577690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844624, 32.904648, 18.565472>,  <40.926182, 32.679050, 18.558140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844624, 32.904648, 18.565472>,  <40.708691, 33.280643, 18.577690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844624, 32.904648, 18.565472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625600, 0.250184, -0.738940,
		0.702238, 0.232005, 0.673079,
		0.339832, -0.939990, -0.030546,
		40.946571, 32.622650, 18.556307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421455, 33.370983, 18.661865>,  <40.708691, 33.280643, 18.577690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421455, 33.370983, 18.661865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.386528, 33.001808, 18.511902>,  <41.365574, 32.780304, 18.421923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.386528, 33.001808, 18.511902>,  <41.421455, 33.370983, 18.661865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386528, 33.001808, 18.511902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448916, 0.299514, -0.841883,
		0.889298, -0.241814, 0.388170,
		-0.087317, -0.922940, -0.374911,
		41.360332, 32.724926, 18.399429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995979, 33.180668, 18.441275>,  <41.421455, 33.370983, 18.661865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995979, 33.180668, 18.441275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.758030, 32.940838, 18.227121>,  <41.615261, 32.796940, 18.098629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.758030, 32.940838, 18.227121>,  <41.995979, 33.180668, 18.441275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758030, 32.940838, 18.227121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455452, 0.297402, -0.839116,
		0.662338, -0.743008, 0.096161,
		-0.594872, -0.599575, -0.535385,
		41.579567, 32.760963, 18.066505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403400, 32.945934, 17.845310>,  <41.995979, 33.180668, 18.441275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403400, 32.945934, 17.845310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027988, 32.872379, 17.728458>,  <41.802742, 32.828247, 17.658346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027988, 32.872379, 17.728458>,  <42.403400, 32.945934, 17.845310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027988, 32.872379, 17.728458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261005, 0.175798, -0.949195,
		0.225909, -0.967097, -0.116994,
		-0.938531, -0.183896, -0.292132,
		41.746429, 32.817211, 17.640820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423485, 32.517551, 17.284119>,  <42.403400, 32.945934, 17.845310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423485, 32.517551, 17.284119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.065201, 32.693230, 17.256371>,  <41.850231, 32.798637, 17.239721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.065201, 32.693230, 17.256371>,  <42.423485, 32.517551, 17.284119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065201, 32.693230, 17.256371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168873, 0.191697, -0.966817,
		-0.411326, -0.877700, -0.245874,
		-0.895708, 0.439198, -0.069370,
		41.796490, 32.824989, 17.235559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221844, 32.384960, 16.538355>,  <42.423485, 32.517551, 17.284119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221844, 32.384960, 16.538355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.982887, 32.673130, 16.679272>,  <41.839512, 32.846031, 16.763821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.982887, 32.673130, 16.679272>,  <42.221844, 32.384960, 16.538355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982887, 32.673130, 16.679272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092219, 0.498093, -0.862206,
		-0.796628, -0.482589, -0.363994,
		-0.597394, 0.720424, 0.352291,
		41.803669, 32.889256, 16.784960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746990, 32.448601, 15.996674>,  <42.221844, 32.384960, 16.538355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746990, 32.448601, 15.996674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.731201, 32.778412, 16.222450>,  <41.721729, 32.976299, 16.357916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.731201, 32.778412, 16.222450>,  <41.746990, 32.448601, 15.996674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731201, 32.778412, 16.222450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009727, 0.565173, -0.824915,
		-0.999173, -0.027071, -0.030329,
		-0.039472, 0.824528, 0.564443,
		41.719360, 33.025772, 16.391783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180073, 32.879478, 15.772768>,  <41.746990, 32.448601, 15.996674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180073, 32.879478, 15.772768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.482635, 33.090538, 15.927391>,  <41.664173, 33.217175, 16.020164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.482635, 33.090538, 15.927391>,  <41.180073, 32.879478, 15.772768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482635, 33.090538, 15.927391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113835, 0.475767, -0.872174,
		-0.644116, 0.703725, 0.299810,
		0.756411, 0.527652, 0.386557,
		41.709560, 33.248833, 16.043358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993286, 33.532398, 15.585554>,  <41.180073, 32.879478, 15.772768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993286, 33.532398, 15.585554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.372463, 33.593723, 15.697192>,  <41.599972, 33.630520, 15.764175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.372463, 33.593723, 15.697192>,  <40.993286, 33.532398, 15.585554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372463, 33.593723, 15.697192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129470, 0.615183, -0.777681,
		-0.290925, 0.773333, 0.563310,
		0.947945, 0.153315, 0.279096,
		41.656845, 33.639717, 15.780921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123848, 34.151112, 15.485224>,  <40.993286, 33.532398, 15.585554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123848, 34.151112, 15.485224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.489178, 33.989563, 15.464327>,  <41.708374, 33.892635, 15.451789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.489178, 33.989563, 15.464327>,  <41.123848, 34.151112, 15.485224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489178, 33.989563, 15.464327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197503, 0.551476, -0.810473,
		0.356137, 0.729906, 0.583441,
		0.913323, -0.403871, -0.052243,
		41.763176, 33.868401, 15.448654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970604, 34.854031, 15.096786>,  <41.123848, 34.151112, 15.485224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970604, 34.854031, 15.096786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.955860, 35.243614, 15.007304>,  <40.947014, 35.477364, 14.953615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.955860, 35.243614, 15.007304>,  <40.970604, 34.854031, 15.096786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955860, 35.243614, 15.007304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463381, 0.181679, 0.867335,
		0.885392, 0.135626, 0.444619,
		-0.036855, 0.973960, -0.223704,
		40.944805, 35.535801, 14.940193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313034, 35.359051, 15.606524>,  <40.970604, 34.854031, 15.096786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313034, 35.359051, 15.606524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.014580, 35.583328, 15.462914>,  <40.835506, 35.717896, 15.376747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.014580, 35.583328, 15.462914>,  <41.313034, 35.359051, 15.606524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014580, 35.583328, 15.462914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410823, 0.036627, 0.910979,
		0.523933, 0.827211, 0.203018,
		-0.746136, 0.560696, -0.359027,
		40.790737, 35.751537, 15.355206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246433, 36.006577, 15.988224>,  <41.313034, 35.359051, 15.606524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246433, 36.006577, 15.988224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.899765, 35.886677, 15.828708>,  <40.691765, 35.814735, 15.732998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.899765, 35.886677, 15.828708>,  <41.246433, 36.006577, 15.988224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899765, 35.886677, 15.828708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415303, -0.009417, 0.909635,
		-0.276418, 0.953971, -0.116325,
		-0.866670, -0.299750, -0.398790,
		40.639763, 35.796753, 15.709071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755161, 36.282993, 16.468599>,  <41.246433, 36.006577, 15.988224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755161, 36.282993, 16.468599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.534523, 36.013981, 16.271236>,  <40.402142, 35.852573, 16.152819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.534523, 36.013981, 16.271236>,  <40.755161, 36.282993, 16.468599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534523, 36.013981, 16.271236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561725, -0.137782, 0.815770,
		-0.616612, 0.727131, -0.301778,
		-0.551592, -0.672530, -0.493406,
		40.369045, 35.812222, 16.123215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044289, 36.517906, 16.570253>,  <40.755161, 36.282993, 16.468599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044289, 36.517906, 16.570253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.047634, 36.128025, 16.480921>,  <40.049641, 35.894096, 16.427320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.047634, 36.128025, 16.480921>,  <40.044289, 36.517906, 16.570253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047634, 36.128025, 16.480921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631714, -0.178278, 0.754423,
		-0.775156, 0.134775, -0.617226,
		0.008360, -0.974706, -0.223333,
		40.050144, 35.835613, 16.413921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312286, 36.219074, 16.677355>,  <40.044289, 36.517906, 16.570253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312286, 36.219074, 16.677355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.570328, 35.913467, 16.673063>,  <39.725151, 35.730103, 16.670488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.570328, 35.913467, 16.673063>,  <39.312286, 36.219074, 16.677355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570328, 35.913467, 16.673063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510586, -0.441474, 0.737836,
		-0.568460, -0.470500, -0.674895,
		0.645100, -0.764023, -0.010730,
		39.763859, 35.684261, 16.669846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881836, 35.700752, 16.766647>,  <39.312286, 36.219074, 16.677355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881836, 35.700752, 16.766647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.245865, 35.568710, 16.866884>,  <39.464283, 35.489487, 16.927027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.245865, 35.568710, 16.866884>,  <38.881836, 35.700752, 16.766647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245865, 35.568710, 16.866884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388425, -0.468492, 0.793499,
		-0.144535, -0.819480, -0.554583,
		0.910074, -0.330103, 0.250593,
		39.518887, 35.469681, 16.942062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742008, 35.110317, 16.966064>,  <38.881836, 35.700752, 16.766647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742008, 35.110317, 16.966064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.098320, 35.197659, 17.125483>,  <39.312107, 35.250061, 17.221134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.098320, 35.197659, 17.125483>,  <38.742008, 35.110317, 16.966064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098320, 35.197659, 17.125483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335203, -0.276471, 0.900668,
		0.306847, -0.935889, -0.173082,
		0.890777, 0.218350, 0.398547,
		39.365555, 35.263165, 17.245047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869354, 34.544750, 17.392761>,  <38.742008, 35.110317, 16.966064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869354, 34.544750, 17.392761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123753, 34.814011, 17.543692>,  <39.276390, 34.975567, 17.634251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123753, 34.814011, 17.543692>,  <38.869354, 34.544750, 17.392761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123753, 34.814011, 17.543692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231729, -0.299803, 0.925430,
		0.736077, -0.676008, -0.034685,
		0.635997, 0.673150, 0.377328,
		39.314552, 35.015957, 17.656891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290962, 34.154026, 17.803165>,  <38.869354, 34.544750, 17.392761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290962, 34.154026, 17.803165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331497, 34.525127, 17.946838>,  <39.355816, 34.747787, 18.033041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331497, 34.525127, 17.946838>,  <39.290962, 34.154026, 17.803165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331497, 34.525127, 17.946838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140040, -0.344142, 0.928415,
		0.984947, -0.144378, 0.095049,
		0.101333, 0.927751, 0.359180,
		39.361897, 34.803452, 18.054592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818455, 34.110802, 18.369091>,  <39.290962, 34.154026, 17.803165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818455, 34.110802, 18.369091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577721, 34.426468, 18.418100>,  <39.433281, 34.615868, 18.447506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.577721, 34.426468, 18.418100>,  <39.818455, 34.110802, 18.369091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577721, 34.426468, 18.418100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174434, -0.279610, 0.944135,
		0.779341, 0.546837, 0.305935,
		-0.601831, 0.789169, 0.122525,
		39.397171, 34.663219, 18.454857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037769, 34.397854, 19.027380>,  <39.818455, 34.110802, 18.369091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037769, 34.397854, 19.027380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661789, 34.512024, 18.952518>,  <39.436203, 34.580528, 18.907600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661789, 34.512024, 18.952518>,  <40.037769, 34.397854, 19.027380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661789, 34.512024, 18.952518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285734, -0.358116, 0.888881,
		0.186688, 0.888979, 0.418167,
		-0.939948, 0.285428, -0.187156,
		39.379803, 34.597652, 18.896372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855907, 34.716072, 19.702337>,  <40.037769, 34.397854, 19.027380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855907, 34.716072, 19.702337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.519058, 34.649574, 19.497129>,  <39.316948, 34.609676, 19.374004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.519058, 34.649574, 19.497129>,  <39.855907, 34.716072, 19.702337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519058, 34.649574, 19.497129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407468, -0.427013, 0.807235,
		-0.353261, 0.888833, 0.291861,
		-0.842126, -0.166241, -0.513019,
		39.266422, 34.599701, 19.343224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298893, 34.923630, 20.156927>,  <39.855907, 34.716072, 19.702337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298893, 34.923630, 20.156927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135815, 34.687534, 19.878244>,  <39.037968, 34.545876, 19.711035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.135815, 34.687534, 19.878244>,  <39.298893, 34.923630, 20.156927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135815, 34.687534, 19.878244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399405, -0.570865, 0.717349,
		-0.821135, 0.570726, -0.003008,
		-0.407692, -0.590241, -0.696708,
		39.013508, 34.510464, 19.669231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603638, 34.818737, 20.339418>,  <39.298893, 34.923630, 20.156927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603638, 34.818737, 20.339418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671963, 34.511604, 20.092436>,  <38.712955, 34.327324, 19.944246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671963, 34.511604, 20.092436>,  <38.603638, 34.818737, 20.339418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671963, 34.511604, 20.092436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377993, -0.629782, 0.678599,
		-0.909915, 0.117484, -0.397809,
		0.170808, -0.767836, -0.617456,
		38.723206, 34.281254, 19.907200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897289, 34.374847, 20.431290>,  <38.603638, 34.818737, 20.339418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897289, 34.374847, 20.431290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176067, 34.152534, 20.250017>,  <38.343334, 34.019146, 20.141254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176067, 34.152534, 20.250017>,  <37.897289, 34.374847, 20.431290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176067, 34.152534, 20.250017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365101, -0.818910, 0.442818,
		-0.617222, -0.143165, -0.773654,
		0.696949, -0.555779, -0.453180,
		38.385151, 33.985802, 20.114063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614357, 33.775352, 20.034521>,  <37.897289, 34.374847, 20.431290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614357, 33.775352, 20.034521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979855, 33.669521, 20.157856>,  <38.199154, 33.606022, 20.231857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979855, 33.669521, 20.157856>,  <37.614357, 33.775352, 20.034521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979855, 33.669521, 20.157856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398327, -0.732906, 0.551529,
		0.080060, -0.626776, -0.775076,
		0.913743, -0.264578, 0.308338,
		38.253979, 33.590149, 20.250357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666245, 33.061829, 20.120110>,  <37.614357, 33.775352, 20.034521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666245, 33.061829, 20.120110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.987862, 33.147209, 20.342085>,  <38.180832, 33.198437, 20.475269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.987862, 33.147209, 20.342085>,  <37.666245, 33.061829, 20.120110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987862, 33.147209, 20.342085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326584, -0.621388, 0.712194,
		0.496849, -0.753868, -0.429912,
		0.804042, 0.213450, 0.554937,
		38.229073, 33.211243, 20.508566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827568, 32.408794, 20.435684>,  <37.666245, 33.061829, 20.120110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827568, 32.408794, 20.435684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020889, 32.659309, 20.680365>,  <38.136883, 32.809620, 20.827173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020889, 32.659309, 20.680365>,  <37.827568, 32.408794, 20.435684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020889, 32.659309, 20.680365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250373, -0.570656, 0.782090,
		0.838887, -0.531140, -0.118994,
		0.483304, 0.626292, 0.611699,
		38.165882, 32.847198, 20.863874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386879, 32.021004, 20.876400>,  <37.827568, 32.408794, 20.435684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386879, 32.021004, 20.876400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263058, 32.348675, 21.069530>,  <38.188766, 32.545277, 21.185410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263058, 32.348675, 21.069530>,  <38.386879, 32.021004, 20.876400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263058, 32.348675, 21.069530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105834, -0.534293, 0.838648,
		0.944974, 0.208507, 0.252090,
		-0.309554, 0.819180, 0.482826,
		38.170193, 32.594429, 21.214378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338676, 31.849571, 21.588997>,  <38.386879, 32.021004, 20.876400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338676, 31.849571, 21.588997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.184315, 32.210121, 21.667591>,  <38.091698, 32.426449, 21.714748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.184315, 32.210121, 21.667591>,  <38.338676, 31.849571, 21.588997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184315, 32.210121, 21.667591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121813, -0.260903, 0.957649,
		0.914462, 0.345624, 0.210482,
		-0.385902, 0.901373, 0.196485,
		38.068542, 32.480534, 21.726536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.380253, 29.271509, 26.130999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251282, 29.647697, 26.174002>,  <40.173901, 29.873409, 26.199804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.251282, 29.647697, 26.174002>,  <40.380253, 29.271509, 26.130999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251282, 29.647697, 26.174002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027286, -0.104292, 0.994172,
		0.946201, 0.323482, 0.007965,
		-0.322427, 0.940469, 0.107508,
		40.154552, 29.929838, 26.206253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837528, 29.473886, 26.725763>,  <40.380253, 29.271509, 26.130999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837528, 29.473886, 26.725763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.528221, 29.723852, 26.682795>,  <40.342636, 29.873833, 26.657013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.528221, 29.723852, 26.682795>,  <40.837528, 29.473886, 26.725763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528221, 29.723852, 26.682795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030859, 0.132122, 0.990753,
		0.633329, 0.769432, -0.082881,
		-0.773267, 0.624915, -0.107421,
		40.296242, 29.911327, 26.650568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956322, 30.053288, 27.173384>,  <40.837528, 29.473886, 26.725763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956322, 30.053288, 27.173384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.568577, 30.104380, 27.089464>,  <40.335930, 30.135035, 27.039112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.568577, 30.104380, 27.089464>,  <40.956322, 30.053288, 27.173384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568577, 30.104380, 27.089464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177620, 0.225436, 0.957930,
		0.169655, 0.965848, -0.195842,
		-0.969365, 0.127732, -0.209800,
		40.277767, 30.142700, 27.026524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716759, 30.722776, 27.480955>,  <40.956322, 30.053288, 27.173384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716759, 30.722776, 27.480955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.391262, 30.494377, 27.437517>,  <40.195965, 30.357338, 27.411453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.391262, 30.494377, 27.437517>,  <40.716759, 30.722776, 27.480955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391262, 30.494377, 27.437517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309538, 0.267590, 0.912459,
		-0.491952, 0.776117, -0.394493,
		-0.813738, -0.570997, -0.108596,
		40.147141, 30.323078, 27.404938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209766, 31.116503, 27.715801>,  <40.716759, 30.722776, 27.480955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209766, 31.116503, 27.715801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.086288, 30.740070, 27.771042>,  <40.012203, 30.514212, 27.804186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.086288, 30.740070, 27.771042>,  <40.209766, 31.116503, 27.715801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086288, 30.740070, 27.771042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414802, 0.263855, 0.870816,
		-0.855948, 0.211533, -0.471813,
		-0.308696, -0.941082, 0.138102,
		39.993679, 30.457747, 27.812473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541119, 31.153856, 28.031656>,  <40.209766, 31.116503, 27.715801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541119, 31.153856, 28.031656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693024, 30.795368, 28.123373>,  <39.784164, 30.580276, 28.178404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693024, 30.795368, 28.123373>,  <39.541119, 31.153856, 28.031656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693024, 30.795368, 28.123373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345815, 0.092361, 0.933746,
		-0.858018, -0.433892, -0.274851,
		0.379759, -0.896218, 0.229294,
		39.806953, 30.526503, 28.192162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053913, 30.787817, 28.404873>,  <39.541119, 31.153856, 28.031656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053913, 30.787817, 28.404873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387749, 30.608549, 28.533003>,  <39.588051, 30.500988, 28.609880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387749, 30.608549, 28.533003>,  <39.053913, 30.787817, 28.404873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387749, 30.608549, 28.533003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362592, -0.009152, 0.931903,
		-0.414718, -0.893902, -0.170140,
		0.834587, -0.448168, 0.320327,
		39.638126, 30.474098, 28.629101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830322, 30.573803, 29.065611>,  <39.053913, 30.787817, 28.404873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830322, 30.573803, 29.065611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.216927, 30.472221, 29.080418>,  <39.448887, 30.411272, 29.089302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.216927, 30.472221, 29.080418>,  <38.830322, 30.573803, 29.065611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216927, 30.472221, 29.080418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027709, 0.040139, 0.998810,
		-0.255138, -0.966383, 0.031758,
		0.966507, -0.253955, 0.037018,
		39.506878, 30.396034, 29.091524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853748, 30.021421, 29.608007>,  <38.830322, 30.573803, 29.065611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853748, 30.021421, 29.608007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.227943, 30.155708, 29.563896>,  <39.452461, 30.236280, 29.537430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.227943, 30.155708, 29.563896>,  <38.853748, 30.021421, 29.608007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227943, 30.155708, 29.563896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135744, -0.053278, 0.989310,
		0.326255, -0.940454, -0.095413,
		0.935485, 0.335720, -0.110278,
		39.508587, 30.256424, 29.530813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228321, 29.660336, 30.075275>,  <38.853748, 30.021421, 29.608007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228321, 29.660336, 30.075275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.454628, 29.982849, 30.006210>,  <39.590412, 30.176357, 29.964771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.454628, 29.982849, 30.006210>,  <39.228321, 29.660336, 30.075275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454628, 29.982849, 30.006210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094300, 0.144754, 0.984964,
		0.819156, -0.573541, 0.005864,
		0.565766, 0.806285, -0.172661,
		39.624359, 30.224735, 29.954412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921539, 29.666677, 30.461634>,  <39.228321, 29.660336, 30.075275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921539, 29.666677, 30.461634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.822105, 30.043612, 30.372000>,  <39.762444, 30.269772, 30.318220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.822105, 30.043612, 30.372000>,  <39.921539, 29.666677, 30.461634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822105, 30.043612, 30.372000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018436, 0.235907, 0.971601,
		0.968434, 0.237396, -0.076017,
		-0.248587, 0.942333, -0.224083,
		39.747528, 30.326311, 30.304775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172859, 29.985607, 30.977575>,  <39.921539, 29.666677, 30.461634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172859, 29.985607, 30.977575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955101, 30.288170, 30.832531>,  <39.824448, 30.469707, 30.745504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955101, 30.288170, 30.832531>,  <40.172859, 29.985607, 30.977575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955101, 30.288170, 30.832531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151346, 0.336614, 0.929401,
		0.825064, 0.560839, -0.068771,
		-0.544393, 0.756406, -0.362609,
		39.791782, 30.515091, 30.723749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360683, 30.523300, 31.319263>,  <40.172859, 29.985607, 30.977575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360683, 30.523300, 31.319263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997177, 30.635883, 31.196024>,  <39.779072, 30.703434, 31.122080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997177, 30.635883, 31.196024>,  <40.360683, 30.523300, 31.319263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997177, 30.635883, 31.196024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185408, 0.389111, 0.902339,
		0.373855, 0.877140, -0.301427,
		-0.908767, 0.281457, -0.308100,
		39.724548, 30.720320, 31.103594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243244, 31.303787, 31.435793>,  <40.360683, 30.523300, 31.319263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243244, 31.303787, 31.435793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885155, 31.126183, 31.420698>,  <39.670300, 31.019619, 31.411642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.885155, 31.126183, 31.420698>,  <40.243244, 31.303787, 31.435793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885155, 31.126183, 31.420698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300022, 0.537957, 0.787775,
		-0.329483, 0.716557, -0.614807,
		-0.895225, -0.444013, -0.037735,
		39.616589, 30.992979, 31.409378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534386, 31.762156, 32.047241>,  <40.243244, 31.303787, 31.435793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534386, 31.762156, 32.047241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.542484, 32.144108, 32.165760>,  <40.547344, 32.373280, 32.236874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.542484, 32.144108, 32.165760>,  <40.534386, 31.762156, 32.047241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542484, 32.144108, 32.165760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008798, 0.296519, -0.954987,
		-0.999756, 0.016730, 0.014405,
		0.020249, 0.954881, 0.296299,
		40.548557, 32.430573, 32.254650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040028, 32.019337, 31.607313>,  <40.534386, 31.762156, 32.047241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040028, 32.019337, 31.607313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.259682, 32.334560, 31.718607>,  <40.391476, 32.523693, 31.785383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.259682, 32.334560, 31.718607>,  <40.040028, 32.019337, 31.607313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259682, 32.334560, 31.718607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037491, 0.309358, -0.950206,
		-0.834889, 0.532227, 0.140336,
		0.549139, 0.788056, 0.278234,
		40.424423, 32.570976, 31.802076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738792, 32.687920, 31.409517>,  <40.040028, 32.019337, 31.607313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738792, 32.687920, 31.409517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.123032, 32.791370, 31.450230>,  <40.353577, 32.853443, 31.474657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.123032, 32.791370, 31.450230>,  <39.738792, 32.687920, 31.409517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123032, 32.791370, 31.450230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024291, 0.442917, -0.896233,
		-0.276872, 0.858449, 0.431748,
		0.960600, 0.258629, 0.101779,
		40.411213, 32.868958, 31.480762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787910, 33.409977, 31.193449>,  <39.738792, 32.687920, 31.409517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787910, 33.409977, 31.193449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.169823, 33.291576, 31.182253>,  <40.398968, 33.220535, 31.175535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.169823, 33.291576, 31.182253>,  <39.787910, 33.409977, 31.193449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169823, 33.291576, 31.182253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167316, 0.612730, -0.772377,
		0.245772, 0.732766, 0.634547,
		0.954778, -0.295999, -0.027988,
		40.456257, 33.202778, 31.173857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208206, 34.002201, 31.055748>,  <39.787910, 33.409977, 31.193449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208206, 34.002201, 31.055748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463963, 33.711662, 30.954874>,  <40.617416, 33.537338, 30.894350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.463963, 33.711662, 30.954874>,  <40.208206, 34.002201, 31.055748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463963, 33.711662, 30.954874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221193, 0.487890, -0.844415,
		0.736376, 0.484132, 0.472617,
		0.639393, -0.726347, -0.252184,
		40.655781, 33.493759, 30.879219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613976, 34.348728, 30.622623>,  <40.208206, 34.002201, 31.055748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613976, 34.348728, 30.622623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.751694, 33.977058, 30.568811>,  <40.834324, 33.754055, 30.536524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.751694, 33.977058, 30.568811>,  <40.613976, 34.348728, 30.622623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751694, 33.977058, 30.568811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296949, 0.243705, -0.923271,
		0.890665, 0.277928, 0.359823,
		0.344294, -0.929174, -0.134529,
		40.854980, 33.698307, 30.528452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370773, 34.360291, 30.334852>,  <40.613976, 34.348728, 30.622623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370773, 34.360291, 30.334852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208054, 34.006355, 30.244019>,  <41.110420, 33.793995, 30.189518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.208054, 34.006355, 30.244019>,  <41.370773, 34.360291, 30.334852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208054, 34.006355, 30.244019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146150, 0.182342, -0.972313,
		0.901749, -0.428728, 0.055143,
		-0.406802, -0.884841, -0.227085,
		41.086014, 33.740902, 30.175894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911098, 33.883472, 30.068340>,  <41.370773, 34.360291, 30.334852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911098, 33.883472, 30.068340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.549442, 33.773754, 29.937313>,  <41.332451, 33.707924, 29.858698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.549442, 33.773754, 29.937313>,  <41.911098, 33.883472, 30.068340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549442, 33.773754, 29.937313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279048, 0.201454, -0.938908,
		0.323527, -0.940308, -0.105600,
		-0.904136, -0.274295, -0.327567,
		41.278202, 33.691467, 29.839043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103310, 33.487175, 29.535467>,  <41.911098, 33.883472, 30.068340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103310, 33.487175, 29.535467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.718346, 33.567169, 29.461964>,  <41.487366, 33.615166, 29.417862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.718346, 33.567169, 29.461964>,  <42.103310, 33.487175, 29.535467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718346, 33.567169, 29.461964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220432, 0.179935, -0.958662,
		-0.158659, -0.963134, -0.217256,
		-0.962412, 0.199990, -0.183757,
		41.429623, 33.627167, 29.406837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000263, 33.230801, 28.880419>,  <42.103310, 33.487175, 29.535467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000263, 33.230801, 28.880419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.673183, 33.448853, 28.954401>,  <41.476936, 33.579681, 28.998791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.673183, 33.448853, 28.954401>,  <42.000263, 33.230801, 28.880419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673183, 33.448853, 28.954401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059999, 0.238840, -0.969204,
		-0.572512, -0.803613, -0.162592,
		-0.817698, 0.545125, 0.184955,
		41.427876, 33.612389, 29.009888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391853, 33.061527, 28.341553>,  <42.000263, 33.230801, 28.880419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391853, 33.061527, 28.341553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.336578, 33.435097, 28.473427>,  <41.303413, 33.659237, 28.552551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.336578, 33.435097, 28.473427>,  <41.391853, 33.061527, 28.341553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336578, 33.435097, 28.473427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083616, 0.320687, -0.943487,
		-0.986870, -0.157944, 0.033776,
		-0.138187, 0.933923, 0.329684,
		41.295124, 33.715275, 28.572332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755623, 33.341534, 27.957121>,  <41.391853, 33.061527, 28.341553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755623, 33.341534, 27.957121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.981094, 33.647205, 28.082531>,  <41.116379, 33.830608, 28.157778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.981094, 33.647205, 28.082531>,  <40.755623, 33.341534, 27.957121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981094, 33.647205, 28.082531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052091, 0.411708, -0.909826,
		-0.824347, 0.496522, 0.271880,
		0.563683, 0.764175, 0.313526,
		41.150200, 33.876457, 28.176588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313213, 34.017399, 27.741594>,  <40.755623, 33.341534, 27.957121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313213, 34.017399, 27.741594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.689476, 34.144608, 27.788979>,  <40.915234, 34.220932, 27.817410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.689476, 34.144608, 27.788979>,  <40.313213, 34.017399, 27.741594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689476, 34.144608, 27.788979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026512, 0.279135, -0.959886,
		-0.338331, 0.906061, 0.254138,
		0.940653, 0.318022, 0.118462,
		40.971672, 34.240013, 27.824516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424290, 34.719852, 27.594166>,  <40.313213, 34.017399, 27.741594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424290, 34.719852, 27.594166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.783833, 34.567760, 27.507013>,  <40.999557, 34.476505, 27.454721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.783833, 34.567760, 27.507013>,  <40.424290, 34.719852, 27.594166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783833, 34.567760, 27.507013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086663, 0.333136, -0.938888,
		0.429579, 0.862812, 0.266491,
		0.898861, -0.380231, -0.217882,
		41.053490, 34.453690, 27.441648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474468, 35.403561, 27.804790>,  <40.424290, 34.719852, 27.594166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474468, 35.403561, 27.804790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.209572, 35.702888, 27.820059>,  <40.050636, 35.882484, 27.829220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.209572, 35.702888, 27.820059>,  <40.474468, 35.403561, 27.804790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209572, 35.702888, 27.820059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251835, -0.270264, 0.929267,
		0.705705, 0.605784, 0.367433,
		-0.662239, 0.748320, 0.038169,
		40.010899, 35.927383, 27.831509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607655, 35.781021, 28.448795>,  <40.474468, 35.403561, 27.804790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607655, 35.781021, 28.448795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.228558, 35.817883, 28.326616>,  <40.001099, 35.840000, 28.253309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.228558, 35.817883, 28.326616>,  <40.607655, 35.781021, 28.448795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228558, 35.817883, 28.326616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317410, -0.369230, 0.873453,
		-0.032285, 0.924757, 0.379186,
		-0.947738, 0.092158, -0.305448,
		39.944237, 35.845531, 28.234982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212761, 35.770523, 29.078981>,  <40.607655, 35.781021, 28.448795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212761, 35.770523, 29.078981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.912868, 35.777424, 28.814373>,  <39.732933, 35.781567, 28.655607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.912868, 35.777424, 28.814373>,  <40.212761, 35.770523, 29.078981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912868, 35.777424, 28.814373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655809, -0.152983, 0.739263,
		-0.088446, 0.988078, 0.126011,
		-0.749728, 0.017255, -0.661522,
		39.687950, 35.782600, 28.615917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639893, 36.218708, 29.390606>,  <40.212761, 35.770523, 29.078981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639893, 36.218708, 29.390606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.468449, 35.979076, 29.120081>,  <39.365582, 35.835297, 28.957766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.468449, 35.979076, 29.120081>,  <39.639893, 36.218708, 29.390606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468449, 35.979076, 29.120081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775346, -0.140397, 0.615733,
		-0.463825, 0.788285, -0.404318,
		-0.428609, -0.599079, -0.676313,
		39.339867, 35.799355, 28.917187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010715, 36.436977, 29.539886>,  <39.639893, 36.218708, 29.390606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010715, 36.436977, 29.539886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986835, 36.099361, 29.326708>,  <38.972507, 35.896793, 29.198801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986835, 36.099361, 29.326708>,  <39.010715, 36.436977, 29.539886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986835, 36.099361, 29.326708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667666, -0.363131, 0.649891,
		-0.742064, 0.394631, -0.541856,
		-0.059702, -0.844039, -0.532947,
		38.968925, 35.846149, 29.166824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297413, 36.343788, 29.247711>,  <39.010715, 36.436977, 29.539886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297413, 36.343788, 29.247711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.467388, 35.982906, 29.277243>,  <38.569374, 35.766376, 29.294962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.467388, 35.982906, 29.277243>,  <38.297413, 36.343788, 29.247711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467388, 35.982906, 29.277243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764511, -0.314019, 0.562952,
		-0.484715, -0.295664, -0.823186,
		0.424940, -0.902206, 0.073829,
		38.594872, 35.712246, 29.299393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764515, 35.862572, 29.200102>,  <38.297413, 36.343788, 29.247711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764515, 35.862572, 29.200102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.069443, 35.666882, 29.369585>,  <38.252399, 35.549469, 29.471275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.069443, 35.666882, 29.369585>,  <37.764515, 35.862572, 29.200102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069443, 35.666882, 29.369585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623074, -0.377670, 0.684941,
		-0.175066, -0.786147, -0.592727,
		0.762319, -0.489223, 0.423711,
		38.298138, 35.520115, 29.496698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588329, 35.164566, 29.287441>,  <37.764515, 35.862572, 29.200102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588329, 35.164566, 29.287441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.877285, 35.202629, 29.561403>,  <38.050659, 35.225468, 29.725780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.877285, 35.202629, 29.561403>,  <37.588329, 35.164566, 29.287441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877285, 35.202629, 29.561403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591420, -0.428193, 0.683281,
		0.358287, -0.898664, -0.253048,
		0.722393, 0.095153, 0.684904,
		38.094002, 35.231174, 29.766874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563984, 34.580723, 29.584343>,  <37.588329, 35.164566, 29.287441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563984, 34.580723, 29.584343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.785950, 34.794174, 29.839628>,  <37.919128, 34.922245, 29.992800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.785950, 34.794174, 29.839628>,  <37.563984, 34.580723, 29.584343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785950, 34.794174, 29.839628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386533, -0.513941, 0.765805,
		0.736657, -0.671645, -0.078929,
		0.554914, 0.533627, 0.638211,
		37.952423, 34.954262, 30.031092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905167, 34.044891, 30.007086>,  <37.563984, 34.580723, 29.584343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905167, 34.044891, 30.007086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949039, 34.357700, 30.252493>,  <37.975365, 34.545387, 30.399738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949039, 34.357700, 30.252493>,  <37.905167, 34.044891, 30.007086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949039, 34.357700, 30.252493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225484, -0.581575, 0.781619,
		0.968053, -0.224068, 0.112547,
		0.109681, 0.782026, 0.613519,
		37.981945, 34.592308, 30.436548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261818, 33.771732, 30.571978>,  <37.905167, 34.044891, 30.007086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261818, 33.771732, 30.571978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.132149, 34.113770, 30.733833>,  <38.054348, 34.318993, 30.830946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.132149, 34.113770, 30.733833>,  <38.261818, 33.771732, 30.571978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132149, 34.113770, 30.733833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245646, -0.489153, 0.836891,
		0.913547, 0.171902, 0.368621,
		-0.324175, 0.855090, 0.404638,
		38.034897, 34.370296, 30.855225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503784, 33.829567, 31.224516>,  <38.261818, 33.771732, 30.571978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503784, 33.829567, 31.224516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.191196, 34.078953, 31.234198>,  <38.003643, 34.228584, 31.240007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.191196, 34.078953, 31.234198>,  <38.503784, 33.829567, 31.224516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191196, 34.078953, 31.234198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354909, -0.476090, 0.804598,
		0.513165, 0.620182, 0.593326,
		-0.781474, 0.623469, 0.024205,
		37.956753, 34.265995, 31.241459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.891655, 36.634441, 24.233967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494411, 36.681171, 24.230391>,  <40.256065, 36.709209, 24.228245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494411, 36.681171, 24.230391>,  <40.891655, 36.634441, 24.233967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494411, 36.681171, 24.230391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009059, 0.152650, 0.988239,
		0.116811, 0.981352, -0.152656,
		-0.993113, 0.116820, -0.008941,
		40.196476, 36.716217, 24.227709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828861, 37.213310, 24.623911>,  <40.891655, 36.634441, 24.233967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828861, 37.213310, 24.623911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491482, 37.000473, 24.653502>,  <40.289055, 36.872768, 24.671255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491482, 37.000473, 24.653502>,  <40.828861, 37.213310, 24.623911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491482, 37.000473, 24.653502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128980, 0.334247, 0.933618,
		-0.521501, 0.777915, -0.350550,
		-0.843446, -0.532097, 0.073975,
		40.238449, 36.840843, 24.675694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502556, 37.530647, 25.196337>,  <40.828861, 37.213310, 24.623911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502556, 37.530647, 25.196337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274334, 37.203979, 25.161654>,  <40.137402, 37.007980, 25.140842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274334, 37.203979, 25.161654>,  <40.502556, 37.530647, 25.196337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274334, 37.203979, 25.161654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180623, 0.021786, 0.983311,
		-0.801150, 0.576696, -0.159939,
		-0.570556, -0.816668, -0.086710,
		40.103168, 36.958981, 25.135641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792030, 37.673264, 25.573799>,  <40.502556, 37.530647, 25.196337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792030, 37.673264, 25.573799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876762, 37.283073, 25.549845>,  <39.927601, 37.048962, 25.535473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876762, 37.283073, 25.549845>,  <39.792030, 37.673264, 25.573799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876762, 37.283073, 25.549845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010840, -0.063616, 0.997916,
		-0.977247, -0.210735, -0.024050,
		0.211826, -0.975471, -0.059884,
		39.940311, 36.990433, 25.531879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214912, 37.405457, 25.952612>,  <39.792030, 37.673264, 25.573799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214912, 37.405457, 25.952612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508446, 37.133728, 25.953730>,  <39.684566, 36.970692, 25.954401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508446, 37.133728, 25.953730>,  <39.214912, 37.405457, 25.952612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508446, 37.133728, 25.953730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264110, -0.281510, 0.922496,
		-0.625882, -0.677700, -0.385998,
		0.733838, -0.679319, 0.002795,
		39.728596, 36.929932, 25.954569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940487, 36.789013, 26.167490>,  <39.214912, 37.405457, 25.952612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940487, 36.789013, 26.167490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332958, 36.743530, 26.229927>,  <39.568439, 36.716240, 26.267389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332958, 36.743530, 26.229927>,  <38.940487, 36.789013, 26.167490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332958, 36.743530, 26.229927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188304, -0.383922, 0.903961,
		-0.042862, -0.916337, -0.398107,
		0.981175, -0.113710, 0.156094,
		39.627312, 36.709415, 26.276754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044632, 36.131279, 26.506428>,  <38.940487, 36.789013, 26.167490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044632, 36.131279, 26.506428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392639, 36.313587, 26.581617>,  <39.601444, 36.422974, 26.626730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392639, 36.313587, 26.581617>,  <39.044632, 36.131279, 26.506428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392639, 36.313587, 26.581617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015754, -0.355375, 0.934591,
		0.492762, -0.816075, -0.302004,
		0.870021, 0.455774, 0.187972,
		39.653645, 36.450317, 26.638008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609982, 35.649208, 26.684244>,  <39.044632, 36.131279, 26.506428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609982, 35.649208, 26.684244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732723, 35.991291, 26.851322>,  <39.806366, 36.196541, 26.951569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732723, 35.991291, 26.851322>,  <39.609982, 35.649208, 26.684244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732723, 35.991291, 26.851322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072422, -0.416613, 0.906195,
		0.948998, -0.308317, -0.065902,
		0.306851, 0.855205, 0.417694,
		39.824780, 36.247852, 26.976631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149643, 35.470360, 27.168150>,  <39.609982, 35.649208, 26.684244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149643, 35.470360, 27.168150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057899, 35.832600, 27.310862>,  <40.002853, 36.049942, 27.396488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057899, 35.832600, 27.310862>,  <40.149643, 35.470360, 27.168150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057899, 35.832600, 27.310862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042168, -0.375450, 0.925883,
		0.972428, 0.197315, 0.124300,
		-0.229359, 0.905596, 0.356778,
		39.989090, 36.104279, 27.417894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844006, 35.231560, 26.996670>,  <40.149643, 35.470360, 27.168150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844006, 35.231560, 26.996670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073971, 34.904278, 26.998072>,  <41.211948, 34.707909, 26.998913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073971, 34.904278, 26.998072>,  <40.844006, 35.231560, 26.996670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073971, 34.904278, 26.998072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395655, 0.274252, -0.876495,
		0.716195, 0.505293, 0.481399,
		0.574911, -0.818209, 0.003504,
		41.246445, 34.658813, 26.999123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554157, 35.443604, 26.820377>,  <40.844006, 35.231560, 26.996670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554157, 35.443604, 26.820377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526882, 35.050716, 26.750410>,  <41.510517, 34.814983, 26.708429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526882, 35.050716, 26.750410>,  <41.554157, 35.443604, 26.820377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526882, 35.050716, 26.750410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385242, 0.135807, -0.912768,
		0.920293, -0.129621, 0.369133,
		-0.068183, -0.982219, -0.174918,
		41.506428, 34.756050, 26.697935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102551, 35.324879, 26.435181>,  <41.554157, 35.443604, 26.820377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102551, 35.324879, 26.435181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918400, 34.973835, 26.381721>,  <41.807911, 34.763210, 26.349646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918400, 34.973835, 26.381721>,  <42.102551, 35.324879, 26.435181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918400, 34.973835, 26.381721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345264, -0.038316, -0.937723,
		0.817829, -0.477851, 0.320645,
		-0.460378, -0.877605, -0.133649,
		41.780285, 34.710552, 26.341627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610947, 34.821831, 26.154882>,  <42.102551, 35.324879, 26.435181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610947, 34.821831, 26.154882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246220, 34.703339, 26.041149>,  <42.027386, 34.632244, 25.972910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246220, 34.703339, 26.041149>,  <42.610947, 34.821831, 26.154882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246220, 34.703339, 26.041149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317694, -0.070272, -0.945586,
		0.260127, -0.952529, 0.158184,
		-0.911814, -0.296227, -0.284333,
		41.972675, 34.614471, 25.955849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677868, 34.213879, 25.793627>,  <42.610947, 34.821831, 26.154882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677868, 34.213879, 25.793627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319515, 34.326775, 25.656372>,  <42.104504, 34.394512, 25.574018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319515, 34.326775, 25.656372>,  <42.677868, 34.213879, 25.793627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319515, 34.326775, 25.656372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299210, -0.187665, -0.935551,
		-0.328446, -0.940809, 0.083675,
		-0.895877, 0.282241, -0.343137,
		42.050751, 34.411446, 25.553431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459488, 33.675171, 25.351120>,  <42.677868, 34.213879, 25.793627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459488, 33.675171, 25.351120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255180, 34.006088, 25.257576>,  <42.132595, 34.204639, 25.201448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255180, 34.006088, 25.257576>,  <42.459488, 33.675171, 25.351120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255180, 34.006088, 25.257576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174066, -0.166871, -0.970492,
		-0.841911, -0.536407, -0.058771,
		-0.510771, 0.827298, -0.233861,
		42.101948, 34.254276, 25.187418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133518, 33.410618, 24.861103>,  <42.459488, 33.675171, 25.351120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133518, 33.410618, 24.861103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089138, 33.805729, 24.817322>,  <42.062511, 34.042797, 24.791052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089138, 33.805729, 24.817322>,  <42.133518, 33.410618, 24.861103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089138, 33.805729, 24.817322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033194, -0.106390, -0.993770,
		-0.993272, -0.113889, -0.020985,
		-0.110947, 0.987781, -0.109454,
		42.055855, 34.102062, 24.784485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687500, 33.492622, 24.238106>,  <42.133518, 33.410618, 24.861103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687500, 33.492622, 24.238106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881016, 33.838585, 24.291609>,  <41.997124, 34.046162, 24.323711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881016, 33.838585, 24.291609>,  <41.687500, 33.492622, 24.238106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881016, 33.838585, 24.291609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248321, 0.010896, -0.968616,
		-0.839217, 0.501820, -0.209503,
		0.483788, 0.864904, 0.133757,
		42.026154, 34.098057, 24.331736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670109, 33.797802, 23.559408>,  <41.687500, 33.492622, 24.238106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670109, 33.797802, 23.559408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950764, 34.008190, 23.751680>,  <42.119156, 34.134422, 23.867044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950764, 34.008190, 23.751680>,  <41.670109, 33.797802, 23.559408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950764, 34.008190, 23.751680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369821, 0.307808, -0.876634,
		-0.609042, 0.792847, 0.021454,
		0.701641, 0.525973, 0.480680,
		42.161255, 34.165981, 23.895884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538574, 34.491287, 23.462402>,  <41.670109, 33.797802, 23.559408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538574, 34.491287, 23.462402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931953, 34.458015, 23.526798>,  <42.167980, 34.438053, 23.565435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931953, 34.458015, 23.526798>,  <41.538574, 34.491287, 23.462402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931953, 34.458015, 23.526798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177029, 0.251260, -0.951593,
		0.038704, 0.964339, 0.261826,
		0.983444, -0.083181, 0.160992,
		42.226986, 34.433060, 23.575096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935547, 34.891865, 23.028486>,  <41.538574, 34.491287, 23.462402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935547, 34.891865, 23.028486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234379, 34.649807, 23.138523>,  <42.413677, 34.504574, 23.204546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234379, 34.649807, 23.138523>,  <41.935547, 34.891865, 23.028486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234379, 34.649807, 23.138523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377007, 0.044879, -0.925122,
		0.547483, 0.794853, 0.261671,
		0.747080, -0.605141, 0.275095,
		42.458504, 34.468266, 23.221052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529480, 35.178238, 22.690651>,  <41.935547, 34.891865, 23.028486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529480, 35.178238, 22.690651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650826, 34.805298, 22.769339>,  <42.723633, 34.581535, 22.816551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650826, 34.805298, 22.769339>,  <42.529480, 35.178238, 22.690651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650826, 34.805298, 22.769339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350740, -0.082698, -0.932814,
		0.885976, 0.351977, 0.301924,
		0.303361, -0.932348, 0.196720,
		42.741833, 34.525593, 22.828354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139011, 35.222797, 22.355358>,  <42.529480, 35.178238, 22.690651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139011, 35.222797, 22.355358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026993, 34.845844, 22.428556>,  <42.959782, 34.619671, 22.472475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026993, 34.845844, 22.428556>,  <43.139011, 35.222797, 22.355358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026993, 34.845844, 22.428556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270480, -0.260359, -0.926852,
		0.921094, -0.210064, 0.327808,
		-0.280046, -0.942383, 0.182998,
		42.942978, 34.563129, 22.483456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764183, 34.852501, 22.140347>,  <43.139011, 35.222797, 22.355358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764183, 34.852501, 22.140347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436630, 34.623367, 22.125986>,  <43.240097, 34.485886, 22.117369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436630, 34.623367, 22.125986>,  <43.764183, 34.852501, 22.140347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436630, 34.623367, 22.125986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232170, -0.273389, -0.933464,
		0.524905, -0.772735, 0.356869,
		-0.818884, -0.572834, -0.035903,
		43.190964, 34.451515, 22.115215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.469261, 35.524479, 20.790035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803692, 35.674660, 20.950045>,  <37.004349, 35.764767, 21.046051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803692, 35.674660, 20.950045>,  <36.469261, 35.524479, 20.790035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803692, 35.674660, 20.950045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248980, -0.390062, 0.886487,
		0.488867, -0.840766, -0.232640,
		0.836073, 0.375452, 0.400023,
		37.054512, 35.787296, 21.070051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676624, 34.974018, 21.244307>,  <36.469261, 35.524479, 20.790035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676624, 34.974018, 21.244307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.913769, 35.274647, 21.360001>,  <37.056057, 35.455025, 21.429417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.913769, 35.274647, 21.360001>,  <36.676624, 34.974018, 21.244307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913769, 35.274647, 21.360001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020340, -0.345075, 0.938355,
		0.805045, -0.562201, -0.189296,
		0.592866, 0.751567, 0.289236,
		37.091629, 35.500118, 21.446772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274136, 34.713451, 21.575008>,  <36.676624, 34.974018, 21.244307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274136, 34.713451, 21.575008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215591, 35.076809, 21.731674>,  <37.180466, 35.294823, 21.825674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215591, 35.076809, 21.731674>,  <37.274136, 34.713451, 21.575008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215591, 35.076809, 21.731674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087199, -0.406234, 0.909599,
		0.985381, 0.098973, 0.138666,
		-0.146357, 0.908393, 0.391665,
		37.171684, 35.349327, 21.849174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685768, 34.766197, 22.256353>,  <37.274136, 34.713451, 21.575008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685768, 34.766197, 22.256353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417095, 35.061626, 22.279522>,  <37.255890, 35.238884, 22.293423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417095, 35.061626, 22.279522>,  <37.685768, 34.766197, 22.256353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417095, 35.061626, 22.279522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166309, -0.226509, 0.959706,
		0.721929, 0.634987, 0.274973,
		-0.671685, 0.738569, 0.057919,
		37.215591, 35.283195, 22.296898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854950, 35.128155, 22.842224>,  <37.685768, 34.766197, 22.256353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854950, 35.128155, 22.842224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.475475, 35.238251, 22.779949>,  <37.247791, 35.304310, 22.742584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.475475, 35.238251, 22.779949>,  <37.854950, 35.128155, 22.842224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475475, 35.238251, 22.779949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201873, -0.148182, 0.968137,
		0.243399, 0.949887, 0.196141,
		-0.948686, 0.275239, -0.155689,
		37.190868, 35.320824, 22.733242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659836, 35.663342, 23.409735>,  <37.854950, 35.128155, 22.842224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659836, 35.663342, 23.409735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324680, 35.501873, 23.262766>,  <37.123589, 35.404991, 23.174585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324680, 35.501873, 23.262766>,  <37.659836, 35.663342, 23.409735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324680, 35.501873, 23.262766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380150, -0.051498, 0.923490,
		-0.391709, 0.913453, -0.110307,
		-0.837885, -0.403672, -0.367421,
		37.073315, 35.380772, 23.152540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948696, 35.938881, 23.810596>,  <37.659836, 35.663342, 23.409735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948696, 35.938881, 23.810596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.820953, 35.607208, 23.627089>,  <36.744308, 35.408203, 23.516985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.820953, 35.607208, 23.627089>,  <36.948696, 35.938881, 23.810596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820953, 35.607208, 23.627089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598434, -0.198908, 0.776088,
		-0.734771, 0.522390, -0.432689,
		-0.319355, -0.829183, -0.458768,
		36.725147, 35.358452, 23.489458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206715, 35.871246, 23.924519>,  <36.948696, 35.938881, 23.810596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206715, 35.871246, 23.924519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.333759, 35.503757, 23.830656>,  <36.409988, 35.283264, 23.774340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.333759, 35.503757, 23.830656>,  <36.206715, 35.871246, 23.924519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333759, 35.503757, 23.830656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459158, -0.365536, 0.809665,
		-0.829636, -0.149418, -0.537940,
		0.317614, -0.918726, -0.234655,
		36.429043, 35.228138, 23.760260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659180, 35.431496, 24.120008>,  <36.206715, 35.871246, 23.924519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659180, 35.431496, 24.120008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.959164, 35.168018, 24.095730>,  <36.139153, 35.009933, 24.081163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.959164, 35.168018, 24.095730>,  <35.659180, 35.431496, 24.120008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959164, 35.168018, 24.095730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335353, -0.457693, 0.823441,
		-0.570176, -0.597192, -0.564146,
		0.749958, -0.658694, -0.060696,
		36.184151, 34.970409, 24.077520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361053, 34.766388, 24.210806>,  <35.659180, 35.431496, 24.120008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361053, 34.766388, 24.210806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.747807, 34.705254, 24.292557>,  <35.979858, 34.668571, 24.341606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.747807, 34.705254, 24.292557>,  <35.361053, 34.766388, 24.210806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747807, 34.705254, 24.292557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255158, -0.594246, 0.762736,
		0.004873, -0.789627, -0.613567,
		0.966887, -0.152840, 0.204375,
		36.037872, 34.659401, 24.353868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443279, 34.055996, 24.280357>,  <35.361053, 34.766388, 24.210806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443279, 34.055996, 24.280357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.746716, 34.224415, 24.479261>,  <35.928776, 34.325466, 24.598604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.746716, 34.224415, 24.479261>,  <35.443279, 34.055996, 24.280357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746716, 34.224415, 24.479261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130147, -0.649876, 0.748814,
		0.638441, -0.632758, -0.438191,
		0.758588, 0.421044, 0.497259,
		35.974293, 34.350727, 24.628439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940140, 33.564758, 24.582615>,  <35.443279, 34.055996, 24.280357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940140, 33.564758, 24.582615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.059208, 33.879440, 24.798946>,  <36.130650, 34.068249, 24.928745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.059208, 33.879440, 24.798946>,  <35.940140, 33.564758, 24.582615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059208, 33.879440, 24.798946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255290, -0.480285, 0.839138,
		0.919903, -0.387851, 0.057872,
		0.297666, 0.786701, 0.540830,
		36.148506, 34.115452, 24.961195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242264, 33.287342, 25.157091>,  <35.940140, 33.564758, 24.582615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242264, 33.287342, 25.157091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173714, 33.661888, 25.279631>,  <36.132584, 33.886616, 25.353155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173714, 33.661888, 25.279631>,  <36.242264, 33.287342, 25.157091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173714, 33.661888, 25.279631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143557, -0.331366, 0.932517,
		0.974690, 0.115833, 0.191210,
		-0.171377, 0.936365, 0.306351,
		36.122299, 33.942799, 25.371536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754688, 33.427696, 25.677752>,  <36.242264, 33.287342, 25.157091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754688, 33.427696, 25.677752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.429028, 33.651958, 25.738184>,  <36.233631, 33.786514, 25.774443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.429028, 33.651958, 25.738184>,  <36.754688, 33.427696, 25.677752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429028, 33.651958, 25.738184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087675, -0.375902, 0.922502,
		0.573995, 0.737811, 0.355197,
		-0.814152, 0.560653, 0.151079,
		36.184780, 33.820156, 25.783508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400864, 33.050056, 26.015743>,  <36.754688, 33.427696, 25.677752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400864, 33.050056, 26.015743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.290352, 32.677193, 25.922153>,  <37.224045, 32.453472, 25.865999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.290352, 32.677193, 25.922153>,  <37.400864, 33.050056, 26.015743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290352, 32.677193, 25.922153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301997, 0.146919, -0.941920,
		0.912398, -0.330889, 0.240920,
		-0.276275, -0.932163, -0.233976,
		37.207470, 32.397545, 25.851961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837212, 32.863575, 25.540394>,  <37.400864, 33.050056, 26.015743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837212, 32.863575, 25.540394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560387, 32.583675, 25.469507>,  <37.394291, 32.415737, 25.426975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.560387, 32.583675, 25.469507>,  <37.837212, 32.863575, 25.540394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560387, 32.583675, 25.469507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237163, 0.011456, -0.971402,
		0.681767, -0.714298, 0.158026,
		-0.692060, -0.699748, -0.177215,
		37.352768, 32.373753, 25.416342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180126, 32.281113, 25.150501>,  <37.837212, 32.863575, 25.540394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180126, 32.281113, 25.150501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794533, 32.263187, 25.045643>,  <37.563175, 32.252430, 24.982729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794533, 32.263187, 25.045643>,  <38.180126, 32.281113, 25.150501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794533, 32.263187, 25.045643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262997, -0.014203, -0.964692,
		0.039516, -0.998894, 0.025480,
		-0.963987, -0.044822, -0.262145,
		37.505337, 32.249741, 24.966999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281590, 31.865454, 24.640829>,  <38.180126, 32.281113, 25.150501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281590, 31.865454, 24.640829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.905540, 31.985943, 24.577045>,  <37.679909, 32.058235, 24.538774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.905540, 31.985943, 24.577045>,  <38.281590, 31.865454, 24.640829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905540, 31.985943, 24.577045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119327, -0.147350, -0.981860,
		-0.319257, -0.942099, 0.102583,
		-0.940126, 0.301225, -0.159460,
		37.623501, 32.076309, 24.529207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042141, 31.348406, 24.158136>,  <38.281590, 31.865454, 24.640829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042141, 31.348406, 24.158136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.802246, 31.666895, 24.126253>,  <37.658310, 31.857988, 24.107122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.802246, 31.666895, 24.126253>,  <38.042141, 31.348406, 24.158136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802246, 31.666895, 24.126253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017972, -0.086184, -0.996117,
		-0.799999, -0.598836, 0.037378,
		-0.599732, 0.796221, -0.079710,
		37.622326, 31.905762, 24.102341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683887, 31.197119, 23.549971>,  <38.042141, 31.348406, 24.158136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683887, 31.197119, 23.549971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.601208, 31.585630, 23.597109>,  <37.551598, 31.818737, 23.625393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.601208, 31.585630, 23.597109>,  <37.683887, 31.197119, 23.549971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601208, 31.585630, 23.597109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057543, 0.132308, -0.989537,
		-0.976710, -0.197759, -0.083239,
		-0.206703, 0.971281, 0.117846,
		37.539196, 31.877014, 23.632463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161076, 31.355417, 23.033781>,  <37.683887, 31.197119, 23.549971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161076, 31.355417, 23.033781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.332855, 31.707075, 23.116417>,  <37.435921, 31.918070, 23.165998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.332855, 31.707075, 23.116417>,  <37.161076, 31.355417, 23.033781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332855, 31.707075, 23.116417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053277, 0.203694, -0.977584,
		-0.901520, 0.430826, 0.040638,
		0.429446, 0.879146, 0.206587,
		37.461689, 31.970819, 23.178392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951012, 31.801722, 22.564823>,  <37.161076, 31.355417, 23.033781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951012, 31.801722, 22.564823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.250954, 32.022015, 22.711472>,  <37.430920, 32.154190, 22.799461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.250954, 32.022015, 22.711472>,  <36.951012, 31.801722, 22.564823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250954, 32.022015, 22.711472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147367, 0.401187, -0.904064,
		-0.644982, 0.731944, 0.219672,
		0.749854, 0.550732, 0.366623,
		37.475910, 32.187233, 22.821459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761745, 32.492275, 22.317287>,  <36.951012, 31.801722, 22.564823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761745, 32.492275, 22.317287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153454, 32.464928, 22.393560>,  <37.388477, 32.448517, 22.439323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153454, 32.464928, 22.393560>,  <36.761745, 32.492275, 22.317287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153454, 32.464928, 22.393560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197077, 0.539289, -0.818736,
		-0.046853, 0.839341, 0.541583,
		0.979268, -0.068373, 0.190682,
		37.447235, 32.444416, 22.450766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978737, 33.188858, 22.158825>,  <36.761745, 32.492275, 22.317287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978737, 33.188858, 22.158825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287701, 32.935219, 22.144396>,  <37.473080, 32.783035, 22.135738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287701, 32.935219, 22.144396>,  <36.978737, 33.188858, 22.158825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287701, 32.935219, 22.144396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332386, 0.451977, -0.827790,
		0.541203, 0.627405, 0.559877,
		0.772411, -0.634098, -0.036071,
		37.519424, 32.744991, 22.133574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465488, 33.630611, 21.879639>,  <36.978737, 33.188858, 22.158825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465488, 33.630611, 21.879639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.660908, 33.282421, 21.855679>,  <37.778160, 33.073505, 21.841303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.660908, 33.282421, 21.855679>,  <37.465488, 33.630611, 21.879639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660908, 33.282421, 21.855679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501779, 0.336455, -0.796879,
		0.713821, 0.359255, 0.601162,
		0.488546, -0.870479, -0.059902,
		37.807472, 33.021278, 21.837708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141930, 33.816116, 21.709841>,  <37.465488, 33.630611, 21.879639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141930, 33.816116, 21.709841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.119949, 33.444500, 21.563490>,  <38.106762, 33.221531, 21.475679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.119949, 33.444500, 21.563490>,  <38.141930, 33.816116, 21.709841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119949, 33.444500, 21.563490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550856, 0.277415, -0.787146,
		0.832790, -0.244799, 0.496523,
		-0.054950, -0.929039, -0.365878,
		38.103466, 33.165787, 21.453726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786442, 33.660461, 21.627506>,  <38.141930, 33.816116, 21.709841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786442, 33.660461, 21.627506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.620083, 33.386044, 21.388718>,  <38.520267, 33.221394, 21.245445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.620083, 33.386044, 21.388718>,  <38.786442, 33.660461, 21.627506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620083, 33.386044, 21.388718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588928, 0.297016, -0.751628,
		0.692962, -0.664170, 0.280504,
		-0.415895, -0.686046, -0.596969,
		38.495316, 33.180229, 21.209627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242027, 33.193905, 21.310936>,  <38.786442, 33.660461, 21.627506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242027, 33.193905, 21.310936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.931000, 33.270100, 21.071234>,  <38.744385, 33.315819, 20.927412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.931000, 33.270100, 21.071234>,  <39.242027, 33.193905, 21.310936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931000, 33.270100, 21.071234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623187, 0.360534, -0.694012,
		0.083849, -0.913087, -0.399050,
		-0.777565, 0.190490, -0.599255,
		38.697731, 33.327248, 20.891457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404724, 32.670650, 20.861090>,  <39.242027, 33.193905, 21.310936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404724, 32.670650, 20.861090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.746048, 32.464096, 20.889961>,  <39.950844, 32.340164, 20.907284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.746048, 32.464096, 20.889961>,  <39.404724, 32.670650, 20.861090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746048, 32.464096, 20.889961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257804, -0.297521, 0.919249,
		-0.453212, -0.803011, -0.387003,
		0.853309, -0.516386, 0.072180,
		40.002041, 32.309181, 20.911615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128685, 31.952532, 21.136276>,  <39.404724, 32.670650, 20.861090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128685, 31.952532, 21.136276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.523926, 31.962786, 21.196924>,  <39.761070, 31.968939, 21.233313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.523926, 31.962786, 21.196924>,  <39.128685, 31.952532, 21.136276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523926, 31.962786, 21.196924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112497, -0.551709, 0.826415,
		0.104838, -0.833642, -0.542263,
		0.988106, 0.025636, 0.151622,
		39.820358, 31.970476, 21.242411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494495, 31.199348, 21.174246>,  <39.128685, 31.952532, 21.136276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494495, 31.199348, 21.174246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.744793, 31.444565, 21.367170>,  <39.894970, 31.591696, 21.482925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.744793, 31.444565, 21.367170>,  <39.494495, 31.199348, 21.174246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744793, 31.444565, 21.367170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024667, -0.633568, 0.773294,
		0.779638, -0.471987, -0.411573,
		0.625744, 0.613042, 0.482311,
		39.932518, 31.628477, 21.511864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902641, 30.788996, 21.429720>,  <39.494495, 31.199348, 21.174246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902641, 30.788996, 21.429720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.054760, 31.084444, 21.652365>,  <40.146030, 31.261713, 21.785952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.054760, 31.084444, 21.652365>,  <39.902641, 30.788996, 21.429720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054760, 31.084444, 21.652365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006525, -0.603958, 0.796990,
		0.924843, -0.299457, -0.234500,
		0.380292, 0.738621, 0.556612,
		40.168846, 31.306030, 21.819349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436234, 30.652119, 21.873486>,  <39.902641, 30.788996, 21.429720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436234, 30.652119, 21.873486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.319168, 30.973663, 22.080620>,  <40.248928, 31.166590, 22.204901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.319168, 30.973663, 22.080620>,  <40.436234, 30.652119, 21.873486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319168, 30.973663, 22.080620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045623, -0.552670, 0.832150,
		0.955125, 0.219918, 0.198423,
		-0.292668, 0.803860, 0.517836,
		40.231369, 31.214821, 22.235971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835907, 30.807354, 22.537514>,  <40.436234, 30.652119, 21.873486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835907, 30.807354, 22.537514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.492359, 31.004852, 22.591993>,  <40.286228, 31.123352, 22.624681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.492359, 31.004852, 22.591993>,  <40.835907, 30.807354, 22.537514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492359, 31.004852, 22.591993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014573, -0.242252, 0.970104,
		0.511980, 0.835181, 0.200868,
		-0.858873, 0.493747, 0.136199,
		40.234695, 31.152977, 22.632853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955242, 31.312721, 23.092503>,  <40.835907, 30.807354, 22.537514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955242, 31.312721, 23.092503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.564625, 31.229877, 23.068932>,  <40.330254, 31.180172, 23.054789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.564625, 31.229877, 23.068932>,  <40.955242, 31.312721, 23.092503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564625, 31.229877, 23.068932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002506, -0.284575, 0.958650,
		-0.215314, 0.936014, 0.278418,
		-0.976542, -0.207108, -0.058927,
		40.271664, 31.167746, 23.051254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717110, 31.572044, 23.695045>,  <40.955242, 31.312721, 23.092503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717110, 31.572044, 23.695045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.409409, 31.341909, 23.583878>,  <40.224789, 31.203829, 23.517176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.409409, 31.341909, 23.583878>,  <40.717110, 31.572044, 23.695045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409409, 31.341909, 23.583878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231147, -0.154927, 0.960504,
		-0.595673, 0.803109, -0.013810,
		-0.769250, -0.575339, -0.277922,
		40.178635, 31.169308, 23.500502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095398, 31.774555, 24.107548>,  <40.717110, 31.572044, 23.695045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095398, 31.774555, 24.107548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.059361, 31.398209, 23.976915>,  <40.037739, 31.172401, 23.898537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.059361, 31.398209, 23.976915>,  <40.095398, 31.774555, 24.107548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059361, 31.398209, 23.976915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272963, -0.292030, 0.916630,
		-0.957797, 0.171726, -0.230511,
		-0.090093, -0.940866, -0.326580,
		40.032333, 31.115950, 23.878941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564930, 31.588942, 24.523552>,  <40.095398, 31.774555, 24.107548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564930, 31.588942, 24.523552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709976, 31.245409, 24.378822>,  <39.797005, 31.039289, 24.291985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709976, 31.245409, 24.378822>,  <39.564930, 31.588942, 24.523552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709976, 31.245409, 24.378822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191256, -0.448565, 0.873047,
		-0.912101, -0.247383, -0.326915,
		0.362620, -0.858831, -0.361823,
		39.818764, 30.987759, 24.270275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073013, 31.067493, 24.695919>,  <39.564930, 31.588942, 24.523552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073013, 31.067493, 24.695919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.422691, 30.887585, 24.622723>,  <39.632500, 30.779638, 24.578806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.422691, 30.887585, 24.622723>,  <39.073013, 31.067493, 24.695919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422691, 30.887585, 24.622723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043119, -0.447269, 0.893359,
		-0.483660, -0.773078, -0.410393,
		0.874193, -0.449778, -0.182992,
		39.684952, 30.752653, 24.567825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984509, 30.371511, 24.761057>,  <39.073013, 31.067493, 24.695919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984509, 30.371511, 24.761057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.378799, 30.386860, 24.826620>,  <39.615376, 30.396069, 24.865957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.378799, 30.386860, 24.826620>,  <38.984509, 30.371511, 24.761057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378799, 30.386860, 24.826620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151917, -0.216713, 0.964343,
		0.072524, -0.975481, -0.207791,
		0.985729, 0.038371, 0.163909,
		39.674519, 30.398371, 24.875793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150909, 29.795385, 25.257603>,  <38.984509, 30.371511, 24.761057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150909, 29.795385, 25.257603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488007, 30.008549, 25.288044>,  <39.690266, 30.136446, 25.306309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488007, 30.008549, 25.288044>,  <39.150909, 29.795385, 25.257603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488007, 30.008549, 25.288044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059264, -0.232363, 0.970822,
		0.535042, -0.813644, -0.227405,
		0.842744, 0.532908, 0.076104,
		39.740829, 30.168421, 25.310875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715473, 29.343044, 25.706076>,  <39.150909, 29.795385, 25.257603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715473, 29.343044, 25.706076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813507, 29.729509, 25.738224>,  <39.872330, 29.961390, 25.757513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813507, 29.729509, 25.738224>,  <39.715473, 29.343044, 25.706076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813507, 29.729509, 25.738224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122771, -0.113162, 0.985962,
		0.961696, -0.231779, -0.146352,
		0.245087, 0.966164, 0.080371,
		39.887032, 30.019358, 25.762335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.011131, 34.146603, 21.852430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.614159, 34.166821, 21.807652>,  <43.375977, 34.178951, 21.780785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.614159, 34.166821, 21.807652>,  <44.011131, 34.146603, 21.852430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614159, 34.166821, 21.807652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106808, -0.094944, -0.989736,
		-0.060649, -0.994199, 0.088827,
		-0.992428, 0.050539, -0.111947,
		43.316429, 34.181984, 21.774067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905479, 33.745949, 21.281523>,  <44.011131, 34.146603, 21.852430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905479, 33.745949, 21.281523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.564045, 33.951881, 21.313358>,  <43.359184, 34.075439, 21.332458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.564045, 33.951881, 21.313358>,  <43.905479, 33.745949, 21.281523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564045, 33.951881, 21.313358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116734, -0.040137, -0.992352,
		-0.507699, -0.856351, 0.094359,
		-0.853589, 0.514831, 0.079588,
		43.307968, 34.106331, 21.337234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389839, 33.341328, 20.908369>,  <43.905479, 33.745949, 21.281523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389839, 33.341328, 20.908369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.271282, 33.722618, 20.932093>,  <43.200146, 33.951393, 20.946327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.271282, 33.722618, 20.932093>,  <43.389839, 33.341328, 20.908369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271282, 33.722618, 20.932093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180138, 0.005189, -0.983628,
		-0.937924, -0.302226, 0.170173,
		-0.296395, 0.953222, 0.059309,
		43.182365, 34.008583, 20.949886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813244, 33.323521, 20.476351>,  <43.389839, 33.341328, 20.908369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813244, 33.323521, 20.476351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.932869, 33.703205, 20.515469>,  <43.004646, 33.931015, 20.538940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.932869, 33.703205, 20.515469>,  <42.813244, 33.323521, 20.476351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932869, 33.703205, 20.515469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071288, 0.124425, -0.989665,
		-0.951566, 0.289003, 0.104878,
		0.299066, 0.949208, 0.097796,
		43.022587, 33.987968, 20.544807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292835, 33.796623, 20.144455>,  <42.813244, 33.323521, 20.476351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292835, 33.796623, 20.144455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.639069, 33.996815, 20.151224>,  <42.846809, 34.116928, 20.155287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.639069, 33.996815, 20.151224>,  <42.292835, 33.796623, 20.144455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639069, 33.996815, 20.151224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077238, 0.166824, -0.982957,
		-0.494773, 0.849523, 0.183057,
		0.865583, 0.500480, 0.016924,
		42.898743, 34.146957, 20.156301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275661, 34.366329, 19.659548>,  <42.292835, 33.796623, 20.144455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275661, 34.366329, 19.659548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.670635, 34.355057, 19.721758>,  <42.907619, 34.348293, 19.759085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.670635, 34.355057, 19.721758>,  <42.275661, 34.366329, 19.659548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670635, 34.355057, 19.721758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157982, 0.206719, -0.965562,
		-0.004944, 0.977995, 0.208571,
		0.987430, -0.028177, 0.155527,
		42.966866, 34.346603, 19.768415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529655, 34.930851, 19.437069>,  <42.275661, 34.366329, 19.659548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529655, 34.930851, 19.437069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.856930, 34.701054, 19.427855>,  <43.053295, 34.563175, 19.422327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.856930, 34.701054, 19.427855>,  <42.529655, 34.930851, 19.437069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856930, 34.701054, 19.427855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200076, 0.322047, -0.925341,
		0.539022, 0.752490, 0.378437,
		0.818184, -0.574496, -0.023035,
		43.102386, 34.528706, 19.420944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040394, 35.403332, 19.154760>,  <42.529655, 34.930851, 19.437069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040394, 35.403332, 19.154760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.191608, 35.034782, 19.118624>,  <43.282337, 34.813652, 19.096941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.191608, 35.034782, 19.118624>,  <43.040394, 35.403332, 19.154760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191608, 35.034782, 19.118624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362524, 0.237119, -0.901305,
		0.851860, 0.307974, 0.423659,
		0.378036, -0.921372, -0.090344,
		43.305019, 34.758369, 19.091520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683365, 35.519680, 18.914579>,  <43.040394, 35.403332, 19.154760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683365, 35.519680, 18.914579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.566833, 35.154819, 18.799271>,  <43.496914, 34.935902, 18.730085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.566833, 35.154819, 18.799271>,  <43.683365, 35.519680, 18.914579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566833, 35.154819, 18.799271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193091, 0.239072, -0.951609,
		0.936932, -0.332897, 0.106479,
		-0.291332, -0.912153, -0.288274,
		43.479435, 34.881172, 18.712788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968792, 35.451836, 18.265686>,  <43.683365, 35.519680, 18.914579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968792, 35.451836, 18.265686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.757908, 35.112400, 18.248020>,  <43.631378, 34.908737, 18.237421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.757908, 35.112400, 18.248020>,  <43.968792, 35.451836, 18.265686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757908, 35.112400, 18.248020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190980, -0.067683, -0.979257,
		0.827996, -0.524707, 0.197746,
		-0.527208, -0.848587, -0.044167,
		43.599747, 34.857822, 18.234770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298553, 34.957809, 17.933664>,  <43.968792, 35.451836, 18.265686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298553, 34.957809, 17.933664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.920673, 34.845058, 17.866638>,  <43.693943, 34.777409, 17.826424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.920673, 34.845058, 17.866638>,  <44.298553, 34.957809, 17.933664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920673, 34.845058, 17.866638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201346, -0.095284, -0.974875,
		0.258831, -0.954707, 0.146770,
		-0.944704, -0.281879, -0.167564,
		43.637260, 34.760494, 17.816368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250160, 34.566425, 17.181160>,  <44.298553, 34.957809, 17.933664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250160, 34.566425, 17.181160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.878136, 34.683346, 17.270189>,  <43.654919, 34.753498, 17.323606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.878136, 34.683346, 17.270189>,  <44.250160, 34.566425, 17.181160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878136, 34.683346, 17.270189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193394, 0.125580, -0.973051,
		-0.312379, -0.948044, -0.060267,
		-0.930064, 0.292305, 0.222574,
		43.599117, 34.771038, 17.336962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899693, 34.406696, 16.431261>,  <44.250160, 34.566425, 17.181160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899693, 34.406696, 16.431261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.713760, 34.669743, 16.668402>,  <43.602203, 34.827572, 16.810686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.713760, 34.669743, 16.668402>,  <43.899693, 34.406696, 16.431261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713760, 34.669743, 16.668402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265441, 0.535285, -0.801880,
		-0.844676, -0.530102, -0.074256,
		-0.464826, 0.657618, 0.592853,
		43.574314, 34.867027, 16.846258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192360, 34.412395, 16.036932>,  <43.899693, 34.406696, 16.431261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192360, 34.412395, 16.036932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.229668, 34.731750, 16.274883>,  <43.252052, 34.923363, 16.417654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.229668, 34.731750, 16.274883>,  <43.192360, 34.412395, 16.036932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229668, 34.731750, 16.274883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531992, 0.545003, -0.648040,
		-0.841597, -0.256029, 0.475567,
		0.093268, 0.798387, 0.594878,
		43.257648, 34.971268, 16.453346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847214, 33.794392, 16.191738>,  <43.192360, 34.412395, 16.036932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847214, 33.794392, 16.191738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.471432, 33.764404, 16.057987>,  <42.245964, 33.746414, 15.977736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.471432, 33.764404, 16.057987>,  <42.847214, 33.794392, 16.191738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471432, 33.764404, 16.057987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304690, -0.263803, 0.915190,
		-0.156816, 0.961659, 0.224989,
		-0.939453, -0.074964, -0.334377,
		42.189594, 33.741917, 15.957674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471230, 34.031494, 16.749596>,  <42.847214, 33.794392, 16.191738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471230, 34.031494, 16.749596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.199326, 33.839806, 16.527504>,  <42.036182, 33.724792, 16.394249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.199326, 33.839806, 16.527504>,  <42.471230, 34.031494, 16.749596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199326, 33.839806, 16.527504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470491, -0.295821, 0.831341,
		-0.562646, 0.826338, -0.024384,
		-0.679756, -0.479224, -0.555227,
		41.995399, 33.696037, 16.360935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818604, 34.214832, 16.977207>,  <42.471230, 34.031494, 16.749596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818604, 34.214832, 16.977207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.781200, 33.853146, 16.810520>,  <41.758759, 33.636135, 16.710508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.781200, 33.853146, 16.810520>,  <41.818604, 34.214832, 16.977207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781200, 33.853146, 16.810520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321865, -0.368619, 0.872080,
		-0.942156, 0.215675, -0.256565,
		-0.093511, -0.904215, -0.416715,
		41.753147, 33.581882, 16.685505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216724, 33.949387, 17.278929>,  <41.818604, 34.214832, 16.977207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216724, 33.949387, 17.278929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.366673, 33.614563, 17.119532>,  <41.456642, 33.413670, 17.023893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.366673, 33.614563, 17.119532>,  <41.216724, 33.949387, 17.278929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366673, 33.614563, 17.119532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420945, -0.536662, 0.731299,
		-0.826000, -0.106398, -0.553537,
		0.374871, -0.837062, -0.398495,
		41.479134, 33.363445, 16.999983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647305, 33.328735, 17.255526>,  <41.216724, 33.949387, 17.278929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647305, 33.328735, 17.255526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.002979, 33.148148, 17.225800>,  <41.216385, 33.039795, 17.207964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.002979, 33.148148, 17.225800>,  <40.647305, 33.328735, 17.255526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002979, 33.148148, 17.225800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208979, -0.545223, 0.811825,
		-0.407029, -0.706335, -0.579153,
		0.889188, -0.451467, -0.074312,
		41.269737, 33.012707, 17.203506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506744, 32.688824, 17.243338>,  <40.647305, 33.328735, 17.255526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506744, 32.688824, 17.243338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.878613, 32.734497, 17.383434>,  <41.101734, 32.761902, 17.467491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.878613, 32.734497, 17.383434>,  <40.506744, 32.688824, 17.243338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878613, 32.734497, 17.383434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267081, -0.445906, 0.854304,
		0.253718, -0.887767, -0.384052,
		0.929674, 0.114179, 0.350241,
		41.157516, 32.768749, 17.488506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787624, 32.009533, 17.492081>,  <40.506744, 32.688824, 17.243338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787624, 32.009533, 17.492081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.099758, 32.194042, 17.660984>,  <41.287041, 32.304749, 17.762325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.099758, 32.194042, 17.660984>,  <40.787624, 32.009533, 17.492081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099758, 32.194042, 17.660984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242923, -0.398610, 0.884364,
		0.576247, -0.792679, -0.198997,
		0.780338, 0.461271, 0.422257,
		41.333858, 32.332424, 17.787661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227066, 31.540163, 17.829882>,  <40.787624, 32.009533, 17.492081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227066, 31.540163, 17.829882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.294720, 31.889309, 18.012966>,  <41.335312, 32.098797, 18.122816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.294720, 31.889309, 18.012966>,  <41.227066, 31.540163, 17.829882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294720, 31.889309, 18.012966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434761, -0.350701, 0.829453,
		0.884520, -0.339286, 0.320171,
		0.169138, 0.872865, 0.457710,
		41.345463, 32.151169, 18.150280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722275, 31.528786, 18.443701>,  <41.227066, 31.540163, 17.829882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722275, 31.528786, 18.443701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.455124, 31.823071, 18.488710>,  <41.294834, 31.999641, 18.515717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.455124, 31.823071, 18.488710>,  <41.722275, 31.528786, 18.443701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455124, 31.823071, 18.488710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216136, -0.336395, 0.916583,
		0.712193, 0.587849, 0.383685,
		-0.667882, 0.735712, 0.112523,
		41.254761, 32.043785, 18.522467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683926, 31.749365, 19.213829>,  <41.722275, 31.528786, 18.443701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683926, 31.749365, 19.213829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.378078, 31.983101, 19.105083>,  <41.194572, 32.123344, 19.039835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.378078, 31.983101, 19.105083>,  <41.683926, 31.749365, 19.213829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378078, 31.983101, 19.105083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425595, -0.141026, 0.893857,
		0.483977, 0.799161, 0.356523,
		-0.764614, 0.584341, -0.271866,
		41.148693, 32.158401, 19.023523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602974, 32.171722, 19.715513>,  <41.683926, 31.749365, 19.213829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602974, 32.171722, 19.715513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.240009, 32.195045, 19.549042>,  <41.022232, 32.209042, 19.449158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.240009, 32.195045, 19.549042>,  <41.602974, 32.171722, 19.715513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240009, 32.195045, 19.549042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407328, 0.121611, 0.905149,
		0.103393, 0.990863, -0.086599,
		-0.907411, 0.058312, -0.416180,
		40.967785, 32.212540, 19.424189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306416, 32.805489, 19.932039>,  <41.602974, 32.171722, 19.715513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306416, 32.805489, 19.932039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.015629, 32.541515, 19.856140>,  <40.841156, 32.383133, 19.810600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.015629, 32.541515, 19.856140>,  <41.306416, 32.805489, 19.932039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015629, 32.541515, 19.856140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380247, 0.156792, 0.911498,
		-0.571774, 0.734784, -0.364920,
		-0.726971, -0.659930, -0.189750,
		40.797539, 32.343536, 19.799215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715298, 33.139526, 20.270195>,  <41.306416, 32.805489, 19.932039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715298, 33.139526, 20.270195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.589886, 32.764812, 20.208067>,  <40.514637, 32.539982, 20.170790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.589886, 32.764812, 20.208067>,  <40.715298, 33.139526, 20.270195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589886, 32.764812, 20.208067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406582, -0.015380, 0.913485,
		-0.858131, 0.349559, -0.376059,
		-0.313533, -0.936788, -0.155322,
		40.495827, 32.483776, 20.161470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080952, 33.123810, 20.498693>,  <40.715298, 33.139526, 20.270195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080952, 33.123810, 20.498693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183819, 32.737274, 20.501505>,  <40.245541, 32.505352, 20.503193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183819, 32.737274, 20.501505>,  <40.080952, 33.123810, 20.498693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183819, 32.737274, 20.501505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335426, -0.082439, 0.938453,
		-0.906285, -0.243701, -0.345337,
		0.257171, -0.966340, 0.007031,
		40.260971, 32.447372, 20.503614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513962, 33.370857, 20.327303>,  <40.080952, 33.123810, 20.498693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513962, 33.370857, 20.327303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118202, 33.428391, 20.319370>,  <38.880745, 33.462910, 20.314611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118202, 33.428391, 20.319370>,  <39.513962, 33.370857, 20.327303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118202, 33.428391, 20.319370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095073, 0.538546, -0.837215,
		-0.109744, -0.830228, -0.546514,
		-0.989402, 0.143838, -0.019830,
		38.821381, 33.471542, 20.313421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280952, 33.212952, 19.631176>,  <39.513962, 33.370857, 20.327303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280952, 33.212952, 19.631176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.012470, 33.455956, 19.801077>,  <38.851379, 33.601757, 19.903017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.012470, 33.455956, 19.801077>,  <39.280952, 33.212952, 19.631176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012470, 33.455956, 19.801077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202788, 0.701631, -0.683075,
		-0.712994, -0.372349, -0.594134,
		-0.671205, 0.607512, 0.424751,
		38.811108, 33.638210, 19.928503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924110, 33.340626, 19.004734>,  <39.280952, 33.212952, 19.631176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924110, 33.340626, 19.004734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.872284, 33.625336, 19.280874>,  <38.841190, 33.796162, 19.446558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.872284, 33.625336, 19.280874>,  <38.924110, 33.340626, 19.004734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872284, 33.625336, 19.280874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008397, 0.695408, -0.718567,
		-0.991536, -0.098895, -0.084122,
		-0.129562, 0.711778, 0.690352,
		38.833416, 33.838871, 19.487980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446239, 33.750702, 18.806992>,  <38.924110, 33.340626, 19.004734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446239, 33.750702, 18.806992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.645611, 33.977222, 19.069557>,  <38.765232, 34.113132, 19.227097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.645611, 33.977222, 19.069557>,  <38.446239, 33.750702, 18.806992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645611, 33.977222, 19.069557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092179, 0.718258, -0.689644,
		-0.862017, 0.404245, 0.305799,
		0.498427, 0.566297, 0.656413,
		38.795139, 34.147110, 19.266481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198540, 34.504913, 18.676168>,  <38.446239, 33.750702, 18.806992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198540, 34.504913, 18.676168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.554665, 34.502636, 18.858295>,  <38.768341, 34.501270, 18.967571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.554665, 34.502636, 18.858295>,  <38.198540, 34.504913, 18.676168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554665, 34.502636, 18.858295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325425, 0.707372, -0.627474,
		-0.318506, 0.706819, 0.631634,
		0.890311, -0.005695, 0.455318,
		38.821758, 34.500927, 18.994890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244057, 35.157898, 18.881449>,  <38.198540, 34.504913, 18.676168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244057, 35.157898, 18.881449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593334, 34.967945, 18.837591>,  <38.802902, 34.853973, 18.811277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593334, 34.967945, 18.837591>,  <38.244057, 35.157898, 18.881449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593334, 34.967945, 18.837591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327402, 0.738198, -0.589806,
		0.361024, 0.479119, 0.800067,
		0.873195, -0.474878, -0.109643,
		38.855293, 34.825481, 18.804699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629356, 35.708828, 18.582104>,  <38.244057, 35.157898, 18.881449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629356, 35.708828, 18.582104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882549, 35.399612, 18.565388>,  <39.034466, 35.214085, 18.555359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882549, 35.399612, 18.565388>,  <38.629356, 35.708828, 18.582104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882549, 35.399612, 18.565388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529368, 0.471586, -0.705249,
		0.564891, 0.424289, 0.707727,
		0.632983, -0.773037, -0.041790,
		39.072445, 35.167702, 18.552851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894516, 36.513062, 18.799475>,  <38.629356, 35.708828, 18.582104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894516, 36.513062, 18.799475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.541439, 36.699413, 18.774784>,  <38.329594, 36.811226, 18.759970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.541439, 36.699413, 18.774784>,  <38.894516, 36.513062, 18.799475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541439, 36.699413, 18.774784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257756, -0.370113, 0.892512,
		0.392961, 0.803723, 0.446779,
		-0.882691, 0.465883, -0.061725,
		38.276630, 36.839180, 18.756268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892921, 36.871078, 19.381237>,  <38.894516, 36.513062, 18.799475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892921, 36.871078, 19.381237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.511929, 36.838760, 19.263767>,  <38.283333, 36.819370, 19.193285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.511929, 36.838760, 19.263767>,  <38.892921, 36.871078, 19.381237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511929, 36.838760, 19.263767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266785, -0.243910, 0.932380,
		-0.146964, 0.966426, 0.210766,
		-0.952485, -0.080797, -0.293674,
		38.226185, 36.814522, 19.175665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487743, 37.266884, 19.852150>,  <38.892921, 36.871078, 19.381237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487743, 37.266884, 19.852150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206047, 37.041851, 19.678919>,  <38.037029, 36.906834, 19.574980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206047, 37.041851, 19.678919>,  <38.487743, 37.266884, 19.852150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206047, 37.041851, 19.678919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295607, -0.322257, 0.899314,
		-0.645497, 0.761351, 0.060643,
		-0.704237, -0.562578, -0.433077,
		37.994778, 36.873077, 19.548996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930943, 37.349510, 20.249464>,  <38.487743, 37.266884, 19.852150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930943, 37.349510, 20.249464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.842136, 37.006863, 20.063169>,  <37.788853, 36.801273, 19.951393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.842136, 37.006863, 20.063169>,  <37.930943, 37.349510, 20.249464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842136, 37.006863, 20.063169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216412, -0.422453, 0.880170,
		-0.950723, 0.296201, -0.091592,
		-0.222014, -0.856620, -0.465737,
		37.775532, 36.749878, 19.923449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247440, 37.214355, 20.501534>,  <37.930943, 37.349510, 20.249464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247440, 37.214355, 20.501534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.404068, 36.871372, 20.368006>,  <37.498043, 36.665581, 20.287889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.404068, 36.871372, 20.368006>,  <37.247440, 37.214355, 20.501534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404068, 36.871372, 20.368006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365870, -0.477964, 0.798555,
		-0.844283, -0.190553, -0.500874,
		0.391567, -0.857461, -0.333819,
		37.521538, 36.614132, 20.267860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694923, 36.805386, 20.531372>,  <37.247440, 37.214355, 20.501534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694923, 36.805386, 20.531372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.029556, 36.586308, 20.526211>,  <37.230335, 36.454861, 20.523113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.029556, 36.586308, 20.526211>,  <36.694923, 36.805386, 20.531372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029556, 36.586308, 20.526211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431735, -0.673588, 0.599903,
		-0.337257, -0.496295, -0.799968,
		0.836578, -0.547696, -0.012904,
		37.280529, 36.421997, 20.522339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380547, 36.210327, 20.616941>,  <36.694923, 36.805386, 20.531372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380547, 36.210327, 20.616941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.768448, 36.144756, 20.689285>,  <37.001186, 36.105412, 20.732691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.768448, 36.144756, 20.689285>,  <36.380547, 36.210327, 20.616941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768448, 36.144756, 20.689285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243640, -0.604786, 0.758204,
		-0.014911, -0.779334, -0.626432,
		0.969751, -0.163929, 0.180859,
		37.059372, 36.095577, 20.743544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.913876, 37.481960, 18.156174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.950554, 37.109119, 18.016014>,  <41.972561, 36.885414, 17.931917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.950554, 37.109119, 18.016014>,  <41.913876, 37.481960, 18.156174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950554, 37.109119, 18.016014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267136, -0.362011, 0.893077,
		-0.959286, 0.011709, -0.282194,
		0.091700, -0.932100, -0.350400,
		41.978065, 36.829491, 17.910894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296242, 37.176075, 18.103977>,  <41.913876, 37.481960, 18.156174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296242, 37.176075, 18.103977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.577488, 36.905346, 18.191189>,  <41.746235, 36.742908, 18.243515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.577488, 36.905346, 18.191189>,  <41.296242, 37.176075, 18.103977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577488, 36.905346, 18.191189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525352, -0.287817, 0.800729,
		-0.479201, -0.677547, -0.557940,
		0.703116, -0.676825, 0.218028,
		41.788422, 36.702297, 18.256598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971870, 36.596409, 18.254005>,  <41.296242, 37.176075, 18.103977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971870, 36.596409, 18.254005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.327492, 36.535843, 18.426819>,  <41.540867, 36.499504, 18.530506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.327492, 36.535843, 18.426819>,  <40.971870, 36.596409, 18.254005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327492, 36.535843, 18.426819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455810, -0.380657, 0.804573,
		0.042628, -0.912235, -0.407444,
		0.889056, -0.151419, 0.432032,
		41.594208, 36.490417, 18.556429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841946, 35.987705, 18.617849>,  <40.971870, 36.596409, 18.254005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841946, 35.987705, 18.617849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.168087, 36.145374, 18.787477>,  <41.363770, 36.239975, 18.889254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.168087, 36.145374, 18.787477>,  <40.841946, 35.987705, 18.617849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168087, 36.145374, 18.787477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431455, -0.074756, 0.899032,
		0.386072, -0.915992, 0.109114,
		0.815349, 0.394169, 0.424071,
		41.412693, 36.263626, 18.914700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892742, 35.595734, 19.221140>,  <40.841946, 35.987705, 18.617849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892742, 35.595734, 19.221140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.132401, 35.905888, 19.300943>,  <41.276196, 36.091980, 19.348825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.132401, 35.905888, 19.300943>,  <40.892742, 35.595734, 19.221140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132401, 35.905888, 19.300943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311250, -0.004013, 0.950320,
		0.737663, -0.631478, 0.238934,
		0.599147, 0.775383, 0.199508,
		41.312145, 36.138504, 19.360796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289772, 35.415825, 19.788078>,  <40.892742, 35.595734, 19.221140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289772, 35.415825, 19.788078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.279167, 35.815678, 19.785986>,  <41.272804, 36.055592, 19.784731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.279167, 35.815678, 19.785986>,  <41.289772, 35.415825, 19.788078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279167, 35.815678, 19.785986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139810, 0.001471, 0.990177,
		0.989824, 0.026983, 0.139720,
		-0.026512, 0.999635, -0.005229,
		41.271214, 36.115566, 19.784418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753235, 35.732536, 20.338020>,  <41.289772, 35.415825, 19.788078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753235, 35.732536, 20.338020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.502815, 36.032997, 20.254278>,  <41.352562, 36.213276, 20.204033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.502815, 36.032997, 20.254278>,  <41.753235, 35.732536, 20.338020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502815, 36.032997, 20.254278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165887, 0.134042, 0.976992,
		0.761934, 0.646375, 0.040690,
		-0.626049, 0.751154, -0.209357,
		41.314999, 36.258343, 20.191471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786476, 36.286167, 20.982512>,  <41.753235, 35.732536, 20.338020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786476, 36.286167, 20.982512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.451077, 36.386227, 20.788876>,  <41.249836, 36.446262, 20.672695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.451077, 36.386227, 20.788876>,  <41.786476, 36.286167, 20.982512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451077, 36.386227, 20.788876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416910, 0.277520, 0.865545,
		0.350857, 0.927583, -0.128412,
		-0.838502, 0.250146, -0.484089,
		41.199528, 36.461269, 20.643648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604374, 36.963509, 21.120878>,  <41.786476, 36.286167, 20.982512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604374, 36.963509, 21.120878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.258381, 36.789268, 21.021236>,  <41.050785, 36.684727, 20.961451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.258381, 36.789268, 21.021236>,  <41.604374, 36.963509, 21.120878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258381, 36.789268, 21.021236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439354, 0.417617, 0.795339,
		-0.242416, 0.797403, -0.552614,
		-0.864987, -0.435596, -0.249105,
		40.998886, 36.658588, 20.946505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133636, 37.455048, 21.190468>,  <41.604374, 36.963509, 21.120878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133636, 37.455048, 21.190468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.928612, 37.111732, 21.200478>,  <40.805595, 36.905743, 21.206484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.928612, 37.111732, 21.200478>,  <41.133636, 37.455048, 21.190468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928612, 37.111732, 21.200478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475852, 0.308192, 0.823761,
		-0.714735, 0.410321, -0.566384,
		-0.512562, -0.858286, 0.025023,
		40.774845, 36.854248, 21.207985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421848, 37.633072, 21.296837>,  <41.133636, 37.455048, 21.190468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421848, 37.633072, 21.296837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.415592, 37.246414, 21.399092>,  <40.411839, 37.014420, 21.460443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.415592, 37.246414, 21.399092>,  <40.421848, 37.633072, 21.296837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415592, 37.246414, 21.399092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545578, 0.222503, 0.807984,
		-0.837914, -0.126834, -0.530861,
		-0.015638, -0.966647, 0.255636,
		40.410900, 36.956421, 21.475782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798691, 37.585266, 21.626202>,  <40.421848, 37.633072, 21.296837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798691, 37.585266, 21.626202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.992191, 37.252926, 21.736240>,  <40.108292, 37.053520, 21.802263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.992191, 37.252926, 21.736240>,  <39.798691, 37.585266, 21.626202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992191, 37.252926, 21.736240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577885, -0.067160, 0.813350,
		-0.657296, -0.552430, -0.512623,
		0.483747, -0.830849, 0.275097,
		40.137314, 37.003670, 21.818769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037746, 37.808685, 21.390554>,  <39.798691, 37.585266, 21.626202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037746, 37.808685, 21.390554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.934418, 38.175030, 21.513500>,  <38.872421, 38.394836, 21.587267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.934418, 38.175030, 21.513500>,  <39.037746, 37.808685, 21.390554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934418, 38.175030, 21.513500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316150, 0.380788, -0.868936,
		-0.912862, -0.127295, -0.387915,
		-0.258325, 0.915859, 0.307362,
		38.856922, 38.449787, 21.605709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645046, 38.060684, 20.750954>,  <39.037746, 37.808685, 21.390554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645046, 38.060684, 20.750954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.757328, 38.366005, 20.983702>,  <38.824696, 38.549198, 21.123350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.757328, 38.366005, 20.983702>,  <38.645046, 38.060684, 20.750954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757328, 38.366005, 20.983702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283554, 0.513235, -0.810054,
		-0.916952, 0.392378, -0.072370,
		0.280704, 0.763302, 0.581872,
		38.841537, 38.594994, 21.158264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516857, 38.598167, 20.357998>,  <38.645046, 38.060684, 20.750954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516857, 38.598167, 20.357998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.764645, 38.747169, 20.634401>,  <38.913319, 38.836571, 20.800243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.764645, 38.747169, 20.634401>,  <38.516857, 38.598167, 20.357998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764645, 38.747169, 20.634401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273683, 0.722539, -0.634850,
		-0.735767, 0.582389, 0.345644,
		0.619471, 0.372505, 0.691010,
		38.950485, 38.858921, 20.841705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524628, 39.297310, 20.231052>,  <38.516857, 38.598167, 20.357998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524628, 39.297310, 20.231052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.855995, 39.251034, 20.450268>,  <39.054813, 39.223267, 20.581797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.855995, 39.251034, 20.450268>,  <38.524628, 39.297310, 20.231052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855995, 39.251034, 20.450268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459361, 0.700185, -0.546561,
		-0.320494, 0.704526, 0.633188,
		0.828415, -0.115692, 0.548036,
		39.104519, 39.216328, 20.614679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770039, 40.068462, 20.233644>,  <38.524628, 39.297310, 20.231052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770039, 40.068462, 20.233644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.068192, 39.812511, 20.308447>,  <39.247082, 39.658939, 20.353329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.068192, 39.812511, 20.308447>,  <38.770039, 40.068462, 20.233644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068192, 39.812511, 20.308447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557133, 0.443880, -0.701836,
		0.366080, 0.627320, 0.687354,
		0.745378, -0.639876, 0.187005,
		39.291805, 39.620548, 20.364548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402119, 40.412022, 20.059645>,  <38.770039, 40.068462, 20.233644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402119, 40.412022, 20.059645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.499592, 40.024639, 20.038778>,  <39.558075, 39.792210, 20.026258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.499592, 40.024639, 20.038778>,  <39.402119, 40.412022, 20.059645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499592, 40.024639, 20.038778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485816, 0.168441, -0.857677,
		0.839406, 0.183654, 0.511535,
		0.243679, -0.968452, -0.052168,
		39.572697, 39.734104, 20.023129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115974, 40.474407, 19.889036>,  <39.402119, 40.412022, 20.059645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115974, 40.474407, 19.889036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.010246, 40.094650, 19.821159>,  <39.946812, 39.866798, 19.780434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.010246, 40.094650, 19.821159>,  <40.115974, 40.474407, 19.889036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010246, 40.094650, 19.821159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656641, -0.048287, -0.752656,
		0.706370, -0.310366, 0.636172,
		-0.264317, -0.949390, -0.169691,
		39.930950, 39.809834, 19.770252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728489, 40.088749, 19.582747>,  <40.115974, 40.474407, 19.889036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728489, 40.088749, 19.582747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.404858, 39.868935, 19.499409>,  <40.210678, 39.737045, 19.449406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.404858, 39.868935, 19.499409>,  <40.728489, 40.088749, 19.582747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404858, 39.868935, 19.499409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464236, -0.380197, -0.799959,
		0.360395, -0.743948, 0.562723,
		-0.809073, -0.549538, -0.208346,
		40.162136, 39.704075, 19.436905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052135, 39.425167, 19.241682>,  <40.728489, 40.088749, 19.582747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052135, 39.425167, 19.241682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.664185, 39.452641, 19.148193>,  <40.431416, 39.469124, 19.092100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.664185, 39.452641, 19.148193>,  <41.052135, 39.425167, 19.241682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664185, 39.452641, 19.148193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183166, -0.426937, -0.885537,
		-0.160602, -0.901670, 0.401496,
		-0.969875, 0.068679, -0.233722,
		40.373222, 39.473244, 19.078077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891434, 38.856968, 18.892960>,  <41.052135, 39.425167, 19.241682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891434, 38.856968, 18.892960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.621113, 39.127972, 18.776842>,  <40.458920, 39.290573, 18.707172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.621113, 39.127972, 18.776842>,  <40.891434, 38.856968, 18.892960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621113, 39.127972, 18.776842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206880, -0.203659, -0.956935,
		-0.707452, -0.706757, -0.002529,
		-0.675806, 0.677508, -0.290292,
		40.418369, 39.331223, 18.689754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422501, 38.551437, 18.421848>,  <40.891434, 38.856968, 18.892960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422501, 38.551437, 18.421848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.433277, 38.942787, 18.339811>,  <40.439743, 39.177597, 18.290588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.433277, 38.942787, 18.339811>,  <40.422501, 38.551437, 18.421848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433277, 38.942787, 18.339811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241950, -0.205450, -0.948288,
		-0.969915, -0.024077, -0.242252,
		0.026938, 0.978371, -0.205095,
		40.441360, 39.236298, 18.278282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431118, 38.534023, 17.600941>,  <40.422501, 38.551437, 18.421848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431118, 38.534023, 17.600941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.456287, 38.922878, 17.691257>,  <40.471390, 39.156193, 17.745447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.456287, 38.922878, 17.691257>,  <40.431118, 38.534023, 17.600941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456287, 38.922878, 17.691257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312370, 0.195691, -0.929586,
		-0.947874, 0.129025, -0.291354,
		0.062924, 0.972141, 0.225794,
		40.475166, 39.214520, 17.758995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004360, 38.932045, 17.120340>,  <40.431118, 38.534023, 17.600941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004360, 38.932045, 17.120340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.291142, 39.180862, 17.246225>,  <40.463211, 39.330154, 17.321756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.291142, 39.180862, 17.246225>,  <40.004360, 38.932045, 17.120340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291142, 39.180862, 17.246225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145715, 0.307753, -0.940242,
		-0.681725, 0.719965, 0.130003,
		0.716950, 0.622043, 0.314713,
		40.506226, 39.367474, 17.340639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723167, 38.973099, 16.367966>,  <40.004360, 38.932045, 17.120340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723167, 38.973099, 16.367966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.538326, 38.673977, 16.177284>,  <39.427422, 38.494503, 16.062876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.538326, 38.673977, 16.177284>,  <39.723167, 38.973099, 16.367966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538326, 38.673977, 16.177284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209339, -0.430366, 0.878045,
		-0.861764, 0.505541, 0.042329,
		-0.462104, -0.747806, -0.476703,
		39.399696, 38.449635, 16.034273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121464, 39.077885, 16.745258>,  <39.723167, 38.973099, 16.367966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121464, 39.077885, 16.745258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158253, 38.717800, 16.575006>,  <39.180325, 38.501751, 16.472855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158253, 38.717800, 16.575006>,  <39.121464, 39.077885, 16.745258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158253, 38.717800, 16.575006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365935, -0.428090, 0.826336,
		-0.926085, 0.079754, -0.368791,
		0.091972, -0.900210, -0.425632,
		39.185844, 38.447739, 16.447317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410801, 38.773445, 16.752733>,  <39.121464, 39.077885, 16.745258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410801, 38.773445, 16.752733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.663582, 38.465645, 16.715847>,  <38.815250, 38.280964, 16.693716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.663582, 38.465645, 16.715847>,  <38.410801, 38.773445, 16.752733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663582, 38.465645, 16.715847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562915, -0.537529, 0.627845,
		-0.532675, -0.344885, -0.772860,
		0.631969, -0.769492, -0.092187,
		38.853168, 38.234795, 16.688183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927246, 38.114899, 16.543724>,  <38.410801, 38.773445, 16.752733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927246, 38.114899, 16.543724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.281864, 38.007591, 16.694494>,  <38.494633, 37.943207, 16.784956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.281864, 38.007591, 16.694494>,  <37.927246, 38.114899, 16.543724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281864, 38.007591, 16.694494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455289, -0.650625, 0.607782,
		0.082186, -0.710435, -0.698948,
		0.886543, -0.268272, 0.376925,
		38.547829, 37.927109, 16.807571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682964, 37.478996, 16.699417>,  <37.927246, 38.114899, 16.543724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682964, 37.478996, 16.699417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.028744, 37.533154, 16.893072>,  <38.236214, 37.565647, 17.009266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.028744, 37.533154, 16.893072>,  <37.682964, 37.478996, 16.699417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028744, 37.533154, 16.893072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343629, -0.543795, 0.765641,
		0.366935, -0.828225, -0.423560,
		0.864452, 0.135393, 0.484139,
		38.288078, 37.573772, 17.038315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923496, 36.817852, 16.991798>,  <37.682964, 37.478996, 16.699417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923496, 36.817852, 16.991798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.156940, 37.052227, 17.216682>,  <38.297009, 37.192852, 17.351612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.156940, 37.052227, 17.216682>,  <37.923496, 36.817852, 16.991798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156940, 37.052227, 17.216682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014081, -0.684940, 0.728464,
		0.811911, -0.433056, -0.391487,
		0.583611, 0.585936, 0.562208,
		38.332024, 37.228008, 17.385345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307747, 36.443573, 17.480562>,  <37.923496, 36.817852, 16.991798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307747, 36.443573, 17.480562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.322643, 36.791683, 17.677025>,  <38.331581, 37.000549, 17.794903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.322643, 36.791683, 17.677025>,  <38.307747, 36.443573, 17.480562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322643, 36.791683, 17.677025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181371, -0.477450, 0.859736,
		0.982709, -0.121100, 0.140062,
		0.037241, 0.870274, 0.491158,
		38.333817, 37.052765, 17.824373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735241, 36.288502, 18.096397>,  <38.307747, 36.443573, 17.480562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735241, 36.288502, 18.096397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.520519, 36.619019, 18.164623>,  <38.391685, 36.817329, 18.205559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.520519, 36.619019, 18.164623>,  <38.735241, 36.288502, 18.096397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520519, 36.619019, 18.164623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295544, -0.373508, 0.879287,
		0.790252, 0.421592, 0.444704,
		-0.536801, 0.826288, 0.170566,
		38.359478, 36.866905, 18.215794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446636, 36.075317, 18.367960>,  <38.735241, 36.288502, 18.096397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446636, 36.075317, 18.367960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.423088, 35.683754, 18.289698>,  <39.408958, 35.448818, 18.242741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.423088, 35.683754, 18.289698>,  <39.446636, 36.075317, 18.367960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423088, 35.683754, 18.289698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517798, 0.137625, -0.844361,
		0.853475, -0.151017, 0.498773,
		-0.058869, -0.978904, -0.195656,
		39.405426, 35.390083, 18.231001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074585, 35.888306, 18.200972>,  <39.446636, 36.075317, 18.367960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074585, 35.888306, 18.200972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.829712, 35.616741, 18.038830>,  <39.682789, 35.453804, 17.941545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.829712, 35.616741, 18.038830>,  <40.074585, 35.888306, 18.200972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829712, 35.616741, 18.038830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396744, 0.179708, -0.900166,
		0.683975, -0.711891, 0.159337,
		-0.612186, -0.678908, -0.405355,
		39.646057, 35.413071, 17.917223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562656, 35.490578, 17.777046>,  <40.074585, 35.888306, 18.200972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562656, 35.490578, 17.777046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.201847, 35.418137, 17.620304>,  <39.985359, 35.374672, 17.526258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.201847, 35.418137, 17.620304>,  <40.562656, 35.490578, 17.777046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201847, 35.418137, 17.620304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381187, 0.091858, -0.919923,
		0.202596, -0.979165, -0.013824,
		-0.902027, -0.181103, -0.391855,
		39.931240, 35.363808, 17.502748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605442, 34.873264, 17.321106>,  <40.562656, 35.490578, 17.777046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605442, 34.873264, 17.321106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.284698, 35.084953, 17.210150>,  <40.092255, 35.211967, 17.143576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.284698, 35.084953, 17.210150>,  <40.605442, 34.873264, 17.321106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284698, 35.084953, 17.210150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339775, 0.021986, -0.940250,
		-0.491507, -0.848195, -0.197448,
		-0.801857, 0.529227, -0.277389,
		40.044140, 35.243721, 17.126932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426655, 34.549171, 16.738844>,  <40.605442, 34.873264, 17.321106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426655, 34.549171, 16.738844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.228928, 34.896877, 16.736622>,  <40.110291, 35.105499, 16.735289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.228928, 34.896877, 16.736622>,  <40.426655, 34.549171, 16.738844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228928, 34.896877, 16.736622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231174, 0.125294, -0.964811,
		-0.837979, -0.478207, -0.262886,
		-0.494317, 0.869264, -0.005555,
		40.080631, 35.157658, 16.734955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121498, 34.573883, 16.078897>,  <40.426655, 34.549171, 16.738844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121498, 34.573883, 16.078897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.091190, 34.956348, 16.192041>,  <40.073006, 35.185829, 16.259928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.091190, 34.956348, 16.192041>,  <40.121498, 34.573883, 16.078897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091190, 34.956348, 16.192041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401296, 0.288929, -0.869184,
		-0.912809, 0.047656, -0.405596,
		-0.075767, 0.956164, 0.282862,
		40.068459, 35.243198, 16.276899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892124, 34.847797, 15.468626>,  <40.121498, 34.573883, 16.078897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892124, 34.847797, 15.468626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.991707, 35.177139, 15.672629>,  <40.051456, 35.374744, 15.795032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.991707, 35.177139, 15.672629>,  <39.892124, 34.847797, 15.468626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991707, 35.177139, 15.672629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341770, 0.418029, -0.841692,
		-0.906209, 0.383848, -0.177328,
		0.248954, 0.823354, 0.510009,
		40.066395, 35.424145, 15.825632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500744, 35.413891, 15.166387>,  <39.892124, 34.847797, 15.468626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500744, 35.413891, 15.166387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.828960, 35.566479, 15.336653>,  <40.025890, 35.658031, 15.438812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.828960, 35.566479, 15.336653>,  <39.500744, 35.413891, 15.166387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828960, 35.566479, 15.336653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283687, 0.374721, -0.882670,
		-0.496214, 0.845025, 0.199259,
		0.820545, 0.381465, 0.425664,
		40.075123, 35.680920, 15.464352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588570, 36.161900, 14.827859>,  <39.500744, 35.413891, 15.166387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588570, 36.161900, 14.827859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.928585, 36.031834, 14.993605>,  <40.132595, 35.953793, 15.093052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.928585, 36.031834, 14.993605>,  <39.588570, 36.161900, 14.827859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928585, 36.031834, 14.993605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512988, 0.332650, -0.791320,
		0.119471, 0.885219, 0.449572,
		0.850041, -0.325165, 0.414364,
		40.183598, 35.934284, 15.117914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.355801, 32.418793, 30.388447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017464, 32.584362, 30.253855>,  <36.814461, 32.683704, 30.173100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.017464, 32.584362, 30.253855>,  <37.355801, 32.418793, 30.388447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017464, 32.584362, 30.253855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342529, -0.905012, -0.252244,
		-0.408928, -0.098104, 0.907278,
		-0.845844, 0.413919, -0.336481,
		36.763710, 32.708538, 30.152910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703640, 32.976704, 30.116030>,  <37.355801, 32.418793, 30.388447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703640, 32.976704, 30.116030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.884266, 32.620655, 30.091429>,  <37.992641, 32.407028, 30.076668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.884266, 32.620655, 30.091429>,  <37.703640, 32.976704, 30.116030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884266, 32.620655, 30.091429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443527, -0.164123, -0.881106,
		0.774193, 0.425154, -0.468903,
		0.451563, -0.890117, -0.061504,
		38.019733, 32.353619, 30.072977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229279, 32.974312, 29.636030>,  <37.703640, 32.976704, 30.116030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229279, 32.974312, 29.636030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.087479, 32.600433, 29.646458>,  <38.002399, 32.376106, 29.652714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.087479, 32.600433, 29.646458>,  <38.229279, 32.974312, 29.636030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087479, 32.600433, 29.646458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204643, 0.050352, -0.977541,
		0.912388, -0.351871, -0.209128,
		-0.354498, -0.934693, 0.026068,
		37.981129, 32.320026, 29.654278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549717, 32.577759, 29.164753>,  <38.229279, 32.974312, 29.636030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549717, 32.577759, 29.164753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.217442, 32.361225, 29.216784>,  <38.018078, 32.231304, 29.248001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.217442, 32.361225, 29.216784>,  <38.549717, 32.577759, 29.164753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217442, 32.361225, 29.216784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179451, 0.039171, -0.982987,
		0.527028, -0.839895, -0.129681,
		-0.830686, -0.541333, 0.130076,
		37.968235, 32.198826, 29.255806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631374, 32.057766, 28.653316>,  <38.549717, 32.577759, 29.164753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631374, 32.057766, 28.653316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245296, 32.059258, 28.757917>,  <38.013649, 32.060154, 28.820679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245296, 32.059258, 28.757917>,  <38.631374, 32.057766, 28.653316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245296, 32.059258, 28.757917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257643, -0.185317, -0.948303,
		0.044924, -0.982672, 0.179828,
		-0.965195, 0.003730, 0.261504,
		37.955738, 32.060375, 28.836369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332516, 31.392008, 28.483915>,  <38.631374, 32.057766, 28.653316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332516, 31.392008, 28.483915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.025108, 31.647480, 28.499229>,  <37.840664, 31.800764, 28.508417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.025108, 31.647480, 28.499229>,  <38.332516, 31.392008, 28.483915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025108, 31.647480, 28.499229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284099, -0.287016, -0.914828,
		-0.573296, -0.713937, 0.402026,
		-0.768518, 0.638683, 0.038283,
		37.794552, 31.839085, 28.510714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755222, 31.092522, 28.181980>,  <38.332516, 31.392008, 28.483915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755222, 31.092522, 28.181980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623631, 31.469915, 28.165964>,  <37.544674, 31.696352, 28.156355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623631, 31.469915, 28.165964>,  <37.755222, 31.092522, 28.181980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623631, 31.469915, 28.165964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370348, -0.167906, -0.913592,
		-0.868684, -0.285728, 0.404657,
		-0.328983, 0.943487, -0.040038,
		37.524937, 31.752962, 28.153954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086029, 31.019371, 27.824472>,  <37.755222, 31.092522, 28.181980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086029, 31.019371, 27.824472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.164570, 31.410437, 27.794483>,  <37.211697, 31.645075, 27.776489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.164570, 31.410437, 27.794483>,  <37.086029, 31.019371, 27.824472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164570, 31.410437, 27.794483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487288, 0.030945, -0.872693,
		-0.850879, 0.207891, 0.482479,
		0.196355, 0.977662, -0.074972,
		37.223476, 31.703735, 27.771992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528324, 31.332495, 27.495016>,  <37.086029, 31.019371, 27.824472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528324, 31.332495, 27.495016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.847969, 31.564676, 27.432407>,  <37.039757, 31.703985, 27.394842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.847969, 31.564676, 27.432407>,  <36.528324, 31.332495, 27.495016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847969, 31.564676, 27.432407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250296, 0.084505, -0.964474,
		-0.546604, 0.809898, 0.212814,
		0.799110, 0.580452, -0.156523,
		37.087704, 31.738811, 27.385450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214344, 31.834719, 27.098465>,  <36.528324, 31.332495, 27.495016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214344, 31.834719, 27.098465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610126, 31.857725, 27.045305>,  <36.847595, 31.871529, 27.013409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610126, 31.857725, 27.045305>,  <36.214344, 31.834719, 27.098465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610126, 31.857725, 27.045305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143463, 0.264332, -0.953702,
		-0.019725, 0.962715, 0.269797,
		0.989459, 0.057518, -0.132900,
		36.906963, 31.874981, 27.005436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353279, 32.451942, 26.766745>,  <36.214344, 31.834719, 27.098465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353279, 32.451942, 26.766745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680187, 32.240704, 26.674498>,  <36.876331, 32.113960, 26.619150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.680187, 32.240704, 26.674498>,  <36.353279, 32.451942, 26.766745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680187, 32.240704, 26.674498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000028, 0.400239, -0.916411,
		0.576252, 0.748951, 0.327119,
		0.817272, -0.528093, -0.230618,
		36.925369, 32.082275, 26.605312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620426, 32.850323, 26.310652>,  <36.353279, 32.451942, 26.766745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620426, 32.850323, 26.310652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839977, 32.523136, 26.241753>,  <36.971706, 32.326824, 26.200413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839977, 32.523136, 26.241753>,  <36.620426, 32.850323, 26.310652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839977, 32.523136, 26.241753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090874, 0.263232, -0.960443,
		0.830948, 0.511513, 0.218814,
		0.548878, -0.817963, -0.172249,
		37.004639, 32.277748, 26.190079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686386, 33.574268, 26.591040>,  <36.620426, 32.850323, 26.310652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686386, 33.574268, 26.591040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339844, 33.670570, 26.416010>,  <36.131920, 33.728352, 26.310991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339844, 33.670570, 26.416010>,  <36.686386, 33.574268, 26.591040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339844, 33.670570, 26.416010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473500, -0.117278, 0.872951,
		0.158846, 0.963475, 0.215600,
		-0.866352, 0.240751, -0.437576,
		36.079937, 33.742794, 26.284737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555656, 34.277718, 26.912773>,  <36.686386, 33.574268, 26.591040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555656, 34.277718, 26.912773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234917, 34.093166, 26.760897>,  <36.042473, 33.982437, 26.669771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234917, 34.093166, 26.760897>,  <36.555656, 34.277718, 26.912773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234917, 34.093166, 26.760897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490055, 0.144221, 0.859678,
		-0.341877, 0.875404, -0.341744,
		-0.801852, -0.461377, -0.379690,
		35.994362, 33.954754, 26.646990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072887, 34.685844, 27.133480>,  <36.555656, 34.277718, 26.912773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072887, 34.685844, 27.133480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.902138, 34.335468, 27.043583>,  <35.799686, 34.125244, 26.989645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.902138, 34.335468, 27.043583>,  <36.072887, 34.685844, 27.133480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902138, 34.335468, 27.043583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474376, 0.005315, 0.880306,
		-0.769898, 0.482397, -0.417792,
		-0.426877, -0.875937, -0.224745,
		35.774075, 34.072689, 26.976160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343197, 34.753887, 27.338272>,  <36.072887, 34.685844, 27.133480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343197, 34.753887, 27.338272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406887, 34.359924, 27.311113>,  <35.445099, 34.123547, 27.294817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.406887, 34.359924, 27.311113>,  <35.343197, 34.753887, 27.338272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406887, 34.359924, 27.311113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602492, -0.151424, 0.783628,
		-0.782081, -0.083864, -0.617508,
		0.159223, -0.984905, -0.067898,
		35.454655, 34.064453, 27.290745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691345, 34.427216, 27.517422>,  <35.343197, 34.753887, 27.338272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691345, 34.427216, 27.517422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.954613, 34.129875, 27.565178>,  <35.112572, 33.951473, 27.593832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.954613, 34.129875, 27.565178>,  <34.691345, 34.427216, 27.517422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954613, 34.129875, 27.565178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440688, -0.251802, 0.861620,
		-0.610421, -0.619701, -0.493312,
		0.658164, -0.743348, 0.119390,
		35.152061, 33.906872, 27.600994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345486, 33.838615, 27.774872>,  <34.691345, 34.427216, 27.517422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345486, 33.838615, 27.774872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.719761, 33.752617, 27.886770>,  <34.944328, 33.701015, 27.953909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.719761, 33.752617, 27.886770>,  <34.345486, 33.838615, 27.774872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719761, 33.752617, 27.886770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334344, -0.287111, 0.897653,
		-0.112678, -0.933457, -0.340531,
		0.935691, -0.215000, 0.279744,
		35.000469, 33.688118, 27.970694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335686, 33.214470, 28.125450>,  <34.345486, 33.838615, 27.774872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335686, 33.214470, 28.125450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670155, 33.402344, 28.238743>,  <34.870834, 33.515068, 28.306719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670155, 33.402344, 28.238743>,  <34.335686, 33.214470, 28.125450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670155, 33.402344, 28.238743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173012, -0.264158, 0.948835,
		0.520471, -0.842387, -0.139619,
		0.836168, 0.469686, 0.283230,
		34.921005, 33.543251, 28.323711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640266, 32.866516, 28.696388>,  <34.335686, 33.214470, 28.125450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640266, 32.866516, 28.696388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827728, 33.215191, 28.753689>,  <34.940205, 33.424397, 28.788069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.827728, 33.215191, 28.753689>,  <34.640266, 32.866516, 28.696388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827728, 33.215191, 28.753689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168486, -0.070983, 0.983145,
		0.867164, -0.484893, 0.113600,
		0.468656, 0.871688, 0.143251,
		34.968327, 33.476696, 28.796665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031464, 32.724171, 29.261126>,  <34.640266, 32.866516, 28.696388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031464, 32.724171, 29.261126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004524, 33.123241, 29.265139>,  <34.988361, 33.362686, 29.267546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004524, 33.123241, 29.265139>,  <35.031464, 32.724171, 29.261126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004524, 33.123241, 29.265139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195074, -0.023026, 0.980518,
		0.978474, 0.064075, 0.196171,
		-0.067344, 0.997679, 0.010031,
		34.984322, 33.422546, 29.268148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271095, 32.921955, 29.872065>,  <35.031464, 32.724171, 29.261126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271095, 32.921955, 29.872065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068058, 33.239513, 29.738157>,  <34.946236, 33.430050, 29.657814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068058, 33.239513, 29.738157>,  <35.271095, 32.921955, 29.872065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068058, 33.239513, 29.738157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297311, 0.203283, 0.932889,
		0.808673, 0.573061, 0.132849,
		-0.507596, 0.793900, -0.334766,
		34.915779, 33.477684, 29.637728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304165, 33.313488, 30.429560>,  <35.271095, 32.921955, 29.872065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304165, 33.313488, 30.429560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041759, 33.518711, 30.208138>,  <34.884315, 33.641846, 30.075285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041759, 33.518711, 30.208138>,  <35.304165, 33.313488, 30.429560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041759, 33.518711, 30.208138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416177, 0.365955, 0.832390,
		0.629639, 0.776434, -0.026548,
		-0.656012, 0.513057, -0.553554,
		34.844955, 33.672626, 30.042072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302685, 34.061531, 30.643059>,  <35.304165, 33.313488, 30.429560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302685, 34.061531, 30.643059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949932, 33.939236, 30.499500>,  <34.738281, 33.865860, 30.413364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.949932, 33.939236, 30.499500>,  <35.302685, 34.061531, 30.643059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949932, 33.939236, 30.499500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402529, 0.091932, 0.910779,
		-0.245467, 0.947667, -0.204143,
		-0.881882, -0.305740, -0.358897,
		34.685368, 33.847515, 30.391830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905548, 34.541317, 30.886791>,  <35.302685, 34.061531, 30.643059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905548, 34.541317, 30.886791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.652927, 34.246311, 30.791119>,  <34.501354, 34.069305, 30.733715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.652927, 34.246311, 30.791119>,  <34.905548, 34.541317, 30.886791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652927, 34.246311, 30.791119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489799, 0.140370, 0.860461,
		-0.601032, 0.660578, -0.449886,
		-0.631552, -0.737518, -0.239183,
		34.463463, 34.025055, 30.719364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322430, 34.775391, 31.008568>,  <34.905548, 34.541317, 30.886791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322430, 34.775391, 31.008568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.252495, 34.381687, 30.998203>,  <34.210533, 34.145466, 30.991985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.252495, 34.381687, 30.998203>,  <34.322430, 34.775391, 31.008568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252495, 34.381687, 30.998203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685395, 0.102773, 0.720882,
		-0.706870, 0.143795, -0.692573,
		-0.174837, -0.984257, -0.025910,
		34.200043, 34.086411, 30.990431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872581, 35.284534, 31.234087>,  <34.322430, 34.775391, 31.008568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872581, 35.284534, 31.234087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205978, 35.363449, 31.440531>,  <35.406017, 35.410797, 31.564398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205978, 35.363449, 31.440531>,  <34.872581, 35.284534, 31.234087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205978, 35.363449, 31.440531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390063, 0.451475, -0.802509,
		-0.391334, 0.870201, 0.299347,
		0.833492, 0.197285, 0.516111,
		35.456024, 35.422634, 31.595364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936596, 35.942345, 31.236935>,  <34.872581, 35.284534, 31.234087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936596, 35.942345, 31.236935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295456, 35.765739, 31.231474>,  <35.510773, 35.659775, 31.228197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295456, 35.765739, 31.231474>,  <34.936596, 35.942345, 31.236935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295456, 35.765739, 31.231474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316102, 0.663295, -0.678321,
		0.308544, 0.604241, 0.734639,
		0.897151, -0.441512, -0.013654,
		35.564602, 35.633286, 31.227377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327984, 36.474014, 31.072521>,  <34.936596, 35.942345, 31.236935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327984, 36.474014, 31.072521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.551983, 36.161900, 30.961130>,  <35.686382, 35.974632, 30.894295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.551983, 36.161900, 30.961130>,  <35.327984, 36.474014, 31.072521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551983, 36.161900, 30.961130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310264, 0.509181, -0.802790,
		0.768204, 0.363161, 0.527236,
		0.560000, -0.780288, -0.278479,
		35.719982, 35.927814, 30.877586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017300, 36.647301, 31.092554>,  <35.327984, 36.474014, 31.072521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017300, 36.647301, 31.092554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.002552, 36.335484, 30.842447>,  <35.993702, 36.148396, 30.692383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.002552, 36.335484, 30.842447>,  <36.017300, 36.647301, 31.092554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002552, 36.335484, 30.842447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512040, 0.522578, -0.681708,
		0.858169, -0.345298, 0.379887,
		-0.036872, -0.779539, -0.625267,
		35.991489, 36.101624, 30.654867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670399, 36.540359, 30.780434>,  <36.017300, 36.647301, 31.092554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670399, 36.540359, 30.780434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405838, 36.352875, 30.546217>,  <36.247101, 36.240383, 30.405687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405838, 36.352875, 30.546217>,  <36.670399, 36.540359, 30.780434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405838, 36.352875, 30.546217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419876, 0.415511, -0.806880,
		0.621496, -0.779523, -0.078016,
		-0.661398, -0.468715, -0.585541,
		36.207420, 36.212261, 30.370554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069458, 36.380211, 30.232510>,  <36.670399, 36.540359, 30.780434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069458, 36.380211, 30.232510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.700150, 36.325935, 30.088755>,  <36.478565, 36.293369, 30.002502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.700150, 36.325935, 30.088755>,  <37.069458, 36.380211, 30.232510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700150, 36.325935, 30.088755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235354, 0.539592, -0.808362,
		0.303608, -0.830920, -0.466255,
		-0.923272, -0.135690, -0.359385,
		36.423168, 36.285229, 29.980940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202251, 36.170628, 29.540276>,  <37.069458, 36.380211, 30.232510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202251, 36.170628, 29.540276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814510, 36.268898, 29.539333>,  <36.581867, 36.327862, 29.538767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814510, 36.268898, 29.539333>,  <37.202251, 36.170628, 29.540276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814510, 36.268898, 29.539333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128791, 0.499945, -0.856427,
		-0.209224, -0.830481, -0.516263,
		-0.969349, 0.245675, -0.002358,
		36.523705, 36.342602, 29.538626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868572, 35.943035, 28.935978>,  <37.202251, 36.170628, 29.540276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868572, 35.943035, 28.935978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633247, 36.259800, 29.001423>,  <36.492054, 36.449860, 29.040689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633247, 36.259800, 29.001423>,  <36.868572, 35.943035, 28.935978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633247, 36.259800, 29.001423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269908, 0.383032, -0.883423,
		-0.762262, -0.475565, -0.439084,
		-0.588308, 0.791912, 0.163612,
		36.456757, 36.497372, 29.050507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501717, 36.087074, 28.344917>,  <36.868572, 35.943035, 28.935978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501717, 36.087074, 28.344917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.468491, 36.435711, 28.538177>,  <36.448555, 36.644894, 28.654135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.468491, 36.435711, 28.538177>,  <36.501717, 36.087074, 28.344917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468491, 36.435711, 28.538177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272044, 0.486246, -0.830396,
		-0.958693, 0.062460, -0.277501,
		-0.083067, 0.871587, 0.483152,
		36.443569, 36.697186, 28.683123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213608, 36.519238, 27.852827>,  <36.501717, 36.087074, 28.344917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213608, 36.519238, 27.852827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367027, 36.781300, 28.113184>,  <36.459080, 36.938538, 28.269398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367027, 36.781300, 28.113184>,  <36.213608, 36.519238, 27.852827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367027, 36.781300, 28.113184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190817, 0.633367, -0.749957,
		-0.903591, 0.411849, 0.117915,
		0.383552, 0.655154, 0.650892,
		36.482094, 36.977844, 28.308451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806320, 37.124935, 27.811460>,  <36.213608, 36.519238, 27.852827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806320, 37.124935, 27.811460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158638, 37.241791, 27.960516>,  <36.370029, 37.311905, 28.049950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.158638, 37.241791, 27.960516>,  <35.806320, 37.124935, 27.811460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158638, 37.241791, 27.960516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141261, 0.589026, -0.795672,
		-0.451943, 0.753460, 0.477541,
		0.880791, 0.292140, 0.372640,
		36.422874, 37.329433, 28.072308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889389, 37.810146, 27.617962>,  <35.806320, 37.124935, 27.811460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889389, 37.810146, 27.617962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.268406, 37.724758, 27.713120>,  <36.495815, 37.673527, 27.770214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.268406, 37.724758, 27.713120>,  <35.889389, 37.810146, 27.617962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268406, 37.724758, 27.713120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315737, 0.509327, -0.800560,
		0.049728, 0.833677, 0.550009,
		0.947543, -0.213469, 0.237895,
		36.552670, 37.660717, 27.784489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255199, 38.355545, 27.323771>,  <35.889389, 37.810146, 27.617962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255199, 38.355545, 27.323771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.535263, 38.076511, 27.384651>,  <36.703300, 37.909092, 27.421179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.535263, 38.076511, 27.384651>,  <36.255199, 38.355545, 27.323771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535263, 38.076511, 27.384651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457259, 0.274373, -0.845951,
		0.548359, 0.661893, 0.511078,
		0.700155, -0.697580, 0.152201,
		36.745308, 37.867237, 27.430311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903267, 38.723690, 27.312876>,  <36.255199, 38.355545, 27.323771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903267, 38.723690, 27.312876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945183, 38.332169, 27.242483>,  <36.970333, 38.097256, 27.200247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945183, 38.332169, 27.242483>,  <36.903267, 38.723690, 27.312876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945183, 38.332169, 27.242483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335402, 0.201370, -0.920302,
		0.936229, 0.037410, 0.349392,
		0.104786, -0.978801, -0.175981,
		36.976620, 38.038528, 27.189690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544182, 38.647324, 26.854311>,  <36.903267, 38.723690, 27.312876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544182, 38.647324, 26.854311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365673, 38.292908, 26.804077>,  <37.258568, 38.080257, 26.773937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365673, 38.292908, 26.804077>,  <37.544182, 38.647324, 26.854311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365673, 38.292908, 26.804077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312740, -0.022931, -0.949562,
		0.838470, -0.463042, 0.287333,
		-0.446276, -0.886039, -0.125585,
		37.231789, 38.027096, 26.766401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009888, 38.139023, 26.657135>,  <37.544182, 38.647324, 26.854311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009888, 38.139023, 26.657135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.653919, 38.028801, 26.511749>,  <37.440338, 37.962666, 26.424519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.653919, 38.028801, 26.511749>,  <38.009888, 38.139023, 26.657135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653919, 38.028801, 26.511749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391087, -0.050936, -0.918943,
		0.234707, -0.959935, 0.153096,
		-0.889924, -0.275557, -0.363463,
		37.386944, 37.946133, 26.402710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996017, 37.379150, 26.220980>,  <38.009888, 38.139023, 26.657135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996017, 37.379150, 26.220980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.665291, 37.580463, 26.120512>,  <37.466854, 37.701252, 26.060232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.665291, 37.580463, 26.120512>,  <37.996017, 37.379150, 26.220980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665291, 37.580463, 26.120512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100459, -0.307228, -0.946318,
		-0.553434, -0.807660, 0.203460,
		-0.826813, 0.503286, -0.251168,
		37.417248, 37.731449, 26.045162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853989, 37.157265, 25.517599>,  <37.996017, 37.379150, 26.220980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853989, 37.157265, 25.517599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.612724, 37.474205, 25.554205>,  <37.467964, 37.664371, 25.576168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.612724, 37.474205, 25.554205>,  <37.853989, 37.157265, 25.517599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612724, 37.474205, 25.554205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044993, 0.080755, -0.995718,
		-0.796351, -0.604694, -0.013058,
		-0.603160, 0.792353, 0.091516,
		37.431778, 37.711910, 25.581659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306084, 37.115120, 24.906113>,  <37.853989, 37.157265, 25.517599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306084, 37.115120, 24.906113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.327427, 37.495083, 25.029287>,  <37.340233, 37.723061, 25.103191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.327427, 37.495083, 25.029287>,  <37.306084, 37.115120, 24.906113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327427, 37.495083, 25.029287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062288, 0.304610, -0.950438,
		-0.996631, 0.069896, -0.042914,
		0.053360, 0.949909, 0.307937,
		37.343433, 37.780056, 25.121668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762230, 37.344135, 24.491684>,  <37.306084, 37.115120, 24.906113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762230, 37.344135, 24.491684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022213, 37.626369, 24.604605>,  <37.178204, 37.795712, 24.672358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.022213, 37.626369, 24.604605>,  <36.762230, 37.344135, 24.491684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022213, 37.626369, 24.604605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207457, 0.192626, -0.959092,
		-0.731103, 0.681939, -0.021179,
		0.649962, 0.705588, 0.282302,
		37.217201, 37.838047, 24.689295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592422, 37.940441, 23.992323>,  <36.762230, 37.344135, 24.491684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592422, 37.940441, 23.992323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950851, 37.984428, 24.164351>,  <37.165909, 38.010818, 24.267567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950851, 37.984428, 24.164351>,  <36.592422, 37.940441, 23.992323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950851, 37.984428, 24.164351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374766, 0.331842, -0.865697,
		-0.237911, 0.936904, 0.256144,
		0.896074, 0.109965, 0.430068,
		37.219673, 38.017418, 24.293371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707371, 38.595074, 23.806589>,  <36.592422, 37.940441, 23.992323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707371, 38.595074, 23.806589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041542, 38.394505, 23.896603>,  <37.242043, 38.274162, 23.950611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041542, 38.394505, 23.896603>,  <36.707371, 38.595074, 23.806589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041542, 38.394505, 23.896603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420235, 0.318898, -0.849533,
		0.354211, 0.804290, 0.477130,
		0.835427, -0.501420, 0.225033,
		37.292171, 38.244080, 23.964113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173077, 39.042164, 23.569981>,  <36.707371, 38.595074, 23.806589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173077, 39.042164, 23.569981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.370750, 38.696110, 23.604191>,  <37.489357, 38.488476, 23.624718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.370750, 38.696110, 23.604191>,  <37.173077, 39.042164, 23.569981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370750, 38.696110, 23.604191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511134, 0.209568, -0.833560,
		0.703222, 0.455650, 0.545768,
		0.494187, -0.865139, 0.085525,
		37.519005, 38.436569, 23.629848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911686, 39.180653, 23.668671>,  <37.173077, 39.042164, 23.569981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911686, 39.180653, 23.668671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.903080, 38.807854, 23.523937>,  <37.897915, 38.584175, 23.437098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.903080, 38.807854, 23.523937>,  <37.911686, 39.180653, 23.668671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903080, 38.807854, 23.523937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578733, 0.283505, -0.764652,
		0.815233, -0.225858, 0.533276,
		-0.021516, -0.931994, -0.361834,
		37.896626, 38.528255, 23.415386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429287, 39.157516, 23.215874>,  <37.911686, 39.180653, 23.668671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429287, 39.157516, 23.215874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.272491, 38.800461, 23.126842>,  <38.178413, 38.586227, 23.073423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.272491, 38.800461, 23.126842>,  <38.429287, 39.157516, 23.215874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272491, 38.800461, 23.126842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319002, 0.095047, -0.942976,
		0.862893, -0.440637, 0.247497,
		-0.391987, -0.892639, -0.222580,
		38.154896, 38.532669, 23.060068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936810, 38.809200, 22.914938>,  <38.429287, 39.157516, 23.215874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936810, 38.809200, 22.914938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.605011, 38.625652, 22.787582>,  <38.405933, 38.515522, 22.711168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.605011, 38.625652, 22.787582>,  <38.936810, 38.809200, 22.914938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605011, 38.625652, 22.787582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447603, -0.205215, -0.870367,
		0.334048, -0.864478, 0.375617,
		-0.829496, -0.458872, -0.318391,
		38.356163, 38.487991, 22.692064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098797, 38.163624, 22.746811>,  <38.936810, 38.809200, 22.914938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098797, 38.163624, 22.746811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788013, 38.296932, 22.533171>,  <38.601543, 38.376919, 22.404987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788013, 38.296932, 22.533171>,  <39.098797, 38.163624, 22.746811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788013, 38.296932, 22.533171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567217, 0.002516, -0.823565,
		-0.273128, -0.942827, -0.190993,
		-0.776960, 0.333272, -0.534100,
		38.554924, 38.396912, 22.372940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070538, 37.709789, 22.097824>,  <39.098797, 38.163624, 22.746811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070538, 37.709789, 22.097824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.854649, 38.035919, 22.013969>,  <38.725117, 38.231598, 21.963657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.854649, 38.035919, 22.013969>,  <39.070538, 37.709789, 22.097824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854649, 38.035919, 22.013969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556862, 0.159012, -0.815242,
		-0.631353, -0.556742, -0.539845,
		-0.539721, 0.815325, -0.209636,
		38.692734, 38.280518, 21.951078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161877, 36.963390, 22.044565>,  <39.070538, 37.709789, 22.097824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161877, 36.963390, 22.044565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.544479, 36.889999, 22.135275>,  <39.774040, 36.845966, 22.189701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.544479, 36.889999, 22.135275>,  <39.161877, 36.963390, 22.044565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544479, 36.889999, 22.135275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225739, 0.026791, 0.973820,
		-0.184746, -0.982660, -0.015791,
		0.956510, -0.183474, 0.226774,
		39.831432, 36.834957, 22.203306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075672, 36.469837, 22.641874>,  <39.161877, 36.963390, 22.044565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075672, 36.469837, 22.641874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.449463, 36.608105, 22.675970>,  <39.673737, 36.691067, 22.696428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.449463, 36.608105, 22.675970>,  <39.075672, 36.469837, 22.641874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449463, 36.608105, 22.675970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052608, -0.102725, 0.993318,
		0.352119, -0.932715, -0.077808,
		0.934476, 0.345672, 0.085240,
		39.729805, 36.711807, 22.701542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415096, 35.897644, 23.080210>,  <39.075672, 36.469837, 22.641874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415096, 35.897644, 23.080210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.627148, 36.236774, 23.085125>,  <39.754379, 36.440254, 23.088074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.627148, 36.236774, 23.085125>,  <39.415096, 35.897644, 23.080210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627148, 36.236774, 23.085125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197335, -0.137460, 0.970651,
		0.824634, -0.512147, -0.240178,
		0.530131, 0.847827, 0.012290,
		39.786186, 36.491123, 23.088812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115955, 35.802963, 23.390583>,  <39.415096, 35.897644, 23.080210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115955, 35.802963, 23.390583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.996326, 36.181591, 23.438854>,  <39.924549, 36.408768, 23.467817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.996326, 36.181591, 23.438854>,  <40.115955, 35.802963, 23.390583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996326, 36.181591, 23.438854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118100, -0.088775, 0.989026,
		0.946893, 0.310046, -0.085239,
		-0.299077, 0.946568, 0.120677,
		39.906605, 36.465561, 23.475058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642487, 36.057194, 23.904671>,  <40.115955, 35.802963, 23.390583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642487, 36.057194, 23.904671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.309097, 36.278107, 23.897711>,  <40.109062, 36.410656, 23.893536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.309097, 36.278107, 23.897711>,  <40.642487, 36.057194, 23.904671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309097, 36.278107, 23.897711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024143, 0.067858, 0.997403,
		0.552031, 0.830889, -0.069892,
		-0.833474, 0.552285, -0.017399,
		40.059055, 36.443790, 23.892490>
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
