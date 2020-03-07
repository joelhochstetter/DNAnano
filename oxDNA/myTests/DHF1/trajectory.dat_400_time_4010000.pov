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
	<0.610224, 3.340746, 0.166139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.881012, 3.272957, 0.452633>,  <1.043484, 3.232283, 0.624529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.881012, 3.272957, 0.452633>,  <0.610224, 3.340746, 0.166139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.881012, 3.272957, 0.452633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158522, -0.983863, -0.082968,
		0.718738, -0.057372, -0.692910,
		0.676969, -0.169473, 0.716235,
		1.084103, 3.222115, 0.667503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.057028, 2.794295, -0.031669>,  <0.610224, 3.340746, 0.166139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.057028, 2.794295, -0.031669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.001381, 2.835751, 0.362267>,  <0.967993, 2.860624, 0.598628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.001381, 2.835751, 0.362267>,  <1.057028, 2.794295, -0.031669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.001381, 2.835751, 0.362267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213571, -0.974244, 0.072356,
		0.966971, -0.200267, 0.157669,
		-0.139117, 0.103640, 0.984838,
		0.959646, 2.866843, 0.657718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.424211, 2.272882, 0.306693>,  <1.057028, 2.794295, -0.031669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.424211, 2.272882, 0.306693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.097023, 2.387222, 0.506378>,  <0.900710, 2.455827, 0.626190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.097023, 2.387222, 0.506378>,  <1.424211, 2.272882, 0.306693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.097023, 2.387222, 0.506378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264831, -0.957493, 0.114335,
		0.510677, -0.038685, 0.858902,
		-0.817970, 0.285852, 0.499214,
		0.851632, 2.472978, 0.656142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.233457, 1.728208, 0.829019>,  <1.424211, 2.272882, 0.306693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.233457, 1.728208, 0.829019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.889038, 1.917606, 0.754833>,  <0.682387, 2.031245, 0.710321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.889038, 1.917606, 0.754833>,  <1.233457, 1.728208, 0.829019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.889038, 1.917606, 0.754833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476139, -0.878753, -0.032932,
		-0.178572, 0.059951, 0.982099,
		-0.861048, 0.473496, -0.185466,
		0.630724, 2.059655, 0.699194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.730765, 1.565637, 1.270811>,  <1.233457, 1.728208, 0.829019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.730765, 1.565637, 1.270811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.528366, 1.661083, 0.939262>,  <0.406927, 1.718351, 0.740333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.528366, 1.661083, 0.939262>,  <0.730765, 1.565637, 1.270811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.528366, 1.661083, 0.939262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365411, -0.929778, -0.044594,
		-0.781308, 0.280315, 0.557658,
		-0.505997, 0.238615, -0.828872,
		0.376567, 1.732668, 0.690601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.123283, 1.217646, 1.353056>,  <0.730765, 1.565637, 1.270811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.123283, 1.217646, 1.353056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.150192, 1.295738, 0.961678>,  <0.166338, 1.342594, 0.726850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.150192, 1.295738, 0.961678>,  <0.123283, 1.217646, 1.353056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.150192, 1.295738, 0.961678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302581, -0.930492, -0.206467,
		-0.950747, 0.309949, -0.003524,
		0.067273, 0.195231, -0.978447,
		0.170374, 1.354308, 0.668143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.157996, 0.672202, 1.116231>,  <0.123283, 1.217646, 1.353056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.157996, 0.672202, 1.116231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.057175, 0.843609, 0.769165>,  <0.003318, 0.946453, 0.560926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.057175, 0.843609, 0.769165>,  <-0.157996, 0.672202, 1.116231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.057175, 0.843609, 0.769165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285257, -0.823874, -0.489756,
		-0.924715, 0.370952, -0.085423,
		0.252054, 0.428517, -0.867664,
		0.018442, 0.972164, 0.508866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.743273, 0.508538, 0.653740>,  <-0.157996, 0.672202, 1.116231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.743273, 0.508538, 0.653740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.391312, 0.566795, 0.472828>,  <-0.180135, 0.601750, 0.364281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.391312, 0.566795, 0.472828>,  <-0.743273, 0.508538, 0.653740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.391312, 0.566795, 0.472828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174965, -0.785666, -0.593394,
		-0.441765, 0.601263, -0.665828,
		0.879904, 0.145644, -0.452280,
		-0.127340, 0.610489, 0.337144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.316977, -0.643127, 0.738993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.492260, -0.521408, 0.400673>,  <0.597430, -0.448377, 0.197681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.492260, -0.521408, 0.400673>,  <0.316977, -0.643127, 0.738993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.492260, -0.521408, 0.400673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198190, 0.950507, 0.239285,
		0.876753, 0.062773, 0.476827,
		0.438207, 0.304296, -0.845801,
		0.623722, -0.430119, 0.146933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.673317, -0.094885, 0.894416>,  <0.316977, -0.643127, 0.738993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.673317, -0.094885, 0.894416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.573376, -0.064835, 0.508270>,  <0.513411, -0.046804, 0.276583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.573376, -0.064835, 0.508270>,  <0.673317, -0.094885, 0.894416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.573376, -0.064835, 0.508270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324252, 0.932931, 0.156524,
		0.912378, 0.352130, -0.208736,
		-0.249854, 0.075126, -0.965365,
		0.498420, -0.042297, 0.218661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.987174, 0.445896, 0.422006>,  <0.673317, -0.094885, 0.894416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.987174, 0.445896, 0.422006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.642590, 0.379723, 0.229958>,  <0.435839, 0.340019, 0.114729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.642590, 0.379723, 0.229958>,  <0.987174, 0.445896, 0.422006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.642590, 0.379723, 0.229958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163335, 0.985475, -0.046494,
		0.480838, 0.038368, -0.875970,
		-0.861462, -0.165432, -0.480120,
		0.384151, 0.330093, 0.085922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.066193, 0.786048, -0.278295>,  <0.987174, 0.445896, 0.422006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.066193, 0.786048, -0.278295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.691807, 0.749908, -0.142174>,  <0.467175, 0.728225, -0.060501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.691807, 0.749908, -0.142174>,  <1.066193, 0.786048, -0.278295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.691807, 0.749908, -0.142174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060081, 0.993324, 0.098476,
		-0.346928, 0.071724, -0.935145,
		-0.935965, -0.090349, 0.340302,
		0.411017, 0.722804, -0.040083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.607238, 1.244168, -0.622104>,  <1.066193, 0.786048, -0.278295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.607238, 1.244168, -0.622104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.442997, 1.164108, -0.266273>,  <0.344453, 1.116072, -0.052775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.442997, 1.164108, -0.266273>,  <0.607238, 1.244168, -0.622104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.442997, 1.164108, -0.266273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048428, 0.979021, 0.197921,
		-0.910528, 0.038186, -0.411681,
		-0.410602, -0.200150, 0.889577,
		0.319816, 1.104063, 0.000599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.025389, 1.657313, -0.608099>,  <0.607238, 1.244168, -0.622104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.025389, 1.657313, -0.608099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.103661, 1.593147, -0.221115>,  <0.150624, 1.554648, 0.011075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.103661, 1.593147, -0.221115>,  <0.025389, 1.657313, -0.608099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.103661, 1.593147, -0.221115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065629, 0.982177, 0.176129,
		-0.978469, -0.097958, 0.181664,
		0.195679, -0.160414, 0.967459,
		0.162364, 1.545023, 0.069123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.273568, 2.252863, -0.336972>,  <0.025389, 1.657313, -0.608099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.273568, 2.252863, -0.336972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.064468, 2.095421, -0.034500>,  <0.060991, 2.000956, 0.146983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.064468, 2.095421, -0.034500>,  <-0.273568, 2.252863, -0.336972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.064468, 2.095421, -0.034500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128164, 0.913234, 0.386753,
		-0.842798, -0.105260, 0.527837,
		0.522748, -0.393604, 0.756181,
		0.092356, 1.977340, 0.192354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.412170, 2.719408, 0.218554>,  <-0.273568, 2.252863, -0.336972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.412170, 2.719408, 0.218554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.097466, 2.511116, 0.351128>,  <0.091357, 2.386141, 0.430672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.097466, 2.511116, 0.351128>,  <-0.412170, 2.719408, 0.218554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.097466, 2.511116, 0.351128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348757, 0.818037, 0.457367,
		-0.509289, -0.244249, 0.825208,
		0.786762, -0.520729, 0.331433,
		0.138563, 2.354897, 0.450557>
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
