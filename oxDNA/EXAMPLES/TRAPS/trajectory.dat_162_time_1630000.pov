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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.232937, 53.190845, 49.452583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120415, 53.293499, 49.822449>,  <36.052902, 53.355091, 50.044369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120415, 53.293499, 49.822449>,  <36.232937, 53.190845, 49.452583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120415, 53.293499, 49.822449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009990, -0.964308, 0.264595,
		0.959566, 0.065194, 0.273828,
		-0.281305, 0.256632, 0.924666,
		36.036022, 53.370487, 50.099850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692425, 53.075497, 49.975166>,  <36.232937, 53.190845, 49.452583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692425, 53.075497, 49.975166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357735, 53.070736, 50.194160>,  <36.156921, 53.067879, 50.325558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357735, 53.070736, 50.194160>,  <36.692425, 53.075497, 49.975166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357735, 53.070736, 50.194160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221334, -0.921815, 0.318227,
		0.500894, 0.387447, 0.773944,
		-0.836730, -0.011903, 0.547487,
		36.106716, 53.067165, 50.358406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883076, 52.813755, 50.620495>,  <36.692425, 53.075497, 49.975166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883076, 52.813755, 50.620495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494129, 52.762684, 50.542305>,  <36.260761, 52.732040, 50.495392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494129, 52.762684, 50.542305>,  <36.883076, 52.813755, 50.620495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494129, 52.762684, 50.542305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042781, -0.920495, 0.388405,
		-0.229524, 0.369308, 0.900517,
		-0.972362, -0.127674, -0.195476,
		36.202419, 52.724380, 50.483662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805771, 53.030243, 51.375237>,  <36.883076, 52.813755, 50.620495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805771, 53.030243, 51.375237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044312, 53.280155, 51.173637>,  <37.187435, 53.430103, 51.052677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044312, 53.280155, 51.173637>,  <36.805771, 53.030243, 51.375237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044312, 53.280155, 51.173637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207872, 0.726644, 0.654812,
		0.775339, -0.285732, 0.563210,
		0.596354, 0.624777, -0.504000,
		37.223217, 53.467587, 51.022438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489727, 53.272057, 51.700089>,  <36.805771, 53.030243, 51.375237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489727, 53.272057, 51.700089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353355, 53.554398, 51.451721>,  <37.271530, 53.723801, 51.302700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353355, 53.554398, 51.451721>,  <37.489727, 53.272057, 51.700089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353355, 53.554398, 51.451721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244234, 0.571306, 0.783555,
		0.907808, 0.418789, -0.022384,
		-0.340933, 0.705850, -0.620919,
		37.251076, 53.766151, 51.265446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661701, 52.923641, 52.330822>,  <37.489727, 53.272057, 51.700089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661701, 52.923641, 52.330822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965160, 52.671425, 52.265255>,  <38.147236, 52.520096, 52.225914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965160, 52.671425, 52.265255>,  <37.661701, 52.923641, 52.330822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965160, 52.671425, 52.265255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520617, 0.737994, -0.429329,
		0.391682, 0.240369, 0.888148,
		0.758646, -0.630546, -0.163919,
		38.192753, 52.482262, 52.216080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315506, 53.259407, 52.463253>,  <37.661701, 52.923641, 52.330822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315506, 53.259407, 52.463253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399475, 52.969139, 52.201157>,  <38.449856, 52.794979, 52.043900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399475, 52.969139, 52.201157>,  <38.315506, 53.259407, 52.463253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399475, 52.969139, 52.201157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700250, 0.579294, -0.417215,
		0.682335, -0.371246, 0.629758,
		0.209926, -0.725669, -0.655238,
		38.462452, 52.751438, 52.004585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017990, 53.251774, 52.380257>,  <38.315506, 53.259407, 52.463253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017990, 53.251774, 52.380257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879204, 53.094364, 52.039726>,  <38.795933, 52.999920, 51.835407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879204, 53.094364, 52.039726>,  <39.017990, 53.251774, 52.380257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879204, 53.094364, 52.039726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486195, 0.700753, -0.522072,
		0.802016, -0.595051, -0.051809,
		-0.346965, -0.393521, -0.851327,
		38.775116, 52.976307, 51.784328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657299, 53.111671, 52.019146>,  <39.017990, 53.251774, 52.380257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657299, 53.111671, 52.019146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327888, 53.223274, 51.821579>,  <39.130241, 53.290237, 51.703041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327888, 53.223274, 51.821579>,  <39.657299, 53.111671, 52.019146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327888, 53.223274, 51.821579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565534, 0.335696, -0.753312,
		-0.044377, -0.899700, -0.434246,
		-0.823530, 0.279011, -0.493914,
		39.080830, 53.306976, 51.673405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737999, 53.069027, 51.268433>,  <39.657299, 53.111671, 52.019146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737999, 53.069027, 51.268433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432968, 53.321873, 51.323452>,  <39.249950, 53.473579, 51.356464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432968, 53.321873, 51.323452>,  <39.737999, 53.069027, 51.268433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432968, 53.321873, 51.323452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371935, 0.602380, -0.706259,
		-0.529290, -0.487415, -0.694463,
		-0.762572, 0.632111, 0.137547,
		39.204197, 53.511505, 51.364716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169086, 52.515408, 51.203201>,  <39.737999, 53.069027, 51.268433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169086, 52.515408, 51.203201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388836, 52.283470, 50.962547>,  <40.520687, 52.144306, 50.818153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388836, 52.283470, 50.962547>,  <40.169086, 52.515408, 51.203201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388836, 52.283470, 50.962547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739886, 0.002993, 0.672726,
		-0.388276, -0.814722, 0.430663,
		0.549373, -0.579844, -0.601639,
		40.553646, 52.109516, 50.782055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616566, 52.191269, 51.713516>,  <40.169086, 52.515408, 51.203201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616566, 52.191269, 51.713516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812653, 52.170097, 51.365520>,  <40.930305, 52.157394, 51.156723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812653, 52.170097, 51.365520>,  <40.616566, 52.191269, 51.713516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812653, 52.170097, 51.365520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866687, 0.135451, 0.480111,
		0.092429, -0.989369, 0.112274,
		0.490215, -0.052930, -0.869993,
		40.959717, 52.154217, 51.104523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203812, 51.695503, 51.879166>,  <40.616566, 52.191269, 51.713516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203812, 51.695503, 51.879166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259480, 51.940708, 51.568077>,  <41.292881, 52.087830, 51.381424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259480, 51.940708, 51.568077>,  <41.203812, 51.695503, 51.879166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259480, 51.940708, 51.568077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850833, 0.327808, 0.410640,
		0.506670, -0.718860, -0.475948,
		0.139173, 0.613011, -0.777720,
		41.301231, 52.124611, 51.334763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906353, 51.699390, 51.682091>,  <41.203812, 51.695503, 51.879166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906353, 51.699390, 51.682091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754215, 52.051781, 51.569500>,  <41.662933, 52.263214, 51.501945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754215, 52.051781, 51.569500>,  <41.906353, 51.699390, 51.682091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754215, 52.051781, 51.569500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810977, 0.463998, 0.356403,
		0.444584, -0.092711, -0.890926,
		-0.380345, 0.880971, -0.281472,
		41.640110, 52.316071, 51.485058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484859, 52.165829, 51.841656>,  <41.906353, 51.699390, 51.682091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484859, 52.165829, 51.841656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540462, 51.844971, 51.609367>,  <42.573822, 51.652454, 51.469994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540462, 51.844971, 51.609367>,  <42.484859, 52.165829, 51.841656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540462, 51.844971, 51.609367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211530, 0.548832, -0.808726,
		0.967436, 0.235258, -0.093387,
		0.139006, -0.802145, -0.580724,
		42.582165, 51.604328, 51.435150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785851, 52.228153, 51.212669>,  <42.484859, 52.165829, 51.841656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785851, 52.228153, 51.212669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552334, 51.921776, 51.104958>,  <42.412224, 51.737949, 51.040329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552334, 51.921776, 51.104958>,  <42.785851, 52.228153, 51.212669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552334, 51.921776, 51.104958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366334, 0.544487, -0.754541,
		0.724558, -0.341850, -0.598460,
		-0.583794, -0.765945, -0.269281,
		42.377197, 51.691994, 51.024174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146206, 52.912170, 51.092430>,  <42.785851, 52.228153, 51.212669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146206, 52.912170, 51.092430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258358, 53.214218, 51.329475>,  <43.325649, 53.395447, 51.471703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258358, 53.214218, 51.329475>,  <43.146206, 52.912170, 51.092430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258358, 53.214218, 51.329475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199651, -0.557995, 0.805469,
		0.938897, -0.344150, -0.005689,
		0.280377, 0.755117, 0.592610,
		43.342472, 53.440754, 51.507259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042736, 53.020184, 51.765285>,  <43.146206, 52.912170, 51.092430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042736, 53.020184, 51.765285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648369, 53.063538, 51.714348>,  <42.411747, 53.089550, 51.683784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648369, 53.063538, 51.714348>,  <43.042736, 53.020184, 51.765285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648369, 53.063538, 51.714348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099335, 0.233035, 0.967382,
		0.134521, 0.966410, -0.218987,
		-0.985919, 0.108381, -0.127347,
		42.352592, 53.096050, 51.676144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672192, 53.097878, 52.219013>,  <43.042736, 53.020184, 51.765285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672192, 53.097878, 52.219013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839912, 53.028484, 52.575462>,  <43.940544, 52.986847, 52.789330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839912, 53.028484, 52.575462>,  <43.672192, 53.097878, 52.219013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839912, 53.028484, 52.575462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859649, -0.239710, -0.451157,
		0.291878, 0.955219, 0.048624,
		0.419298, -0.173482, 0.891119,
		43.965702, 52.976440, 52.842796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306805, 53.534664, 52.394699>,  <43.672192, 53.097878, 52.219013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306805, 53.534664, 52.394699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300659, 53.164688, 52.546616>,  <44.296970, 52.942703, 52.637764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.300659, 53.164688, 52.546616>,  <44.306805, 53.534664, 52.394699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.300659, 53.164688, 52.546616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778418, -0.249464, -0.576049,
		0.627558, 0.286786, 0.723826,
		-0.015366, -0.924944, 0.379793,
		44.296051, 52.887203, 52.660553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087284, 53.315636, 52.285526>,  <44.306805, 53.534664, 52.394699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087284, 53.315636, 52.285526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876755, 52.987221, 52.373955>,  <44.750435, 52.790173, 52.427013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876755, 52.987221, 52.373955>,  <45.087284, 53.315636, 52.285526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876755, 52.987221, 52.373955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782007, -0.569497, -0.253258,
		0.333834, 0.039582, 0.941801,
		-0.526328, -0.821040, 0.221071,
		44.718857, 52.740910, 52.440277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555256, 52.810223, 52.647972>,  <45.087284, 53.315636, 52.285526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555256, 52.810223, 52.647972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.256912, 52.610767, 52.471310>,  <45.077908, 52.491096, 52.365311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.256912, 52.610767, 52.471310>,  <45.555256, 52.810223, 52.647972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.256912, 52.610767, 52.471310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664915, -0.596970, -0.448903,
		-0.039818, -0.628482, 0.776804,
		-0.745857, -0.498634, -0.441657,
		45.033154, 52.461178, 52.338814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564583, 52.040497, 52.773373>,  <45.555256, 52.810223, 52.647972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564583, 52.040497, 52.773373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.367607, 52.094471, 52.429443>,  <45.249420, 52.126854, 52.223087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.367607, 52.094471, 52.429443>,  <45.564583, 52.040497, 52.773373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.367607, 52.094471, 52.429443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616746, -0.642958, -0.454125,
		-0.614106, -0.753922, 0.233401,
		-0.492442, 0.134932, -0.859823,
		45.219875, 52.134949, 52.171497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551567, 51.406532, 52.422585>,  <45.564583, 52.040497, 52.773373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551567, 51.406532, 52.422585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572193, 51.740021, 52.202675>,  <45.584568, 51.940113, 52.070728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572193, 51.740021, 52.202675>,  <45.551567, 51.406532, 52.422585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572193, 51.740021, 52.202675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902900, -0.274163, -0.331070,
		-0.426747, -0.479320, -0.766903,
		0.051568, 0.833719, -0.549776,
		45.587662, 51.990135, 52.037743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735386, 51.322407, 51.748249>,  <45.551567, 51.406532, 52.422585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735386, 51.322407, 51.748249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853081, 51.700115, 51.807266>,  <45.923698, 51.926743, 51.842674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853081, 51.700115, 51.807266>,  <45.735386, 51.322407, 51.748249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853081, 51.700115, 51.807266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938949, -0.256802, -0.228970,
		-0.178322, 0.205903, -0.962188,
		0.294237, 0.944276, 0.147539,
		45.941353, 51.983398, 51.851528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055035, 51.729973, 51.138405>,  <45.735386, 51.322407, 51.748249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055035, 51.729973, 51.138405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221016, 51.804077, 51.494717>,  <46.320602, 51.848541, 51.708504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.221016, 51.804077, 51.494717>,  <46.055035, 51.729973, 51.138405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221016, 51.804077, 51.494717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907241, -0.158267, -0.389699,
		0.068785, 0.969860, -0.233751,
		0.414949, 0.185263, 0.890783,
		46.345501, 51.859657, 51.761951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605495, 52.230064, 51.109035>,  <46.055035, 51.729973, 51.138405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.605495, 52.230064, 51.109035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683601, 51.987980, 51.417732>,  <46.730465, 51.842728, 51.602951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683601, 51.987980, 51.417732>,  <46.605495, 52.230064, 51.109035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.683601, 51.987980, 51.417732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903616, -0.194872, -0.381447,
		0.381249, 0.771844, 0.508829,
		0.195261, -0.605212, 0.771746,
		46.742180, 51.806416, 51.649258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.288902, 52.414333, 51.343960>,  <46.605495, 52.230064, 51.109035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.288902, 52.414333, 51.343960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.186733, 52.036377, 51.425880>,  <47.125431, 51.809605, 51.475033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.186733, 52.036377, 51.425880>,  <47.288902, 52.414333, 51.343960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.186733, 52.036377, 51.425880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896139, -0.310887, -0.316676,
		0.362893, 0.102641, 0.926161,
		-0.255427, -0.944888, 0.204799,
		47.110104, 51.752911, 51.487320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.822174, 52.114605, 51.888706>,  <47.288902, 52.414333, 51.343960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.822174, 52.114605, 51.888706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649231, 51.832741, 51.663666>,  <47.545464, 51.663624, 51.528641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649231, 51.832741, 51.663666>,  <47.822174, 52.114605, 51.888706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.649231, 51.832741, 51.663666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889998, -0.233297, -0.391759,
		0.144801, -0.670099, 0.728011,
		-0.432360, -0.704656, -0.562606,
		47.519524, 51.621346, 51.494884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.159744, 52.820343, 51.765102>,  <47.822174, 52.114605, 51.888706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.159744, 52.820343, 51.765102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.342808, 53.107758, 51.974579>,  <48.452648, 53.280205, 52.100266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.342808, 53.107758, 51.974579>,  <48.159744, 52.820343, 51.765102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.342808, 53.107758, 51.974579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377110, -0.690264, 0.617514,
		0.805192, -0.085122, -0.586874,
		0.457661, 0.718533, 0.523695,
		48.480106, 53.323318, 52.131687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.826237, 52.614059, 51.927643>,  <48.159744, 52.820343, 51.765102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.826237, 52.614059, 51.927643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.751217, 52.892971, 52.204376>,  <48.706207, 53.060318, 52.370415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.751217, 52.892971, 52.204376>,  <48.826237, 52.614059, 51.927643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.751217, 52.892971, 52.204376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318717, -0.623024, 0.714325,
		0.929110, 0.354469, -0.105387,
		-0.187547, 0.697275, 0.691833,
		48.694954, 53.102154, 52.411926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.496212, 52.637543, 52.436626>,  <48.826237, 52.614059, 51.927643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.496212, 52.637543, 52.436626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.144745, 52.731293, 52.603004>,  <48.933865, 52.787540, 52.702831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.144745, 52.731293, 52.603004>,  <49.496212, 52.637543, 52.436626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.144745, 52.731293, 52.603004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178975, -0.645987, 0.742071,
		0.442616, 0.726478, 0.525662,
		-0.878669, 0.234372, 0.415945,
		48.881145, 52.801605, 52.727787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.953972, 52.194988, 51.957737>,  <49.496212, 52.637543, 52.436626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.953972, 52.194988, 51.957737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.088165, 51.827271, 51.875427>,  <50.168682, 51.606640, 51.826042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.088165, 51.827271, 51.875427>,  <49.953972, 52.194988, 51.957737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.088165, 51.827271, 51.875427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836583, 0.190303, 0.513726,
		-0.433106, -0.344496, 0.832911,
		0.335482, -0.919297, -0.205778,
		50.188808, 51.551483, 51.813694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.015835, 51.705624, 52.578651>,  <49.953972, 52.194988, 51.957737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.015835, 51.705624, 52.578651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.302269, 51.670437, 52.301674>,  <50.474129, 51.649323, 52.135487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.302269, 51.670437, 52.301674>,  <50.015835, 51.705624, 52.578651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.302269, 51.670437, 52.301674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680802, 0.306937, 0.665055,
		0.154032, -0.947655, 0.279684,
		0.716088, -0.087969, -0.692444,
		50.517094, 51.644047, 52.093941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.671383, 51.332153, 52.797733>,  <50.015835, 51.705624, 52.578651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.671383, 51.332153, 52.797733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.796829, 51.614067, 52.543198>,  <50.872097, 51.783215, 52.390476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.796829, 51.614067, 52.543198>,  <50.671383, 51.332153, 52.797733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.796829, 51.614067, 52.543198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761411, 0.213762, 0.612013,
		0.567360, -0.676454, -0.469588,
		0.313618, 0.704781, -0.636339,
		50.890915, 51.825500, 52.352295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.381550, 51.189968, 52.581593>,  <50.671383, 51.332153, 52.797733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.381550, 51.189968, 52.581593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.251400, 51.566532, 52.617088>,  <51.173309, 51.792473, 52.638386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.251400, 51.566532, 52.617088>,  <51.381550, 51.189968, 52.581593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.251400, 51.566532, 52.617088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678624, 0.167129, 0.715218,
		0.658486, 0.292931, -0.693245,
		-0.325371, 0.941413, 0.088738,
		51.153790, 51.848957, 52.643711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.987286, 51.612072, 52.526165>,  <51.381550, 51.189968, 52.581593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.987286, 51.612072, 52.526165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.697472, 51.801338, 52.726631>,  <51.523582, 51.914898, 52.846912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.697472, 51.801338, 52.726631>,  <51.987286, 51.612072, 52.526165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.697472, 51.801338, 52.726631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654661, 0.245008, 0.715116,
		0.215580, 0.846218, -0.487279,
		-0.724531, 0.473167, 0.501167,
		51.480114, 51.943287, 52.876980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.274185, 52.217804, 52.826294>,  <51.987286, 51.612072, 52.526165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.274185, 52.217804, 52.826294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.991596, 52.048862, 53.053452>,  <51.822041, 51.947498, 53.189747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.991596, 52.048862, 53.053452>,  <52.274185, 52.217804, 52.826294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.991596, 52.048862, 53.053452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600722, 0.066403, 0.796695,
		-0.374197, 0.903996, 0.206805,
		-0.706477, -0.422353, 0.567898,
		51.779652, 51.922157, 53.223820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.053448, 52.652138, 53.444313>,  <52.274185, 52.217804, 52.826294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.053448, 52.652138, 53.444313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.023441, 52.261444, 53.524681>,  <52.005436, 52.027027, 53.572903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.023441, 52.261444, 53.524681>,  <52.053448, 52.652138, 53.444313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.023441, 52.261444, 53.524681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598619, 0.117032, 0.792438,
		-0.797513, 0.179724, 0.575910,
		-0.075020, -0.976731, 0.200920,
		52.000935, 51.968426, 53.584957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.775513, 52.505581, 53.284653>,  <52.053448, 52.652138, 53.444313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.775513, 52.505581, 53.284653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.946606, 52.688129, 52.972557>,  <53.049263, 52.797661, 52.785301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.946606, 52.688129, 52.972557>,  <52.775513, 52.505581, 53.284653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.946606, 52.688129, 52.972557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890124, 0.362818, -0.275757,
		0.157234, 0.812456, 0.561420,
		0.427734, 0.456375, -0.780234,
		53.074924, 52.825043, 52.738487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.316319, 53.143761, 53.110271>,  <52.775513, 52.505581, 53.284653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.316319, 53.143761, 53.110271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.394241, 52.876663, 52.822891>,  <53.440994, 52.716404, 52.650463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.394241, 52.876663, 52.822891>,  <53.316319, 53.143761, 53.110271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.394241, 52.876663, 52.822891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872808, 0.216173, -0.437579,
		0.447499, 0.712314, -0.540696,
		0.194810, -0.667740, -0.718451,
		53.452682, 52.676342, 52.607357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.198666, 53.759399, 53.526993>,  <53.316319, 53.143761, 53.110271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.198666, 53.759399, 53.526993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.456394, 53.540585, 53.740761>,  <53.611031, 53.409294, 53.869022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.456394, 53.540585, 53.740761>,  <53.198666, 53.759399, 53.526993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.456394, 53.540585, 53.740761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706490, 0.158235, -0.689807,
		0.292787, 0.822017, 0.488430,
		0.644319, -0.547037, 0.534418,
		53.649689, 53.376472, 53.901085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.767426, 54.131992, 53.865959>,  <53.198666, 53.759399, 53.526993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.767426, 54.131992, 53.865959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.864998, 53.758373, 53.761612>,  <53.923542, 53.534203, 53.699001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.864998, 53.758373, 53.761612>,  <53.767426, 54.131992, 53.865959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.864998, 53.758373, 53.761612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773800, 0.349609, -0.528211,
		0.584577, -0.073014, 0.808047,
		0.243934, -0.934046, -0.260872,
		53.938179, 53.478161, 53.683350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.480160, 53.897808, 53.996616>,  <53.767426, 54.131992, 53.865959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.480160, 53.897808, 53.996616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.332550, 53.739071, 53.660442>,  <54.243984, 53.643829, 53.458736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.332550, 53.739071, 53.660442>,  <54.480160, 53.897808, 53.996616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.332550, 53.739071, 53.660442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708364, 0.465322, -0.530749,
		0.601701, -0.791194, 0.109398,
		-0.369021, -0.396846, -0.840439,
		54.221844, 53.620018, 53.408310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.065083, 53.420788, 53.622604>,  <54.480160, 53.897808, 53.996616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.065083, 53.420788, 53.622604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.812141, 53.576897, 53.354927>,  <54.660378, 53.670563, 53.194321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.812141, 53.576897, 53.354927>,  <55.065083, 53.420788, 53.622604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.812141, 53.576897, 53.354927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774075, 0.352501, -0.525880,
		0.030657, -0.850548, -0.525002,
		-0.632351, 0.390270, -0.669195,
		54.622437, 53.693977, 53.154167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.074841, 53.027832, 52.978268>,  <55.065083, 53.420788, 53.622604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.074841, 53.027832, 52.978268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.007919, 53.421196, 52.950203>,  <54.967766, 53.657215, 52.933365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.007919, 53.421196, 52.950203>,  <55.074841, 53.027832, 52.978268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.007919, 53.421196, 52.950203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846241, 0.106730, -0.522000,
		-0.505850, -0.146705, -0.850055,
		-0.167307, 0.983405, -0.070159,
		54.957726, 53.716217, 52.929153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.089096, 53.232449, 52.325256>,  <55.074841, 53.027832, 52.978268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.089096, 53.232449, 52.325256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.222412, 53.548935, 52.530350>,  <55.302402, 53.738827, 52.653404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.222412, 53.548935, 52.530350>,  <55.089096, 53.232449, 52.325256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.222412, 53.548935, 52.530350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864991, -0.040244, -0.500170,
		-0.375108, 0.610212, -0.697808,
		0.333293, 0.791216, 0.512732,
		55.322399, 53.786301, 52.684170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.374214, 53.796364, 51.835278>,  <55.089096, 53.232449, 52.325256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.374214, 53.796364, 51.835278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.549095, 53.784012, 52.194809>,  <55.654026, 53.776600, 52.410530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.549095, 53.784012, 52.194809>,  <55.374214, 53.796364, 51.835278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.549095, 53.784012, 52.194809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896631, -0.062858, -0.438294,
		0.070033, 0.997545, 0.000206,
		0.437205, -0.030880, 0.898832,
		55.680256, 53.774746, 52.464458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.905491, 54.183025, 51.865120>,  <55.374214, 53.796364, 51.835278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.905491, 54.183025, 51.865120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.012268, 53.929794, 52.155762>,  <56.076332, 53.777855, 52.330147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.012268, 53.929794, 52.155762>,  <55.905491, 54.183025, 51.865120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.012268, 53.929794, 52.155762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819438, -0.247714, -0.516875,
		0.507214, 0.733380, 0.452646,
		0.266939, -0.633081, 0.726603,
		56.092350, 53.739868, 52.373741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.639256, 54.340893, 52.116756>,  <55.905491, 54.183025, 51.865120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.639256, 54.340893, 52.116756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.542542, 53.962204, 52.201843>,  <56.484512, 53.734989, 52.252895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.542542, 53.962204, 52.201843>,  <56.639256, 54.340893, 52.116756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.542542, 53.962204, 52.201843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878554, -0.306656, -0.366203,
		0.411925, 0.098344, 0.905895,
		-0.241784, -0.946726, 0.212720,
		56.470005, 53.678185, 52.265659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.181416, 54.160187, 52.383717>,  <56.639256, 54.340893, 52.116756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.181416, 54.160187, 52.383717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.028709, 53.802116, 52.291702>,  <56.937084, 53.587276, 52.236492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.028709, 53.802116, 52.291702>,  <57.181416, 54.160187, 52.383717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.028709, 53.802116, 52.291702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922702, -0.383566, -0.038693,
		-0.053598, -0.227030, 0.972412,
		-0.381769, -0.895173, -0.230039,
		56.914177, 53.533566, 52.222691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.872665, 54.220085, 52.802837>,  <57.181416, 54.160187, 52.383717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.872665, 54.220085, 52.802837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.166702, 54.045231, 52.595551>,  <58.343124, 53.940319, 52.471180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.166702, 54.045231, 52.595551>,  <57.872665, 54.220085, 52.802837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.166702, 54.045231, 52.595551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668737, 0.593190, 0.448237,
		0.111461, -0.676047, 0.728379,
		0.735096, -0.437134, -0.518216,
		58.387230, 53.914089, 52.440086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.387486, 53.797771, 53.201935>,  <57.872665, 54.220085, 52.802837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.387486, 53.797771, 53.201935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.593948, 53.924156, 52.883503>,  <58.717827, 53.999989, 52.692444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.593948, 53.924156, 52.883503>,  <58.387486, 53.797771, 53.201935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.593948, 53.924156, 52.883503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808116, 0.128296, 0.574881,
		0.283776, -0.940057, -0.189115,
		0.516158, 0.315964, -0.796083,
		58.748795, 54.018944, 52.644680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.205090, 53.627495, 53.292236>,  <58.387486, 53.797771, 53.201935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.205090, 53.627495, 53.292236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.124535, 53.946522, 53.064785>,  <59.076202, 54.137939, 52.928314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.124535, 53.946522, 53.064785>,  <59.205090, 53.627495, 53.292236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.124535, 53.946522, 53.064785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758560, 0.494261, 0.424610,
		0.619703, -0.345825, -0.704538,
		-0.201385, 0.797566, -0.568623,
		59.064117, 54.185791, 52.894199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.755589, 53.831367, 52.755737>,  <59.205090, 53.627495, 53.292236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.755589, 53.831367, 52.755737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.547928, 54.142879, 52.896584>,  <59.423332, 54.329788, 52.981091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.547928, 54.142879, 52.896584>,  <59.755589, 53.831367, 52.755737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.547928, 54.142879, 52.896584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853463, 0.494375, 0.164908,
		-0.045651, 0.386131, -0.921314,
		-0.519150, 0.778779, 0.352118,
		59.392181, 54.376514, 53.002220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.965343, 54.518829, 52.542110>,  <59.755589, 53.831367, 52.755737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.965343, 54.518829, 52.542110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.795815, 54.570621, 52.900688>,  <59.694096, 54.601696, 53.115833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.795815, 54.570621, 52.900688>,  <59.965343, 54.518829, 52.542110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.795815, 54.570621, 52.900688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797833, 0.521885, 0.301826,
		-0.428759, 0.843132, -0.324491,
		-0.423826, 0.129479, 0.896441,
		59.668667, 54.609467, 53.169621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.584427, 55.074112, 52.711571>,  <59.965343, 54.518829, 52.542110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.584427, 55.074112, 52.711571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.806541, 54.943794, 53.017647>,  <59.939812, 54.865604, 53.201294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.806541, 54.943794, 53.017647>,  <59.584427, 55.074112, 52.711571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.806541, 54.943794, 53.017647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527117, 0.849538, -0.020817,
		-0.643274, 0.414903, 0.643470,
		0.555289, -0.325793, 0.765188,
		59.973129, 54.846058, 53.247204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.614143, 55.598484, 53.281628>,  <59.584427, 55.074112, 52.711571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.614143, 55.598484, 53.281628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.949951, 55.381828, 53.298706>,  <60.151436, 55.251835, 53.308952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.949951, 55.381828, 53.298706>,  <59.614143, 55.598484, 53.281628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.949951, 55.381828, 53.298706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537323, 0.839332, 0.082502,
		-0.080521, -0.046322, 0.995676,
		0.839524, -0.541643, 0.042694,
		60.201809, 55.219334, 53.311516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.806934, 56.400021, 53.335930>,  <59.614143, 55.598484, 53.281628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.806934, 56.400021, 53.335930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.577141, 56.660347, 53.534485>,  <59.439262, 56.816544, 53.653618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.577141, 56.660347, 53.534485>,  <59.806934, 56.400021, 53.335930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.577141, 56.660347, 53.534485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201443, 0.475382, -0.856407,
		-0.793339, -0.591989, -0.141998,
		-0.574486, 0.650816, 0.496390,
		59.404797, 56.855591, 53.683403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.508659, 56.206505, 53.083366>,  <59.806934, 56.400021, 53.335930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.508659, 56.206505, 53.083366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.757103, 56.152802, 52.774509>,  <60.906170, 56.120579, 52.589195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.757103, 56.152802, 52.774509>,  <60.508659, 56.206505, 53.083366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.757103, 56.152802, 52.774509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477472, 0.846092, 0.236957,
		0.621489, -0.515851, 0.589617,
		0.621105, -0.134259, -0.772142,
		60.943436, 56.112522, 52.542866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.215080, 55.986839, 53.260101>,  <60.508659, 56.206505, 53.083366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.215080, 55.986839, 53.260101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.194946, 56.203201, 52.924271>,  <61.182865, 56.333019, 52.722771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.194946, 56.203201, 52.924271>,  <61.215080, 55.986839, 53.260101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.194946, 56.203201, 52.924271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425382, 0.772192, 0.471985,
		0.903613, -0.333383, -0.268959,
		-0.050336, 0.540902, -0.839578,
		61.179844, 56.365471, 52.672398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.798672, 56.245380, 53.207539>,  <61.215080, 55.986839, 53.260101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.798672, 56.245380, 53.207539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.557388, 56.479591, 52.990913>,  <61.412617, 56.620117, 52.860939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.557388, 56.479591, 52.990913>,  <61.798672, 56.245380, 53.207539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.557388, 56.479591, 52.990913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541643, 0.799152, 0.260730,
		0.585459, -0.136061, -0.799203,
		-0.603209, 0.585529, -0.541567,
		61.376427, 56.655251, 52.828442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.216747, 56.627510, 52.970314>,  <61.798672, 56.245380, 53.207539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.216747, 56.627510, 52.970314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.889198, 56.857090, 52.968231>,  <61.692669, 56.994839, 52.966980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.889198, 56.857090, 52.968231>,  <62.216747, 56.627510, 52.970314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.889198, 56.857090, 52.968231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554282, 0.793096, 0.252527,
		0.149069, 0.203901, -0.967576,
		-0.818871, 0.573954, -0.005208,
		61.643536, 57.029278, 52.966667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.756874, 57.102280, 52.835999>,  <62.216747, 56.627510, 52.970314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.756874, 57.102280, 52.835999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.517937, 57.131130, 52.516502>,  <62.374573, 57.148441, 52.324806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.517937, 57.131130, 52.516502>,  <62.756874, 57.102280, 52.835999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.517937, 57.131130, 52.516502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253759, 0.961776, -0.102929,
		0.760781, -0.264170, -0.592812,
		-0.597343, 0.072125, -0.798736,
		62.338734, 57.152767, 52.276882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.537102, 56.947235, 52.525375>,  <62.756874, 57.102280, 52.835999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.537102, 56.947235, 52.525375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.323624, 56.609566, 52.545525>,  <63.195538, 56.406963, 52.557613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.323624, 56.609566, 52.545525>,  <63.537102, 56.947235, 52.525375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.323624, 56.609566, 52.545525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059742, -0.097048, -0.993485,
		0.843566, -0.527206, 0.102226,
		-0.533693, -0.844177, 0.050370,
		63.163517, 56.356312, 52.560635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.928272, 56.416477, 52.077923>,  <63.537102, 56.947235, 52.525375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.928272, 56.416477, 52.077923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.539421, 56.332390, 52.119461>,  <63.306110, 56.281937, 52.144386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.539421, 56.332390, 52.119461>,  <63.928272, 56.416477, 52.077923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.539421, 56.332390, 52.119461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048678, -0.252315, -0.966420,
		0.229360, -0.944535, 0.235048,
		-0.972124, -0.210216, 0.103849,
		63.247784, 56.269325, 52.150616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.242638, 56.359718, 52.744926>,  <63.928272, 56.416477, 52.077923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.242638, 56.359718, 52.744926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.255501, 56.247952, 53.128780>,  <64.263222, 56.180889, 53.359093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.255501, 56.247952, 53.128780>,  <64.242638, 56.359718, 52.744926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.255501, 56.247952, 53.128780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685960, -0.692134, -0.224519,
		0.726928, 0.665489, 0.169412,
		0.032159, -0.279419, 0.959630,
		64.265152, 56.164127, 53.416668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.508087, 56.001686, 52.251125>,  <64.242638, 56.359718, 52.744926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.508087, 56.001686, 52.251125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.893669, 55.955460, 52.155258>,  <65.125015, 55.927723, 52.097736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.893669, 55.955460, 52.155258>,  <64.508087, 56.001686, 52.251125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.893669, 55.955460, 52.155258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205903, -0.246517, 0.947013,
		-0.168525, -0.962223, -0.213835,
		0.963952, -0.115566, -0.239669,
		65.182854, 55.920792, 52.083359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.841507, 55.353043, 52.388302>,  <64.508087, 56.001686, 52.251125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.841507, 55.353043, 52.388302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.125847, 55.634380, 52.387466>,  <65.296448, 55.803181, 52.386967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.125847, 55.634380, 52.387466>,  <64.841507, 55.353043, 52.388302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.125847, 55.634380, 52.387466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231311, -0.230974, 0.945064,
		0.664220, -0.672282, -0.326878,
		0.710850, 0.703341, -0.002088,
		65.339104, 55.845383, 52.386841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.590599, 55.141487, 52.578613>,  <64.841507, 55.353043, 52.388302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.590599, 55.141487, 52.578613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.486397, 55.513336, 52.682869>,  <65.423874, 55.736446, 52.745422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.486397, 55.513336, 52.682869>,  <65.590599, 55.141487, 52.578613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.486397, 55.513336, 52.682869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154054, -0.226481, 0.961756,
		0.953102, 0.290698, -0.084212,
		-0.260508, 0.929624, 0.260643,
		65.408241, 55.792225, 52.761063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.173264, 55.459450, 52.950626>,  <65.590599, 55.141487, 52.578613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.173264, 55.459450, 52.950626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.814423, 55.594044, 53.065163>,  <65.599121, 55.674801, 53.133884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.814423, 55.594044, 53.065163>,  <66.173264, 55.459450, 52.950626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.814423, 55.594044, 53.065163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215123, -0.233418, 0.948282,
		0.385916, 0.912303, 0.137014,
		-0.897101, 0.336482, 0.286337,
		65.545296, 55.694988, 53.151062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.261948, 56.136738, 53.213127>,  <66.173264, 55.459450, 52.950626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.261948, 56.136738, 53.213127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.973846, 55.898254, 53.354984>,  <65.800987, 55.755165, 53.440098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.973846, 55.898254, 53.354984>,  <66.261948, 56.136738, 53.213127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.973846, 55.898254, 53.354984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408346, 0.048896, 0.911517,
		-0.560795, 0.801339, 0.208242,
		-0.720252, -0.596209, 0.354644,
		65.757774, 55.719391, 53.461376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.873299, 56.447498, 53.874310>,  <66.261948, 56.136738, 53.213127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.873299, 56.447498, 53.874310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.897934, 56.048279, 53.878586>,  <65.912712, 55.808746, 53.881153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.897934, 56.048279, 53.878586>,  <65.873299, 56.447498, 53.874310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.897934, 56.048279, 53.878586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467872, 0.038332, 0.882964,
		-0.881647, -0.049379, 0.469318,
		0.061590, -0.998044, 0.010692,
		65.916412, 55.748867, 53.881794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.554245, 56.220516, 54.426018>,  <65.873299, 56.447498, 53.874310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.554245, 56.220516, 54.426018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.829979, 55.948975, 54.324841>,  <65.995422, 55.786049, 54.264133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.829979, 55.948975, 54.324841>,  <65.554245, 56.220516, 54.426018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.829979, 55.948975, 54.324841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257567, -0.096680, 0.961412,
		-0.677110, -0.727884, 0.108205,
		0.689335, -0.678851, -0.252942,
		66.036781, 55.745319, 54.248959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.505013, 55.720741, 54.857822>,  <65.554245, 56.220516, 54.426018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.505013, 55.720741, 54.857822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.890991, 55.757359, 54.759438>,  <66.122581, 55.779327, 54.700409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.890991, 55.757359, 54.759438>,  <65.505013, 55.720741, 54.857822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.890991, 55.757359, 54.759438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262094, -0.287947, 0.921083,
		0.013496, -0.953261, -0.301847,
		0.964948, 0.091543, -0.245958,
		66.180473, 55.784821, 54.685650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.938049, 55.107815, 55.070679>,  <65.505013, 55.720741, 54.857822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.938049, 55.107815, 55.070679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.164070, 55.437099, 55.048615>,  <66.299683, 55.634670, 55.035374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.164070, 55.437099, 55.048615>,  <65.938049, 55.107815, 55.070679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.164070, 55.437099, 55.048615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314469, -0.153073, 0.936845,
		0.762776, -0.546711, -0.345368,
		0.565050, 0.823211, -0.055163,
		66.333588, 55.684063, 55.032066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.775406, 54.324970, 55.117363>,  <65.938049, 55.107815, 55.070679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.775406, 54.324970, 55.117363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.802887, 53.972847, 55.305122>,  <65.819374, 53.761574, 55.417778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.802887, 53.972847, 55.305122>,  <65.775406, 54.324970, 55.117363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.802887, 53.972847, 55.305122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711342, 0.373121, 0.595628,
		-0.699480, 0.292984, 0.651835,
		0.068704, -0.880307, 0.469402,
		65.823502, 53.708755, 55.445942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.783600, 54.549358, 55.854900>,  <65.775406, 54.324970, 55.117363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.783600, 54.549358, 55.854900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.952003, 54.196926, 55.768700>,  <66.053047, 53.985466, 55.716980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.952003, 54.196926, 55.768700>,  <65.783600, 54.549358, 55.854900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.952003, 54.196926, 55.768700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891689, 0.358475, 0.276382,
		-0.166263, -0.308523, 0.936574,
		0.421008, -0.881084, -0.215505,
		66.078308, 53.932602, 55.704048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.157173, 54.252197, 56.443501>,  <65.783600, 54.549358, 55.854900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.157173, 54.252197, 56.443501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.327805, 54.077759, 56.126549>,  <66.430183, 53.973095, 55.936378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.327805, 54.077759, 56.126549>,  <66.157173, 54.252197, 56.443501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.327805, 54.077759, 56.126549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862172, -0.068672, 0.501939,
		-0.273308, -0.897276, 0.346697,
		0.426570, -0.436097, -0.792375,
		66.455772, 53.946930, 55.888836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.470131, 53.544693, 56.589973>,  <66.157173, 54.252197, 56.443501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.470131, 53.544693, 56.589973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.685875, 53.719852, 56.302269>,  <66.815323, 53.824947, 56.129646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.685875, 53.719852, 56.302269>,  <66.470131, 53.544693, 56.589973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.685875, 53.719852, 56.302269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842066, -0.284766, 0.458075,
		-0.004230, -0.852732, -0.522331,
		0.539357, 0.437900, -0.719262,
		66.847679, 53.851223, 56.086491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.002716, 53.074249, 56.323658>,  <66.470131, 53.544693, 56.589973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.002716, 53.074249, 56.323658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.114792, 53.449444, 56.242012>,  <67.182037, 53.674561, 56.193024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.114792, 53.449444, 56.242012>,  <67.002716, 53.074249, 56.323658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.114792, 53.449444, 56.242012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939716, -0.224604, 0.257851,
		0.196017, -0.264058, -0.944378,
		0.280198, 0.937991, -0.204113,
		67.198853, 53.730843, 56.180779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.423164, 53.152401, 55.639580>,  <67.002716, 53.074249, 56.323658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.423164, 53.152401, 55.639580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.452126, 53.356335, 55.982468>,  <67.469505, 53.478695, 56.188202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.452126, 53.356335, 55.982468>,  <67.423164, 53.152401, 55.639580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.452126, 53.356335, 55.982468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870324, -0.452074, 0.195359,
		0.487127, 0.731914, -0.476455,
		0.072407, 0.509835, 0.857220,
		67.473846, 53.509285, 56.239635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.042839, 53.525669, 55.644577>,  <67.423164, 53.152401, 55.639580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.042839, 53.525669, 55.644577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.918114, 53.405220, 56.005043>,  <67.843277, 53.332951, 56.221321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.918114, 53.405220, 56.005043>,  <68.042839, 53.525669, 55.644577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.918114, 53.405220, 56.005043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829790, -0.548321, 0.103891,
		0.462843, 0.780172, 0.420842,
		-0.311810, -0.301125, 0.901165,
		67.824570, 53.314884, 56.275391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.576439, 53.515781, 56.072136>,  <68.042839, 53.525669, 55.644577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.576439, 53.515781, 56.072136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.340149, 53.244370, 56.246788>,  <68.198372, 53.081524, 56.351578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.340149, 53.244370, 56.246788>,  <68.576439, 53.515781, 56.072136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.340149, 53.244370, 56.246788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770635, -0.634801, 0.056116,
		0.239098, 0.369633, 0.897888,
		-0.590723, -0.678527, 0.436632,
		68.162933, 53.040810, 56.377777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.822296, 54.299541, 56.164383>,  <68.576439, 53.515781, 56.072136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.822296, 54.299541, 56.164383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.743721, 54.615425, 56.396858>,  <68.696579, 54.804955, 56.536343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.743721, 54.615425, 56.396858>,  <68.822296, 54.299541, 56.164383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.743721, 54.615425, 56.396858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900044, -0.089943, 0.426417,
		0.389018, 0.606856, -0.693102,
		-0.196434, 0.789707, 0.581186,
		68.684792, 54.852337, 56.571213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.331535, 54.785900, 55.977539>,  <68.822296, 54.299541, 56.164383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.331535, 54.785900, 55.977539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.189072, 54.896519, 56.334564>,  <69.103592, 54.962891, 56.548782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.189072, 54.896519, 56.334564>,  <69.331535, 54.785900, 55.977539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.189072, 54.896519, 56.334564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921669, 0.261273, 0.286814,
		-0.153886, 0.924802, -0.347938,
		-0.356153, 0.276547, 0.892568,
		69.082222, 54.979485, 56.602333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.586647, 55.391087, 56.127338>,  <69.331535, 54.785900, 55.977539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.586647, 55.391087, 56.127338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.489044, 55.226841, 56.478760>,  <69.430481, 55.128296, 56.689613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.489044, 55.226841, 56.478760>,  <69.586647, 55.391087, 56.127338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.489044, 55.226841, 56.478760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878048, 0.291047, 0.379899,
		-0.411691, 0.864112, 0.289518,
		-0.244013, -0.410612, 0.878553,
		69.415840, 55.103657, 56.742325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.834091, 55.850639, 56.681892>,  <69.586647, 55.391087, 56.127338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.834091, 55.850639, 56.681892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.760025, 55.509903, 56.877884>,  <69.715584, 55.305462, 56.995480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.760025, 55.509903, 56.877884>,  <69.834091, 55.850639, 56.681892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.760025, 55.509903, 56.877884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809970, 0.150044, 0.566953,
		-0.556472, 0.501849, 0.662183,
		-0.185168, -0.851842, 0.489978,
		69.704475, 55.254349, 57.024876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.022018, 55.995541, 57.362068>,  <69.834091, 55.850639, 56.681892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.022018, 55.995541, 57.362068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.048637, 55.610863, 57.255699>,  <70.064606, 55.380054, 57.191879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.048637, 55.610863, 57.255699>,  <70.022018, 55.995541, 57.362068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.048637, 55.610863, 57.255699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885529, -0.065889, 0.459888,
		-0.459793, -0.266085, 0.847224,
		0.066546, -0.961695, -0.265921,
		70.068604, 55.322353, 57.175922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.419792, 55.874294, 57.933136>,  <70.022018, 55.995541, 57.362068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.419792, 55.874294, 57.933136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.395691, 55.924751, 58.329208>,  <69.381233, 55.955025, 58.566853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.395691, 55.924751, 58.329208>,  <69.419792, 55.874294, 57.933136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.395691, 55.924751, 58.329208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992050, 0.117364, 0.045410,
		-0.110483, 0.985045, -0.132214,
		-0.060248, 0.126146, 0.990180,
		69.377617, 55.962597, 58.626263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.864861, 56.369228, 58.085838>,  <69.419792, 55.874294, 57.933136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.864861, 56.369228, 58.085838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.803780, 56.194889, 58.440628>,  <69.767128, 56.090286, 58.653500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.803780, 56.194889, 58.440628>,  <69.864861, 56.369228, 58.085838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.803780, 56.194889, 58.440628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910518, 0.286896, 0.297737,
		-0.384237, 0.853068, 0.353040,
		-0.152704, -0.435851, 0.886970,
		69.757965, 56.064133, 58.706718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.463760, 56.428730, 58.626213>,  <69.864861, 56.369228, 58.085838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.463760, 56.428730, 58.626213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.841209, 56.498375, 58.738838>,  <71.067680, 56.540161, 58.806412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.841209, 56.498375, 58.738838>,  <70.463760, 56.428730, 58.626213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.841209, 56.498375, 58.738838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246378, -0.937426, -0.246028,
		0.221105, 0.301526, -0.927467,
		0.943616, 0.174110, 0.281559,
		71.124290, 56.550610, 58.823307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.905823, 56.057331, 58.181053>,  <70.463760, 56.428730, 58.626213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.905823, 56.057331, 58.181053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.077744, 56.134731, 58.533829>,  <71.180901, 56.181171, 58.745495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.077744, 56.134731, 58.533829>,  <70.905823, 56.057331, 58.181053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.077744, 56.134731, 58.533829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253958, -0.963242, 0.087577,
		0.866468, 0.186334, -0.463155,
		0.429811, 0.193505, 0.881940,
		71.206688, 56.192783, 58.798412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.602623, 55.885033, 58.249386>,  <70.905823, 56.057331, 58.181053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.602623, 55.885033, 58.249386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.467987, 55.854088, 58.624771>,  <71.387207, 55.835522, 58.850002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.467987, 55.854088, 58.624771>,  <71.602623, 55.885033, 58.249386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.467987, 55.854088, 58.624771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492220, -0.864077, 0.105311,
		0.802761, 0.497379, 0.328922,
		-0.336593, -0.077363, 0.938467,
		71.367012, 55.830879, 58.906311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.035698, 55.465008, 58.691761>,  <71.602623, 55.885033, 58.249386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.035698, 55.465008, 58.691761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.681023, 55.425262, 58.872383>,  <71.468216, 55.401413, 58.980759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.681023, 55.425262, 58.872383>,  <72.035698, 55.465008, 58.691761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.681023, 55.425262, 58.872383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242716, -0.931280, 0.271671,
		0.393533, 0.350489, 0.849876,
		-0.886691, -0.099367, 0.451559,
		71.415016, 55.395451, 59.007851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.765823, 55.182484, 59.308392>,  <72.035698, 55.465008, 58.691761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.765823, 55.182484, 59.308392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.999916, 55.499146, 59.378571>,  <72.140373, 55.689140, 59.420677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.999916, 55.499146, 59.378571>,  <71.765823, 55.182484, 59.308392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.999916, 55.499146, 59.378571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807362, 0.548825, 0.216697,
		0.075257, -0.268472, 0.960343,
		0.585237, 0.791653, 0.175452,
		72.175484, 55.736641, 59.431206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.440628, 55.559429, 59.929951>,  <71.765823, 55.182484, 59.308392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.440628, 55.559429, 59.929951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.635986, 55.795181, 59.672546>,  <71.753204, 55.936630, 59.518105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.635986, 55.795181, 59.672546>,  <71.440628, 55.559429, 59.929951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.635986, 55.795181, 59.672546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682763, 0.717334, 0.138804,
		0.543420, 0.371574, 0.752746,
		0.488394, 0.589377, -0.643511,
		71.782501, 55.971992, 59.479492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.594231, 56.352909, 60.041840>,  <71.440628, 55.559429, 59.929951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.594231, 56.352909, 60.041840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.492844, 56.279041, 59.662018>,  <71.432014, 56.234718, 59.434124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.492844, 56.279041, 59.662018>,  <71.594231, 56.352909, 60.041840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.492844, 56.279041, 59.662018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784980, 0.612899, 0.090340,
		0.565297, 0.768278, -0.300314,
		-0.253469, -0.184672, -0.949553,
		71.416801, 56.223640, 59.377151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.052498, 56.846989, 60.383209>,  <71.594231, 56.352909, 60.041840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.052498, 56.846989, 60.383209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.361061, 56.613659, 60.281502>,  <72.546196, 56.473660, 60.220478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.361061, 56.613659, 60.281502>,  <72.052498, 56.846989, 60.383209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.361061, 56.613659, 60.281502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528054, 0.809788, -0.255737,
		0.355085, 0.063009, 0.932708,
		0.771410, -0.583329, -0.254271,
		72.592484, 56.438660, 60.205219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.691086, 57.249187, 60.404831>,  <72.052498, 56.846989, 60.383209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.691086, 57.249187, 60.404831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.821487, 56.918480, 60.221451>,  <72.899727, 56.720055, 60.111423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.821487, 56.918480, 60.221451>,  <72.691086, 57.249187, 60.404831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.821487, 56.918480, 60.221451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760332, 0.517487, -0.392558,
		0.561797, -0.220601, 0.797320,
		0.326004, -0.826766, -0.458453,
		72.919289, 56.670448, 60.083916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
